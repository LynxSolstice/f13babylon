/*PARENT ITEMS FOR REFERENCE PURPOSES. DO NOT UNCOMMENT
/obj/item/clothing/head
	name = BODY_ZONE_HEAD
	icon = 'icons/obj/clothing/hats.dmi'
	icon_state = "top_hat"
	item_state = "that"
	body_parts_covered = HEAD
	slot_flags = ITEM_SLOT_HEAD
	var/blockTracking = 0 //For AI tracking
	var/can_toggle = null
	dynamic_hair_suffix = "+generic"
	var/datum/beepsky_fashion/beepsky_fashion //the associated datum for applying this to a secbot
	var/list/speechspan = null
	armor = list("melee" = 20, "bullet" = 10, "laser" = 10, "bio" = 0, "bomb" = 10, "rad" = 0, "fire" = 25, "acid" = 25, "wound" = 10)
	slowdown = 0

/obj/item/clothing/head/Initialize(mapload)
	. = ..()
	if(ishuman(loc) && dynamic_hair_suffix)
		var/mob/living/carbon/human/H = loc
		H.update_hair()

/obj/item/clothing/head/get_head_speechspans(mob/living/carbon/user)
	if(speechspan)
		return speechspan
	else
		return

/obj/item/clothing/head/helmet
	name = "helmet"
	desc = "Standard Security gear. Protects the head from impacts."
	icon_state = "helmet"
	item_state = "helmet"
	armor = list("melee" = 40, "bullet" = 40, "laser" = 40, energy = "25", "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 50, "wound" = 10)
	flags_inv = HIDEEARS | HIDEHAIR
	cold_protection = HEAD
	min_cold_protection_temperature = HELMET_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = HELMET_MAX_TEMP_PROTECT
	strip_delay = 60
	resistance_flags = NONE
	flags_cover = HEADCOVERSEYES

	dog_fashion = /datum/dog_fashion/head/helmet

/obj/item/clothing/head/helmet/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(SLOT_HEAD))*/

