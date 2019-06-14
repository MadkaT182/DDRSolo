local t = Def.ActorFrame{
	LoadActor("rtile")..{
		InitCommand=cmd(FullScreen;);
		OnCommand=function(self)
			local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
			local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
			self:customtexturerect(0,0,w,h);
			self:texcoordvelocity(.25,-.25);
			self:blend('BlendMode_Add');
		end;
	};
	LoadActor("btile")..{
		InitCommand=cmd(FullScreen;);
		OnCommand=function(self)
			local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
			local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
			self:customtexturerect(0,0,w,h);
			self:texcoordvelocity(-.25,-.25);
			self:blend('BlendMode_Add');
		end;
	};
}
return t;