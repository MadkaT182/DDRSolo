local t = Def.ActorFrame {};
local players = GAMESTATE:GetNumSidesJoined();
local MFix = 0;
local MarvEn = PREFSMAN:GetPreference("AllowW1") == "AllowW1_Everywhere";

if MarvEn then
	MFix = 34;
end

t[#t+1] = Def.ActorFrame{
	--Labels
	InitCommand=function(self)
	end;
	LoadFont("_system5")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y-128;horizalign,right;settext,"MARVELOUS";zoom,.78;maxwidth,150)
	};
	--Perfect
	LoadFont("_system5")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y-128+MFix;horizalign,right;settext,"PERFECT";zoom,.78)
	};
	LoadFont("_system5")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y-94+MFix;horizalign,right;settext,"GREAT";zoom,.78)
	};
	LoadFont("_system5")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y-60+MFix;horizalign,right;settext,"GOOD";zoom,.78)
	};
	LoadFont("_system5")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y-24+MFix;horizalign,right;settext,"MAX\nCOMBO";zoom,.78)
	};
	LoadFont("_system5")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y+18;horizalign,right;settext,"MAX PERFECT\nCOMBO";zoom,.78;maxwidth,160);
		Condition=not MarvEn
	};
	LoadFont("_system5")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y+62;horizalign,right;settext,"BOO";zoom,.78)
	};
	LoadFont("_system5")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-160;y,SCREEN_CENTER_Y+95;horizalign,right;settext,"MISS";zoom,.78)
	};
};

return t;