#macro GRAVITY 0.3
#macro NAMESFILE "names.txt"
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
	enum TRAIT {
		Coward,
		Inquisitive,
		GoodHearing,
		Leader,
		Greedy
	}
	enum ANXIETY {
		Calm,
		OnEdge,
		Anxious,
		Terrified
	}
	#macro TRAITAMOUNT 5
#endregion
// dialogue system
enum TEXTMODIFIERS
{
	None,	
	Shake,
	Wave,
	Yellow_recolor,
	Crawl,
	Quick,
	New_line,
	Wiggle,
	Rainbow
}
