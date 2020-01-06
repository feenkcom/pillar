Class {
	#name : #BaselineOfPillarCore,
	#superclass : #BaselineOf,
	#category : #BaselineOfPillarCore
}

{ #category : #baseline }
BaselineOfPillarCore >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'ContainersPropertyEnvironment' with: [
				spec repository: 'github://feenkcom/Containers-PropertyEnvironment:v1.0.0' ];
			baseline: 'PetitParser2Core' with: [
				spec repository: 'github://kursjan/petitparser2:9e90d58f71a430f5ed7f2893216990fc5b6a8a43' ].
		spec 
			package: 'Pillar-Model';
			package: 'Pillar-PetitPillar' with: [
				spec requires: #('PetitParser2Core' 'Pillar-Model' ). ];
			package: 'Pillar-Tests-PetitPillar' with: [
				spec requires: #('Pillar-PetitPillar' ). ]. ].

]
