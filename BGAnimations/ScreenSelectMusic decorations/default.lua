local fSong = true;

return Def.ActorFrame {
	LoadActor("banner")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-120;y,SCREEN_TOP+114);
	};
	LoadActor("frame")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-117;y,SCREEN_TOP+126);
		CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Update");
		CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Update");
		UpdateCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if GAMESTATE:GetNumSidesJoined() == 1 then
				local steps = GAMESTATE:GetCurrentSteps(GAMESTATE:GetMasterPlayerNumber());
				if song and steps ~= nil then
					local diff = steps:GetDifficulty();
					self:diffuse(color(GetDifficultyColor(diff)));
				end
			else
				local stepsP1 = GAMESTATE:GetCurrentSteps(PLAYER_1);
				local stepsP2 = GAMESTATE:GetCurrentSteps(PLAYER_2);
				if song and stepsP1 and stepsP2 ~= nil then
					local diffP1 = stepsP1:GetDifficulty();
					local diffP2 = stepsP2:GetDifficulty();
					self:diffuseleftedge(color(GetDifficultyColor(diffP1)));
					self:diffuserightedge(color(GetDifficultyColor(diffP2)));
				end
			end
		end;
	};
	LoadActor("frmover")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-117;y,SCREEN_TOP+126);
	};
	Def.ActorFrame{
		UpdateCommand=function(self)
			local so = GAMESTATE:GetSortOrder();
			if so ~= nil then
				if so == "SortOrder_Preferred" then
					self:visible(true);
				else
					self:visible(false);
				end
			end;
		end;
		BeginCommand=cmd(playcommand,"Update");
		SortOrderChangedMessageCommand=cmd(playcommand,"Update");
		LoadFont("_system2")..{
			InitCommand=function(self)
				self:horizalign(right);
				self:x(SCREEN_CENTER_X-48);
				self:y(SCREEN_CENTER_Y-7);
			end;
			SetCommand=function(self)
				local topscreen = SCREENMAN:GetTopScreen();
				local MusicWheel = topscreen:GetMusicWheel();
				self:settext(MusicWheel:GetCurrentIndex()+1);
				if not fSong then
					self:stoptweening();
					self:diffuse(color("#FF0000"));
					self:sleep(.033);
					self:diffuse(color("#FFFFFF"));
					self:sleep(.033);
					self:diffuse(color("#FF0000"));
					self:sleep(.033);
					self:diffuse(color("#FFFFFF"));
					self:sleep(.033);
					self:diffuse(color("#FF0000"));
					self:sleep(.033);
					self:diffuse(color("#FFFFFF"));
					self:sleep(.033);
					self:diffuse(color("#FF0000"));
					self:sleep(.033);
					self:diffuse(color("#FFFFFF"));
					self:sleep(.033);
					self:diffuse(color("#FF0000"));
					self:sleep(.033);
					self:diffuse(color("#FFFFFF"));
				end
				fSong = false;
			end;
			CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
		};
		LoadFont("_system2")..{
			InitCommand=function(self)
				self:settext("/");
				self:x(SCREEN_CENTER_X-40);
				self:y(SCREEN_CENTER_Y-7);
			end;
		};
		LoadFont("_system2")..{
			InitCommand=function(self)
				self:horizalign(right);
				self:x(SCREEN_CENTER_X);
				self:y(SCREEN_CENTER_Y-7);
			end;
			SetCommand=function(self)
				self:settext(#SONGMAN:GetPreferredSortSongs()+1);
			end;
			CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
		};
	};
	Def.ActorFrame{
		LoadFont("_system2")..{
			InitCommand=function(self)
				self:horizalign(right);
				self:x(SCREEN_CENTER_X);
				self:y(SCREEN_CENTER_Y-7);
			end;
			SetCommand=function(self)
				local topscreen = SCREENMAN:GetTopScreen();
				local MusicWheel = topscreen:GetMusicWheel();
				self:settext(MusicWheel:GetCurrentIndex()+1);
				self:stoptweening();
				self:diffuse(color("#FF0000"));
				self:sleep(.033);
				self:diffuse(color("#FFFFFF"));
				self:sleep(.033);
				self:diffuse(color("#FF0000"));
				self:sleep(.033);
				self:diffuse(color("#FFFFFF"));
				self:sleep(.033);
				self:diffuse(color("#FF0000"));
				self:sleep(.033);
				self:diffuse(color("#FFFFFF"));
				self:sleep(.033);
				self:diffuse(color("#FF0000"));
				self:sleep(.033);
				self:diffuse(color("#FFFFFF"));
				self:sleep(.033);
				self:diffuse(color("#FF0000"));
				self:sleep(.033);
				self:diffuse(color("#FFFFFF"));
			end;
			CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
		};
		UpdateCommand=function(self)
			local so = GAMESTATE:GetSortOrder();
			if so ~= nil then
				if so == "SortOrder_Preferred" then
					self:visible(false);
				else
					self:visible(true);
				end
			end;
		end;
		BeginCommand=cmd(playcommand,"Update");
		SortOrderChangedMessageCommand=cmd(playcommand,"Update");
	};
	Def.ActorFrame{
		LoadFont("_difficulty")..{
			InitCommand=cmd(horizalign,left;x,SCREEN_CENTER_X-107;y,SCREEN_CENTER_Y+47);
			SetCommand=function(self)
				if not GAMESTATE:IsEventMode() then
					local song = GAMESTATE:GetCurrentSong();
					if song then
						self:visible(true);
						if song:IsMarathon() then
							self:settext("COSTS 3 Chips");
						elseif song:IsLong() then
							self:settext("COSTS 2 Chips");
						else
							self:settext("COSTS 1 Chip");
						end
					else
						self:visible(false);
					end
				else
					self:visible(false);
				end
			end;
			CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
		};
	};
	LoadActor("difflist");
	LoadActor("difficulty");
	LoadActor("Coins");
}