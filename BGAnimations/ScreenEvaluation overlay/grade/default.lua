local t = Def.ActorFrame {};
local players = GAMESTATE:GetNumSidesJoined();

for player in ivalues(GAMESTATE:GetHumanPlayers()) do
	local cstats = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetGrade();
	local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetStageAward();

	t[#t+1] = Def.ActorFrame {
		InitCommand=function(self)
			self:player(player);
			self:y(SCREEN_BOTTOM-66);
		end;
		Def.Sprite{
			Texture=THEME:GetPathG("", "Grades/Dummy");
			InitCommand=function(self)
				if players > 1 then
					self:x(player == PLAYER_1 and SCREEN_CENTER_X or SCREEN_CENTER_X);
				else
					self:x(SCREEN_CENTER_X-172);
				end
				if cstats then
					self:Load(THEME:GetPathG("", "Grades/"..cstats));
				end
			end;
			OnCommand=cmd(diffusealpha,0;sleep,1.366;linear,.134;diffusealpha,1);
		};
	};
end

return t;