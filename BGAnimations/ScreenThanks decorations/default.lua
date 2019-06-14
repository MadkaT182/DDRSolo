return Def.ActorFrame {
	LoadActor("intercord")..{
		OnCommand=cmd(Center;diffusealpha,0;linear,.434;diffusealpha,1;sleep,3.7;linear,.233;diffusealpha,0);
	};
	LoadActor("tribe")..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,4.367;linear,.267;diffusealpha,1;sleep,3.766;linear,.234;diffusealpha,0);
	};
	LoadActor("konami")..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,8.634;linear,.266;diffusealpha,1);
	};
}