#region		Basic Actions


	#region	STANDING
	/*
		s_mo_stand
			{
				frames:	4
				w:		59
				h:		65
				sprite:	sPlaceJ1
				var:	spritePlace
				x:		34
				y:		65
				prec:	true
			}
	*/
	#endregion

	#region	GUARDING
	/*
		s_mo_guard
			{
				frames:	4
				w:		64
				h:		59
				sprite:	sPlaceGardeJ1
				var:	spritePlaceGarde
				x:		34
				y:		59
				prec:	true
			}
		*/
	#endregion

	#region	WALKING
	/*
		s_mo_walk
			{
				frames:	3
				w:		65
				h:		62
				sprite:	sMarcheJ1
				var:	spriteMarche
				x:		32
				y:		62
				prec:	true
			}
	*/
	#endregion

	#region	RUNNING
	/*
		s_mo_run
			{
				frames:	10
				w:		62
				h:		66
				sprite:	sCourseJ1
				var:	spriteCourse
				x:		32
				y:		66
				prec:	true
			}
	*/
	#endregion

	#region	DODGING

		#region	Dodge 1
		/*
			s_mo_dodge1
				{
					frames:	6
					w:		57
					h:		57
					sprite:	sEsquive1J1
					var:	spriteEsquive1
					x:		40
					y:		57
					prec:	true
				}
		*/
		#endregion

		#region	Dodge 2
		/*	
			s_mo_dodge2
				{
					frames:	7
					w:		65
					h:		58
					sprite:	sEsquive2J1
					var:	spriteEsquive2
					x:		40
					y:		58
					prec:	true
				}
		*/
		#endregion

		#region	Dodge 3
		/*	s_mo_dodge3
				{
					frames:	7
					w:		68
					h:		53
					sprite:	sEsquive3J1
					var:	spriteEsquive3
					x:		30
					y:		53
					prec:	true
				}*/
		#endregion
	#endregion

	#region	JUMPING

		#region	TUCKJUMP
		/*	s_mo_tuckjump
				{
					frames:	8
					w:		53
					h:		56
					sprite:	sSautJ1
					var:	spriteSaut
					x:		26
					y:		56
					prec:	true
				}
		*/
		#endregion

		#region	WALLJUMP
		/*	s_mo_tuckjump
				{
					frames:	8
					w:		29
					h:		64
					sprite:	sSautJ1
					var:	spriteSaut
					x:		11
					y:		64
					prec:	true
				}
		*/
		#endregion

	#endregion

	#region	ROLLING
	/*
		s_mo_roll
			{
				frames:	4
				w:		76
				h:		46
				sprite:	sRouladeJ1
				var:	spriteRoulade
				x:		38
				y:		46
				prec:	true
			}*/

	#endregion

#region		ATTACKING
	#region	PUNCHING

		#region	LIGHT PUNCH

			#region	LIGHT PUNCH 1
			/*
			s_mo_lightpunch1
				{
					frames:	1
					w:		74
					h:		57
					sprite:	sCoup1J1
					var:	spriteCoup1
					x:		28
					y:		57
					prec:	true
				}*/
			#endregion
			#region	LIGHT PUNCH 2
					/*
				s_mo_lightpunch2
					{
						frames:	7
						w:		97
						h:		57
						sprite:	sCoup2J1
						var:	spriteCoup2
						x:		30
						y:		57
						prec:	true
					}
					*/
			#endregion
			#region	LIGHT PUNCH 3
				/*
				s_mo_lightpunch3
					{
						frames:	1
						w:		74
						h:		57
						sprite:	sCoup3J1
						var:	spriteCoup3
						x:		28
						y:		57
						prec:	true
					}
					*/
			#endregion

		#endregion

		#region	PUNCH COMBOS

		#region	LIGHT
			#region	Light Punch Combo 1
				/*
				s_mo_lightcombo1
					{
						frames:	9
						w:		91
						h:		57
						sprite:	sCombo1J1
						var:	spriteCombo1
						x:		30
						y:		57
						prec:	true
					}
					*/
			#endregion

			#region	Light Punch Combo 2
				/*
				s_mo_lightcombo2
					{
						frames:	1
						w:		86
						h:		61
						sprite:	sCombo2J1
						var:	spriteCombo2
						x:		15
						y:		61
						prec:	true
					}
					*/
			#endregion
		#endregion

		#region	HEAVY 
			#region	Charge 2
				/*
				s_mo_charge2
					{
						frames:	1
						w:		56
						h:		59
						sprite:	sChargeCombo2J1
						var:	spriteChargeCombo2
						x:		30
						y:		57
						prec:	true
					}
					*/
			#endregion

			#region	HEAVY Punch Combo 2
				/*
				UNUSED
					{
						frames:	1
						w:		86
						h:		61
						sprite:	sCombo2J1
						var:	spriteCombo2
						x:		15
						y:		61
						prec:	true
					}
					*/
			#endregion
		#endregion

	#endregion



#endregion



"DANCE MONKEY DANCE!"