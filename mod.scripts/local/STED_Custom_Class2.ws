class CStedAnimal extends CNewNPC {
	event OnSpawned(spawnData : SEntitySpawnData) {
		FactsAdd("skellige_animal", 1, -1);
		super.OnSpawned(spawnData);
	}
	event OnDeath(damageAction : W3DamageAction) {
		super.OnDeath(damageAction);
		FactsAdd("skellige_animal", -1, -1);
	}
}

