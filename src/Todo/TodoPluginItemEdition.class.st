Class {
	#name : #TodoPluginItemEdition,
	#superclass : #Object,
	#traits : 'TPyramidPlugin',
	#classTraits : 'TPyramidPlugin classTrait',
	#category : #Todo
}

{ #category : #accessing }
TodoPluginItemEdition class >> text [

	| property |
	property := PyramidProperty new
		            name: 'Text';
		            command: PyramidCommandText new;
		            pyramidInputPresenterClass: PyramidTextInputPresenter;
		            yourself.
	property pyramidInputPresenterStrings help: 'Change the text.'.
	^ property
]

{ #category : #connecting }
TodoPluginItemEdition >> connectOn: aPyramidEditor [

	aPyramidEditor propertiesManager addProperty: self class text.
]
