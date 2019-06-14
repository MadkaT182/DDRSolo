return Def.ActorFrame {
	InitCommand=cmd(diffusealpha,0);
	HealthStateChangedMessageCommand=function(self, param)
		if param.HealthState == "HealthState_Danger" then
			self:diffusealpha(1)
		else
			self:diffusealpha(0)
		end
	end;
	Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,Color.Black;diffuseshift;effectcolor1,0,0,0,1;effectcolor2,0,0,0,0);
	};
	LoadActor("danger")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffuseshift;effectcolor1,1,1,1,1;effectcolor2,1,1,1,0);
	};
}