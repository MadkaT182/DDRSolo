return Def.ActorFrame{
	OnCommand=cmd(Center);
	--Upper Row
	--Desat Banner
	Def.ActorFrame{
		OnCommand=cmd(x,-512;y,-288);
		Def.ActorFrame{
			OnCommand=cmd(x,128;y,96);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.66);
						self:croptop(.5);
						self:x(-122)
						self:y(-47);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
	};	
	--Desat Banner
	Def.ActorFrame{
		OnCommand=cmd(x,-128;y,-288);
		Def.ActorFrame{
			OnCommand=cmd(x,-128;y,96);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropright(.66);
						self:croptop(.5);
						self:x(128)
						self:y(-47);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(y,96);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.33);
						self:cropright(.33);
						self:croptop(.5);
						self:y(-47);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(x,128;y,96);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.66);
						self:croptop(.5);
						self:x(-122)
						self:y(-47);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
	};	
	--Desat Banner
	Def.ActorFrame{
		OnCommand=cmd(x,256;y,-288);
		Def.ActorFrame{
			OnCommand=cmd(x,-128;y,96);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropright(.66);
						self:croptop(.5);
						self:x(128)
						self:y(-47);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(y,96);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.33);
						self:cropright(.33);
						self:croptop(.5);
						self:y(-47);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(x,128;y,96);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.66);
						self:croptop(.5);
						self:x(-122)
						self:y(-47);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
	};	
	--Center Row
	--Desat Banner
	Def.ActorFrame{
		OnCommand=cmd(x,-384;y,-96);
		Def.ActorFrame{
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.33);
						self:cropright(.33);
						self:cropbottom(.5);
						self:y(40);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(x,128);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.66);
						self:cropbottom(.5);
						self:x(-122)
						self:y(40);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(y,96);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.33);
						self:cropright(.33);
						self:croptop(.5);
						self:y(-47);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(x,128;y,96);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.66);
						self:croptop(.5);
						self:x(-122)
						self:y(-47);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
	};
	--Color Banner
	Def.ActorFrame{
		OnCommand=cmd(y,-96);
		Def.ActorFrame{
			OnCommand=cmd(x,-128);
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropright(.66);
						self:cropbottom(.5);
						self:x(126)
						self:y(42);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.33);
						self:cropright(.33);
						self:cropbottom(.5);
						self:y(42);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(x,128);
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.66);
						self:cropbottom(.5);
						self:x(-122)
						self:y(42);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(x,-128;y,96);
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropright(.66);
						self:croptop(.5);
						self:x(126)
						self:y(-45);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(y,96);
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.33);
						self:cropright(.33);
						self:croptop(.5);
						self:y(-45);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(x,128;y,96);
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.66);
						self:croptop(.5);
						self:x(-122)
						self:y(-45);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
	};
	--Desat Banner
	Def.ActorFrame{
		OnCommand=cmd(x,384;y,-96);
		Def.ActorFrame{
			OnCommand=cmd(x,-128);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropright(.66);
						self:cropbottom(.5);
						self:x(128)
						self:y(40);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.33);
						self:cropright(.33);
						self:cropbottom(.5);
						self:y(40);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(x,-128;y,96);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropright(.66);
						self:croptop(.5);
						self:x(128)
						self:y(-47);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(y,96);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.33);
						self:cropright(.33);
						self:croptop(.5);
						self:y(-47);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
	};
	--Lower Row
	--Desat Banner
	Def.ActorFrame{
		OnCommand=cmd(x,-256;y,96);
		Def.ActorFrame{
			OnCommand=cmd(x,-128);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropright(.66);
						self:cropbottom(.5);
						self:x(128)
						self:y(40);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.33);
						self:cropright(.33);
						self:cropbottom(.5);
						self:y(40);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(x,128);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.66);
						self:cropbottom(.5);
						self:x(-122)
						self:y(40);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(x,-128;y,96);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropright(.66);
						self:croptop(.5);
						self:x(128)
						self:y(-47);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(y,96);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.33);
						self:cropright(.33);
						self:croptop(.5);
						self:y(-47);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(x,128;y,96);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.66);
						self:croptop(.5);
						self:x(-122)
						self:y(-47);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
	};
	--Desat Banner
	Def.ActorFrame{
		OnCommand=cmd(x,128;y,96);
		Def.ActorFrame{
			OnCommand=cmd(x,-128);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropright(.66);
						self:cropbottom(.5);
						self:x(128)
						self:y(40);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.33);
						self:cropright(.33);
						self:cropbottom(.5);
						self:y(40);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(x,128);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.66);
						self:cropbottom(.5);
						self:x(-122)
						self:y(40);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(x,-128;y,96);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropright(.66);
						self:croptop(.5);
						self:x(128)
						self:y(-47);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(y,96);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.33);
						self:cropright(.33);
						self:croptop(.5);
						self:y(-47);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(x,128;y,96);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropleft(.66);
						self:croptop(.5);
						self:x(-122)
						self:y(-47);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
	};
	--Desat Banner
	Def.ActorFrame{
		OnCommand=cmd(x,512;y,96);
		Def.ActorFrame{
			OnCommand=cmd(x,-128);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropright(.66);
						self:cropbottom(.5);
						self:x(128)
						self:y(40);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
		Def.ActorFrame{
			OnCommand=cmd(x,-128;y,96);
			Def.Quad{
				OnCommand=cmd(diffuse,color("#141414");zoomto,128,96);
			};
			Def.Sprite{
				OnCommand=function(self)
					if Song then
						local Song = GAMESTATE:GetCurrentSong();
						local Path = Song:GetBannerPath();
						if not Path then
							Path = THEME:GetPathG("Common","fallback banner");
						end
						self:Load(Path);
						self:scaletoclipped(372,174);
						self:cropright(.66);
						self:croptop(.5);
						self:x(128)
						self:y(-47);
						self:diffusealpha(.1);
					else
					end
				end;
			};
			LoadActor(THEME:GetPathG("Gameplay","fadeframe"));
		};
	};
	LoadActor("CoinsB")..{
		InitCommand=cmd(x,-SCREEN_WIDTH/2;y,-SCREEN_HEIGHT/2)
	};
}