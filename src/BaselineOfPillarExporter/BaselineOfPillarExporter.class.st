Class {
	#name : #BaselineOfPillarExporter,
	#superclass : #BaselineOf,
	#category : #BaselineOfPillarExporter
}

{ #category : #baseline }
BaselineOfPillarExporter >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'PillarCore' with: [
				spec repository: 'github://feenkcom/pillar:feenk/src' ];
			baseline: 'Chrysal' with: [
				spec repository: 'github://feenkcom/Chrysal:v1.0.0/src' ];
			baseline: 'MustacheCore' with: [
				spec repository: 'github://feenkcom/mustache:gt1.0.1/repository' ].
		spec 
			package: 'Pillar-Chrysal-Generator' with: [
				spec requires: #('PillarCore' 'Chrysal' ). ];
			package: 'Pillar-Chrysal' with: [
				spec requires: #('PillarCore' ). ];
			package: 'Pillar-ExporterCore' with: [
				spec requires: #('PillarCore' 'MustacheCore' 'Pillar-Chrysal' ). ];
			package: 'Pillar-ExporterAsciiDoc' with: [
				spec requires: #('Pillar-ExporterCore' ). ];
			package: 'Pillar-ExporterHTML' with: [
				spec requires: #('Pillar-ExporterCore' ). ];
			package: 'Pillar-ExporterEPub' with: [
				spec requires: #('Pillar-ExporterCore' 'Pillar-ExporterHTML' ). ];
			package: 'Pillar-ExporterDeckJS' with: [
				spec requires: #('Pillar-ExporterHTML' ). ];
			package: 'Pillar-ExporterMarkdown' with: [
				spec requires: #('Pillar-ExporterCore' 'Pillar-ExporterHTML' ). ];
			package: 'Pillar-ExporterPillar' with: [
				spec requires: #('Pillar-ExporterCore' 'PillarCore' ). ];
			package: 'Pillar-ExporterLaTeX' with: [
				spec requires: #('Pillar-ExporterCore' 'Pillar-ExporterPillar' ). ];
			package: 'Pillar-ExporterBeamer' with: [
				spec requires: #('Pillar-ExporterLaTeX' ). ];
			package: 'Pillar-ExporterText' with: [
				spec requires: #('Pillar-ExporterCore' ). ];
			package: 'Pillar-Tests-Model' with: [
				spec requires: #('PillarCore' 'Pillar-ExporterPillar' 'Pillar-ExporterText' ). ];
			package: 'Pillar-Tests-ExporterCore' with: [
				spec requires: #('Pillar-Tests-Model' 'Pillar-ExporterCore' ). ];
			package: 'Pillar-Tests-ExporterText' with: [
				spec requires: #('Pillar-ExporterText' 'Pillar-Tests-ExporterCore' ). ];
			package: 'Pillar-Tests-ExporterPillar' with: [
				spec requires: #('Pillar-ExporterPillar' 'Pillar-Tests-ExporterCore' ). ];
			package: 'Pillar-Tests-ExporterLaTeX' with: [
				spec requires: #('Pillar-ExporterLaTeX' 'Pillar-Tests-ExporterCore' ). ];
			package: 'Pillar-Tests-ExporterBeamer' with: [
				spec requires: #('Pillar-ExporterBeamer' 'Pillar-Tests-ExporterLaTeX' ). ];
			package: 'Pillar-Tests-ExporterHTML' with: [
				spec requires: #('Pillar-ExporterHTML' 'Pillar-Tests-ExporterCore' ). ];
			package: 'Pillar-Tests-ExporterMarkdown' with: [
				spec requires: #('Pillar-ExporterMarkdown' 'Pillar-Tests-ExporterCore' 'Pillar-Tests-ExporterHTML' ). ];
			package: 'Pillar-Tests-ExporterDeckJS' with: [
				spec requires: #('Pillar-ExporterDeckJS' 'Pillar-Tests-ExporterHTML' ). ];
			package: 'Pillar-Tests-ExporterEPub' with: [
				spec requires: #(#'Pillar-ExporterEPub' 'Pillar-Tests-ExporterCore' ). ];
			package: 'Pillar-Tests-ExporterAsciiDoc' with: [
				spec requires: #('Pillar-ExporterAsciiDoc' 'Pillar-Tests-ExporterCore' ). ]. ].

]
