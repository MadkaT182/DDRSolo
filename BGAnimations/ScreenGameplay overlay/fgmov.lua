local t = Def.ActorFrame {};
local mSet = ThemePrefs.Get("FGMovies");
local allMovs = FILEMAN:GetDirListing("FGAnimations/");
local curMov = "";
local vids = {};
local control = 1;

if mSet ~= 123456 and #allMovs > 0 then
	for k = 1,mSet do
		table.insert(vids,allMovs[math.random(1,#allMovs)]);
	end
	allMovs=nil;
	local curMov = vids[1];
	for j = 1,3 do
		for i = 1,2 do
			t[#t+1] = Def.ActorFrame {
				LoadActor("/FGAnimations/"..curMov)..{
					InitCommand=function(self)
						local vertPos = { SCREEN_TOP+112, SCREEN_CENTER_Y-20, SCREEN_BOTTOM-152 };
						self:Center();
						self:zoomto(116,96);
						if i == 1 then
							self:x(SCREEN_LEFT+64);
						else
							self:x(SCREEN_RIGHT-64);
						end
						self:y(vertPos[j]);
						self:queuecommand("Next");
					end;
					NextCommand=function(self)
						self:sleep(3);
						if i == 1 and j == 1 then
							if control == #vids then
								control = 1;
							else
								control = control + 1;
							end
						end;
						curMov = vids[control];
						self:Load("/FGAnimations/"..curMov);
						self:zoomto(116,96);
						self:queuecommand("Wait");
					end;
					WaitCommand=function(self)
						self:sleep(5);
						self:queuecommand("Next");
					end;
				};
			};
		end
	end
else
	for j = 1,3 do
		for i = 1,2 do
			t[#t+1] = Def.ActorFrame {
				Def.Sprite{
					InitCommand=function(self)
						local song = GAMESTATE:GetCurrentSong();
						local vertPos = { SCREEN_TOP+112, SCREEN_CENTER_Y-20, SCREEN_BOTTOM-152 };
						if song then
							if song:HasJacket() then
								self:LoadBackground(song:GetJacketPath());
							elseif song:HasBackground() then
								self:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
							else
								self:Load(THEME:GetPathG("Common", "fallback background"));
							end
						end
						self:zoomto(106,76);
						if i == 1 then
							self:x(SCREEN_LEFT+59);
						else
							self:x(SCREEN_RIGHT-59);
						end
						self:y(vertPos[j]);
					end;
				};
			};
		end
	end
end

return t;