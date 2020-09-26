/**
 * 
 */

toastr.options = {
		  "closeButton": true,
	  "debug": false,
	  "newestOnTop": true,
	  "progressBar": false,
	  "positionClass": "toast-bottom-right",
	  "preventDuplicates": false,
	  "hideDuration": "1000",
	  "timeOut": 0,
	  "extendedTimeOut": 0,
	  "showEasing": "swing",
	  "hideEasing": "linear",
	  "showMethod": "fadeIn",
	  "hideMethod": "fadeOut",
	  "tapToDismiss": false
	}
	
toastr.options.onclick = function() { console.log('clicked'); alert('clicked') }




var socket = null;


function connect(){
	var ws = new WebSocket("ws://" + location.host + "/Hana-Safe/echo");
	socket = ws;

	ws.onopen = function(){
		console.log('Info:connection opened.');
		
		
		//connection이 되어야 message를 받으니까
		ws.onmessage = function(event){
			console.log("Receive Message : " + event.data + '/n')
			
			toastr.info(event.data, '해외 송금 승인 완료').css({
			"width": "500px",
			"background-color" : "#008485"
 
				})
				}
			}



			ws.onclose = function(event){ 
				console.log('info : connection closed '); 
		//setTimeout(function(){	connect();	}, 1000) //retry connection
	};
		
	ws.onerror = function(err){ console.log('error :', err); };
}


/*connect();*/

	