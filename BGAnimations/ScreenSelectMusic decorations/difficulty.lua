local t = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X-310;y,SCREEN_CENTER_Y+26);
};
local sides = GAMESTATE:GetNumSidesJoined();

if sides == 1 then
	t[#t+1] = Def.ActorFrame {
		LoadFont("_system3")..{
			OnCommand=function(self)
				self:horizalign(left);
			end;
			SetCommand=function(self)
				local song = GAMESTATE:GetCurrentSong();
				local steps = GAMESTATE:GetCurrentSteps(GAMESTATE:GetMasterPlayerNumber());
				if song and steps ~= nil then
					local diff = steps:GetDifficulty();
					self:diffuse(color(GetDifficultyColor(diff)));
					self:settext(CustomDifficultyToLocalizedString(diff));
				end
			end;
			CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
		};
		LoadFont("_system3")..{
			OnCommand=function(self)
				self:horizalign(left);
				self:y(16);
				self:settext(justyle());
				self:diffuse(color("#FFFF00"))
			end;
		};
	};
elseif sides == 2 then
	for player in ivalues(GAMESTATE:GetEnabledPlayers()) do
		t[#t+1] = Def.ActorFrame {
			LoadFont("_system3")..{
				OnCommand=function(self)
					self:horizalign(left);
					self:y(player == PLAYER_1 and 0 or 16);
				end;
				SetCommand=function(self)
				local song = GAMESTATE:GetCurrentSong();
				local steps = GAMESTATE:GetCurrentSteps(player);
				if song and steps ~= nil then
					local diff = steps:GetDifficulty();
					self:diffuse(color(GetDifficultyColor(diff)));
					self:settext(CustomDifficultyToLocalizedString(diff));
				end
				end;
				CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
				CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
				CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
			};
		};
	end
	t[#t+1] = Def.ActorFrame {
		LoadFont("_system3")..{
			OnCommand=function(self)
				self:horizalign(left);
				self:y(32);
				self:settext(justyle());
				self:diffuse(color("#FFFF00"))
			end;
		};
	};
end

return t;