Class {
	#name : #PRPlainTextLanguage,
	#superclass : #PRAbstractScriptLanguage,
	#category : #'Pillar-Model-ScriptLanguage'
}

{ #category : #testing }
PRPlainTextLanguage class >> isAbstract [
	^ false
]

{ #category : #requirement }
PRPlainTextLanguage class >> standardName [
	^ 'plaintext'
]

{ #category : #testing }
PRPlainTextLanguage >> isSpecified [
	^ true
]

{ #category : #testing }
PRPlainTextLanguage >> isSyntaxHighlightingPossible [
	^ false
]
