/**
 * 
 */
let textSymbol = ['', '일', '이', '삼', '사', '오', '육', '칠', '팔', '구'];
let powerSymbol = ['', '십', '백', '천'];
let dotSymbol = ['', '만', '억', '조', '경'];

/**
 * 숫자 입력시 한글로 변환
 * **꼭 NaN 아닌 경우 표시하기
 * @param amount
 * @returns
 */
function currencyKoreanMaker(amount){
	
		//숫자를 배열로 역순으로 넣고, 다시 배열 안 값을 숫자로 변환
		var amountArr = (amount.toString().split("").reverse()).map(function(element){
			return parseInt(element, 10)
		});
		
		//각 숫자의 자리수에 맞게 한글로 변환
		var amountArrKor = amountArr.map(function(element, index){
			//자리수 
			var powerIndex = index % 4;
			// 단위수
			var dotIndex = Math.ceil(index / 4);
			
			// 한글로 대입
			let text = textSymbol[element];
			let power = element === 0 ? '' : powerSymbol[powerIndex];
			let dot = powerIndex === 0 ? dotSymbol[dotIndex] : '';
			
			return text + power + dot;			
		})
		
		
		return amountArrKor.reverse().join('')
}