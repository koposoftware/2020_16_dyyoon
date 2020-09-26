/**
 * 
 */
function getContextPath() {
	var hostIndex = location.href.indexOf( location.host ) + location.host.length;
	return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
};

function localeChange(locale){
	var url = getContextPath() + '/change?locale=' + locale;
	
	$.ajax({
		url : url,
		type : 'get',
		success : function(){
			location.reload();
		},
		error : function(){
			alert('언어 변환 과정에 에러 발생')
		}

	})
	
}