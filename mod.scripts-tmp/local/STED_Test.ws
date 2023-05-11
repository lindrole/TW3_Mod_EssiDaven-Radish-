exec function mirror1() {
	var      template : CEntityTemplate;
	var           pos : Vector;
	var           ent : CEntity;
	var act : CActor;
	
	template = (CEntityTemplate)LoadResource("dlc/dlcsted/data/entities/mirror_devil_fighter.w2ent", true);
	pos = thePlayer.GetWorldPosition() + VecRingRand(1.f,2.f);
	ent = (CEntity)theGame.CreateEntity(template, pos);
	act = (CActor) ent;
	ent.AddTag('mirror_test');
	ent.AddTag('vip');
	ent.ApplyAppearance('mirror_fighter');
	//((CNewNPC)ent).SetLevel( Max(3, thePlayer.GetLevel() - 20 ) );
	act.SetTemporaryAttitudeGroup( 'hostile_to_player', AGP_Default );
}

exec function mirror2(level: int) {
	var      template : CEntityTemplate;
	var           pos : Vector;
	var           ent : CEntity;
	var act : CActor;
	
	template = (CEntityTemplate)LoadResource("dlc/dlcsted/data/entities/mirror_devil_fighter.w2ent", true);
	pos = thePlayer.GetWorldPosition() + VecRingRand(1.f,2.f);
	ent = (CEntity)theGame.CreateEntity(template, pos);
	act = (CActor) ent;
	ent.AddTag('mirror_test');
	ent.AddTag('vip');
	ent.ApplyAppearance('mirror_fighter');
	//((CNewNPC)ent).SetLevel(level);
	act.SetTemporaryAttitudeGroup( 'hostile_to_player', AGP_Default );
}

exec function mirror3() {
	var      template : CEntityTemplate;
	var           pos : Vector;
	var           ent : CEntity;
	var act : CActor;
	
	template = (CEntityTemplate)LoadResource("quests\main_npcs\triss.w2ent", true);
	pos = thePlayer.GetWorldPosition() + VecRingRand(1.f,2.f);
	ent = (CEntity)theGame.CreateEntity(template, pos);
	act = (CActor) ent;
	ent.AddTag('triss_test');
	ent.AddTag('vip');
	ent.ApplyAppearance('triss');
	//((CNewNPC)ent).SetLevel(level);
	act.SetTemporaryAttitudeGroup( 'hostile_to_player', AGP_Default );
}

exec function coloring(h1 : Uint16, l1 : Int8, s1 : Int8, h2 : Uint16, l2 : Int8, s2 : Int8)
{
    var template : CEntityTemplate;
    var colEntry : SEntityTemplateColoringEntry;
    var col1 : CColorShift;
    var col2 : CColorShift;
    var ent, npcEntity : CEntity;
    var pos : Vector;
    var rot : EulerAngles;
    var comp : CAppearanceComponent;    
    
    pos = thePlayer.GetWorldPosition() + VecConeRand(thePlayer.GetHeading(), 0, 2,2);
    rot = thePlayer.GetWorldRotation();
    rot.Yaw += 180;
    
        
    npcEntity = theGame.GetEntityByTag('colshifttestnpc');
    npcEntity.Destroy();
        
    template = (CEntityTemplate)LoadResource( "dlc/dlcsted/data/entities/sheenaz_actor.w2ent", true);
        
    colEntry.appearance = 'sheenaz_actor_app1';
    colEntry.componentName = 'c_13_wa__hair_weavress';

    col1.hue = h1;
    col1.saturation = s1;
    col1.luminance = l1;

    col2.hue = h2;
    col2.saturation = s2;
    col2.luminance = l2;

    colEntry.colorShift1 = col1;
    colEntry.colorShift2 = col2;
    
    if(template.coloringEntries.Size() > 0)
        template.coloringEntries[0] = colEntry;
    else
        template.coloringEntries.PushBack(colEntry);

    npcEntity = theGame.CreateEntity( template, pos, rot);
    npcEntity.AddTag('colshifttestnpc');
    

    theGame.GetGuiManager().ShowNotification(" "+Int8ToInt(s1)+" "+Int8ToInt(l1)+" "+" "+Int8ToInt(s2)+" "+Int8ToInt(l2));
}

exec function coloring2(h1 : Uint16, l1 : Int8, s1 : Int8, h2 : Uint16, l2 : Int8, s2 : Int8)
{
    var template : CEntityTemplate;
    var colEntry : SEntityTemplateColoringEntry;
    var col1 : CColorShift;
    var col2 : CColorShift;
    var ent, npcEntity : CEntity;
    var pos : Vector;
    var rot : EulerAngles;
    var comp : CAppearanceComponent;    
    
    pos = thePlayer.GetWorldPosition() + VecConeRand(thePlayer.GetHeading(), 0, 2,2);
    rot = thePlayer.GetWorldRotation();
    rot.Yaw += 180;
    
        
    npcEntity = theGame.GetEntityByTag('colshifttestnpc');
    npcEntity.Destroy();
        
    template = (CEntityTemplate)LoadResource( "dlc/dlcsted/data/entities/sheenaz_actor.w2ent", true);
        
    colEntry.appearance = 'sheenaz_actor_app1';
    colEntry.componentName = 'c_13_wa__hair_weavress';

    col1.hue = h1;
    col1.saturation = s1;
    col1.luminance = l1;

    col2.hue = h2;
    col2.saturation = s2;
    col2.luminance = l2;

    colEntry.colorShift1 = col1;
    colEntry.colorShift2 = col2;
    
    if(template.coloringEntries.Size() > 0)
        template.coloringEntries[0] = colEntry;
    else
        template.coloringEntries.PushBack(colEntry);

    npcEntity = theGame.CreateEntity( template, pos, rot);
    npcEntity.AddTag('colshifttestnpc');
    comp = (CAppearanceComponent)thePlayer.GetComponentByClassName('CAppearanceComponent');
    comp.IncludeAppearanceTemplate(template);
    

    theGame.GetGuiManager().ShowNotification(" "+Int8ToInt(s1)+" "+Int8ToInt(l1)+" "+" "+Int8ToInt(s2)+" "+Int8ToInt(l2));
}