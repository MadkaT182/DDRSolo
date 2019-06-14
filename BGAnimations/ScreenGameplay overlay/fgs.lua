return Def.ActorFrame {
	Def.ActorFrame{
		LoadActor("fgmov");
		LoadActor(THEME:GetPathG("Gameplay","FGAnim/static"))..{
			OnCommand=cmd(x,SCREEN_LEFT+64;y,SCREEN_CENTER_Y-128;zoomtoheight,76);
			LifeChangedMessageCommand=function(self,params)
				local pn = GAMESTATE:GetMasterPlayerNumber();
				if params.Player == pn then
					local life = tonumber(string.format("%.1f",params.LifeMeter:GetLife()));
					if life < .09 then
						self:diffusealpha(1);
					else
						self:diffusealpha(0);
					end
				end
			end;
		};
		LoadActor(THEME:GetPathG("Gameplay","FGAnim/static"))..{
			OnCommand=cmd(x,SCREEN_LEFT+64;y,SCREEN_CENTER_Y-20;zoomtoheight,76);
			LifeChangedMessageCommand=function(self,params)
				local pn = GAMESTATE:GetMasterPlayerNumber();
				if params.Player == pn then
					local life = tonumber(string.format("%.1f",params.LifeMeter:GetLife()));
					if life < .25 then
						self:diffusealpha(1);
					else
						self:diffusealpha(0);
					end
				end
			end;
		};
		LoadActor(THEME:GetPathG("Gameplay","FGAnim/static"))..{
			OnCommand=cmd(x,SCREEN_LEFT+64;y,SCREEN_CENTER_Y+87;zoomtoheight,76,diffusealpha,0);
			LifeChangedMessageCommand=function(self,params)
				local pn = GAMESTATE:GetMasterPlayerNumber();
				if params.Player == pn then
					local life = tonumber(string.format("%.1f",params.LifeMeter:GetLife()));
					if life < .41 then
						self:diffusealpha(1);
					else
						self:diffusealpha(0);
					end
				end
			end;
		};
		LoadActor(THEME:GetPathG("Gameplay","FGAnim/static"))..{
			OnCommand=cmd(x,SCREEN_RIGHT-64;y,SCREEN_CENTER_Y-128;zoomtoheight,76);
			LifeChangedMessageCommand=function(self,params)
				local pn = GAMESTATE:GetMasterPlayerNumber();
				if params.Player == pn then
					local life = tonumber(string.format("%.1f",params.LifeMeter:GetLife()));
					if life < .17 then
						self:diffusealpha(1);
					else
						self:diffusealpha(0);
					end
				end
			end;
		};
		LoadActor(THEME:GetPathG("Gameplay","FGAnim/static"))..{
			OnCommand=cmd(x,SCREEN_RIGHT-64;y,SCREEN_CENTER_Y-20;zoomtoheight,76);
			LifeChangedMessageCommand=function(self,params)
				local pn = GAMESTATE:GetMasterPlayerNumber();
				if params.Player == pn then
					local life = tonumber(string.format("%.1f",params.LifeMeter:GetLife()));
					if life < .33 then
						self:diffusealpha(1);
					else
						self:diffusealpha(0);
					end
				end
			end;
		};
		LoadActor(THEME:GetPathG("Gameplay","FGAnim/static"))..{
			OnCommand=cmd(x,SCREEN_RIGHT-64;y,SCREEN_CENTER_Y+87;zoomtoheight,76;diffusealpha,0);
			LifeChangedMessageCommand=function(self,params)
				local pn = GAMESTATE:GetMasterPlayerNumber();
				if params.Player == pn then
					local life = tonumber(string.format("%.1f",params.LifeMeter:GetLife()));
					if life < .49 then
						self:diffusealpha(1);
					else
						self:diffusealpha(0);
					end
				end
			end;
		};
		Condition=GAMESTATE:GetNumSidesJoined() == 1;
	};
	Def.ActorFrame{
		LoadActor("fgmov");
		LoadActor(THEME:GetPathG("Gameplay","FGAnim/static"))..{
			OnCommand=cmd(x,SCREEN_LEFT+64;y,SCREEN_CENTER_Y-128;zoomtoheight,76);
			LifeChangedMessageCommand=function(self,params)
				if params.Player == PLAYER_1 then
					local life = tonumber(string.format("%.1f",params.LifeMeter:GetLife()));
					if life < .02 then
						self:diffusealpha(1);
					else
						self:diffusealpha(0);
					end
				end
			end;
		};
		LoadActor(THEME:GetPathG("Gameplay","FGAnim/static"))..{
			OnCommand=cmd(x,SCREEN_LEFT+64;y,SCREEN_CENTER_Y-20;zoomtoheight,76);
			LifeChangedMessageCommand=function(self,params)
				if params.Player == PLAYER_1 then
					local life = tonumber(string.format("%.1f",params.LifeMeter:GetLife()));
					if life < .18 then
						self:diffusealpha(1);
					else
						self:diffusealpha(0);
					end
				end
			end;
		};
		LoadActor(THEME:GetPathG("Gameplay","FGAnim/static"))..{
			OnCommand=cmd(x,SCREEN_LEFT+64;y,SCREEN_CENTER_Y+87;zoomtoheight,76);
			LifeChangedMessageCommand=function(self,params)
				if params.Player == PLAYER_1 then
					local life = tonumber(string.format("%.1f",params.LifeMeter:GetLife()));
					if life < .34 then
						self:diffusealpha(1);
					else
						self:diffusealpha(0);
					end
				end
			end;
		};
		LoadActor(THEME:GetPathG("Gameplay","FGAnim/static"))..{
			OnCommand=cmd(x,SCREEN_RIGHT-64;y,SCREEN_CENTER_Y-128;zoomtoheight,76);
			LifeChangedMessageCommand=function(self,params)
				if params.Player == PLAYER_2 then
					local life = tonumber(string.format("%.1f",params.LifeMeter:GetLife()));
					if life < .02 then
						self:diffusealpha(1);
					else
						self:diffusealpha(0);
					end
				end
			end;
		};
		LoadActor(THEME:GetPathG("Gameplay","FGAnim/static"))..{
			OnCommand=cmd(x,SCREEN_RIGHT-64;y,SCREEN_CENTER_Y-20;zoomtoheight,76);
			LifeChangedMessageCommand=function(self,params)
				if params.Player == PLAYER_2 then
					local life = tonumber(string.format("%.1f",params.LifeMeter:GetLife()));
					if life < .18 then
						self:diffusealpha(1);
					else
						self:diffusealpha(0);
					end
				end
			end;
		};
		LoadActor(THEME:GetPathG("Gameplay","FGAnim/static"))..{
			OnCommand=cmd(x,SCREEN_RIGHT-64;y,SCREEN_CENTER_Y+87;zoomtoheight,76);
			LifeChangedMessageCommand=function(self,params)
				if params.Player == PLAYER_2 then
					local life = tonumber(string.format("%.1f",params.LifeMeter:GetLife()));
					if life < .34 then
						self:diffusealpha(1);
					else
						self:diffusealpha(0);
					end
				end
			end;
		};
		Condition=GAMESTATE:GetNumSidesJoined() == 2;
	};
}