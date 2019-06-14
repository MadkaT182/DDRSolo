return Def.ActorFrame {
	LoadFont("_system2") .. {
		InitCommand=cmd(Center);
		OnCommand=cmd(playcommand,"Refresh");
		CoinInsertedMessageCommand=cmd(playcommand,"Refresh");
		CoinModeChangedMessageCommand=cmd(playcommand,"Refresh");
		RefreshCommand=function(self)
			local bCanPlay = GAMESTATE:EnoughCreditsToJoin();
			local bReady = GAMESTATE:GetNumSidesJoined() > 0;
			local sText = ""
			if GAMESTATE:IsEventMode() then
				sText = "EVENT MODE";
			else
		        if GAMESTATE:GetCoinMode() == 'CoinMode_Free' then
		          sText = "FREE PLAY";
		        else
					if bCanPlay or bReady then
						--sText = "PUSH START BUTTON";
						sText = "";
					else
						sText = "INSERT COIN(S)";
					end
		        end
			end
			self:settext(sText);
			self:diffuseblink();
			self:effectcolor1(1,1,1,0);
			self:effectcolor2(1,1,1,1);
			self:effectperiod(1);
		end;
	};
	LoadActor(THEME:GetPathG("Common","footer/press"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-64);
		OnCommand=cmd(playcommand,"Refresh");
		CoinInsertedMessageCommand=cmd(playcommand,"Refresh");
		CoinModeChangedMessageCommand=cmd(playcommand,"Refresh");
		RefreshCommand=function(self)
			local bCanPlay = GAMESTATE:EnoughCreditsToJoin();
			local bReady = GAMESTATE:GetNumSidesJoined() > 0;
			local sText = ""
			if GAMESTATE:IsEventMode() then
				self:visible(false);
			else
		        if GAMESTATE:GetCoinMode() == 'CoinMode_Free' then
		          self:visible(false);
		        else
					if bCanPlay or bReady then
						self:visible(true);
					else
						self:visible(false);
					end
		        end
			end
			self:diffuseblink();
			self:effectcolor1(1,1,1,0);
			self:effectcolor2(1,1,1,1);
			self:effectperiod(1);
		end;
	};
};