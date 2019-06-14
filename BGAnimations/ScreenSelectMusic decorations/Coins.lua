local left = GAMESTATE:GetNumStagesLeft(GAMESTATE:GetMasterPlayerNumber());
local t = Def.ActorFrame {};

for i=1,left do
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathG("anim","coin"))..{
			BeginCommand=function(self)
				if i == left then
					self:sleep(1);
					self:diffusealpha(0);
				end
			end;
			OnCommand=cmd(x,SCREEN_CENTER_X-290+(i-1)*21;y,SCREEN_BOTTOM-32;pause);
			SetCommand=function(self)
				local offset = 1;
				local song = GAMESTATE:GetCurrentSong();
				if song then
					if GAMESTATE:GetCurrentSong():IsLong() then
						offset = 2;
					elseif GAMESTATE:GetCurrentSong():IsMarathon() then
						offset = 3;
					else
						offset = 1;
					end
				end
				if i <= (left-offset) then
					self:stoptweening();
					self:linear(.2);
					self:sleep(0);
					self:diffusealpha(1);
				else
					self:stoptweening();
					self:diffusealpha(0);
				end
			end;
			Condition=not GAMESTATE:IsEventMode();
			CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
		};
	};
end

for j=1,3 do
	--Overlay coins
	t[#t+1] = Def.ActorFrame {
		LoadActor(THEME:GetPathG("anim","coin"))..{
			OnCommand=cmd(x,SCREEN_CENTER_X+71-(j-1)*21;y,SCREEN_BOTTOM-170);
			SetCommand=function(self)
				local offset = 1;
				local song = GAMESTATE:GetCurrentSong();
				if song then
					if GAMESTATE:GetCurrentSong():IsLong() then
						offset = 2;
					elseif GAMESTATE:GetCurrentSong():IsMarathon() then
						offset = 3;
					else
						offset = 1;
					end
					if j <= (offset) then
						self:stoptweening();
						self:diffusealpha(1);
						self:play();
						self:linear(.3);
						self:y(SCREEN_BOTTOM-170);
						self:x(SCREEN_CENTER_X+71-(j-1)*21);
					else
						self:stoptweening();
						self:pause();
						self:setstate(0);
						self:linear(.2);
						self:y(SCREEN_BOTTOM-32);
						self:x(SCREEN_CENTER_X-248-(j-1)*21);
						self:sleep(0);
						self:diffusealpha(0);
					end
				else
					offset = 1;
					if j <= (offset) then
						self:stoptweening();
						self:diffusealpha(1);
						self:play();
						self:linear(.3);
						self:y(SCREEN_BOTTOM-170);
						self:x(SCREEN_CENTER_X+71-(j-1)*21);
					else
						self:stoptweening();
						self:pause();
						self:setstate(0);
						self:linear(.2);
						self:y(SCREEN_BOTTOM-32);
						self:x(SCREEN_CENTER_X-248-(j-1)*21);
						self:sleep(0);
						self:diffusealpha(0);
					end
				end
			end;
			Condition=not GAMESTATE:IsEventMode();
			CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
		};
	};
end

return t;