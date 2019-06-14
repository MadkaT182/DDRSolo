return Def.ActorFrame {

	InitCommand=cmd(Center;addx,200;addy,10);
	GainFocusCommand=cmd(draworder,1;diffuse,1,1,1,1);
	LoseFocusCommand=cmd(draworder,0;diffuse,0.25,0.25,0.25,1);

	LoadActor("_style/solo_pad");
	LoadActor("_style/solo_glow")..{
		InitCommand=cmd(x,5);
		GainFocusCommand=cmd(visible,true;diffuseshift;effectcolor1,1,1,1,1;effectcolor2,1,1,1,0);
		LoseFocusCommand=cmd(visible,false);
	};
	LoadActor("_style/solo_label")..{
		InitCommand=cmd(x,-198;y,SCREEN_CENTER_Y-217);
		GainFocusCommand=cmd(stoptweening;y,SCREEN_CENTER_Y-195;diffusealpha,0;linear,.2;diffusealpha,.9;y,SCREEN_CENTER_Y-217);
		LoseFocusCommand=cmd(stoptweening;y,SCREEN_CENTER_Y-217;diffusealpha,.9;linear,.2;diffusealpha,0;y,SCREEN_CENTER_Y-195);
	};
	LoadActor("_style/solo_label")..{
		InitCommand=cmd(x,-198;y,SCREEN_CENTER_Y-217);
		GainFocusCommand=cmd(stoptweening;y,SCREEN_CENTER_Y-242;diffusealpha,0;linear,.2;diffusealpha,.9;y,SCREEN_CENTER_Y-217);
		LoseFocusCommand=cmd(stoptweening;y,SCREEN_CENTER_Y-217;diffusealpha,.9;linear,.2;diffusealpha,0;y,SCREEN_CENTER_Y-242);
	};
	LoadActor("ScreenSelectStyle Cursor")..{
		GainFocusCommand=cmd(visible,true;diffusealpha,.5;zoom,1;linear,.1;zoom,2);
		LoseFocusCommand=cmd(visible,false);
	};
};