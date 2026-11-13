<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap" rel="stylesheet">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="botton-background">
		<div class="left-content">
			<p style="padding:0 13px">Welcom to our big family~</p>
			<img src="images/catHello.png">
		</div>
		<div class="right-content">
			<p>Your name is 
				<span style="color:yellow">${param.name }.</span>
			</p>
			<p>Your pet is
				<span style="color:yellow">${param.pet }.</span>
			</p>
		</div>
	</div>
</body>
<style>
	body{
		margin:0;
	    min-height:100vh;
	    display:flex;
	    align-items:center;
	    justify-content:center;
	    background-image: url("images/login-background2.jpg");
		background-position: center -70px;
		background-size: 110% auto;
		background-repeat: no-repeat;
		
		font-family:'Press Start 2P', cursive;;
		font-weight:1000;
		font-size:30px;
	}
	.botton-background{
		display:flex;
   		align-items:center;
    	justify-content:flex-start;
    	width:80%;
    	box-sizing:border-box;
    	background:rgba(0,0,0,.5);
    	border-radius:10px;
    	gap:20px;
	}
	.botton-background p{
		text-align:center;
	}
	.botton-background img{
		width:300px;
		border-radius:10px;
		padding:0 15px;
		place-items:center;
	}
	.left-content{
		background:#3DDAB1;
		border-radius:10px;
		
	}
	.right-content{
		color:white;
		font-size:20px;
		padding-left:0;
	}
	.right-content p{
		text-align:left;
		padding:0;
	}
</style>
</html>