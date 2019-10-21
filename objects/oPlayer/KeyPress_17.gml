if(!instance_exists(oDialogue_system)) {
	dialogue_add("Hello /w/cFriend.", dialogue, oPlayer);
	dialogue_add("How are /yyou doing /stoday?", dialogue, oPlayer);
	dialogue_add("I'm doing /rjust /rfine,/nThank you very much.", dialogue, oKid);
	dialogue_play(dialogue); 
}
else dialogue_next();