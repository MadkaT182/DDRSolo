return Def.ActorFrame {
	LoadFont("_system1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-200;settext,"SCORE RANKING");
	};
}