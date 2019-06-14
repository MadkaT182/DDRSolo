local left = GAMESTATE:GetNumStagesLeft(GAMESTATE:GetMasterPlayerNumber())-1;
local t = Def.ActorFrame {};

for i=1,left do
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathG("anim","coin"))..{
			OnCommand=cmd(x,SCREEN_CENTER_X-290+(i-1)*21;y,SCREEN_BOTTOM-32;pause;sleep,4;queuecommand,"Appear");
			AppearCommand=cmd(play);
			OffCommand=cmd(setstate,0;pause);
			Condition=not GAMESTATE:IsEventMode()
		};
	};
end

return t;