return Def.ActorFrame {
	LoadActor(THEME:GetPathG("htp","bgn"))..{
		OnCommand=cmd(Center);
		Condition=not IsUsingWideScreen()
	};
	LoadActor(THEME:GetPathG("htp","bgw"))..{
		OnCommand=cmd(Center);
		Condition=IsUsingWideScreen()
	};
	LoadActor("pad")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+15;diffusealpha,0;sleep,1.972;diffuse,color("#000000");diffusealpha,1;linear,.367;diffuse,color("#FFFFFF"));
	};
	LoadActor(THEME:GetPathG("Common","doorn"))..{
		OnCommand=cmd(draworder,1;Center;addy,-SCREEN_HEIGHT;sleep,25.169;linear,.234;Center);
		Condition=not IsUsingWideScreen()
	};
	LoadActor(THEME:GetPathG("Common","doorw"))..{
		OnCommand=cmd(draworder,1;Center;addy,-SCREEN_HEIGHT;sleep,25.169;linear,.234;Center);
		Condition=IsUsingWideScreen()
	};
}