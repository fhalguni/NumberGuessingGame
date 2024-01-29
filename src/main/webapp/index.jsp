<%@page import="org.project.NumberGuessingGame"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//minimum
	NumberGuessingGame minimum=new NumberGuessingGame(0);

	//maximum
	NumberGuessingGame maximum=new NumberGuessingGame(10);

	//target
	NumberGuessingGame target=new NumberGuessingGame();
	target.setRandom(minimum.getValue(), maximum.getValue());

	//Number of guess
	NumberGuessingGame guesses=new NumberGuessingGame(1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Number Guessing Game</title>

</head>
<style>
body{
    background: url('guessing.jpeg');
    background-size: cover;
}
.form{
	background-color: black;
    padding: 40px 30px;
    border-radius: 20px;
    opacity: 0.7;
    border: 2px solid burlywood;
    width: 350px;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    position: absolute;
    color: #fff;
}



</style>
<body>
<div class="form">
<h1>Number Guessing Game</h1>
<p>Welcome! We hope you enjoy guessing game!</p>

<p>
Please guess a number between <%=minimum.getValue() %> and <%=maximum.getValue() %>
</p>

<form action="guess.jsp" name="guessForm" method="post">
<label>
	Guess <%=guesses.getValue() %>:
</label>
<input type="text" name="guess" value="0" />
<br>
<input type="submit" name="guessButton" value="GO"/>

<input type="hidden" name="minimum" value="<%=minimum.getValue() %>"/>
<input type="hidden" name="maximum" value="<%=maximum.getValue() %>"/>
<input type="hidden" name="target" value="<%=target.getValue() %>"/>
<input type="hidden" name="guesses" value="<%=guesses.getValue() %>"/>
</form>
</div>
</body>
</html>