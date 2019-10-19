#macro GRAVITY 0.3
#region player
	enum PLAYERSTATE {
		Walk,
		Float
	}
	enum PLAYERANIMATIONS {
		Idle,
		Float
	}
#endregion
#region kids
	enum KIDSTATE {
		Wander,
		Stairs,
		Cower,
		RunAway
	}
#endregion