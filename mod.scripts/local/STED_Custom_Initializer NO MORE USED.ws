class CStedCustomInitializer extends ISpawnTreeScriptedInitializer 
{

	function Init(actor: CActor) : bool 
	{
		var npc : CNewNPC;
		//var level : int;

		//level = 20;
		npc = (CNewNPC)actor;
		
		if ( npc )
		{
			
			npc.SetLevel ( Min(3, thePlayer.GetLevel() - 20 ));

			LogChannel('sted',"My code works.");

		}
		return true;
	}
}

