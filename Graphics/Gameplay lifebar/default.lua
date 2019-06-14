local t = Def.ActorFrame {};

-- LUA Based LifeMeter bar (by MadkaT)

if GAMESTATE:GetNumSidesJoined() == 1 then
	--1p Mode
	--BG
	t[#t+1] = Def.ActorFrame{
		LoadActor("LifeMeterBar under")..{
			InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+26;zoom,2;diffuse,color("#000000"));
		};
	};
	--FG
	for i = 1,44 do
		t[#t+1] = Def.Sprite{
			BeginCommand=cmd(y,SCREEN_TOP+26;zoom,2);
			InitCommand=function(self)
				self:x(SCREEN_CENTER_X-224+10*i);
			end;
			LifeChangedMessageCommand=function(self,params)
				self:Load(THEME:GetPathG("Gameplay","lifebar/LifeFill 45x1.png"));
				self:pause();
				if params.Player == GAMESTATE:GetMasterPlayerNumber() then
					local life = string.format("%.1f",params.LifeMeter:GetLife() * 10);
					local pills = (string.format("%.1f",life * 20.3 / 45)) * 10;
					self:setstate(-1 + i)
					if pills >= i then self:visible(true) else self:visible(false) end
				end
			end
		};
	end
	t[#t+1] = Def.ActorFrame{
		LoadActor("LifeMeterBar under")..{
			InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+26;zoom,2;diffusealpha,0);
			LifeChangedMessageCommand=function(self,param)
				if param.Player == GAMESTATE:GetMasterPlayerNumber() then
					if param.LifeMeter:GetLife() == 1 then
						self:diffusealpha(1);
						self:diffuseshift();
						self:effectcolor1(255,255,0,0);
						self:effectcolor2(255,255,0,.5);
					else
						self:diffusealpha(0);
						self:stopeffect();
					end;
				end
			end
		};
	};
	--Glows
	for i = 1,44 do
		t[#t+1] = Def.Sprite{
			BeginCommand=cmd(y,SCREEN_TOP+26;zoom,2;diffuseshift;effectcolor1,1,1,1,1;effectcolor2,1,1,1,.25);
			InitCommand=function(self)
				self:x(SCREEN_CENTER_X-224+10*i);
				self:Load(THEME:GetPathG("Gameplay","lifebar/glow_a.png"));
				self:diffusealpha(0);
				self:sleep(i*.033);
				self:playcommand("Anim");
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
			LifeChangedMessageCommand=function(self,params)
				if params.Player == GAMESTATE:GetMasterPlayerNumber() then
					local life = string.format("%.1f",params.LifeMeter:GetLife() * 10);
					local pills = (string.format("%.1f",life * 20.3 / 45)) * 10;
					if pills < i then self:visible(false) else self:visible(true) end
				end
			end
		};
		t[#t+1] = Def.Sprite{
			BeginCommand=cmd(y,SCREEN_TOP+26;zoom,2;diffuseshift;effectcolor1,1,1,1,1;effectcolor2,1,1,1,.25);
			InitCommand=function(self)
				self:x(SCREEN_CENTER_X-224+10*i);
				self:Load(THEME:GetPathG("Gameplay","lifebar/glow_a.png"));
				self:diffusealpha(0);
				self:sleep(i*.033);
				self:sleep(.033);
				self:playcommand("Anim");
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
			LifeChangedMessageCommand=function(self,params)
				if params.Player == GAMESTATE:GetMasterPlayerNumber() then
					local life = string.format("%.1f",params.LifeMeter:GetLife() * 10);
					local pills = (string.format("%.1f",life * 20.3 / 45)) * 10;
					if pills < i then self:visible(false) else self:visible(true) end
				end
			end
		};
	end
