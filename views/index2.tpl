<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Json Apis.is</title>
	<link rel="stylesheet" type="text/css" href="static/still.css">
</head>
<body>
	%include('haus.tpl')


	<div class="row">
		<section>
			<h2>Gengi gjaldmiðla í ISKR.</h2>
			<ul>
				% for i in data['results']:
					<li>{{i['longName']}} - {{i['shortName']}} ISKR: {{i['value']}} </a></li>
				% end
			</ul>
		</section>
	%include('fotur.tpl')
	%end
	</div>
</body>
</html>