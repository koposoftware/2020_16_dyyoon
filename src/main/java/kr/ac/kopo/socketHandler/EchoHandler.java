package kr.ac.kopo.socketHandler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import kr.ac.kopo.member.vo.MemberVO;

@Component
public class EchoHandler extends TextWebSocketHandler {
	
	//로그인한 전체
	List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
	//1대1
	Map<String, WebSocketSession> userSessionsMap = new HashMap<String, WebSocketSession>();
	
	//서버에 접속 성공 - client가 server에 접속 성공
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.println("afterConnectionExtablished" + session);
		
		//접속한 유저는 다 여기 안에 들어감
		sessions.add(session);
		
		//session에 현재 등록되어있는 id 조회 - 로그인 되어있으면 id, 아니면 session id
		String senderId = getId(session);
		userSessionsMap.put(senderId, session);
	}
	
	//소켓에 메세지 보냈을 때
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println("handleTextMessage : " + session + " : " + message);
		
		String senderId = getId(session);
//		전체 broadcasting
//		for(WebSocketSession sess : sessions) {
//			sess.sendMessage(new TextMessage(senderId + " : " + message.getPayload()));
//		}
		
		//Protocol : cmd(remittance, recieve, reserve, mistaken), 해당 id, 해당 이름, status(승인 과정)
		String msg = message.getPayload();
		if(!msg.equals("")) {
			String[] strs = msg.split(",");
			
			if(strs != null && strs.length == 4) {
				String cmd = strs[0];
				String recieverId = strs[1];
				String recieverName = strs[2];
				String status = strs[3];
				
				WebSocketSession recieverSession = userSessionsMap.get(recieverId);
				
				if(recieverSession != null) {
					TextMessage sendMsg = null;
					if(cmd.equals("remittance")) {
						sendMsg = new TextMessage(recieverName + "님이 보낸 해외송금 내역이 업데이트되었습니다 (" + status + ")");
					}else if(cmd.equals("recieve")) {
						sendMsg = new TextMessage(recieverName + "님께 새로운 해외송금이 도착했습니다");
					}else if(cmd.equals("reserve")) {
						sendMsg = new TextMessage(recieverName + "님이 신청한 해외송금정보가 업데이트되었습니다 (" + status + ")");
					}else if(cmd.equals("mistaken")) {
						sendMsg = new TextMessage(recieverName + "님이 신고한 착오송금 처리가 업데이트되었습니다 (" + status + ")");
					}
					recieverSession.sendMessage(sendMsg);
				}
				
				
			}
		}
		
	}
	
	//연결 해제될때 - connection closed
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println("afterConnectionEstablished : " + session + " : " + status);
		
		
		userSessionsMap.remove(session.getId());
		sessions.remove(session);
		
		
	}
	
	//아이디 가져오기
	private String getId(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		MemberVO loginUser = (MemberVO)httpSession.get("loginVO");
		
		if(loginUser == null) {
			//웹소켓 session
			return session.getId();
		}else {
			return loginUser.getId();
		}
	}
	
	
}