//Raider
/obj/item/clothing/head/helmet/f13/raider
	name = "base raider helmet"
	desc = "for testing"
	icon_state = "supafly"
	item_state = "supafly"
	flags_cover = HEADCOVERSEYES|HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	dynamic_hair_suffix = ""
	armor = list("melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

/obj/item/clothing/head/helmet/f13/raider/supafly
	name = "supa-fly raider helmet"
	desc = "It's a makeshift raider helmet, made of leather. It heavily smells with chems and sweat."
	icon_state = "supafly"
	item_state = "supafly"
	armor = list("melee" = 45, "bullet" = 30, "laser" = 30, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

/obj/item/clothing/head/helmet/f13/raider/wastehound
	name = "wastehound raider helmet"
	desc = "A sack hood made out of a suspicious leather with tufts of hair sticking out. This mask would make Leatherface proud."
	icon_state = "wastehound_hood_icon"
	item_state = "raider_wastehound_hood"
	visor_flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDESNOUT

/obj/item/clothing/head/helmet/f13/raider/arclight
	name = "arclight raider helmet"
	desc = "Welding mask with rare polarizing glass thats somehow still in working order. A treasured item in the wasteland."
	armor = list("melee" = 45, "bullet" = 30, "laser" = 30, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)
	icon_state = "arclight"
	item_state = "arclight"
	dynamic_hair_suffix = "+generic"
	flash_protect = 2
	tint = 0.5

/obj/item/clothing/head/helmet/f13/raider/blastmaster
	name = "blastmaster raider helmet"
	desc = "A sturdy helmet to protect against both the elements and from harm, if only it was not looking in such poor condition."
	icon_state = "blastmaster"
	item_state = "blastmaster"
	armor = list("melee" = 30, "bullet" = 50, "laser" = 30, "energy" = 10, "bomb" = 60, "bio" = 0, "rad" = 0, "fire" = 60, "acid" = 0, "wound" = 20)

/obj/item/clothing/head/helmet/f13/raider/yankee
	name = "yankee raider helmet"
	desc = "Long time ago, it has belonged to a football player, now it belongs to wasteland."
	icon_state = "yankee"
	item_state = "yankee"

/obj/item/clothing/head/helmet/f13/raider/eyebot
	name = "eyebot helmet"
	desc = "It is a dismantled eyebot, hollowed out to accommodate for a humanoid head."
	icon_state = "eyebot"
	item_state = "eyebot"

/obj/item/clothing/head/helmet/f13/raider/psychotic
	name = "psycho-tic raider helmet"
	desc = "A leather skullcap with tufts of hair sticking from each side."
	icon_state = "psychotic"
	item_state = "psychotic"

/obj/item/clothing/head/helmet/f13/fiend
	name = "fiend helmet"
	desc = "A leather cap cobbled together adorned with a bighorner skull, perfect for any drug-fueled frenzy."
	icon_state = "fiend"
	item_state = "fiend"
	flags_cover = null
	flags_inv = HIDEEARS
	dynamic_hair_suffix = "+generic"
	armor = list("melee" = 45, "bullet" = 30, "laser" = 30, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

/obj/item/clothing/head/helmet/f13/fiend_reinforced
	name = "reinforced fiend helmet"
	desc = "A leather cap cobbled together adorned with a bighorner skull, perfect for any drug-fueled frenzy. This helmet has been reinforced with metal plates under its skull"
	icon_state = "fiend"
	item_state = "fiend"
	armor = list("melee" = 50, "bullet" = 35, "laser" = 35, "energy" = 5, "bomb" = 20, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0, "wound" = 20)

/obj/item/clothing/head/helmet/f13/jackal
	name = "jackal headwrap"
	desc = "A cloth head wrap that secures around the user's head, sporting a few rienforced points of leather underneath."
	icon = 'icons/fallout/clothing/hats.dmi'
	icon_state = "jackal"
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	armor = list("melee" = 35, "bullet" = 20, "laser" = 10, "energy" = 0, "bomb" = 25, "bio" = 20, "rad" = 30, "fire" = 30, "acid" = 20, "wound" = 10)
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/helmet/f13/jackal/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/head/helmet/f13/raidermetal
	name = "metal raider helmet"
	desc = "A metal helmet, rusty and awful."
	icon_state = "raidermetal"
	item_state = "raidermetal"
	armor = list("melee" = 20, "bullet" = 35, "laser" = 20, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

/obj/item/clothing/head/helmet/f13/raidercombathelmet
	name = "combat raider helmet"
	desc = "A combat helmet modified with metal plating"
	icon_state = "raider_combat_helmet"
	item_state = "raider_combat_helmet"
	armor = list("melee" = 40, "bullet" = 40, "laser" = 40, "energy" = 10, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

///////////
//ENCLAVE//
///////////

/obj/item/clothing/head/f13/enclave
	name = "officer hat"
	desc = "A standard-issue Enclave officer's cap."
	icon_state = "enclave"
	item_color = "enclave"
	armor = list("melee" = 25, "bullet" = 25, "laser" = 25, "energy" = 10, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 25, "acid" = 90)

/obj/item/clothing/head/f13/enclave/peacekeeper
	name = "peacekeeper cap"
	desc = "Reinforced field cap issued to the soldiers of the Enclave."
	icon_state = "hat_enclave_peacekeeper"
	item_state = "hat_enclave_peacekeeper"

/obj/item/clothing/head/beret/enclave
	name = "enclave beret"
	desc = "A standard issue black beret of the Enclave."
	icon_state = "remnant"
	item_state = "remnant"
	flags_inv = HIDEEARS
	flags_cover = null
	armor = list("melee" = 25, "bullet" = 25, "laser" = 25, "energy" = 10, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 25, "acid" = 90)

/obj/item/clothing/head/beret/enclave/science
	name = "science beret"
	desc = "Blue beret signifying the wearer is a Science Officer of the Enclave."
	icon_state = "hat_enclave_science"
	item_state = "hat_enclave_science"

/obj/item/clothing/head/beret/enclave/intel
	name = "intel beret"
	desc = "Dark beret issued to Intelligence Officers of the Enclave."
	icon_state = "hat_enclave_intel"
	item_state = "hat_enclave_intel"
	armor = list("melee" = 50, "bullet" = 50, "laser" = 40, "energy" = 30, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 25, "acid" = 90)

/obj/item/clothing/head/helmet/f13/envirosuit
	name = "enclave envirosuit hood"
	icon_state = "envirohead"
	item_state = "envirohead"
	desc = "A white hazmat helmet with a coupling system, the visor looks to be made out of orange plexiglas."
	clothing_flags = THICKMATERIAL
	flags_cover = HEADCOVERSEYES|HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	dynamic_hair_suffix = ""
	armor = list("melee" = 25, "bullet" = 15, "laser" = 45, "energy" = 15, "bomb" = 10, "bio" = 100, "rad" = 100, "fire" = 40, "acid" = 40, "wound" = 10)
	strip_delay = 60
	equip_delay_other = 60
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	rad_flags = RAD_PROTECT_CONTENTS | RAD_NO_CONTAMINATE

/obj/item/clothing/head/helmet/f13/combat/mk2/enclave
	name = "old United States Marine Corp helmet"
	desc = "An advanced model of combat helmet worn by marines aboard the USS Democracy, second only to power armor in protection used by the USCM For various tasks and operations, it's handled the nuclear wasteland somewhat better than the rest of the armors you've seen."
	icon_state = "enclave_marine"
	item_state = "enclave_marine"
	armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 20, "bomb" = 25, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 0, "wound" = 25)

/obj/item/clothing/head/helmet/f13/enclave/usmcriot
	name = "old United States Marine Corp riot helmet"
	desc = "A pre-war riot armor helmet used by the USCM For various tasks and operations, it's handled the nuclear wasteland somewhat better than the rest of the armors you've seen."
	icon_state = "modified_usmc_riot"
	item_state = "modified_usmc_riot"
	flags_cover = HEADCOVERSEYES|HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	dynamic_hair_suffix = ""
	armor = list("melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 35, "bomb" = 20, "bio" = 25, "rad" = 25, "fire" = 20, "acid" = 20, "wound" = 20)

/obj/item/clothing/head/helmet/f13/enclave/usmcriot/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/head/helmet/f13/enclave/usmcriot/armypilot
	name = "enclave officer pilot helmet"
	desc = "A pre-war riot helmet, repurposed for duty aboard aircraft."

/obj/item/clothing/head/helmet/f13/combat/remnant
	name = "remnant combat helmet"
	desc = "A dark helmet with yellow lenses, used commonly in espionage or shadow ops."
	icon_state = "remnant_helmet"
	item_state = "remnant_helmet"
	flags_cover = HEADCOVERSEYES|HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	dynamic_hair_suffix = ""
	armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 20, "bomb" = 25, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 0, "wound" = 25)

// Lieutenant's hat
/obj/item/clothing/head/helmet/f13/enclave/officer
	name = "enclave officer hat"
	desc = "Wheeled hat with a cap made of light-weight armored alloys beneath."
	icon_state = "hat_enclave_officer"
	item_state = "hat_enclave_officer"
	armor = list("melee" = 35, "bullet" = 35, "laser" = 35, "energy" = 35, "bomb" = 20, "bio" = 25, "rad" = 25, "fire" = 20, "acid" = 20, "wound" = 20)
	obj_flags = UNIQUE_RENAME
	unique_reskin = list("M1" = "hosberetblack")

/obj/item/clothing/head/helmet/f13/enclave/officer/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/armor_plate)

//////////
//LEGION//
//////////

//NON-COMBAT ROLES
/obj/item/clothing/head/f13/legion
	name = "LEGION HAT TEMPLATE"
	desc = "You're not supposed to see this."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	armor = list("melee" = 20, "bullet" = 15, "laser" = 10, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 20, "fire" = 0, "acid" = 0, "wound" = 5)

/obj/item/clothing/head/f13/legion/auxilia				//Legion Auxilia hat
	name = "auxilia headwear"
	desc = "A soft red cap with a black band, used by female Auxilia outside camp."
	icon_state = "legion-aux"
	item_state = "legion-aux"

/obj/item/clothing/head/f13/legion/auxilia/servant		//Legion Auxilia hat, Servant loadout
	name = "servant headwear"
	desc = "A simple uncoloured linen cloth wrapped around the head, the mark of a servant slave trained in household work."
	icon_state = "legion-servant"
	item_state = "legion-servant"

/obj/item/clothing/head/f13/legion/marsheaddress		//Legion Priestess hat
	name = "priestess headdress"
	desc = "A headdress made of feathers and decorated with two golden tassles."
	icon_state = "legion-priestess"
	item_state = "legion-priestess"

/obj/item/clothing/head/f13/legion/orator				//Legion Orator hat
	name = "laurel wreath"
	desc = "A laurel wreath is made of branches and leaves of the laurel, a type of evergreen shrub or small tree. This one appears to be out of metal,however. In Ancient Rome, it was worn on the head as a symbol of triumph."
	icon_state = "legion-orator"
	item_state = "legion-orator"

//COMBAT ROLES
/obj/item/clothing/head/helmet/f13/legion
	name = "LEGION HELMET TEMPLATE"
	desc = "You're not supposed to see this."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	flags_inv = HIDEEARS|HIDEHAIR
	dynamic_hair_suffix = ""
	armor = list("melee" = 30, "bullet" = 30, "laser" = 10, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 20, "fire" = 25, "acid" = 0, "wound" = 10)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 2)

/obj/item/clothing/head/helmet/f13/legion/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/head/helmet/f13/legion/recruit			//Legion Recruit helmet
	name = "legion recruit helmet"
	desc = "It's a leather skullcap issued to recruits."
	icon_state = "legion-recruit"
	item_state = "legion-recruit"
	armor = list("melee" = 30, "bullet" = 20, "laser" = 10, "energy" = 0, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

/obj/item/clothing/head/helmet/f13/legion/recruit/decanus	//Legion Recruit Decanus helmet
	name = "legion recruit decanus helmet"
	desc = "This reinforced leather helmet has a plume of black and dark red feathers."
	icon_state = "legion-decrec"
	item_state = "legion-decrec"
	armor = list("melee" = 30, "bullet" = 25, "laser" = 10, "energy" = 0, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 20)

/obj/item/clothing/head/helmet/f13/legion/prime				//Legion Prime helmet
	name = "legion prime helmet"
	desc = "A helmet from reinforced leather with a red peak."
	item_state = "legion-prime"
	icon_state = "legion-prime"
	armor = list("melee" = 35, "bullet" = 25, "laser" = 15, "energy" = 5, "bomb" = 20, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0, "wound" = 20)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 4)

/obj/item/clothing/head/helmet/f13/legion/prime/explorer	//Legion Explorer helmet
	name = "legion scout hood"
	desc = "It's a leather hood with metal reinforcments and built in headphones to plug the radio into."
	icon_state = "legion-explorer"
	item_state = "legion-explorer"
	armor = list("melee" = 30, "bullet" = 25, "laser" = 10, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 20)

/obj/item/clothing/head/helmet/f13/legion/prime/decanus		//Legion Prime Decanus helmet
	name = "legion prime decanus helmet"
	desc = "This reinforced leather helmet with a red peak has a plume of black feathers."
	item_state = "legion-decprime"
	icon_state = "legion-decprime"
	armor = list("melee" = 35, "bullet" = 30, "laser" = 15, "energy" = 5, "bomb" = 20, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0, "wound" = 25)

/obj/item/clothing/head/helmet/f13/legion/veteran			//Legion Veteran helmet
	name = "legion veteran helmet"
	desc = "It's a metal legion veteran helmet, clearly inspired by old world sports uniforms."
	icon_state = "legion-veteran"
	item_state = "legion-veteran"
	armor = list("melee" = 45, "bullet" = 35, "laser" = 25, "energy" = 5, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 25, "acid" = 0, "wound" = 30)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 6)

/obj/item/clothing/head/helmet/f13/legion/veteran/vexillarius	//Legion Vexillarius helmet
	name = "legion fox vexillarius helmet"
	desc = "This helmet is decorated with the pelt of a desert fox."
	icon_state = "legion-vex-alt"
	item_state = "legion-vex-alt"
	armor = list("melee" = 45, "bullet" = 40, "laser" = 30, "energy" = 10, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 0, "wound" = 30)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 8)

