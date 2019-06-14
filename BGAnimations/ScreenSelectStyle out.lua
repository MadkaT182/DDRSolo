return Def.ActorFrame{
	OnCommand=cmd(sleep,1);
	Def.Quad{
		OnCommand=cmd(FullScreen;diffuse,color("#000000");diffusealpha,0;linear,.3;diffusealpha,.8);
	};
	LoadActor("DynamicFade out");
	LoadActor("CoinsA");
}