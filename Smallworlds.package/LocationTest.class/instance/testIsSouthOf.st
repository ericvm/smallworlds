tests-as yet unclassified
testIsSouthOf
	|      con1 con2 |

	location1 isSouthOf: location2.
	con1 := location1 connections first.
	self assert: con1 destination = location2.
	con2 := location2 connections first.
	self assert: con2 destination = location1.
	self assert: ( con1 noun hasSynonym: 'north' ).
	self assert: ( con2 noun hasSynonym: 'south' ).