local left = GAMESTATE:GetNumStagesLeft(GAMESTATE:GetMasterPlayerNumber());
local t = Def.ActorFrame {};

for i=1,left do
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathG("anim","coin"))..{
			OnCommand=cmd(x,SCREEN_CENTER_X-290+(i-1)*21;y,SCREEN_BOTTOM-32;pause);
			Condition=not GAMESTATE:IsEventMode()
		};
	};
end

return t;