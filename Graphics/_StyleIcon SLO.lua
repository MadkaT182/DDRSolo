return Def.ActorFrame {
	InitCommand=cmd(Center;addx,112;addy,-112);
	GainFocusCommand=cmd(draworder,1;diffuse,1,1,1,1);
	LoseFocusCommand=cmd(draworder,0;diffuse,0.25,0.25,0.25,1);

	LoadActor("_style/Solo_pad");
	LoadActor("_style/Solo_glow")..{
		InitCommand=cmd(x,5);
		GainFocusCommand=cmd(visible,true;diffuseshift;effectcolor1,1,1,1,1;effectcolor2,1,1,1,0);
		LoseFocusCommand=cmd(visible,false);
	};
	LoadFont("ScreenRanking category")..{
		InitCommand=cmd(y,46;settext,"Solo";diffuse,color("#00FFFF"));
		GainFocusCommand=cmd(stoptweening;diffusealpha,0;linear,.2;diffusealpha,.9);
		LoseFocusCommand=cmd(stoptweening;diffusealpha,.9;linear,.1;diffusealpha,0);
	};
	LoadActor("ScreenSelectStyle Cursor")..{
		GainFocusCommand=cmd(visible,true;diffusealpha,.5;zoom,1;linear,.1;zoom,2);
		LoseFocusCommand=cmd(visible,false);
	};
};