/obj/item/clothing/head/helmet/f13/legion/veteran/vexillarius/bear
	name = "legion bear vexillarius helmet"
	desc = "This helmet is decorated with the pelt of a ashland bear."
	icon_state = "legion-vex"
	item_state = "legion-vex"

/obj/item/clothing/head/helmet/f13/legion/veteran/vexillarius/nightstalker
	name = "legion nightstalker vexillarius helmet"
	desc = "This helmet is decorated with the pelt of a nightstalker."
	icon_state = "legion-vex-night"
	item_state = "legion-vex-night"

//LEADERSHIP ROLES
/obj/item/clothing/head/helmet/f13/legion/veteran/decanus		//Legion Veteran Decanus helmet
	name = "legion veteran decanus helmet"
	desc = "It's a metal helmet with an array of red, white and black feathers, unmistakably a Veteran Decanus."
	icon_state = "legion-decvet-alt"
	item_state = "legion-decvet-alt"
	armor = list("melee" = 50, "bullet" = 40, "laser" = 30, "energy" = 10, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 0, "wound" = 35)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 8)

/obj/item/clothing/head/helmet/f13/legion/veteran/decanus/visor
	name = "reinforced legion veteran decanus helmet"
	desc = "A metal helmet with ballistic visor and a plume, denoting veteran Decanus status."
	icon_state = "legion-decvet"
	item_state = "legion-decvet"
	actions_types = list(/datum/action/item_action/toggle)

/obj/item/clothing/head/helmet/f13/legion/veteran/decanus/visor/attack_self(mob/user)
	weldingvisortoggle(user)
	icon_state = "legion-decvetup"
	item_state = "legion-decvetup"

/obj/item/clothing/head/helmet/f13/legion/centurion					//Legion Centurion armor
	name = "legion centurion helmet"
	desc = "A sturdy helmet from steel and brass with a red horizontal plume."
	icon_state = "legion-centurion"
	item_state = "legion-centurion"
	flags_inv = HIDEEARS|HIDEHAIR
	dynamic_hair_suffix = ""
	armor = list("melee" = 55, "bullet" = 45, "laser" = 35, "energy" = 15, "bomb" = 35, "bio" = 0, "rad" = 0, "fire" = 35, "acid" = 0, "wound" = 40)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 10)

/obj/item/clothing/head/helmet/f13/legion/centurion/paladinslayer	//Legion Centurion armor, Paladin-Slayer loadout
	name = "paladin-slayer centurion helmet"
	desc = "The once-marvelous helmet of the T-45d power armor set, repurposed by the Legion into a symbol of its might. It has a large plume of red horse hair across the top of it going horizontally, donoting the rank of Centurion."
	icon_state = "legion-palacent"
	item_state = "legion-palacent"
	flags_cover = HEADCOVERSEYES|HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	armor = list("melee" = 45, "bullet" = 40, "laser" = 50, "energy" = 20, "bomb" = 35, "bio" = 20, "rad" = 0, "fire" = 35, "acid" = 0, "wound" = 45)
	slowdown = 0.05		//0.25 with armor

/obj/item/clothing/head/helmet/f13/legion/centurion/rangerhunter	//Legion Centurion armor, Ranger-Hunter loadout
	name = "ranger-hunter centurion helmet"
	desc = "The helmet of an NCR ranger, refit to serve as a Centurions helmet."
	icon_state = "legion-rangercent"
	item_state = "legion-rangercent"
	flags_cover = HEADCOVERSEYES
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR
	dynamic_hair_suffix = ""
	armor = list("melee" = 35, "bullet" = 45, "laser" = 30, "energy" = 15, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 25, "acid" = 0, "wound" = 40)

/obj/item/clothing/head/helmet/f13/legion/legate					//Legion Legate helmet
	name = "legion legate helmet"
	desc = "A custom forged steel full helmet complete with abstract points and arches. The face is extremely intimidating, as it was meant to be. This particular one was ordered to be forged by Caesar, given to his second legate in exchange for his undying loyalty to Caesar."
	icon_state = "legion-legate"
	item_state = "legion-legate"
	flags_cover = HEADCOVERSEYES|HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	armor = list("melee" = 60, "bullet" = 50, "laser" = 40, "energy" = 20, "bomb" = 55, "bio" = 20, "rad" = 0, "fire" = 85, "acid" = 0, "wound" = 50)

/obj/item/clothing/head/helmet/f13/combat/legion					//Legion Combat helmet
	name = "legion combat helmet"
	desc = "An old military grade pre-war helmet, repainted to the colour scheme of Caesar's Legion."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "legion-combat"
	item_state = "legion-combat"

/obj/item/clothing/head/helmet/f13/combat/mk2/legion				//Legion Reinforced Combat helmet
	name = "reinforced legion combat helmet"
	desc = "A pre-war helmet in good condition, made from advanced materialas and paintend in the colors of Caesar's Legion."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "legion-combat2"
	item_state = "legion-combat2"

//NCR

//NON-COMBAT ROLES
/obj/item/clothing/head/f13/ncr/garrisoncap		//NCR Off-Duty cap
	name = "\improper NCR garrison cap"
	desc = "A simple cloth garrison cap to be worn when a helmet isn't necessary."
	icon_state = "ncr_cap"
	item_state = "ncr_cap"
	armor = list("melee" = 10, "bullet" = 20, "laser" = 15, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0, "wound" = 10)

/obj/item/clothing/head/f13/ncr/slouch			//NCR slouch hat
	name = "\improper NCR slouch hat"
	desc = "An irregular issue NCR sun hat, the left side of the brim is pinned to the crown for ease with shouldering rifles."
	icon_state = "ncr_slouch"
	item_state = "ncr_slouch"
	armor = list("melee" = 10, "bullet" = 20, "laser" = 15, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0, "wound" = 10)

/obj/item/clothing/head/f13/ncr/beret			//NCR beret
	name = "\improper NCR beret"
	desc = "A brown beret, worn by members of the NCRA."
	icon_state = "scoutberet"
	item_state = "scoutberet"
	armor = list("melee" = 10, "bullet" = 20, "laser" = 15, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0, "wound" = 10)

/obj/item/clothing/head/f13/ncr/beret/medic		//NCR Medical Officer beret
	name = "\improper NCR medical beret"
	desc = "A white beret, issued to officers of the NCRA medical corps."
	icon_state = "ncr_medical_beret"
	item_state = "ncr_medical_beret"
	armor = list("melee" = 10, "bullet" = 15, "laser" = 20, "energy" = 0, "bomb" = 0, "bio" = 70, "rad" = 30, "fire" = 0, "acid" = 50, "wound" = 0)

