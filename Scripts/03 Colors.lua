function GetDifficultyColor(difficulty)
	local Colors = {
		["Difficulty_Beginner"] = "#007CC4",
		["Difficulty_Easy"] = "#b68fec",
		["Difficulty_Medium"] = "#F57A56",
		["Difficulty_Hard"] = "#38d771",
		["Difficulty_Challenge"] = "#CC2BB1",
		["Difficulty_Edit"] = "#FFFFFF",
	}
	local Color = Colors[difficulty] or "#FFFFFF";
	return Color;
end