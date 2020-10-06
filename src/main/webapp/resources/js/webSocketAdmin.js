/**
 * 
 */

var socket = null;

function connect(){
	var ws = new WebSocket("ws://" + location.host + "/Hana-Safe/echo");
	
	socket = ws;

	ws.onopen = function(){ 
		console.log('Info:connection opened.');
		
		
		//connection이 되어야 message를 받으니까
		ws.onmessage = function(event){
			console.log("Receive Message : " + event.data + '/n')
		}
	}



	ws.onclose = function(event){ 
		console.log('info : connection closed '); 
		//setTimeout(function(){	connect();	}, 1000) //retry connection
	};
		
	ws.onerror = function(err){ console.log('error :', err); };
}


connect();

$('.webSocketTest').on('click', function(evt){
	evt.preventDefault();
	if(socket.readyState !== 1){
		console.log('readystate !== 1') 
		return;
	}
		let msg = $('input#msg').val();
		socket.send(msg);
})

