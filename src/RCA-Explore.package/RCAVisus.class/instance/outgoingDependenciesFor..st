private - utilities
outgoingDependenciesFor: entities
	| deps |
	deps := Dictionary new.
	entities
		do:
			[ :p | deps at: p put: p queryOutgoingDependencies withoutSelfLoops ].
	^ deps