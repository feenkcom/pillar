Class {
	#name : #PRShoutingValidationStrategy,
	#superclass : #PRValidationStrategy,
	#category : #'Pillar-Model-ValidationStrategies'
}

{ #category : #'error handling' }
PRShoutingValidationStrategy >> invalidParameterNames: aMissingKeys forAnnotation: anAnnotation withParameters: aPRParameters [
	PRSyntaxError signal: 'The key(s) ' , aMissingKeys printString , 
		'  is not valid for the annotation ' , anAnnotation tag 
]

{ #category : #'error handling' }
PRShoutingValidationStrategy >> missingAnnotationParametersIn: anAnnotation [
	PRSyntaxError signal: 'The annotation ', anAnnotation tag, 
		'expect parameters from ', anAnnotation class possibleParameters printString, 
		' and none were given.'
]

{ #category : #'error handling' }
PRShoutingValidationStrategy >> missingAnnotationSupport: aString [ 
	PRSyntaxError signal: 'Pillar doesn''t support this tag : ''' , aString , ''' on his annotations.'
]

{ #category : #'error handling' }
PRShoutingValidationStrategy >> unexpectedParameterIn: anAnnotation [
	PRSyntaxError signal: 'The annotation ', anAnnotation tag, ' does not expect parameter'
]
