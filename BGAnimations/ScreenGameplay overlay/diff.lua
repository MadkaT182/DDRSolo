return Def.ActorFrame {
	Def.ActorFrame{
		LoadFont("_difficulty")..{
			InitCommand=function(self)
				self:x(SCREEN_RIGHT-14);
				self:y(SCREEN_BOTTOM-15);
				self:horizalign(right);
				self:settext(CustomDifficultyToLocalizedString(GAMESTATE:GetCurrentSteps(GAMESTATE:GetMasterPlayerNumber()):GetDifficulty()));
			end;
		};
		Condition=GAMESTATE:GetNumSidesJoined() == 1;
	};
	Def.ActorFrame{
		InitCommand=function(self)
			if GAMESTATE:IsEventMode() then
				self:y(SCREEN_BOTTOM-15);
			else
				self:y(SCREEN_TOP+57);
			end
		end;
		LoadFont("_difficulty")..{
			InitCommand=function(self)
				self:x(SCREEN_LEFT+14);
				self:horizalign(left);
				self:settext(CustomDifficultyToLocalizedString(GAMESTATE:GetCurrentSteps(PLAYER_1):GetDifficulty()));
			end;
		};
		LoadFont("_difficulty")..{
			InitCommand=function(self)
				self:x(SCREEN_RIGHT-14);
				self:horizalign(right);
				self:settext(CustomDifficultyToLocalizedString(GAMESTATE:GetCurrentSteps(PLAYER_2):GetDifficulty()));
			end;
		};
		Condition=GAMESTATE:GetNumSidesJoined() == 2;
	};
}