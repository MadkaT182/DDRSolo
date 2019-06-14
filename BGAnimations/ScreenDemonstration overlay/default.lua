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
	LoadActor("../ScreenGameplay overlay/fgmov");
	Def.Quad{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-63;diffusecolor,Color.Black;zoomto,SCREEN_WIDTH,50);
	};
	LoadFont("_nfo")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-63);
		OnCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			self:settext("GAME  OVER");
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
	LoadActor("../_arcade_decorations");
}