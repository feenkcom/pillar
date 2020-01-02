Class {
	#name : #PRPillarListPositionFixer,
	#superclass : #PRVisitor,
	#instVars : [
		'shiftNumber'
	],
	#category : #'Pillar-PetitPillar'
}

{ #category : #accessing }
PRPillarListPositionFixer >> shiftNumber [
	^ shiftNumber
]

{ #category : #accessing }
PRPillarListPositionFixer >> shiftNumber: anObject [
	shiftNumber := anObject
]

{ #category : #'visiting-document' }
PRPillarListPositionFixer >> visitDocumentGroup: aNode [
	super visitDocumentGroup: aNode.
	aNode start: aNode start + self shiftNumber.
	aNode stop: aNode stop + self shiftNumber.
]

{ #category : #'visiting-document' }
PRPillarListPositionFixer >> visitDocumentItem: aNode [
	aNode start: aNode start + self shiftNumber.
	aNode stop: aNode stop + self shiftNumber.
]
