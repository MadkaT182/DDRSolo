function GetSongArt(songtit)
	--Verify included art
	local SongImg = {
		["CUT'N'MOVE"] = "00",--I'm alive
		["UNCLE 36 SEC feat. MC TAIWAN"] = "01",--00 Remix
		["HIGH ENERGY (John '00' Fleming Remix)"] = "02",
		["DON'T CLOCK ME"] = "03",
		["SKY HIGH"] = "04",
		["CLUB TROPICANA"] = "05",
		["TEMPLE OF LOVE"] = "06",
		["think ya better D"] = "07",
		["DRILL INSTRUCTOR (C-Jah Happy Mix)"] = "08",
		["MY BABY MAMA"] = "09",
		["KISS ME (KCP REMIX)"] = "10",
		["DREAM A DREAM (MIAMI BOOTY MIX)"] = "11",
		["CAN'T STOP FALLIN' IN LOVE"] = "43",
		["I DON'T WANT TO MISS A THING (PLANET LUTION MIX)"] = "12",
		["GET UP'N MOVE"] = "13",
		["GET OFF"] = "14",
		["CAPTAIN JACK"] = "15",--together forever
		["NINEBALL feat.ATOMIC GUN & JULIA"] = "16",--15 remix
		["TYPICAL TROPICAL"] = "17",
		["CELEBRATE NITE"] = "18",
		["Let the beat hit em!"] = "19",
		["Let the beat hit em! (BM IIDX version)"] = "19",
		["KUNG FU FIGHTING (MIAMI BOOTY MIX)"] = "20",
		["WILD RUSH"] = "21",
		["THAT'S THE WAY '98"] = "22",
		["STRUT YOUR FUNKY STUFF"] = "23",
		["SAMBA DE JANEIRO"] = "24",
		["FREAKY"] = "25",
		["SEXY PLANET"] = "26",
		["LOVE MACHINE"] = "27",
		["LOVE THIS FEELIN'"] = "28",
		["HYSTERIA"] = "29",
		["SUPER STAR"] = "30",
		["TRIP MACHINE"] = "31",
		["DROP OUT"] = "32",
		["PARANOIA EVOLUTION"] = "33",
		["NONSTOP A"] = "34",
		["NONSTOP B"] = "35",
		["NONSTOP C"] = "36",
		["NONSTOP D"] = "37",
		["NONSTOP E"] = "38",
		["NONSTOP F"] = "39",
		["NONSTOP G"] = "40",
		["NONSTOP H"] = "41",
		["NONSTOP I"] = "42"
	}

	return SongImg[songtit] or "fallback"
end