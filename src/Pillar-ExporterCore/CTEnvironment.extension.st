Extension { #name : #CTEnvironment }

{ #category : #'*Pillar-ExporterCore' }
CTEnvironment >> mustacheLookup: aString [
	(aString = '.') ifTrue: [ ^ self ].
	^ self propertyAt: aString asSymbol
		ifPresent: [ :elem | elem ]
		ifAbsent: [  self mustacheLookupComplex: aString ]
]
