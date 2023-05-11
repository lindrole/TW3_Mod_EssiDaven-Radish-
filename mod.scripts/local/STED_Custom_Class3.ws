class CStedAnimal2 extends CNewNPC {
	event OnSpawned(spawnData : SEntitySpawnData) {
		FactsAdd("skellige_animal2", 1, -1);
		super.OnSpawned(spawnData);
	}
	event OnDeath(damageAction : W3DamageAction) {
		super.OnDeath(damageAction);
		FactsAdd("skellige_animal2", -1, -1);
	}
}

