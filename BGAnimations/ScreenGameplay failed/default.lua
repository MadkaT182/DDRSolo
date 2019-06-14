return Def.ActorFrame {
	-- Def.Quad{
	-- 	InitCommand=cmd(FullScreen;diffuse,color("#000000");diffusealpha,0;sleep,.3;linear,0.7;diffusealpha,1);
	-- };
	LoadActor("failed")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,1;sleep,5);
	};
};