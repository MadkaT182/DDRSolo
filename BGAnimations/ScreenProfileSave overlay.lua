local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame{
	LoadActor("Dynamic bg");
	Def.Quad{
		InitCommand=cmd(FullScreen;diffuse,color("0,0,0,0"));
	};
};

t[#t+1] = Def.Actor {
	BeginCommand=function(self)
		if SCREENMAN:GetTopScreen():HaveProfileToSave() then self:sleep(1); end;
		self:queuecommand("Load");
	end;
	LoadCommand=function() SCREENMAN:GetTopScreen():Continue(); end;
};

return t;