//ENLISTED COMBAT ROLES
/obj/item/clothing/head/helmet/f13/ncr
	name = "NCR HELMET TEMPLATE"
	desc = "You're not supposed to see this."
	icon_state = "ncr_steelpot"
	item_state = "ncr_steelpot"
	flags_inv = HIDEEARS
	armor = list("melee" = 15, "bullet" = 35, "laser" = 25, "energy" = 10, "bomb" = 20, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0, "wound" = 25)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 2)

/obj/item/clothing/head/helmet/f13/ncr/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/head/helmet/f13/ncr/trooper			//NCR Trooper helmet
	name = "\improper NCR trooper helmet"
	desc = "A standard issue NCR steel helmet."
	unique_reskin = list("M1" = "ncr_old")

/obj/item/clothing/head/helmet/f13/ncr/trooper/gambler	//Gambler Trooper helmet reskin
	name = "\improper NCR trooper gambler helmet"
	desc = "A standard issue NCR steel helmet. Stashed in the strap are decks of cards, dominoes and cigarettes for personal use."
	icon_state = "steelpot_gambler"
	item_state = "steelpot_gambler"
	unique_reskin = list("M1" = "ncr_old_gambler")

/obj/item/clothing/head/helmet/f13/ncr/conscript		//NCR Conscript hat
	name = "\improper NCR field cap"
	desc = "A standard issue NCR field cap with a cotton neckflap, for sun protection in arid climates."
	icon_state = "ncr_flapcap"
	item_state = "ncr_flapcap"
	can_toggle = TRUE
	actions_types = list(/datum/action/item_action/toggle)
	toggle_message = "You pull the neckflap up on the"
	alt_toggle_message = "You push the neckflap down on the"
	visor_flags_inv = HIDEHAIR
	armor = list("melee" = 10, "bullet" = 30, "laser" = 20, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 20)

/obj/item/clothing/head/helmet/f13/ncr/conscript/attack_self(mob/user)
	if(can_toggle && !user.incapacitated())
		if(world.time > cooldown + toggle_cooldown)
			cooldown = world.time
			up = !up
			flags_1 ^= visor_flags
			flags_inv ^= visor_flags_inv
			flags_cover ^= visor_flags_cover
			icon_state = "[initial(icon_state)][up ? "up" : ""]"
			to_chat(user, "[up ? alt_toggle_message : toggle_message] \the [src].")

			user.update_inv_head()
			if(iscarbon(user))
				var/mob/living/carbon/C = user
				C.head_update(src, forced = 1)

			if(active_sound)
				while(up)
					playsound(src.loc, "[active_sound]", 100, 0, 4)
					sleep(15)

/obj/item/clothing/head/helmet/f13/ncr/conscript/ncrwarrior		//NCR Conscript helmet, Desert Warrior loadout
	name = "\improper NCR headscarf"
	desc = "A piece of cloth worn on the head for a variety of purposes. This one has a white band around it, with NCR symbolism on the front. Clearly, the purpose of this one is to make sure nobody forgets the NCR owns this sand."
	icon_state = "headscarf_ncr"
	item_state = "headscarf_ncr"
	can_toggle = FALSE
	actions_types = null
	flags_cover = HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	dynamic_hair_suffix = ""
	mutantrace_variation = STYLE_MUZZLE
	armor = list("melee" = 30, "bullet" = 20, "laser" = 10, "energy" = 0, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

/obj/item/clothing/head/helmet/f13/ncr/corporal					//NCR Corporal helmet
	name = "\improper NCR corporal helmet"
	desc = "A standard issue NCR steel helmet reinforced with ballistic padding, issued with an additional pair of storm goggles for weather resistance."
	icon_state = "steelpot_goggles"
	item_state = "steelpot_goggles"
	unique_reskin = list("M1" = "ncr_goggles_helmet")
	can_toggle = TRUE
	actions_types = list(/datum/action/item_action/toggle)
	toggle_message = "You pull the goggles up on the"
	alt_toggle_message = "You push the goggles down on the"
	visor_flags_cover = HEADCOVERSEYES
	armor = list("melee" = 15, "bullet" = 35, "laser" = 25, "energy" = 10, "bomb" = 20, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0, "wound" = 30)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 4)

/obj/item/clothing/head/helmet/f13/ncr/corporal/attack_self(mob/user)
	if(can_toggle && !user.incapacitated())
		if(world.time > cooldown + toggle_cooldown)
			cooldown = world.time
			up = !up
			flags_1 ^= visor_flags
			flags_inv ^= visor_flags_inv
			flags_cover ^= visor_flags_cover
			icon_state = "[current_skin ? "ncr_goggles_helmet" : "steelpot_goggles"][up ? "up" : ""]"
			to_chat(user, "[up ? alt_toggle_message : toggle_message] \the [src].")

			user.update_inv_head()
			if(iscarbon(user))
				var/mob/living/carbon/C = user
				C.head_update(src, forced = 1)

			if(active_sound)
				while(up)
					playsound(src.loc, "[active_sound]", 100, 0, 4)
					sleep(15)

/obj/item/clothing/head/helmet/f13/ncr/corporal/recon		//NCR 1st Recon beret (Corporal helmet reskin)
	name = "\improper NCR 1st Recon beret"
	desc = "A red beret, issued to members of the 1st Recon battalion."
	icon_state = "ncr_recon_beret"
	item_state = "ncr_recon_beret"
	flags_inv = null
	can_toggle = FALSE
	actions_types = null

/obj/item/clothing/head/helmet/f13/ncr/corporal/medic			//NCR Combat Medic helmet
	name = "\improper NCR medic helmet"
	desc = "A standard issue NCR steel helmet with the addition of decalling signifying a medic."
	icon_state = "steelpot_med"
	item_state = "steelpot_med"
	unique_reskin = list("M1" = "ncr_old_med")
	can_toggle = FALSE
	actions_types = null

/obj/item/clothing/head/hardhat/ncr					//NCR Combat Engineer helmet
	name = "\improper NCR engineer helmet"
	desc = "A standard issue NCR steel helmet reinforced with ballistic padding, modified with a head lamp for engineers."
	icon_state = "hardhat0_ncr"
	item_state = "hardhat0_ncr"
	hat_type = "ncr"
	armor = list("melee" = 15, "bullet" = 30, "laser" = 30, "energy" = 10, "bomb" = 60, "bio" = 0, "rad" = 0, "fire" = 40, "acid" = 0, "wound" = 30)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 4)

/obj/item/clothing/head/helmet/f13/ncr/sapper		//NCR sapper beret (Combat Engineer helmet reskin)
	name = "\improper NCR sapper beret"
	desc = "A grey beret, issued to NCRA personnel that have passed Sapper School."
	icon_state = "ncr_sapper_beret"
	item_state = "ncr_sapper_beret"
	flags_inv = null
	armor = list("melee" = 15, "bullet" = 30, "laser" = 30, "energy" = 10, "bomb" = 60, "bio" = 0, "rad" = 0, "fire" = 40, "acid" = 0, "wound" = 30)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 4)

/obj/item/clothing/head/helmet/f13/ncr/sergeant		//NCR Sergeant hat
	name = "\improper NCR campaign hat"
	desc = "A khaki campaign hat, popularly used by senior NCOs in the NCRA."
	icon_state = "ncr_campaign"
	item_state = "ncr_campaign"
	armor = list("melee" = 20, "bullet" = 40, "laser" = 30, "energy" = 10, "bomb" = 20, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0, "wound" = 35)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 6)

