return Def.ActorFrame {
	LoadActor("presented")..{
		OnCommand=cmd(Center;sleep,2.106;diffusealpha,0);
	};
	LoadActor("bg1")..{
		OnCommand=cmd(diffusealpha,0;FullScreen;sleep,2.106;diffusealpha,1;sleep,3.944;diffusealpha,0);
	};
	LoadActor("dm1")..{
		OnCommand=cmd(diffusealpha,0;Center;sleep,2.106;diffusealpha,1;sleep,3.944;diffusealpha,0);
	};
	LoadActor("bg2")..{
		OnCommand=cmd(diffusealpha,0;FullScreen;sleep,6.05;diffusealpha,1;sleep,3.944;diffusealpha,0);
	};
	LoadActor("dm2")..{
		OnCommand=cmd(diffusealpha,0;Center;sleep,6.05;diffusealpha,1;sleep,3.944;diffusealpha,0);
	};
	LoadActor("dm3")..{
		OnCommand=cmd(diffusealpha,0;Center;sleep,9.994;diffusealpha,1);
	};
};