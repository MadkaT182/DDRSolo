local t = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X-290;y,SCREEN_CENTER_Y-5);
};
local sides = GAMESTATE:GetNumSidesJoined();

if sides == 1 then
	t[#t+1] = Def.ActorFrame {
		LoadFont("_difficulty")..{
			SetCommand=function(self)
				local song = GAMESTATE:GetCurrentSong();
				local steps = GAMESTATE:GetCurrentSteps(GAMESTATE:GetMasterPlayerNumber());
				if song and steps ~= nil then
					local diff = steps:GetDifficulty();
					self:diffuse(color(GetDifficultyColor(diff)));
					self:settext(steps:GetMeter());
				end
			end;
			CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
		};
	};
	for i = 1,8 do
		t[#t+1] = Def.Sprite{
			InitCommand=function(self)
				self:Load(THEME:GetPathG("Selmus","pill_normal.png"));
				self:x(12+(i*16));
				self:y(-2);
			end;
			SetCommand=function(self)
				local song = GAMESTATE:GetCurrentSong();
				local steps = GAMESTATE:GetCurrentSteps(GAMESTATE:GetMasterPlayerNumber());
				if song and steps ~= nil then
					local diff = steps:GetDifficulty();
					self:diffuse(color(GetDifficultyColor(diff)));
					self:diffusealpha(.25);
					if steps:GetMeter() < 9 then
						self:visible(true);
					else
						self:visible(false);
					end
				end
			end;
			CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
		};
		t[#t+1] = Def.Sprite{
			InitCommand=function(self)
				self:Load(THEME:GetPathG("Selmus","pill_normal.png"));
				self:x(12+(i*16));
				self:y(-2);
			end;
			SetCommand=function(self)
				local song = GAMESTATE:GetCurrentSong();
				local steps = GAMESTATE:GetCurrentSteps(GAMESTATE:GetMasterPlayerNumber());
				if song and steps ~= nil then
					local diff = steps:GetDifficulty();
					self:diffuse(color(GetDifficultyColor(diff)));
					if steps:GetMeter() < 9 then
						if steps:GetMeter() < i then self:visible(false) else self:visible(true) end
					else
						self:visible(false);
					end
				end
			end;
			CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
		};
		t[#t+1] = Def.Sprite{
			InitCommand=function(self)
				self:Load(THEME:GetPathG("Selmus","pill_glow.png"));
				self:x(12+(i*16));
				self:y(-2);
				self:diffusealpha(0);
				self:sleep(i*.033);
				self:queuecommand("Anim");
			end;
			AnimCommand=function(self)
				self:diffusealpha(1);
				self:sleep(.033);
				self:diffusealpha(0);
				self:queuecommand("Wait");
			end;
			WaitCommand=function(self)
				self:sleep(.467);
				self:queuecommand("Anim");
			end;
			SetCommand=function(self)
				local song = GAMESTATE:GetCurrentSong();
				local steps = GAMESTATE:GetCurrentSteps(GAMESTATE:GetMasterPlayerNumber());
				if song and steps ~= nil then
					local diff = steps:GetDifficulty();
					self:diffuse(color(GetDifficultyColor(diff)));
					if steps:GetMeter() < 9 then
						if steps:GetMeter() < i then self:visible(false) else self:visible(true) end
					else
						self:visible(false);
					end
				end
			end;
			CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
		};
	end
	t[#t+1] = Def.ActorFrame {
		Def.Sprite{
			InitCommand=function(self)
				self:Load(THEME:GetPathG("Selmus","pill_normal.png"));
				self:x(28);
				self:y(-2);
			end;
			SetCommand=function(self)
				local song = GAMESTATE:GetCurrentSong();
				local steps = GAMESTATE:GetCurrentSteps(GAMESTATE:GetMasterPlayerNumber());
				if song and steps ~= nil then
					local diff = steps:GetDifficulty();
					self:diffuse(color(GetDifficultyColor(diff)));
					self:diffusealpha(.5);
					if steps:GetMeter() < 9 then
						self:visible(false);
					else
						self:visible(true);
					end
				end
			end;
			CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
		};
		Def.Sprite{
			InitCommand=function(self)
				self:Load(THEME:GetPathG("Selmus","pill_glow.png"));
				self:x(28);
				self:y(-2);
			end;
			SetCommand=function(self)
				local song = GAMESTATE:GetCurrentSong();
				local steps = GAMESTATE:GetCurrentSteps(GAMESTATE:GetMasterPlayerNumber());
				if song and steps ~= nil then
					local diff = steps:GetDifficulty();
					self:diffuse(color(GetDifficultyColor(diff)));
					if steps:GetMeter() < 9 then
						self:visible(false);
					else
						self:visible(true);
						self:diffuseshift();
						self:effectcolor1(color(GetDifficultyColor(diff)));
						self:effectcolor2(ColorDarkTone(color(GetDifficultyColor(diff))));
					end
				end
			end;
			CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
			CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
		};
	};
elseif sides == 2 then
	for player in ivalues(GAMESTATE:GetEnabledPlayers()) do
		t[#t+1] = Def.ActorFrame {
			LoadFont("_difficulty")..{
				InitCommand=function(self)
					self:x(player == PLAYER_1 and 0 or 156);
				end;
				SetCommand=function(self)
					local song = GAMESTATE:GetCurrentSong();
					local steps = GAMESTATE:GetCurrentSteps(player);
					if song and steps ~= nil then
						local diff = steps:GetDifficulty();
						self:diffuse(color(GetDifficultyColor(diff)));
						self:settext(steps:GetMeter());
					end
				end;
				CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
				CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
				CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
			};
			Def.Sprite{
				InitCommand=function(self)
					self:Load(THEME:GetPathG("Selmus","pill_normal.png"));
					self:x(player == PLAYER_1 and 28 or 130);
					self:y(-2);
					self:zoomx(player == PLAYER_1 and 1 or -1);
				end;
				SetCommand=function(self)
					local song = GAMESTATE:GetCurrentSong();
					local steps = GAMESTATE:GetCurrentSteps(player);
					if song and steps ~= nil then
						local diff = steps:GetDifficulty();
						self:diffuse(color(GetDifficultyColor(diff)));
						self:diffusealpha(.5);
					end
				end;
				CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
				CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
				CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
			};
			Def.Sprite{
				InitCommand=function(self)
					self:Load(THEME:GetPathG("Selmus","pill_glow.png"));
					self:x(player == PLAYER_1 and 28 or 130);
					self:y(-2);
					self:zoomx(player == PLAYER_1 and 1 or -1);
				end;
				SetCommand=function(self)
					local song = GAMESTATE:GetCurrentSong();
					local steps = GAMESTATE:GetCurrentSteps(player);
					if song and steps ~= nil then
						local diff = steps:GetDifficulty();
						self:diffuse(color(GetDifficultyColor(diff)));
						self:diffuseshift();
						self:effectcolor1(color(GetDifficultyColor(diff)));
						self:effectcolor2(ColorDarkTone(color(GetDifficultyColor(diff))));
					end
				end;
				CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
				CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
				CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
			};
		};
	end
end

return t;