/obj/item/clothing/head/helmet/f13/ncr/sergeant/trenchraider			//NCR Sergeant helmet, Trench Raider loadout
	name = "\improper NCR trench raider helmet"
	desc = "A standard issue NCR steel helmet reinforced with ballistic padding. This one has clearly seen heavy use. Additional bullets are tucked into the strap."
	icon_state = "steelpot_bandolier"
	item_state = "steelpot_bandolier"
	unique_reskin = list("M1" = "ncr_old_bandolier")
	armor = list("melee" = 40, "bullet" = 30, "laser" = 20, "energy" = 10, "bomb" = 20, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0, "wound" = 35)

//HEAVY GUNNER
/obj/item/clothing/head/helmet/f13/heavy/salvaged_pa/t45d/ncr			//NCR Heavy Gunner helmet
	name = "\improper NCR salvaged power armor helmet"
	desc = "A salvaged T-45d power armor helmet. The paintjob on it shows it belongs to the NCR. A rare sight after General Lee Oliver's death, and often outfitted to troops expected to be at the frontlines."
	icon_state = "t45bhelmet_ncr"
	item_state = "t45bhelmet_ncr"
	flash_protect = 1
	armor = list("melee" = 45, "bullet" = 65, "laser" = 50, "energy" = 20, "bomb" = 40, "bio" = 0, "rad" = 0, "fire" = 40, "acid" = 0, "wound" = 50)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 8)
	slowdown = 0.1		//0.35 with chestpiece

/obj/item/clothing/head/helmet/f13/ncr/heavygunner						//NCR Heavy Gunner helmet, Flamethrower loadout
	name = "\improper NCR heavy plate helmet"
	desc = "A heavily reinforced NCR steel-pot helmet. It comes complete with extra leather padding and armored layering. Often used as a supplement for the rarer T-45d salvaged power armor."
	icon = 'icons/fallout/clothing/helmets.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/helmet.dmi'
	icon_state = "ncrarmyhelmetheavy"
	item_state = "ncrarmyhelmetheavy"
	can_toggle = TRUE
	actions_types = list(/datum/action/item_action/toggle)
	toggle_message = "You pull the visor down on the"
	alt_toggle_message = "You push the visor up on the"
	flags_cover = HEADCOVERSEYES|HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	dynamic_hair_suffix = ""
	visor_flags_cover = HEADCOVERSEYES|HEADCOVERSMOUTH
	visor_flags_inv = HIDEFACIALHAIR|HIDEFACE|HIDEEYES|HIDESNOUT
	armor = list("melee" = 45, "bullet" = 45, "laser" = 35, "energy" = 15, "bomb" = 35, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 0, "wound" = 45)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 8)
	slowdown = 0.04		//0.22 with chestpiece

/obj/item/clothing/head/helmet/f13/ncr/heavygunner/attack_self(mob/user)
	if(can_toggle && !user.incapacitated())
		if(world.time > cooldown + toggle_cooldown)
			cooldown = world.time
			up = !up
			flags_1 ^= visor_flags
			flags_inv ^= visor_flags_inv
			flags_cover ^= visor_flags_cover
			flash_protect = !flash_protect
			icon_state = "[initial(icon_state)][up ? "_up" : ""]"
			to_chat(user, "[up ? alt_toggle_message : toggle_message] \the [src].")

			user.update_inv_head()
			if(iscarbon(user))
				var/mob/living/carbon/C = user
				C.head_update(src, forced = 1)

			if(active_sound)
				while(up)
					playsound(src.loc, "[active_sound]", 100, 0, 4)
					sleep(15)

//LEADERSHIP ROLES
/obj/item/clothing/head/helmet/f13/ncr/officer						//NCR Lieutenant beret
	name = "\improper NCR officer beret"
	desc = "A green beret with a silver pin, worn by officers of the NCRA."
	icon_state = "ncr_officer_beret"
	item_state = "ncr_officer_beret"
	flags_inv = null
	armor = list("melee" = 30, "bullet" = 45, "laser" = 35, "energy" = 15, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 0, "wound" = 40)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 8)

/obj/item/clothing/head/helmet/f13/ncr/officer/captain				//NCR Captain cap
	name = "\improper NCR officer peaked cap"
	desc = "A tan peaked cap with a silver pin, worn by high-ranking officers of the NCRA."
	icon_state = "ncr_dresscap"
	item_state = "ncr_dresscap"
	armor = list("melee" = 35, "bullet" = 50, "laser" = 40, "energy" = 20, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 0, "wound" = 45)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 10)

/obj/item/clothing/head/helmet/f13/ncr/officer/captain/colonel		//NCR Colonel cap
	name = "\improper NCR colonel peaked cap"
	desc = "A tan peaked cap with a golden pin, worn by highest-ranking officers of the NCRA."
	icon_state = "ncr_codresscap"
	item_state = "ncr_codresscap"

/obj/item/clothing/head/helmet/f13/combat/ncr						//NCR Combat helmet
	name = "\improper NCR combat helmet"
	desc = "An old military grade pre-war combat helmet, repainted to the colour scheme of the New California Republic."
	icon_state = "ncr_helmet"
	item_state = "ncr_helmet"

/obj/item/clothing/head/helmet/f13/combat/mk2/ncr					//NCR Reinforced Combat helmet
	name = "reinforced NCR combat helmet"
	desc = "An advanced pre-war titanium plated, ceramic coated, kevlar, padded helmet designed to withstand extreme punishment of all forms, repainted to the colour scheme of the New California Republic."
	icon_state = "ncr_helmet_mk2"
	item_state = "ncr_helmet_mk2"

//NCR Ranger
/obj/item/clothing/head/helmet/f13/ncr/reconranger		//Recon Ranger hat
	name = "recon ranger beret"
	desc = "A brown beret, issued to members of the NCR Recon Rangers."
	icon_state = "ncr_sof_beret"
	item_state = "ncr_sof_beret"
	flags_inv = null
	armor = list("melee" = 15, "bullet" = 35, "laser" = 30, "energy" = 10, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 25)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 6)

/obj/item/clothing/head/helmet/f13/ncr/trailranger		//Trail Ranger hat
	name = "trail ranger hat"
	desc = "One of the many hats worn by the NCR Trail Rangers."
	icon_state = "cowboyrang"
	item_state = "cowboyrang"
	armor = list("melee" = 20, "bullet" = 30, "laser" = 25, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 20)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 6)
	unique_reskin = list(
		"M1" = "vaquerohat",
		"M2" = "marlowhat",
		"M3" = "ncr_slouch",
		"M4" = "bigcowboyhat",
		"M5" = "gamblerrang",
		"M6" = "cowboyrang"
	)

/obj/item/clothing/head/helmet/f13/ncr/ranger			//Patrol Ranger hat
	name = "ranger campaign hat"
	desc = "An brown hat with a wide brim, standard issue for many members of the NCRR."
	icon_state = "rangerhat"
	item_state = "rangerhat"
	armor = list("melee" = 30, "bullet" = 50, "laser" = 40, "energy" = 10, "bomb" = 20, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0, "wound" = 30)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 6)
	unique_reskin = list(
		"M1" = "drillhat_old",
		"M2" = "marlowhat",
		"M3" = "mosshelmet",
		"M4" = "rangerhat"
	)

/obj/item/clothing/head/helmet/f13/ncr/ranger/Initialize(mapload)
	. = ..()

/obj/item/clothing/head/helmet/f13/combat/ncr/patrol	//Patrol Ranger helmet
	name = "ranger patrol helmet"
	desc = "A standard issue ranger patrol helmet that provides a good amount of defence. It's got NCR markings, making it clear who it was made by."
	icon_state = "ncr_patrol_helmet"
	item_state = "ncr_patrol_helmet"
	flags_cover = HEADCOVERSEYES|HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	dynamic_hair_suffix = ""
	armor = list("melee" = 30, "bullet" = 50, "laser" = 40, "energy" = 10, "bomb" = 20, "bio" = 10, "rad" = 10, "fire" = 20, "acid" = 0, "wound" = 30)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 6)
	unique_reskin = list(
		"M1" = "ncr_patrol_helmet_old",
		"M2" = "ncr_helmet_mk2",
		"M3" = "ncr_patrol_helmet"
	)

