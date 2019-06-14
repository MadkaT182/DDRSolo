return Def.ActorFrame {
	LoadActor("bg")..{
		InitCommand=cmd(FullScreen);
	};
	LoadActor("nfo")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-120;y,SCREEN_BOTTOM-48);
	};
	LoadActor("mask")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-49;blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true);
	};
	LoadActor(THEME:GetPathG("","Common footer/diff"))..{
		InitCommand=cmd(pause;setstate,0;x,SCREEN_CENTER_X+350;y,SCREEN_BOTTOM-47;ztest,true;playcommand,"Anim");
		AnimCommand=cmd(linear,5.234;x,SCREEN_CENTER_X-580;queuecommand,"Repeat");
		RepeatCommand=cmd(sleep,1.5;x,SCREEN_CENTER_X+350;queuecommand,"Anim");
		SetCommand=function(self)
			local difficultyStates = {
				Difficulty_Beginner	 = 0,
				Difficulty_Easy		 = 1,
				Difficulty_Medium	 = 2,
				Difficulty_Hard		 = 3,
				Difficulty_Challenge = 4,
				Difficulty_Edit		 = 5,
			};
			local player = GAMESTATE:GetMasterPlayerNumber();

			if player then
				local Selection = GAMESTATE:GetCurrentSteps(player);

				if Selection then
					local dc = Selection:GetDifficulty();
					self:setstate(difficultyStates[dc] or 5)
				end
			end
		end;
		CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
		CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
	};
	LoadActor(THEME:GetPathG("","Common footer/select"))..{
		InitCommand=cmd(x,SCREEN_CENTER_X+194;y,SCREEN_BOTTOM-47;sleep,4.567;ztest,true;playcommand,"Anim");
		AnimCommand=cmd(linear,3.567;x,SCREEN_CENTER_X-433;queuecommand,"Repeat");
		RepeatCommand=cmd(sleep,3.133;x,SCREEN_CENTER_X+194;queuecommand,"Anim");
	};
}