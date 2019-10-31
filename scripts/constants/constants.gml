#macro GRAVITY 0.3
#macro NAMESFILE "names.txt"
#region player
	enum PLAYERSTATE {
		Float,
		Static
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
		Startled,
		RunAway,
		Steal,
		Static
	}
	enum TRAIT {
		Coward,
		Inquisitive,
		GoodHearing,
		Leader,
		FastWalker
	}
	enum ANXIETY {
		Calm,
		OnEdge,
		Anxious,
		Terrified
	}
	enum KIDANIMATIONS {
		Walk,
		Run,
		Idle
	}
	enum NOISETYPE {
		Door,
		Break
	}
	#macro TRAITAMOUNT 5
#endregion
// dialogue system
enum TEXTMODIFIERS {
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
#region title
	enum PAGES {
		Main,
		Quit,
		Lose,
		Win
	}
	enum ELEMENTTYPE {
		Script_runner,
		Transfer,
		Toggle,
		Slider
	}
#endregion