/obj/item/clothing/head/helmet/f13/ncr/vetranger		//Veteran Ranger helmet
	name = "veteran ranger riot helmet"
	desc = "A pre-war L.A.P.D. riot helmet, now repurposed for use by NCR Veteran Rangers."
	icon_state = "ranger"
	item_state = "ranger"
	armor = list("melee" = 25, "bullet" = 50, "laser" = 30, "energy" = 15, "bomb" = 25, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 0, "wound" = 40)
	flags_cover = HEADCOVERSEYES|HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	dynamic_hair_suffix = ""
	obj_flags = UNIQUE_RENAME
	unique_reskin = list("M1" = "ranger_old",
						"M2" = "foxranger",
						"M3" = "price_ranger",
						"M4" = "desert_ranger",
						"M5" = "elite_riot")
	flash_protect = 1
	glass_colour_type = /datum/client_colour/glass_colour/red
	lighting_alpha = LIGHTING_PLANE_ALPHA_NV_TRAIT
	darkness_view = 24
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 8, /obj/item/clothing/glasses/night/polarizing = 1)

/obj/item/clothing/head/helmet/f13/ncr/vetranger/desert
	name = "desert ranger combat helmet"
	desc = "An U.S Marine Corps helmet, used by the legendary Desert Rangers."
	icon_state = "desert_ranger"
	item_state = "desert_ranger"

//Brotherhood of Steel (PA in f13head.dm)

/obj/item/clothing/head/helmet/f13/combat/brotherhood
	name = "brotherhood helmet"
	desc = "An improved combat helmet, bearing the symbol of the Knights."
	icon_state = "brotherhood_helmet_knight"
	item_state = "brotherhood_helmet_knight"
	armor = list("melee" = 45, "bullet" = 45, "laser" = 55, "energy" = 20, "bomb" = 20, "bio" = 15, "rad" = 15, "fire" = 20, "acid" = 0, "wound" = 20)

/obj/item/clothing/head/helmet/f13/combat/brotherhood/senior
	name = "brotherhood senior knight helmet"
	desc = "An improved combat helmet, bearing the symbol of a Senior Knight."
	icon_state = "brotherhood_helmet_senior"
	item_state = "brotherhood_helmet_senior"
	armor = list("melee" = 50, "bullet" = 50, "laser" = 60, "energy" = 25, "bomb" = 25, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 0, "wound" = 25)

/obj/item/clothing/head/helmet/f13/combat/brotherhood/captain	//UNUSED
	name = "brotherhood head knight helmet"
	desc = "An improved combat helmet, bearing the symbol of the Head Knight."
	icon_state = "brotherhood_helmet_captain"
	item_state = "brotherhood_helmet_captain"
	armor = list("melee" = 55, "bullet" = 55, "laser" = 65, "energy" = 30, "bomb" = 30, "bio" = 25, "rad" = 25, "fire" = 30, "acid" = 0, "wound" = 30)

/obj/item/clothing/head/helmet/f13/combat/brotherhood/initiate
	name = "initiate helmet"
	desc = "An old degraded pre-war combat helmet, repainted to the colour scheme of the Brotherhood of Steel."
	icon_state = "brotherhood_helmet"
	item_state = "brotherhood_helmet"
	armor = list("melee" = 35, "bullet" = 35, "laser" = 30, "energy" = 15, "bomb" = 15, "bio" = 10, "rad" = 10, "fire" = 15, "acid" = 0, "wound" = 15)

/obj/item/clothing/head/helmet/f13/combat/brotherhood/initiate/mk2
	name = "reinforced knight helmet"
	desc = "An advanced pre-war titanium plated, ceramic coated, kevlar, padded helmet designed to withstand extreme punishment of all forms, repainted to the colour scheme of the Brotherhood of Steel."
	icon_state = "brotherhood_helmet"
	item_state = "brotherhood_helmet"
	armor = list("melee" = 50, "bullet" = 50, "laser" = 55, "energy" = 25, "bomb" = 25, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 0, "wound" = 25)

/obj/item/clothing/head/f13/boscap
	name = "brotherhood formal cap"
	desc = "A cap typically worn with the formal uniform for the local Brotherhood of Steel Chapter."
	icon_state = "boscap"
	item_state = "boscap"

/obj/item/clothing/head/f13/boscap/beret
	name = "brotherhood beret"
	desc = "A beret typically worn with the standard fatigues of the local Brotherhood of Steel Chapter."
	icon_state = "bos_beret"
	item_state = "bos_beret"

//Oasis/Town

/obj/item/clothing/head/f13/town
	name = "town tricorn"
	desc = "Why are there tricorns in the desert again?"
	icon_state = "tricorn"
	item_state = "dethat"
	flags_inv = HIDEHAIR
	armor = list("melee" = 25, "bullet" = 25, "laser" = 20, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

/obj/item/clothing/head/f13/town/mayor
	name = "mayoral tricorn"
	desc = "A tricorn in the desert. Stranger things have happened."
	armor = list("melee" = 35, "bullet" = 35, "laser" = 30, "energy" = 10, "bomb" = 20, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0, "wound" = 20)

/obj/item/clothing/head/f13/town/big
	name = "big hat"
	desc = "It's a big hat."
	icon_state = "bigcowboyhat"

/obj/item/clothing/head/f13/town/deputy
	name = "deputy hat"
	desc = "A black cowboy hat."
	icon_state = "deputyhat"
	armor = list("melee" = 40, "bullet" = 50, "laser" = 40,  "energy" = 15, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 25, "acid" = 0, "wound" = 25)

/obj/item/clothing/head/f13/town/officer
	name = "oasis officer's cap"
	desc = "A simple dark navy peaked cap, worn by police."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "police_officer"
	item_state = "police_officer"
	armor = list("melee" = 40, "bullet" = 50, "laser" = 40,  "energy" = 15, "bomb" = 25, "bio" = 0, "rad" = 0, "fire" = 25, "acid" = 0, "wound" = 25)

/obj/item/clothing/head/f13/town/sheriff
	name = "sheriff hat"
	desc = "A black cowboy hat with a snakeskin band."
	icon_state = "sheriffhat"
	armor = list("melee" = 45, "bullet" = 55, "laser" = 45,  "energy" = 20, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 0, "wound" = 30)

/obj/item/clothing/head/f13/town/chief
	name = "OPD Chief's hat"
	desc = "A blue hat with a silver badge."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "police_chief"
	item_state = "police_chief"
	armor = list("melee" = 45, "bullet" = 55, "laser" = 45,  "energy" = 20, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 0, "wound" = 30)

/obj/item/clothing/head/f13/det_hat_alt
	name = "detective's fedora"
	desc = "There's only one man who can sniff out the dirty stench of crime, and he's likely wearing this black hat."
	icon_state = "detectivealt"
	item_state = "fedora"
	flags_inv = HIDEHAIR
	armor = list("melee" = 35, "bullet" = 45, "laser" = 35,  "energy" = 10, "bomb" = 20, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0, "wound" = 20)

////////////////////////
// GREAT KHAN HELMETS //
////////////////////////

/obj/item/clothing/head/helmet/f13/khan
	name = "Great Khan helmet"
	desc = "A piece of headwear commonly worn by the Great Khans that appears to resemble stereotypical traditional Mongolian helmets - likely adapted from a pre-War motorcycle helmet.<br>It is black with two horns on either side and a small spike jutting from the top, much like a pickelhaube.<br>A leather covering protects the wearer's neck and ears from sunburn."
	icon = 'icons/fallout/clothing/khans.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/khaans.dmi'
	icon_state = "khan_helmet"
	item_state = "khan_helmet"
	armor = list("melee" = 35, "bullet" = 35, "laser" = 40, "energy" = 15, "bomb" = 40, "bio" = 0, "rad" = 0, "fire" = 40, "acid" = 40, "wound" = 30)
	flags_cover = null
	flags_inv = HIDEEARS
	dynamic_hair_suffix = ""
	strip_delay = 20

/obj/item/clothing/head/helmet/f13/khan/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/armor_plate)

