return Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,color("#FFFFFF");diffusealpha,0;linear,1.034;diffusealpha,1);
	};
	LoadActor("cleared")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,2.1);
	};
	LoadActor("coins");
	Condition=not GAMESTATE:IsDemonstration()
};