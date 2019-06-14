local t = Def.ActorFrame{};
t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathG("Common","footer/select"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+126;y,SCREEN_BOTTOM-53);
	};
	LoadActor("info0")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-217;y,SCREEN_BOTTOM-99);
	};
	LoadActor("info1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-217;y,SCREEN_BOTTOM-69);
	};
	LoadActor("info2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+121;y,SCREEN_BOTTOM-95);
	};
};

for i=1,PREFSMAN:GetPreference("SongsPerPlay") do
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathG("anim","coin"))..{
			OnCommand=cmd(x,SCREEN_CENTER_X-290+(i-1)*21;y,SCREEN_BOTTOM-32;diffusealpha,0;pause;sleep,.267*i+1;queuecommand,"Appear");
			AppearCommand=cmd(diffusealpha,1;sleep,.167;play;sleep,.9;queuecommand,"Stop");
			StopCommand=cmd(pause);
			Condition=not GAMESTATE:IsEventMode()
		};
	};
end

return t;