/obj/item/clothing/head/helmet/f13/khan/pelt
	desc = "A helmet with traditional horns, but wasteland-chique fur trimming instead of the classic leather cover. For the Khan who wants to show off their hair."
	icon_state = "khan_helmetpelt"
	item_state = "khan_helmetpelt"


/obj/item/clothing/head/helmet/f13/khan/bandana
	name = "Great Khan bandana"
	desc = "A bandana. Tougher than it looks. One side of the cloth is dark, the other red, so it can be reversed."
	icon_state = "khan_bandana"
	item_state = "khan_bandana"
	armor = list("melee" = 30, "bullet" = 30, "laser" = 35, "energy" = 10, "bomb" = 30, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 30, "wound" = 25)
	strip_delay = 10
	flags_inv = null
	dynamic_hair_suffix = "+generic"
	var/helmettoggled = FALSE

/obj/item/clothing/head/helmet/f13/khan/bandana/AltClick(mob/user)
	. = ..()
	if(!user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		return
	helmet_toggle(user)
	return TRUE

/obj/item/clothing/head/helmet/f13/khan/bandana/ui_action_click()
	helmet_toggle()

/obj/item/clothing/head/helmet/f13/khan/bandana/proc/helmet_toggle()
	set src in usr

	if(!can_use(usr))
		return 0

	to_chat(usr, "<span class='notice'>You turn the [src] inside out.</span>")
	if(src.helmettoggled)
		src.icon_state = "[initial(icon_state)]"
		src.item_state = "[initial(icon_state)]"
		src.helmettoggled = FALSE
	else if(!src.helmettoggled)
		src.icon_state = "[initial(icon_state)]_t"
		src.item_state = "[initial(icon_state)]_t"
		src.helmettoggled = TRUE
	usr.update_inv_head()
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/clothing/head/helmet/f13/khan/fullhelm
	name = "Great Khan full helmet"
	desc = " A Khan helmet modified with steel horns and a full guard comprised of orange glass lenses and a thick metal plate to conceal the lower face."
	icon_state = "kharuul_helm"
	item_state = "kharuul_helm"
	icon = 'icons/fallout/clothing/khans.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/khaans.dmi'
	armor = list("melee" = 40, "bullet" = 40, "laser" = 45, "energy" = 15, "bomb" = 40, "bio" = 20, "rad" = 0, "fire" = 40, "acid" = 40, "wound" = 30)
	flags_cover = HEADCOVERSEYES|HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	dynamic_hair_suffix = ""
	strip_delay = 20

/obj/item/clothing/head/helmet/f13/khan/leader
	name = "Great Khan full helmet"
	desc = " A Khan helmet modified marked with a red plume and a full guard comprised of orange glass lenses and a thick metal plate to conceal the lower face. It seems the gaurd can be lifted up."
	icon_state = "turuuch_helm"
	item_state = "turuuch_helm"
	icon = 'icons/fallout/clothing/khans.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/khaans.dmi'
	armor = list("melee" = 45, "bullet" = 45, "laser" = 50, "energy" = 20, "bomb" = 50, "bio" = 20, "rad" = 0, "fire" = 50, "acid" = 50, "wound" = 35)
	flags_cover = HEADCOVERSEYES|HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	dynamic_hair_suffix = ""
	strip_delay = 20
	var/helmettoggled = FALSE

/obj/item/clothing/head/helmet/f13/khan/leader/AltClick(mob/user)
	. = ..()
	if(!user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		return
	helmet_toggle(user)
	return TRUE

/obj/item/clothing/head/helmet/f13/khan/leader/ui_action_click()
	helmet_toggle()

/obj/item/clothing/head/helmet/f13/khan/leader/proc/helmet_toggle()
	set src in usr

	if(!can_use(usr))
		return 0

	to_chat(usr, "<span class='notice'>You flip the visor.</span>")
	if(src.helmettoggled)
		src.icon_state = "[initial(icon_state)]"
		src.item_state = "[initial(icon_state)]"
		src.helmettoggled = FALSE
	else if(!src.helmettoggled)
		src.icon_state = "[initial(icon_state)]_t"
		src.item_state = "[initial(icon_state)]_t"
		src.helmettoggled = TRUE
	usr.update_inv_head()
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

//Wayfarer
/obj/item/clothing/head/helmet/f13/deathskull
	name = "eerie helm"
	desc = "A helmet fastened from the skull of a deer. Something about it doesn't look right."
	icon_state = "shamskull"
	item_state = "shamskull"
	armor = list("melee" = 45, "bullet" = 30, "laser" = 30, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

/obj/item/clothing/head/f13/helmet/wayfarer
	armor = list("melee" = 45, "bullet" = 30, "laser" = 30, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

/obj/item/clothing/head/helmet/f13/wayfarer/hunter
	name = "hunter headdress"
	desc = "Azure decorations dangle from the sturdy cap, it is sung that the wearers of these are watched over by the spirits."
	icon_state = "hunterhelm"
	item_state = "hunterhelm"

/obj/item/clothing/head/helmet/f13/wayfarer/antler
	name = "antler skullcap"
	desc = "An antler skull headdress traditionally worn by the spiritually inclined."
	icon_state = "antlerhelm"
	item_state = "antlerhelm"

/obj/item/clothing/head/helmet/f13/wayfarer/shamanblue
	name = "ritual headdress"
	desc = "An ancient mask fashioned at the coasts of the Great Salt Water, imbued with the ancestral blessing through a long forgotten ritual."
	icon_state = "shamanblue"
	item_state = "shamanblue"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	armor = list("melee" = 45, "bullet" = 30, "laser" = 30, "energy" = 5, "bomb" = 15, "bio" = 20, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

/obj/item/clothing/head/helmet/f13/wayfarer/shamanred
	name = "crimson mask"
	desc = "An uncanny helm passed down through generations, originating from a tribal culture once situated at the top of a Sonoran mesa."
	icon_state = "shamanred"
	item_state = "shamanred"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	armor = list("melee" = 45, "bullet" = 30, "laser" = 30, "energy" = 5, "bomb" = 15, "bio" = 20, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

/obj/item/clothing/head/helmet/f13/wayfarer/chief
	name = "helm of the steady walk"
	desc = "A chief who chooses this protectron mantle embodies the defensive, a stalwart heart that protects their village above all other goals, even if it means hampering the growth of the village to do it."
	icon_state = "chiefblue"
	item_state = "chiefblue"
	actions_types = list(/datum/action/item_action/toggle)
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR|HIDESNOUT
	armor = list("melee" = 45, "bullet" = 30, "laser" = 30, "energy" = 5, "bomb" = 15, "bio" = 20, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

/obj/item/clothing/head/helmet/f13/combat/tribal
	name = "tribalized combat helmet"
	desc = "An old military grade pre-war combat helmet, repainted and re-purposed with bones and sinew."
	icon_state = "tribe_helmet"
	item_state = "tribe_helmet"

/obj/item/clothing/head/helmet/f13/combat/mk2/tribal
	name = "tribalized reinforced helmet"
	desc = "An old military grade pre-war reinforced combat helmet, repainted and re-purposed with bones and sinew."
	icon_state = "tribe_helmet"
	item_state = "tribe_helmet"

/obj/item/clothing/head/helmet/f13/wayfarer/chief/attack_self(mob/user)
	weldingvisortoggle(user)

/obj/item/clothing/head/helmet/f13/wayfarer/chief/red
	name = "helm of the piercing gaze"
	desc = "A chief who wears this assaultron helm is known for their prowess in battle, aggressiveness, intimidation and raw power in command. They are bold and strong."
	icon_state = "chiefred"
	item_state = "chiefred"

/obj/item/clothing/head/helmet/f13/wayfarer/chief/green
	name = "helm of the helping hand"
	desc = "The many eyed helper to the village and all, the Chief that chooses this Mr. Handy based mantle is clever and kind in equal measure, they embody industry and diplomacy. Though they aren't defensive, they are surgically precise in eliminating those who oppose them."
	icon_state = "chiefgreen"
	item_state = "chiefgreen"

//Followers

//Vault

/obj/item/clothing/head/helmet/riot/vaultsec
	name = "security helmet"
	desc = "A standard issue vault security helmet, pretty robust."
	armor = list("melee" = 50, "bullet" = 40, "laser" = 35, "energy" = 15, "bomb" = 20, "bio" = 0, "rad" = 0, "fire" = 20, "acid" = 0, "wound" = 20)

/obj/item/clothing/head/helmet/riot/vaultsec/vc
	name = "vtcc riot helmet"
	desc = "A riot helmet adapted from the design of most pre-war riot helmets, painted blue."
	icon_state = "vtcc_riot_helmet"
	item_state = "vtcc_riot_helmet"

//Old World Militaries
//US Army and PLA

/obj/item/clothing/head/f13/army
	name = "US Army field cap"
	desc = "Standard issue US Army field cap."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "army_cap"
	item_state = "army_cap"
	armor = list("melee" = 30, "bullet" = 40, "laser" = 35, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)
	dynamic_hair_suffix = "+generic"

/obj/item/clothing/head/f13/army/officer
	name = "US Army officer's cap"
	desc = "US Army officer's cap."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "army_officer"
	item_state = "army_officer"

/obj/item/clothing/head/f13/army/general
	name = "US Army general's cap"
	desc = "US Army officer's cap."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "army_general"
	item_state = "army_general"

/obj/item/clothing/head/f13/army/beret
	name = "US Army beret"
	desc = "A black beret, standard issue for all US Army personnel not authorised to wear a different beret."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "army_beret"
	item_state = "army_beret"

/obj/item/clothing/head/f13/army/beret/airborne
	name = "US Army airborne beret"
	desc = "A red beret, issued to US Army Airborne personnel."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "army_beret_airborne"
	item_state = "army_beret_airborne"

/obj/item/clothing/head/f13/army/beret/rangers
	name = "US Army rangers beret"
	desc = "A tan beret, issued to US Army Rangers."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "army_beret_ranger"
	item_state = "army_beret_ranger"

/obj/item/clothing/head/f13/army/beret/specialforces
	name = "US Army special forces beret"
	desc = "A green beret, issued to US Army Special Forces personnel."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "army_beret_specialforces"
	item_state = "army_beret_specialforces"

//People's Liberation Army

/obj/item/clothing/head/f13/chinese
	name = "PLA field cap"
	desc = "A People's Liberation Army cap, worn by enlisted and non-commissioned officers."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "chinese_soldier"
	item_state = "chinese_soldier"
	armor = list("melee" = 30, "bullet" = 35, "laser" = 40, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

/obj/item/clothing/head/f13/chinese/officer
	name = "PLA officer's cap"
	desc = "A People's Liberation Army peaked cap, worn by officers."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "chinese_officer"
	item_state = "chinese_officer"

//Old World Law Enforcement
//Police and State Police

/obj/item/clothing/head/f13/police/officer
	name = "police officer's cap"
	desc = "A simple dark navy peaked cap, worn by police."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "police_officer"
	item_state = "police_officer"
	armor = list("melee" = 25, "bullet" = 10, "laser" = 10, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

/obj/item/clothing/head/f13/police/sergeant
	name = "police campaign hat"
	desc = "A simple dark navy campaign hat, worn by police."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "police_sergeant"
	item_state = "police_sergeant"
	armor = list("melee" = 25, "bullet" = 10, "laser" = 10, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

/obj/item/clothing/head/f13/police/lieutenant
	name = "police lieutenant's cap"
	desc = "A simple dark navy peaked cap, worn by police."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "police_lieutenant"
	item_state = "police_lieutenant"
	armor = list("melee" = 25, "bullet" = 10, "laser" = 10, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

/obj/item/clothing/head/f13/police/chief
	name = "police chief's cap"
	desc = "A simple dark navy peaked cap, worn by police."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "police_chief"
	item_state = "police_chief"
	armor = list("melee" = 25, "bullet" = 10, "laser" = 10, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

/obj/item/clothing/head/f13/police/trooper
	name = "state police campaign hat"
	desc = "A gray campaign hat, worn by the State Police."
	icon = 'icons/fallout/clothing/hats.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/head.dmi'
	icon_state = "state_trooper"
	item_state = "state_trooper"
	armor = list("melee" = 25, "bullet" = 10, "laser" = 10, "energy" = 5, "bomb" = 15, "bio" = 0, "rad" = 0, "fire" = 15, "acid" = 0, "wound" = 15)

//THE GRAVEYARD
//UNUSED or LEGACY - RETAINED IN CASE DESIRED FOR ADMIN SPAWN OR REIMPLEMENATION. MAY NOT BE EVERYTHING THAT'S UNUSED. TEST BEFORE USING
//IF PUT BACK INTO USE, PLEASE FILE IT BACK SOMEWHERE ABOVE

//NCR

/obj/item/clothing/head/helmet/f13/ncr/mp	//NCR Military Police helmet (UNUSED)
	name = "NCR military police helmet"
	desc = "A standard issue NCR helmet, with the letters \"MP\" scrawled on the front."
	icon_state = "steelpot_mp"
	item_state = "steelpot_mp"
	unique_reskin = list("M1" = "ncr_old_mp")

//Legion

/obj/item/clothing/head/helmet/f13/legion/venator	//Legion Venator helmet (UNUSED)
	name = "legion explorer hood"
	desc = "A leather hood with a sturdy metal skullcap and a gold bull insignia in the front."
	icon_state = "legion-venator"
	item_state = "legion-venator"
	armor = list("melee" = 50, "bullet" = 35, "laser" = 20, "energy" = 20, "bomb" = 20, "bio" = 20, "rad" = 20, "fire" = 25, "acid" = 0, "wound" = 40)
	salvage_loot = list(/obj/item/stack/crafting/armor_plate = 2)

//Enclave / Remnant

/obj/item/clothing/head/helmet/f13/helmet/enclave/forgecap
	name = "enclave forge cap"
	desc = "A resistant, black forage cap issued to Enclave Officers."
	icon_state = "enclave_cap"
	item_state = "enclave_cap"
	armor = list("melee" = 45, "bullet" = 45, "laser" = 45, "energy" = 15, "bomb" = 50, "bio" = 60, "rad" = 10, "fire" = 60, "acid" = 20, "wound" = 40) // On par with BoS Initiate

/obj/item/clothing/head/helmet/f13/combat/enclave
	name = "enclave combat helmet"
	desc = "An intimidating helmet that is issued with it's corresponding suit."
	icon_state = "remnant_helmet"
	item_state = "remnant_helmet"
	armor = list("melee" = 45, "bullet" = 45, "laser" = 45, "energy" = 15, "bomb" = 20, "bio" = 10, "rad" = 10, "fire" = 20, "acid" = 0, "wound" = 20)
