local prefix = "p";
local suffix = "n";

if PREFSMAN:GetPreference("AllowW1") == "AllowW1_Everywhere" then
	prefix = "m";
end

if IsUsingWideScreen() then
	suffix = "w";
end

return Def.ActorFrame {
	LoadActor("bg")..{
		OnCommand=cmd(FullScreen);
	};
	LoadActor("Title")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+1;y,SCREEN_TOP+39);
	};
	LoadActor("lowern")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-69);
		Condition=GAMESTATE:GetNumSidesJoined()==1
	};
	LoadActor("lowerw")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-69);
		Condition=GAMESTATE:GetNumSidesJoined()==2
	};
	LoadActor(prefix.."_frame_"..suffix)..{
		OnCommand=cmd(Center);
	};
};