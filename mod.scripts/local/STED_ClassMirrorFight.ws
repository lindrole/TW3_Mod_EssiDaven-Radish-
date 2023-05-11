class CStedMirrorFight extends CNewNPC {
	event OnSpawned(spawnData : SEntitySpawnData) {
		FactsAdd("mirror_devil_fighter", 1, -1);
		super.OnSpawned(spawnData);
		TuneBossStats();
	}
	function TuneBossStats() {
		var diff  : int;
		
		diff = thePlayer.GetLevel() - GetLevel();
		if (diff > 0) {
			AddAbilityMultiple('sted_mirror_boss_LevelBonus', diff);
		}
	}
	
	event OnDeath(damageAction : W3DamageAction) {
		super.OnDeath(damageAction);
		FactsAdd("mirror_devil_fighter", -1, -1);
	}
}

