quest function STED_SaveGame2(type : string, slot : int) {
	switch (type) {
		case "SGT_QuickSave":
			theGame.SaveGame(SGT_QuickSave, slot);
			break;
		case "SGT_Manual":
			theGame.SaveGame(SGT_Manual, slot);
			break;
		case "SGT_ForcedCheckPoint":
			theGame.SaveGame(SGT_ForcedCheckPoint, slot);
			break;
		case "SGT_AutoSave":
			theGame.SaveGame(SGT_AutoSave, slot);
			break;
	}
}