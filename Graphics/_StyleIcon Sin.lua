return Def.ActorFrame {

	InitCommand=cmd(Center;addy,-112);
	GainFocusCommand=cmd(draworder,1;diffuse,1,1,1,1);
	LoseFocusCommand=cmd(draworder,0;diffuse,0.25,0.25,0.25,1);

	LoadActor("_style/4panel_pad");
	LoadActor("_style/4panel_glow")..{
		InitCommand=cmd(x,5);
		GainFocusCommand=cmd(visible,true;diffuseshift;effectcolor1,1,1,1,1;effectcolor2,1,1,1,0);
		LoseFocusCommand=cmd(visible,false);
	};
	LoadActor("_style/4panel_label")..{
		InitCommand=cmd(y,SCREEN_CENTER_Y-97);
		GainFocusCommand=cmd(stoptweening;y,SCREEN_CENTER_Y-75;diffusealpha,0;linear,.2;diffusealpha,.9;y,SCREEN_CENTER_Y-97);
		LoseFocusCommand=cmd(stoptweening;y,SCREEN_CENTER_Y-97;diffusealpha,.9;linear,.2;diffusealpha,0;y,SCREEN_CENTER_Y-75);
	};
	LoadActor("_style/4panel_label")..{
		InitCommand=cmd(y,SCREEN_CENTER_Y-97);
		GainFocusCommand=cmd(stoptweening;y,SCREEN_CENTER_Y-119;diffusealpha,0;linear,.2;diffusealpha,.9;y,SCREEN_CENTER_Y-97);
		LoseFocusCommand=cmd(stoptweening;y,SCREEN_CENTER_Y-97;diffusealpha,.9;linear,.2;diffusealpha,0;y,SCREEN_CENTER_Y-119);
	};
	LoadActor("ScreenSelectStyle Cursor")..{
		GainFocusCommand=cmd(visible,true;diffusealpha,.5;zoom,1;linear,.1;zoom,2);
		LoseFocusCommand=cmd(visible,false);
	};
};