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
				spec repository: 'github://kursjan/petitparser2:0bfe8da9cf90d587f0670a5603ac89db4855bb12' ].
		spec 
			package: 'Pillar-Model';
			package: 'Pillar-PetitPillar' with: [
				spec requires: #('PetitParser2Core' 'Pillar-Model' ). ];
			package: 'Pillar-Tests-PetitPillar' with: [
				spec requires: #('Pillar-PetitPillar' ). ]. ].

]
