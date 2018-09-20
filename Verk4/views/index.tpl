<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Json Local</title>
	<link rel="stylesheet" type="text/css" href="static/still.css">
</head>
<body>
	%include('haus.tpl')

	<%
	import json
	with open("gengi.json","r", encoding="utf-8") as skra:
		gengi = json.load(skra)
	%>
	<div class="row">
		<section>
			<h2>Gengi gjaldmiðla í ISKR.</h2>
			<ul>
				% for i in gengi['results']:
					<li>{{i['longName']}} - {{i['shortName']}} ISKR: {{i['value']}} </a></li>
				% end
			</ul>
		</section>
	%include('fotur.tpl')
	%end
	</div>
</body>
</html>