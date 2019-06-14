return Def.ActorFrame {
	LoadActor("logo")..{
		OnCommand=cmd(play);
		OffCommand=cmd(stop);
	};
	LoadActor("konami")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;linear,1.036;diffusealpha,1;sleep,3.744;diffusealpha,0);
	};
	LoadActor("bemani")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,4.88;diffusealpha,1);
	};
};