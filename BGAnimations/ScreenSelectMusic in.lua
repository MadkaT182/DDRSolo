return Def.ActorFrame{
	LoadActor("DynamicFade in");
	LoadActor("CoinsA")..{
		OnCommand=cmd(sleep,.3;diffusealpha,0);
	};
}