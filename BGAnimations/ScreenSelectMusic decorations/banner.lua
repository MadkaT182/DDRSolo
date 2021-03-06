local t = Def.ActorFrame {
	InitCommand=function(self) c = self:GetChildren(); end;
	--Banner
	Def.Sprite{
		Name="SBanner";
		InitCommand=cmd(setsize,372,174;diffusealpha,0);
	};
	--RouletteActor
	LoadActor( THEME:GetPathG("Banner","roulette") )..{
		Name="SRoulette";
		InitCommand=cmd(setsize,372,174;diffusealpha,0);
	};
	SetCommand=function(self)
		local song = GAMESTATE:GetCurrentSong();
		local Path = THEME:GetPathG("Common","fallback banner");
		if song then
			Path = song:GetBannerPath();
			if not Path then
				Path = THEME:GetPathG("Common","fallback banner");
			end
			c.SBanner:LoadBanner(Path);
			c.SBanner:setsize(372,174);
			c.SBanner:diffusealpha(1);
			c.SRoulette:diffusealpha(0);
		else
			local topscreen = SCREENMAN:GetTopScreen();
			local MusicWheel = topscreen:GetMusicWheel();
			if MusicWheel:GetCurrentIndex() ~= 0 then
				local mType = MusicWheel:GetSelectedType();
				Path = THEME:GetPathG("Common","fallback banner");
				if mType == "WheelItemDataType_Roulette" then
					c.SBanner:diffusealpha(0);
					c.SRoulette:diffusealpha(1);
				else
					c.SRoulette:diffusealpha(0);
					c.SBanner:LoadBanner(Path);
				end
			end
		end
	end;
	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
};

return t;