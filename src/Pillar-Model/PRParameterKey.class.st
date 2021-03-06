Class {
	#name : #PRParameterKey,
	#superclass : #PRDocumentItem,
	#instVars : [
		'name'
	],
	#category : 'Pillar-Model-Document'
}

{ #category : #testing }
PRParameterKey class >> isAbstract [
	^ false
]

{ #category : #'instance creation' }
PRParameterKey class >> named: aString [ 
	^ self new name: aString asSymbol
]

{ #category : #comparing }
PRParameterKey >> = anObject [
	^ super = anObject and: [ 
		self name = anObject name ]
]

{ #category : #visitor }
PRParameterKey >> accept: aVisitor [
	^ aVisitor visitParameterKey: self
]

{ #category : #comparing }
PRParameterKey >> hash [
	^ super hash bitXor: self name hash
]

{ #category : #accessing }
PRParameterKey >> name [
	^ name
]

{ #category : #accessing }
PRParameterKey >> name: anObject [
	name := anObject
]
