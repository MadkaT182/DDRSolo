local t = Def.ActorFrame{
	LoadActor("optbg")..{
		InitCommand=cmd(FullScreen;);
		OnCommand=function(self)
			local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
			local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
			self:customtexturerect(0,0,w,h);
			self:texcoordvelocity(.25,-.25);
		end;
	};
}
return t;