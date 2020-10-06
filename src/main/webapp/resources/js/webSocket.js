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
	
/*toastr.options.onclick = function() { console.log(mk); alert('clicked') }
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
			
			toastr.info(event.data, '새로운 해외송금 소식').css({
			"width": "500px",
			"background-color" : "#008485"
 
				})
				}
			}



			ws.onclose = function(event){ 
				console.log('info : connection closed '); 
	};
		
	ws.onerror = function(err){ console.log('error :', err); };
}


connect();

	