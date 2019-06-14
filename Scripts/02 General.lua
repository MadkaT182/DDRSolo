function thified_curstage()
	local cur_stage = GAMESTATE:GetCurrentStage();
	local ordinal = "th";
	local adjust= 1

	local numbered_stages= {
		Stage_1st= true,
		Stage_2nd= true,
		Stage_3rd= true,
		Stage_4th= true,
		Stage_5th= true,
		Stage_6th= true,
		Stage_Next= true,
	}

	if GAMESTATE:IsEventMode() then
		return "EVENT MODE";
	end

	if GAMESTATE:GetCurrentStage() == "Stage_Final" then
		return "FINAL STAGE";
	elseif GAMESTATE:IsExtraStage() or GAMESTATE:IsExtraStage2() then
		return "EXTRA STAGE";
	end

	if GAMESTATE:GetCurrentStageIndex() + adjust == 1 then
		ordinal = "st";
	elseif GAMESTATE:GetCurrentStageIndex() + adjust == 2 then
		ordinal ="nd";
	elseif GAMESTATE:GetCurrentStageIndex() + adjust == 3 then
		ordinal ="rd";
	end

	if numbered_stages[cur_stage] then
		return GAMESTATE:GetCurrentStageIndex() + adjust .. ordinal .." STAGE";
	else
		return ToEnumShortString(cur_stage) .. ordinal .." STAGE";
	end
end

function stylediff()
	if ThemePrefs.Get("SoloUI") then
		--Solo interface - steps type
		local style = GAMESTATE:GetCurrentStyle():GetStepsType();
		local styLyst ={
			["StepsType_Dance_Single"] = "4 PANELS",
			["StepsType_Dance_Solo"] = "6 PANELS",
			["StepsType_Dance_Threepanel"] = "3 PANELS"
		}
		local player = GAMESTATE:GetMasterPlayerNumber();
		local diff = CustomDifficultyToLocalizedString(GAMESTATE:GetCurrentSteps(player):GetDifficulty());
		local result = styLyst[style] or "";

		return result.." "..diff;
	else
		--Regular gameplay - style and steps
		local style = GAMESTATE:GetCurrentStyle():GetName();
		local styLyst ={
			["single"] = "4 PANELS",
			["versus"] = "8 PANELS",
			["double"] = "8 PANELS"
		}
		local result = styLyst[style] or "";

		return result;
	end
end

function justyle()
	if GAMESTATE:GetNumSidesJoined() == 1 then
		local style = GAMESTATE:GetCurrentStyle():GetStepsType();
		local styLyst ={
			["StepsType_Dance_Single"] = "4 PANELS",
			["StepsType_Dance_Solo"] = "6 PANELS",
			["StepsType_Dance_Threepanel"] = "3 PANELS"
		}
		local result = styLyst[style] or "";
		return result;
	else
		local style = GAMESTATE:GetCurrentStyle():GetName();
		local styLyst ={
			["single"] = "4 PANELS",
			["versus"] = "8 PANELS",
			["double"] = "8 PANELS"
		}
		local result = styLyst[style] or "";
		return result;
	end
end

function PercMC(player,combo)
	local steps = GAMESTATE:GetCurrentSteps(player);
    if steps then
		local taps = steps:GetRadarValues(player):GetValue("RadarCategory_TapsAndHolds");
		return PercScore(combo/taps);
	else
		return 0;
    end
end

function PercScore(score)
	return string.format("%0.1f", (score*100) ).."%";
end

function GetSortName()
	local sortList ={
		[0] = "Preferred",
		[1] = "Group",
		[2] = "Title",
		[3] = "BPM",
		[4] = "Popularity",
		[5] = "TopGrades",
		[6] = "Artist",
		[7] = "Genre"
	}
	local name = sortList[ThemePrefs.Get("DefSort")] or "Preferred";
	return name;
end