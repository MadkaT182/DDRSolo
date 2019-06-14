local t = Def.ActorFrame {};
local players = GAMESTATE:GetNumSidesJoined();

for player in ivalues(GAMESTATE:GetHumanPlayers()) do
	--Vars
	local Score = string.format("% 7d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetScore());
	local Total = string.format("% 7d",STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(player):GetScore());
	local Combo = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):MaxCombo();
	local Marvelous = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W1"));
	local Perfect = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W2"));
	local Great = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W3"));
	local Good = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W4"));
	local Ok = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetHoldNoteScores("HoldNoteScore_Held"));
	local Miss = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_Miss"));
	local Almost = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W5"));
	local NG = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetHoldNoteScores("HoldNoteScore_LetGo"));

	local Per_Marvelous = PercScore(STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetPercentageOfTaps("TapNoteScore_W1"));
	local Per_Perfect = PercScore(STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetPercentageOfTaps("TapNoteScore_W2"));
	local Per_Great = PercScore(STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetPercentageOfTaps("TapNoteScore_W3"));
	local Per_Good = PercScore(STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetPercentageOfTaps("TapNoteScore_W4"));
	local Per_Boo = PercScore(STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetPercentageOfTaps("TapNoteScore_W5"));
	local Per_Miss = PercScore(STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetPercentageOfTaps("TapNoteScore_Miss"));
	local Per_MC = PercMC(player,Combo);

	local MFix = 0;

	local MarvEn = PREFSMAN:GetPreference("AllowW1") == "AllowW1_Everywhere"

	if MarvEn then
		MFix = 34;
	end

--Score color
--self:diffuse(player == player and color("#1CAE82") or color("#F8FA8E"));

	t[#t+1] = Def.ActorFrame{
		--Stats BG
		InitCommand=function(self)
			self:y(SCREEN_CENTER_Y-60);
			if players > 1 then
				self:x(player == player and SCREEN_CENTER_X-180 or SCREEN_CENTER_X+180);
			else
				self:x(SCREEN_CENTER_X);
			end
		end;
		--Stats
		--Score
		LoadFont("ScreenEval score")..{
			InitCommand=function(self)
				self:x(260);
				self:y(210);
				self:horizalign(right);
				self:diffuse(player == player and color("#FF3852") or color("#1CAE82"));
				self:settext(Score);
			end;
		};
		--Total
		LoadFont("ScreenEval score")..{
			InitCommand=function(self)
				self:x(260);
				self:y(254);
				self:horizalign(right);
				self:diffuse(player == player and color("#0C55B9") or color("#FF3852"));
				self:settext(Score);
			end;
		};
		--Max Note Combo
		LoadFont("ScreenRanking category")..{
			InitCommand=function(self)
				self:x(-63);
				self:y(78);
				self:horizalign(right);
				self:diffuse(color("#F881C5"));
				self:settext(MaxNoteCombo);
			end;
			Condition=not MFix
		};
		--Max Combo
		LoadFont("ScreenRanking category")..{
			InitCommand=function(self)
				self:x(-63);
				self:y(34+MFix);
				self:horizalign(right);
				self:diffuse(color("#F881C5"));
				self:settext(Combo);
			end;
		};
		LoadFont("ScreenRanking category")..{
			InitCommand=function(self)
				self:x(70);
				self:y(34+MFix);
				self:horizalign(right);
				self:diffuse(color("#AD6FDB"));
				self:settext(Per_MC);
			end;
		};
	    --Marvelous
		LoadFont("ScreenRanking category")..{
			InitCommand=function(self)
				self:x(-63);
				self:y(-72);
				self:horizalign(right);
				self:settext(Marvelous);
			end;
		};
	    LoadFont("ScreenRanking category")..{
	        InitCommand=function(self)
				self:x(70);
				self:y(-72);
				self:horizalign(right);
				self:diffuse(color("#5CAFE1"));
	            self:settext(Per_Marvelous);
	        end;
	    };
		--Perfect
		LoadFont("ScreenRanking category")..{
			InitCommand=function(self)
				self:x(-63);
				self:y(-72+MFix);
				self:horizalign(right);
				self:diffuse(color("#FFFF00"));
				self:settext(Perfect);
			end;
		};
	    LoadFont("ScreenRanking category")..{
	        InitCommand=function(self)
				self:x(70);
				self:y(-72+MFix);
				self:horizalign(right);
				self:diffuse(color("#5CAFE1"));
	            self:settext(Per_Perfect);
	        end;
	    };
		--Great
		LoadFont("ScreenRanking category")..{
			InitCommand=function(self)
				self:x(-63);
				self:y(-38+MFix);
				self:horizalign(right);
				self:diffuse(color("#9FFF00"));
				self:settext(Great);
			end;
		};
	    LoadFont("ScreenRanking category")..{
	        InitCommand=function(self)
				self:x(70);
				self:y(-38+MFix);
				self:horizalign(right);
				self:diffuse(color("#5CAFE1"));
	            self:settext(Per_Great);
	        end;
	    };
		--Good
		LoadFont("ScreenRanking category")..{
			InitCommand=function(self)
				self:x(-63);
				self:y(-4+MFix);
				self:horizalign(right);
				self:diffuse(color("#99B4FF"));
				self:settext(Good);
			end;
		};
	    LoadFont("ScreenRanking category")..{
	        InitCommand=function(self)
				self:x(70);
				self:y(-4+MFix);
				self:horizalign(right);
				self:diffuse(color("#5CAFE1"));
	            self:settext(Per_Good);
	        end;
	    };

		--Boo
		LoadFont("ScreenRanking category")..{
			InitCommand=function(self)
				self:x(-63);
				self:y(122);
				self:horizalign(right);
				self:diffuse(color("#FFFFCB"));
				self:settext(Almost);
			end;
		};
	    LoadFont("ScreenRanking category")..{
	        InitCommand=function(self)
				self:x(70);
				self:y(122);
				self:horizalign(right);
				self:diffuse(color("#5CAFE1"));
	            self:settext(Per_Boo);
	        end;
	    };
		--Miss
		LoadFont("ScreenRanking category")..{
			InitCommand=function(self)
				self:x(-63);
				self:y(156);
				self:horizalign(right);
				self:diffuse(color("#FFFFCB"));
				self:settext(Miss+NG);
			end;
		};
	    LoadFont("ScreenRanking category")..{
	        InitCommand=function(self)
				self:x(70);
				self:y(156);
				self:horizalign(right);
				self:diffuse(color("#5CAFE1"));
	            self:settext(Per_Miss);
	        end;
	    };
	};

end

return t;