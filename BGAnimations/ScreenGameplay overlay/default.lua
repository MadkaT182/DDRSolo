local CMC = 0;
local MMC = 0;
local TS = "TapNoteScore_W2";

if PREFSMAN:GetPreference("AllowW1") == "AllowW1_Everywhere" then
	TS = "TapNoteScore_W1";
end

local played_fail_animation = false
function frameImg(self)
	local song = GAMESTATE:GetCurrentSong();
	if song then
		local sTitle = song:GetDisplayMainTitle();
		--Fixes for SIMILAR Names
		if sTitle == "I'M ALIVE" or sTitle == "TOGETHER & FOREVER" then
			sTitle = song:GetDisplayArtist();
		end
		return GetSongArt(sTitle);
	end
end

return Def.ActorFrame {
	LoadActor(THEME:GetPathG("Common","doorn"))..{
		OnCommand=cmd(Center;addy,-SCREEN_HEIGHT);
	    JudgmentMessageCommand=function(self)
	    	self:sleep(.05);
	        self:queuecommand("CheckForFail");
	    end,
	    CheckForFailCommand=function(self)
	        if STATSMAN:GetCurStageStats():AllFailed() and not played_fail_animation then
	            self:playcommand("Fail");
	        end
	    end;
	    FailCommand=function(self)
	        played_fail_animation = true;
	        self:linear(.234);
	        self:Center();
	    end;
		Condition=not IsUsingWideScreen()
	};
	LoadActor(THEME:GetPathG("Common","doorw"))..{
		OnCommand=cmd(Center;addy,-SCREEN_HEIGHT);
	    JudgmentMessageCommand=function(self)
	    	self:sleep(.05);
	        self:queuecommand("CheckForFail");
	    end,
	    CheckForFailCommand=function(self)
	        if STATSMAN:GetCurStageStats():AllFailed() and not played_fail_animation then
	            self:playcommand("Fail");
	        end
	    end;
	    FailCommand=function(self)
	        played_fail_animation = true;
	        self:linear(.234);
	        self:Center();
	    end;
		Condition=IsUsingWideScreen()
	};
	LoadActor("fgs");
	Def.Quad{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-63;diffusecolor,Color.Black;zoomto,SCREEN_WIDTH,50);
	};
	LoadFont("_nfo")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-63);
		OnCommand=function(self)
			self:settext("Ready!");
			self:sleep(4);
			self:queuecommand("Go");
		end;
		GoCommand=function(self)
			self:settext("Here We Go!!");
			self:sleep(1);
			self:queuecommand("Stg");
		end;
		StgCommand=function(self)
			local stg = thified_curstage();
			self:settext(stg);
			self:x(SCREEN_RIGHT+(string.len(stg)*18));
			self:linear(1.966);
			self:x(SCREEN_CENTER_X);
			self:sleep(1.034);
			self:linear(1.8);
			self:x(SCREEN_LEFT-(string.len(stg)*18));
			self:queuecommand("Style");
		end;
		StyleCommand=function(self)
			local styletxt = stylediff();
			self:settext(styletxt);
			self:x(SCREEN_RIGHT+(string.len(styletxt)*18));
			self:linear(9.466);
			self:x(SCREEN_LEFT-(string.len(styletxt)*18));
			self:queuecommand("Sng");
		end;
		SngCommand=function(self)
			local sngtext = GAMESTATE:GetCurrentSong():GetDisplayMainTitle().."   "..GAMESTATE:GetCurrentSong():GetDisplayArtist();
			self:settext("|"..sngtext);
			self:x(SCREEN_RIGHT+(string.len(sngtext)*18));
			self:linear(12.067);
			self:x(SCREEN_LEFT-(string.len(sngtext)*18));
			self:queuecommand("Stg");
		end;
	};
	LoadActor(THEME:GetPathG("ScreenGameplay","rainbowfx"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-64);
		OnCommand=function(self)
		local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
		self:customtexturerect(0,0,w,1);
		self:texcoordvelocity(0.5,0);
		self:blend('BlendMode_Modulate');
		end;
	};
	LoadActor(THEME:GetPathG("ScreenGameplay","frame/regular/"..frameImg()))..{
		OnCommand=cmd(Center);
		Condition=IsUsingWideScreen();
	};
	LoadActor(THEME:GetPathG("ScreenGameplay","frame/solo/"..frameImg()))..{
		OnCommand=cmd(Center);
		Condition=not IsUsingWideScreen();
	};
	LoadActor(THEME:GetPathG("Gameplay","lifebar"));
	LoadActor("diff");
	LoadActor("start");
	LoadActor("coins");
	Def.ActorFrame{
        JudgmentMessageCommand=function(self,params)
            if params.TapNoteScore == "TapNoteScore_W2" then
                CMC = CMC + 1
                if CMC >= MMC then
                    MMC = CMC
                end
            else
                CMC = 0
            end
            MaxNoteCombo = MMC;
        end;
	}
}