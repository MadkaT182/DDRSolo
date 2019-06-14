return Def.ActorFrame {
	LoadActor( "../logobg" )..{
		OnCommand=cmd(FullScreen);
	};
	LoadActor( "../logodc" )..{
		OnCommand=cmd(Center);
	};
	LoadActor( "../logofg" )..{
		OnCommand=cmd(Center);
		Condition=not IsHome();
	};
}