else
	--2p Mode
	for pn in ivalues(GAMESTATE:GetEnabledPlayers()) do
		t[#t+1] = Def.ActorFrame{
			LoadActor("LifeMeterBar under")..{
				InitCommand=cmd(y,SCREEN_TOP+26;zoom,1.5;diffuse,color("#000000"));
				OnCommand=function(self)
					if pn == PLAYER_1 then
						self:x(SCREEN_CENTER_X-183)
					else
						self:x(SCREEN_CENTER_X+183)
					end
				end;
			};
		};
	for i = 1,44 do
		t[#t+1] = Def.Sprite{
			BeginCommand=cmd(y,SCREEN_TOP+26;zoom,1.5);
			InitCommand=function(self)
				if pn == PLAYER_1 then
					self:x(SCREEN_CENTER_X-341+7*i);
				else
					self:x(SCREEN_CENTER_X+25+7*i);
				end
			end;
			LifeChangedMessageCommand=function(self,params)
				self:Load(THEME:GetPathG("Gameplay","lifebar/LifeFill 45x1.png"));
				self:pause();
				if params.Player == pn then
					local life = string.format("%.1f",params.LifeMeter:GetLife() * 10);
					local pills = (string.format("%.1f",life * 20.3 / 45)) * 10;
					self:setstate(-1 + i)
					if pills >= i then self:visible(true) else self:visible(false) end
				end
			end
		};
	end
	t[#t+1] = Def.ActorFrame{
		LoadActor("LifeMeterBar under")..{
			InitCommand=cmd(y,SCREEN_TOP+26;zoom,1.5;diffusealpha,0;diffuse,color("#000000"));
			OnCommand=function(self)
				if pn == PLAYER_1 then
					self:x(SCREEN_CENTER_X-183)
				else
					self:x(SCREEN_CENTER_X+183)
				end
			end;
			LifeChangedMessageCommand=function(self,param)
				if param.Player == pn then
					if param.LifeMeter:GetLife() == 1 then
						self:diffusealpha(1);
						self:diffuseshift();
						self:effectcolor1(255,255,0,0);
						self:effectcolor2(255,255,0,.5);
					else
						self:diffusealpha(0);
						self:stopeffect();
					end;
				end
			end
		};
	};
	end
end

-- for pn in ivalues(GAMESTATE:GetEnabledPlayers()) do
-- 	for i = 1,17 do
-- 		t[#t+1] = Def.Sprite{
-- 			BeginCommand=cmd(y,SCREEN_TOP+44;diffusealpha,0.35);
-- 			InitCommand=function(self) if pn == PLAYER_1 then self:x(SCREEN_CENTER_X-290+12*i) else self:x(SCREEN_CENTER_X+290-12*i) end end;
-- 			OnCommand=function(self)
-- 				self:Load(THEME:GetCurrentThemeDirectory().."BGAnimations/_lifebar/LifeMeterBar over 17x1.png")
-- 				self:pause()
-- 				self:setstate(-1 + i)
-- 			end;
-- 		};
-- 		t[#t+1] = Def.Sprite{
-- 			BeginCommand=cmd(y,SCREEN_TOP+44;);
-- 			InitCommand=function(self) if pn == PLAYER_1 then self:x(SCREEN_CENTER_X-292+12*i) else self:x(SCREEN_CENTER_X+290-12*i) end end;
-- 			OnCommand=function(self)
-- 				self:sleep(i / 20)
-- 				self:queuecommand("Anim")
-- 			end;
-- 			AnimCommand=function(self)
-- 				self:sleep(0.866)
-- 				self:accelerate(0.066)
-- 				self:addy(-8)
-- 				self:sleep(0.066)
-- 				self:accelerate(0.066)
-- 				self:addy(8)
-- 				self:queuecommand("Anim")
-- 			end;
-- 			LifeChangedMessageCommand=function(self,params)
-- 				self:Load(THEME:GetCurrentThemeDirectory().."BGAnimations/_lifebar/LifeMeterBar over 17x1.png")
-- 				self:pause()

-- 				if (params.Player == pn) then
-- 					local life = string.format("%.1f",params.LifeMeter:GetLife() * 10)
-- 					local pills = (string.format("%.1f",life * 2.9 / 17)) * 10
-- 					self:setstate(-1 + i)
-- 					if pills >= i then self:visible(true) else self:visible(false) end
-- 					if pills == 17 then self:glowshift():effectperiod(0.1):effectcolor1(1,1,1,0.4):effectcolor2(1,1,1,0) else self:stopeffect() end
-- 				end;
-- 			end;
-- 		};
-- 	end
-- end

return t;