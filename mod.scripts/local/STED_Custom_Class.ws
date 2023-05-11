class CStedSiren extends CNewNPC {
	event OnSpawned(spawnData : SEntitySpawnData) {
		FactsAdd("coast_sirens", 1, -1);
		super.OnSpawned(spawnData);
	}
	event OnDeath(damageAction : W3DamageAction) {
		super.OnDeath(damageAction);
		FactsAdd("coast_sirens", -1, -1);
	}
}

