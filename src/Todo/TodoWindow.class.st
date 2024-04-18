Class {
	#name : #TodoWindow,
	#superclass : #PyramidWindow,
	#category : #Todo
}

{ #category : #accessing }
TodoWindow >> layout [

	| mainLayout |
	mainLayout := SpBoxLayout new
		              spacing: 4;
		              yourself.
	mainLayout
		add: (self services at: #topLeft) presenter
		expand: false.
	mainLayout add: (self services at: #space) presenter expand: true.
	mainLayout add: (self services at: #tabRight) presenter expand: true.
	^ mainLayout
]
