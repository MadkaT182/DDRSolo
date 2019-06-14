return Def.ActorFrame{
	LoadActor("bg");
	Def.Sprite{
		SetMessageCommand=function(self,params)
			local song = params.Song;
			if song then
				local sTitle = song:GetDisplayMainTitle();
				if sTitle == "I'M ALIVE" or sTitle == "TOGETHER & FOREVER" then
					sTitle = song:GetDisplayArtist();
				end
				local pillImg = GetSongArt(sTitle);
				if pillImg ~= "fallback" then
					self:Load(THEME:GetPathG("","MusicWheelItem Song NormalPart/pills/"..pillImg));
				elseif params.Song:HasBackground() then
					self:LoadBackground(params.Song:GetBackgroundPath());
					self:setsize(220,46);
					self:diffusealpha(.75);
					self:fadeleft(.2);
					self:faderight(.2);
				else
					self:Load(THEME:GetPathG("", "Common fallback background"));
					self:setsize(220,46);
					self:diffusealpha(.75);
					self:fadeleft(.2);
					self:faderight(.2);
				end
			end
		end;
	};
	LoadFont("_difficulty")..{
		SetMessageCommand=function(self,params)
			local song = params.Song;
			if song then
				self:settext(song:GetDisplayMainTitle());
				self:y(15);
				self:maxwidth(217);
			end
		end;
		Condition=ThemePrefs.Get("TitleMW")
	};
};