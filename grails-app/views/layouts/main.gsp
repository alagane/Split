<!DOCTYPE html>
<html lang="en">
<head>
	<title><g:layoutTitle default="Split - The Network"/></title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
	body {
		padding-top: 50px;
	}
	.starter-template {
		padding: 40px 15px;
		text-align: left;
	}
	</style>
	<g:layoutHead/>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>z
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/Split">Split</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="/Split">Home</a></li>
				<li><a href="/Split/personnalite/create">Create a personality</a></li>
				<li><a href="#">Search a personality</a></li>
				<li><a href="#">Me</a></li>
			</ul>
		</div><!--/.nav-collapse -->
	</div>
</nav>


<div class="container">
	<div class="starter-template">
		<g:layoutBody/>
	</div>
</div><!-- /.container -->

</body>
</html>
