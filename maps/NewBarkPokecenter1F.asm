	object_const_def
	const NEWBARKPOKECENTER1F_NURSE

NewBarkPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, NewBarkPokecenterRemoveStairs

NewBarkPokecenterRemoveStairs:
	changeblock  0, 6, $04 ; locked door
	endcallback

NewBarkPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

NewBarkPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, NEW_BARK_TOWN, 2
	warp_event  6,  7, NEW_BARK_TOWN, 2
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkPokecenter1FNurseScript, -1
