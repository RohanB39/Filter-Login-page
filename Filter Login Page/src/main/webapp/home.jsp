<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
	* {
		margin: 0;
		padding: 0;
	}
	body {
		height: 100vh;
		width: 100vw;
		display: flex;
		align-items: center;
		justify-content: center;
	}
	.home_container {
		height: 20vh;
		width: 100%;
		background: url("Homebg.jpg");
		display: flex;
		align-items: center;
		justify-content: center;
	}
	.home_container h1 {
		font-family: 'Poppins', sans-serif;
		text-transform: uppercase;
		color: white;
		padding: 0 20px;
	}
	.home_container a {
		padding-left: 30px;
		padding-right: 30px;
		padding-top: 15px;
		padding-bottom: 15px;
		border-radius: 10px;
		border: 1px solid white;
		font-family: 'Poppins', sans-serif;
		text-decoration: none;
		color: white;
		font-weight: 600;
	}
	.home_container a:hover {
		background: #011536;
		border: none;
		transition: all .222s ease;
	}
</style>
</head>
<body>
	<div class="home_container">
		<h1>
			Welcome,
			<%=request.getSession().getAttribute("user")%>!
		</h1>
		<a href="index.jsp">Logout</a>
	</div>

</body>
</html>
