<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Number</title>
<script type="text/javascript">
	// 숫자는 사칙연산가능, 문자형숫자는 + 를 제외한 나머지 가능
	var s1 = 10;
	var s2 = 6;
	document.write(s1 + "+" + s2 + " = " + (s1+s2)+"<br>");
	document.write(s1 + "-" + s2 + " = " + (s1-s2)+"<br>");
	document.write(s1 + "*" + s2 + " = " + (s1*s2)+"<br>");
	document.write(s1 + "/" + s2 + " = " + (s1/s2)+"<br>");
	document.write(s1 + "%" + s2 + " = " + (s1%s2)+"<br>");
	document.write("<hr>");
	
	s1 = "10";
	s2 = "6";
	document.write(s1 + "+" + s2 + " = " + (s1+s2)+"<br>"); // 문자연결자역할 계산X
	document.write(s1 + "-" + s2 + " = " + (s1-s2)+"<br>"); // 계산 O
	document.write(s1 + "*" + s2 + " = " + (s1*s2)+"<br>"); // 계산 O
	document.write(s1 + "/" + s2 + " = " + (s1/s2)+"<br>"); // 계산 O
	document.write(s1 + "%" + s2 + " = " + (s1%s2)+"<br>"); // 계산 O
	document.write("<hr>");
	
	s1 = 10;
	s2 = "6";
	document.write(s1 + "+" + s2 + " = " + (s1+s2)+"<br>"); // 문자연결자역할 계산X
	document.write(s1 + "-" + s2 + " = " + (s1-s2)+"<br>"); // 계산 O
	document.write(s1 + "*" + s2 + " = " + (s1*s2)+"<br>"); // 계산 O
	document.write(s1 + "/" + s2 + " = " + (s1/s2)+"<br>"); // 계산 O
	document.write(s1 + "%" + s2 + " = " + (s1%s2)+"<br>"); // 계산 O
	document.write("<hr>");
	
	// 숫자를 문자열로 변하는 'toString()';
	s1 = 10;
	s2 = 6 ;
	document.write(s1 + "+" + s2 + " = " + (s1+s2)+"<br>");
	document.write(s1 + "+" + s2 + " = " + (s1+s2.toString())+"<br>");
	document.write(s1 + "+" + s2 + " = " + (""+s1+s2)+"<br>");
	document.write("<hr>");
	
	// 지정된 소숫점 이하 자릿수 반올림하는 toFixed(지정자리)
	s1 = 19.555;
	s2 = 19.444;
	document.write(s1.toFixed()+"<br>"); // 10
	document.write(s2.toFixed()+"<br>"); // 9
	document.write(s1.toFixed(0)+"<br>"); // 10
	document.write(s2.toFixed(0)+"<br>"); // 9
	document.write(s1.toFixed(1)+"<br>"); // 9.6
	document.write(s2.toFixed(1)+"<br>"); // 6.4
	document.write("<hr>");
	
	// 정수 자리수의 반올림 안됨(오류)
	// document.write(s1.toFixed(-1)+"<br>"); // 20
	// document.write(s2.toFixed(-1)+"<br>"); // 10
	
	// 문자열숫자를 숫자로 변환(Number, parseInt, parseFloat)
	// NaN(Not a Number) : 숫자가 들어갈 자리에 다른 데이터가 들어오면 표시되는 에러
	// isNaN()  : NaN를 확인 (NaN이면 true, NaN이 아니면 false)
	// true == 1 하면 같다.  true === 1 다르다.
	document.write(true + 10 + "<br>");             // 11 
	document.write(Number(true) + 10 + "<br>");     // 11 
	document.write(parseInt(true) + 10 + "<br>");   // NaN
	document.write(parseFloat(true) + 10 + "<br>"); // NaN
	document.write("<hr>");
	
	document.write(Number("10") + 10 + "<br>");     // 20
	document.write(parseInt("10") + 10 + "<br>");   // 20 
	document.write(parseFloat("10") + 10 + "<br>"); // 20
	document.write("<hr>");
	
	document.write(Number("10.93") + 10 + "<br>");     // 20.93
	document.write(parseInt("10.93") + 10 + "<br>");   // 20 
	document.write(parseFloat("10.93") + 10 + "<br>"); // 20.93
	document.write("<hr>");
	
	// 첫글자가 문자일때 
	document.write(Number("A10") + 10 + "<br>");     // NaN
	document.write(parseInt("A10") + 10 + "<br>");   // NaN
	document.write(parseFloat("A10") + 10 + "<br>"); // NaN
	document.write("<hr>");
	
	// 중간글자가 문자 일때 
	document.write(Number("10A.93") + 10 + "<br>");     // NaN
	document.write(parseInt("10A.93") + 10 + "<br>");   // 20 
	document.write(parseFloat("10A.93") + 10 + "<br>"); // 20
	document.write("<hr>");
	
	// 끝글자가 문자일때 
	document.write(Number("10.93A") + 10 + "<br>");     // NaN
	document.write(parseInt("10.93A") + 10 + "<br>");   // 20 
	document.write(parseFloat("10.93A") + 10 + "<br>"); // 20
	
</script>
</head>
<body>
</body>
</html>



