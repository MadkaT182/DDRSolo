return Def.ActorFrame {
	LoadActor("ready")..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,.5;diffusealpha,1;sleep,3.5;diffusealpha,0);
	};
	LoadActor("go")..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,4;diffusealpha,1;sleep,1;diffusealpha,0);
	}
};