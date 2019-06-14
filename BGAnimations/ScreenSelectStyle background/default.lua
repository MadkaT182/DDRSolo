return Def.ActorFrame {
	LoadActor("bg")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+178;zoomtowidth,SCREEN_WIDTH);
	};
	LoadActor("deco")..{
		OnCommand=cmd(Center);
	};
}