<!doctype html>
<html>

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, minimal-ui">

	<title>{{#resume.basics}}{{name}}{{/resume.basics}}</title>

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/octicons/2.0.2/octicons.min.css">

	<style type="text/css">
		{{{css}}}
	</style>

</head>

<body>

	<header id="header">
		{{#resume.basics}}
		<div class="container">

			<div id="top-row" class="row">
				<div class="col-xs-6 col-sm-9">
					<h1>
						{{this.name}}
					</h1>
				</div>
				<div id="location" class="col-xs-6 col-sm-3">
					<div>
						{{this.location.city}}, {{this.location.region}}
					</div>
				</div>
			</div>

			<div class="row">
				
				<div class="col-xs-6 col-sm-6">
					<div class="email"><a href="mailto:martinestoyanov@gmail.com">{{this.email}}</a></div>
					<div class="phone"><a href="tel:+13476529777">{{this.phone}}</a></div>
				</div>

				<div class="col-sm-6 text-right visible-sm-block visible-md-block visible-lg-block">
					{{#if profiles.length}}
					{{#profiles}}
					<div class="col-sm-6">
						{{#network}}
						<strong class="network">
							{{.}}
						</strong>
						{{/network}}
						{{#if username}}
						<div class="username">
							{{#if url}}
							<div class="url">
								<a href="{{url}}">{{username}}</a>
							</div>
							{{else}}
							{{username}}
							{{/if}}
						</div>
						{{else}}
						{{#if url}}
						<div class="url">
							<a href="{{url}}">{{url}}</a>
						</div>
						{{/if}}
						{{/if}}
					</div>
					{{/profiles}}
					{{/if}}
				</div>

				<div class="col-xs-6 text-right visible-xs-block">
					{{#if profiles.length}}
					<div class="col-sm-6">
						{{#profiles}}
						<div>
							<a href="{{this.url}}" class="network">
								{{this.network}}
							</a>
						</div>
						{{/profiles}}
					</div>
					{{/if}}
				</div>

			</div>

		</div>
		{{/resume.basics}}
	</header>

	<div id="content" class="container">

		{{#resume.basics}}
		<section id="about" class="row">
			<aside class="col-sm-3">
				<h3>About</h3>
			</aside>
			<div class="col-sm-9">
				{{#summary}}
				<p>{{.}}</p>
				{{/summary}}
			</div>
		</section>
		{{/resume.basics}}

		{{#if resume.projects.length}}
		<section id="projects" class="row">
			<aside class="col-sm-3">
				<h3>Projects</h3>
			</aside>
			<div class="col-sm-9">
				<div class="row">
					{{#each resume.projects}}
					<div class="col-sm-12">
						<h4 class="strike-through">
							<span>{{name}}</span>
						</h4>
						<div class="website">
							<a href="{{website}}"></a>
						</div>
						<div class="summary">
							<p>{{summary}}</p>
						</div>
						<div class="keywords">
							<h5>Technologies</h5>
							{{#ifCond keywords.length '>' "2"}}
							<ul class="keywords row">
								{{#keywords}}
								<li class="col-sm-4">{{.}}</li>
								{{/keywords}}
							</ul>
							{{/ifCond}}

							{{#ifCond keywords.length '==' "2"}}
							<ul class="keywords row">
								{{#keywords}}
								<li class="col-sm-6">{{.}}</li>
								{{/keywords}}
							</ul>
							{{/ifCond}}

							{{#ifCond keywords.length '==' "1"}}
							<ul class="keywords row">
								{{#keywords}}
								<li class="col-sm-12">{{.}}</li>
								{{/keywords}}
							</ul>
							{{/ifCond}}
						</div>
					</div>
					{{/each}}
				</div>
			</div>
		</section>
		{{/if}}

		{{#if resume.skills.length}}
		<section id="skills" class="row">

			<aside class="col-sm-3">
				<h3>Skills</h3>
			</aside>

			<div class="col-sm-9">

				<div class="row">

					{{#each resume.skills}}
					<div>

						<div class="name col-sm-12">
							<h4><span>{{this.name}}</span></h4>
						</div>

						{{#ifCond keywords.length '>' "2"}}
						<ul class="keywords row">
							{{#keywords}}
							<li class="col-sm-3">{{.}}</li>
							{{/keywords}}
						</ul>
						{{/ifCond}}

						{{#ifCond keywords.length '==' "2"}}
						<ul class="keywords row">
							{{#keywords}}
							<li class="col-sm-6">{{.}}</li>
							{{/keywords}}
						</ul>
						{{/ifCond}}

						{{#ifCond keywords.length '==' "1"}}
						<ul class="keywords row">
							{{#keywords}}
							<li class="col-sm-12">{{.}}</li>
							{{/keywords}}
						</ul>
						{{/ifCond}}

					</div>
					{{/each}}

				</div>

			</div>
		</section>
		{{/if}}

		{{#if resume.education.length}}
		<section id="education" class="row">
			<aside class="col-sm-3">
				<h3>Education</h3>
			</aside>
			<div class="col-sm-9">
				<div class="row">
					{{#each resume.education}}
					<div class="col-sm-12">
						<h4 class="strike-through">
							<span>{{institution}}</span>
						</h4>
						{{#area}}
						<div class="area">
							{{.}}
						</div>
						{{/area}}
						{{#studyType}}
						<div class="studyType">
							{{.}}
						</div>
						{{/studyType}}
					</div>
					{{/each}}
				</div>
			</div>
		</section>
		{{/if}}

		{{#if resume.work.length}}
		<section id="work" class="row">
			<aside class="col-sm-3">
				<h3>Work</h3>
			</aside>
			<div class="col-sm-9">
				<div class="row">
					{{#each resume.work}}
					<div class="col-sm-12">
						<h4 class="strike-through">
							<span>{{company}}</span>
							<span class="date">
								{{startDate}} — {{endDate}}
							</span>
						</h4>
						{{#website}}
						<div class="website pull-right">
							<a href="{{.}}">{{.}}</a>
						</div>
						{{/website}}
						{{#position}}
						<div class="position">
							{{.}}
						</div>
						{{/position}}
						{{#summary}}
						<div class="summary">
							<p>{{.}}</p>
						</div>
						{{/summary}}
						{{#if highlights.length}}
						<ul class="highlights">
							{{#highlights}}
							<li class="bullet">{{.}}</li>
							{{/highlights}}
						</ul>
						{{/if}}
					</div>
					{{/each}}
				</div>
			</div>
		</section>
		{{/if}}

		{{#if resume.references.length}}
		<section id="references" class="row">
			<aside class="col-sm-3">
				<h3>References</h3>
			</aside>
			<div class="col-sm-9">
				<div class="row">
					{{#each resume.references}}
					<div class="col-sm-12">
						{{#if reference}}
						<blockquote class="reference">
							<p>{{reference}}</p>
							{{#name}}
							<p class="name">
								<strong>— {{.}}</strong>
							</p>
							{{/name}}
						</blockquote>
						{{/if}}
					</div>
					{{/each}}
				</div>
			</div>
		</section>
		{{/if}}

	</div>

</body>

</html>