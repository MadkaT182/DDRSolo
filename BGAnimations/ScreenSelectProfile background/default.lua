return Def.ActorFrame {
	LoadActor("profile")..{
		OnCommand=cmd(FullScreen);
	};
	LoadActor("header")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+21);
	};
	LoadActor("info")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-32);
	};
	LoadActor(THEME:GetPathG("Common","footer/select"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-32);
	};
	LoadFont("_system5")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+21;settext,"SELECT PROFILE");
	};
}