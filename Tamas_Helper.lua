-------------------------------Quest set up----------------------------------------------
    local zones = {
        [2022] = "Waking Shores",
        [2023] = "Ohn'ahran Plains",
        [2024] = "Azure Span",
        [2025] = "Thaldraszus",
        [2151] = "Forbidden Reach",
        [2133] = "Zaralek caverns"
      }
      local SkillToLow =" |cffffffff>>|r |cffff6666You must Have 25+ skill|r |cffffffff<<|r"
      local LevleToLow =" |cffffffff>>|r |cffff6666You must be Level 70|r |cffffffff<<|r"
      local oth =""
      -- Retrieve the name of a given zone ID
      local function getZoneName(zoneID)
        return zones[zoneID]
      end
      -- Available profession related knowledge not tied to an specific profession
      local knowOther = {
        {source="", who="NPC: Thomas Bright", zone=2112, coordX=39.4, coordY=70.1, quests={70221}, optKey="other", optSlot=1},
        {source="", who="NPC: Khadin", zone=2023, coordX=51.8, coordY=33, quests={69979}, optKey="other", optSlot=2},
        {name=191784, source="", who="NPC: Khadin", zone=2023, coordX=51.8, coordY=33, optKey="other", optSlot=3},
        {name="Barter Brick Quests", source="", who="NPC: Kayann", zone=2112, coordX=36.6, coordY=62.9, quests={75301,75304,75307,75308,75309,75351,75288}, optKey="other", optSlot=4},
      }
      --Consortium Rep Quest
      local questsConsortium = {
        --10.1 Constortium Quests
        {name=nil,source="",who=nil,zone=2133,coordX=61.1,coordY=48.7,questID=75362,optKey ="Jewelcrafting"}, --Cephalo-crystallization
        {name=nil,source="",who=nil,zone=2133,coordX=61.1,coordY=48.7,questID=75602,optKey ="Jewelcrafting"},--Chips off the Old Crystal Block}, 
        {name=nil,source="",who=nil,zone=2133,coordX=59.6,coordY=45.0,questID=75363,optKey ="Alchemy"},-- Deepflayer Dust
        {name=nil,source="",who=nil,zone=2133,coordX=47.3,coordY=73.7,questID=75371,optKey ="Alchemy"},--Fascinating Fungi 
        {name=nil,source="",who=nil,zone=2133,coordX=44.7,coordY=19.3,questID=75569,optKey ="Blacksmithing"},--Blacksmith, Black Dragon 
        {name=nil,source="",who=nil,zone=2133,coordX=44.7,coordY=19.3,questID=75148,optKey ="Blacksmithing"},--Ancient Techniques
        {name=nil,source="",who=nil,zone=2133,coordX=58.8,coordY=73.6,questID=75865,optKey ="Enchanting"},--Relic Rustler 
        {name=nil,source="",who=nil,zone=2133,coordX=58.8,coordY=73.6,questID=75150,optKey ="Enchanting"},--:Incandescence
        {name=nil,source="",who=nil,zone=2133,coordX=43.8,coordY=31.9,questID=75575,optKey ="Engineering"},--Ballistae Bits
        {name=nil,source="",who=nil,zone=2133,coordX=43.8,coordY=31.9,questID=75608,optKey ="Engineering"}, --Titan Trash or Titan Treasure
        {name=nil,source="",who=nil,zone=2133,coordX=44.9,coordY=18.8,questID=75573,optKey ="Inscription"},--Proclamation Reclamation
        {name=nil,source="",who=nil,zone=2133,coordX=44.9,coordY=18.8,questID=75149,optKey ="Inscription"},-- Obsidian Essays
        {name=nil,source="",who=nil,zone=2133,coordX=61.6,coordY=47.3,questID=75354,optKey ="Leatherworking"},--Mycelium Mastery
        {name=nil,source="",who=nil,zone=2133,coordX=61.6,coordY=47.3,questID=75368,optKey ="Leatherworking"},--Stones and Scales
        {name=nil,source="",who=nil,zone=2133,coordX=59.6,coordY=45.0,questID=75407,optKey ="Tailoring"},--Silk Scavenging
        {name=nil,source="",who=nil,zone=2133,coordX=59.6,coordY=45.0,questID=75600,optKey ="Tailoring"},--Silk's Silk
        -- Barter bricks quests-------------------
        {name=nil,source="",who=nil,zone=2133,coordX=61.1,coordY=43.2,questID=75307}, --Road to Season City
        {name=nil,source="",who=nil,zone=2133,coordX=56.9,coordY=56.3,questID=75308},--Scrybbil Engineering 
        {name=nil,source="",who=nil,zone=2133,coordX=56.9,coordY=56.3,questID=75351},--Keep a Leather Eye Open 
        {name=nil,source="",who=nil,zone=2133,coordX=56.9,coordY=56.3,questID=75301},--Mistie's Mix Magic 
        {name=nil,source="",who=nil,zone=2133,coordX=56.9,coordY=56.3,questID=75288},--Enchanted Tales with Topuiz
        {name=nil,source="",who=nil,zone=2133,coordX=56.9,coordY=56.3,questID=75309},--If a Gem Isn't Pretty
        {name=nil,source="",who=nil,zone=2133,coordX=56.9,coordY=56.3,questID=75304},--I Need... a Tailor
      }
      -- Alchemy
      local Prof_Alc = {
        {name="Instructor Quest", source="", who="NPC: Conflago", zone=2112, coordX=36.4, coordY=71.7, quests={70530, 70532, 70533, 70531}, optKey="alchemy", optSlot=1},
        {name="Niffen/Consortium Quest", source="", who="NPC: Kayann", zone=2112, coordX=36.6, coordY=62.9, quests={75363,75371,66940, 72427, 66937, 66938}, optKey="alchemy", optSlot=2},  
        {name=194697, source="Inscription Crafting Order", who=nil, zone=nil, coordX=nil, coordY=nil, quests={74108}, optKey="alchemy", optSlot=4},
        {name="Expedition Drop", source="Disturbed Dirt/Expedition Scout's Pack", who=nil, zone=nil, coordX=nil, coordY=nil, quests={66373, 66374}, optKey="alchemy", optSlot=5},
        {name=198964, source="", who="Mobs: Any mob that drops Rousing elements", zone=2022, coordX=37.6, coordY=72.1, quests={70511}, optKey="alchemy", optSlot=6},
        {name=198963, source="", who="Mobs: Decaying (Rotting Treants, Oozing Decay)", zone=2024, coordX=17.7, coordY=39, quests={70504}, optKey="alchemy", optSlot=6},
        {name="Profession Master", source="", who="NPC: Grigori Vialtry", zone=2022, coordX=60.92, coordY=75.84, quests={70247}, optKey="alchemy", optSlot=7},
        {name=198685, source="", who=nil, zone=2022, coordX=25.01, coordY=73.03, quests={70289}, optKey="alchemy", optSlot=8},
        {name=198663, source="", who=nil, zone=2022, coordX=55.00, coordY=81.00, quests={70274}, optKey="alchemy", optSlot=8},
        {name=198599, source="", who=nil, zone=2024, coordX=16.04, coordY=38.05, quests={70208}, optKey="alchemy", optSlot=8},
        {name=198710, source="", who=nil, zone=2023, coordX=79.02, coordY=83.08, quests={70305}, optKey="alchemy", optSlot=8},
        {name=198712, source="", who=nil, zone=2024, coordX=67.00, coordY=13.02, quests={70309}, optKey="alchemy", optSlot=8},
        {name=203471, source="", who=nil, zone=2025, coordX=55.02, coordY=30.05, quests={70278}, optKey="alchemy", optSlot=8},
        {name=198697, source="", who=nil, zone=2025, coordX=59.05, coordY=38.04, quests={70301}, optKey="alchemy", optSlot=8},
        {name=205213, source="", who=nil, zone=2133, coordX=40.48, coordY=59.18, quests={75651}, optKey="alchemy", optSlot=8}, --10.1 knowledge item = Suspicious Mold
        {name=205212, source="", who=nil, zone=2133, coordX=62.10, coordY=41.12, quests={75649}, optKey="alchemy", optSlot=8}, --10.1 knowledge item = Marrow-Ripened Slime
        {name=205211, source="", who=nil, zone=2133, coordX=52.68, coordY=18.30, quests={75646}, optKey="alchemy", optSlot=8}, --10.1 knowledge item = Nutrient Diluted Protofluid (Malnourished Specimen)
        {name="A Fizzy Fusion: Requires 5 moon berry juice",source="Darkmoon Faire", who="NPC: Sylannia", zone=407, coordX=50.2, coordY=69.4, quests={29506}, optKey="alchemy", optSlot=10},
        {name=204226, source="", who="Agni Blazehoof (Draconic Suppression Powder)", zone=2151, coordX=56, coordY=39.4, quests={74935}, optKey="alchemy", optSlot=11},
      }
      -- Blacksmithing
      local Prof_BS = {
        {name="Instructor Quest", source="", who="NPC: Metalshaper Kuroko", zone=2112, coordX=37, coordY=47.1, quests={70233, 70235, 70234, 70211}, optKey="blacksmithing", optSlot=1},
        {name="Niffen/Consortium Quest", source="", who="NPC: Kayann", zone=2112, coordX=36.6, coordY=62.9, quests={75148,75569,66897, 66517, 66941, 72398}, optKey="blacksmithing", optSlot=2},
        {name="Crafting Orders Quest", source="", who="NPC: Azley", zone=2112, coordX=35.4, coordY=58.8, quests={70589}, optKey="blacksmithing", optSlot=3},
        {name=198454, source="Inscription Crafting Order", who=nil, zone=nil, coordX=nil, coordY=nil, quests={74109}, optKey="blacksmithing", optSlot=4},
        {name="Expedition Drop", source="Disturbed Dirt/Expedition Scout's Pack", who=nil, zone=nil, coordX=nil, coordY=nil, quests={66381, 66382}, optKey="blacksmithing", optSlot=5},
        {name=198966, source="", who="Mobs: Rousing Fire", zone=2022, coordX=37.6, coordY=72.1, quests={70513}, optKey="blacksmithing", optSlot=6},
        {name=198965, source="", who="Mobs: Earth (Crushing Elementals)", zone=2022, coordX=46.35, coordY=37.26, quests={70512}, optKey="blacksmithing", optSlot=6},
        {name="Profession Master", source="", who="NPC: Grekka Anvilsmash", zone=2022, coordX=43.32, coordY=66.6, quests={70250}, optKey="blacksmithing", optSlot=7},
        {name=198791, source="", who=nil, zone=2022, coordX=56.04, coordY=19.05, quests={70230}, optKey="blacksmithing", optSlot=8},
        {name=201007, source="", who=nil, zone=2022, coordX=22.00, coordY=87.00, quests={70246}, optKey="blacksmithing", optSlot=8},
        {name=201005, source="", who=nil, zone=2022, coordX=65.05, coordY=25.07, quests={70312}, optKey="blacksmithing", optSlot=8},
        {name=201008, source="", who=nil, zone=2022, coordX=35.05, coordY=64.03, quests={70296}, optKey="blacksmithing", optSlot=8},
        {name=201010, source="", who=nil, zone=2022, coordX=34.05, coordY=67.01, quests={70310}, optKey="blacksmithing", optSlot=8},
        {name=201004, source="", who=nil, zone=2023, coordX=81.01, coordY=37.09, quests={70313}, optKey="blacksmithing", optSlot=8},
        {name=201009, source="", who=nil, zone=2023, coordX=50.09, coordY=66.05, quests={70353}, optKey="blacksmithing", optSlot=8},
        {name=201011, source="", who=nil, zone=2024, coordX=53.01, coordY=65.03, quests={70314}, optKey="blacksmithing", optSlot=8},
        {name=201006, source="", who=nil, zone=2025, coordX=52.02, coordY=80.05, quests={70311}, optKey="blacksmithing", optSlot=8},
        {name=205988, source="", who=nil, zone=2133, coordX=27.53, coordY=42.87, quests={76080}, optKey="blacksmithing", optSlot=8}, --10.1 knowledge item = Zaqali Elder Spear
        {name=205987, source="", who=nil, zone=2133, coordX=48.30, coordY=21.95, quests={76079}, optKey="blacksmithing", optSlot=8}, --10.1 knowledge item = Brimstone Rescue Ring
        {name=205986, source="", who=nil, zone=2133, coordX=57.15, coordY=54.64, quests={76078}, optKey="blacksmithing", optSlot=8}, --10.1 knowledge item = Well-Worn Kiln
        {name="Baby Needs Two Pair of Shoes",source="", who="NPC: Yebb Neblegear", zone=407, coordX=51, coordY=81.8, quests={29508}, optKey="blacksmithing", optSlot=10},
        {name=204230, source="", who="Tidesmith Zarviss (Ancient Ceremonial Trident)", zone=2151, coordX=80.2, coordY=59.6, quests={74931}, optKey="blacksmithing", optSlot=11},
      }
      -- Enchanting
      local Prof_Ench = {
        {name="Instructor Quest", source="", who="NPC: Soragosa", zone=2112, coordX=31.1, coordY=61.4, quests={72173, 72172, 72175, 72155}, optKey="enchanting", optSlot=1},
        {name="Niffen/Consortium Quest", source="", who="NPC: Kayann", zone=2112, coordX=36.6, coordY=62.9, quests={75865,75150,66900, 66884, 72423, 66935}, optKey="enchanting", optSlot=2},
        {name=194702, source="Inscription Crafting Order", who=nil, zone=nil, coordX=nil, coordY=nil, quests={74110}, optKey="enchanting", optSlot=4},
        {name="Expedition Drop", source="Disturbed Dirt/Expedition Scout's Pack", who=nil, zone=nil, coordX=nil, coordY=nil, quests={66377, 66378}, optKey="enchanting", optSlot=5},
        {name=198968, source="", who="Mobs: Humanoid Primalists", zone=2025, coordX=53.2, coordY=65.6, quests={70515}, optKey="enchanting", optSlot=6},
        {name=198967, source="", who="Mobs: Arcanes (Wyrmlings and Destabilized Elementals)", zone=2024, coordX=38.3, coordY=61.5, quests={70514}, optKey="enchanting", optSlot=6},
        {name="Profession Master", source="", who="NPC: Shalasar Glimmerdusk",zone=2023, coordX=62.42, coordY=18.7, quests={70251}, optKey="enchanting", optSlot=7},
        {name=198798, source="", who=nil, zone=2022, coordX=57.05, coordY=83.06, quests={70320}, optKey="enchanting", optSlot=8},
        {name=198675, source="", who=nil, zone=2022, coordX=68.00, coordY=26.08, quests={70283}, optKey="enchanting", optSlot=8},
        {name=201012, source="", who=nil, zone=2022, coordX=57.05, coordY=58.05, quests={70272}, optKey="enchanting", optSlot=8},
        {name=198689, source="", who=nil, zone=2023, coordX=61.04, coordY=67.06, quests={70291}, optKey="enchanting", optSlot=8},
        {name=198799, source="", who=nil, zone=2024, coordX=38.05, coordY=59.02, quests={70336}, optKey="enchanting", optSlot=8},
        {name=201013, source="", who=nil, zone=2024, coordX=45.01, coordY=61.02, quests={70290}, optKey="enchanting", optSlot=8},
        {name=198694, source="", who=nil, zone=2024, coordX=21.00, coordY=45.00, quests={70298}, optKey="enchanting", optSlot=8},
        {name=198800, source="", who=nil, zone=2025, coordX=59.09, coordY=70.04, quests={70342}, optKey="enchanting", optSlot=8},
        {name=205001, source="", who=nil, zone=2133, coordX=36.66, coordY=69.33, quests={75510}, optKey="enchanting", optSlot=8}, --10.1 knowledge item = Resonating Arcane Crystal
        {name=204999, source="", who=nil, zone=2133, coordX=62.39, coordY=53.80, quests={75509}, optKey="enchanting", optSlot=8}, --10.1 knowledge item = Shimmering Aqueous Orb
        {name=204990, source="", who=nil, zone=2133, coordX=48.00, coordY=17.00, quests={75508}, optKey="enchanting", optSlot=8}, --10.1 knowledge item = Lava-Drenched Shadow Crystal
        {name=201359, source="", who="Primal Storms - Earth [Need Sub Specialization: Primal Extraction]", zone=nil, coordX=nil, coordY=nil, quests={71940}, optKey="enchanting", optSlot=9},
        {name=201358, source="", who="Primal Storms - Air [Need Sub Specialization: Primal Extraction]", zone=nil, coordX=nil, coordY=nil, quests={71939}, optKey="enchanting", optSlot=9},
        {name=201357, source="", who="Primal Storms - Frost [Need Sub Specialization: Primal Extraction]", zone=nil, coordX=nil, coordY=nil, quests={71942}, optKey="enchanting", optSlot=9},
        {name=201356, source="", who="Primal Storms - Fire [Need Sub Specialization: Primal Extraction]", zone=nil, coordX=nil, coordY=nil, quests={71941}, optKey="enchanting", optSlot=9},
        {name="Putting Trash to Good Use",source="", who="NPC: Sayge", zone=407, coordX=53, coordY=75.8, quests={29510}, optKey="enchanting", optSlot=10},
        {name=204224, source="", who="Manathema (Glowing Crystal Bookmark)", zone=2151, coordX=55.4, coordY=36.4, quests={74927}, optKey="enchanting", optSlot=11},
      }
      -- Engineering
      local Prof_Eng = {
        {name="Instructor Quest", source="", who="NPC: Clinkyclick Shatterboom", zone=2112, coordX=42.2, coordY=48.6, quests={70557, 70540, 70545, 70539}, optKey="engineering", optSlot=1},
        {name="Niffen/Consortium Quest", source="", who="NPC: Kayann", zone=2112, coordX=36.6, coordY=62.9, quests={75575,75608,66890, 66891, 66942, 72396}, optKey="engineering", optSlot=2},
        {name="Crafting Orders Quest", source="", who="NPC: Azley", zone=2112, coordX=35.4, coordY=58.8, quests={70591}, optKey="engineering", optSlot=3},
        {name=198510, source="Inscription Crafting Order", who=nil, zone=nil, coordX=nil, coordY=nil, quests={74111}, optKey="engineering", optSlot=4},
        {name="Expedition Drop", source="Disturbed Dirt/Expedition Scout's Pack",  who=nil, zone=nil, coordX=nil, coordY=nil,quests={66379, 66380}, optKey="engineering", optSlot=5},
        {name=198970, source="", who="Mobs: Dragonkin", zone=2024, coordX=66, coordY=59.6,quests={70517}, optKey="engineering", optSlot=6},
        {name=198969, source="", who="Mobs: Titans", zone=2025, coordX=58.8, coordY=58.8, quests={70516}, optKey="engineering", optSlot=6},
        {name="Profession Master Frizz Buzzcrank", source="", who="NPC: Frizz Buzzcrank", zone=2024, coordX=17.8, coordY=21.7, quests={70252}, optKey="engineering", optSlot=7},
        {name=201014, source="", who=nil, zone=2022, coordX=56, coordY=44.9, quests={70270}, optKey="engineering", optSlot=8},
        {name=198789, source="", who=nil, zone=2022, coordX=49.09, coordY=77.54, quests={70275}, optKey="engineering", optSlot=8},
        {name=204469, source="", who=nil, zone=2133, coordX=48.48, coordY=48.64, quests={75180}, optKey="engineering", optSlot=8}, --10.1 knowledge item = Misplaced Aberrus Outflow Blueprints
        {name=204853, source="", who=nil, zone=2133, coordX=49.44, coordY=79.01, quests={75431}, optKey="engineering", optSlot=8}, --10.1 knowledge item = Discarded Dracothyst Drill
        {name=204480, source="", who=nil, zone=2133, coordX=49.87, coordY=59.25, quests={75188}, optKey="engineering", optSlot=8}, --10.1 knowledge item = Inconspicuous Data Miner
        {name=204475, source="", who=nil, zone=2133, coordX=37.82, coordY=58.83, quests={75186}, optKey="engineering", optSlot=8}, --10.1 knowledge item = Busted Wyrmhole Generator
        {name=204850, source="", who=nil, zone=2133, coordX=57.65, coordY=73.94, quests={75430}, optKey="engineering", optSlot=8}, --10.1 knowledge item = Handful of Khaz'gorite Bolts (Bolts and Brass)
        {name=204855, source="", who=nil, zone=2133, coordX=48.10, coordY=16.59, quests={75433}, optKey="engineering", optSlot=8}, --10.1 knowledge item = Overclocked Determination Core (Molten Scoutbot)
        {name=204470, source="", who=nil, zone=2133, coordX=48.17, coordY=27.93, quests={75183}, optKey="engineering", optSlot=8}, --10.1 knowledge item = Haphazardly Discarded Bomb
        {name=204471, source="", who=nil, zone=2133, coordX=50.51, coordY=47.93, quests={75184}, optKey="engineering", optSlot=8}, --10.1 knowledge item = Defective Survival Pack
        {name="Talkin' Tonks",source="", who="NPC: Rinling", zone=407, coordX=49.4, coordY=60.8, quests={29511}, optKey="engineering", optSlot=10},
        {name=204227, source="", who="Fimbol (Gnomish Voicebox)", zone=2151, coordX=61.2, coordY=26.8, quests={74934}, optKey="engineering", optSlot=11},
      }
      --  Herbalism
      local Prof_Herb = {
        {name="Instructor Quest", source="", who="NPC: Agrikus", zone=2112, coordX=37.5, coordY=67.9, quests={70616, 70613, 70614, 70615}, optKey="herbalism", optSlot=1},
        {name=194704, source="Inscription Crafting Order", who=nil, zone=nil, coordX=nil, coordY=nil, quests={74107}, optKey="herbalism", optSlot=4},
        {name=200677, source="RNG Drop while Gathering", who=nil, zone=nil, coordX=nil, coordY=nil, quests={71857, 71858, 71859, 71860, 71861, 71864}, optKey="herbalism", optSlot=6},
        {name="Profession Master", source="", who="NPC: Hua Greenpaw", zone=2023, coordX=58.42, coordY=50.04, quests={70253}, optKey="herbalism", optSlot=7},
        {name="Herbs for Healing",source="", who="NPC: Chronos", zone=407, coordX=55, coordY=70.6, quests={29514}, optKey="herbalism", optSlot=10},
        {name=203416, source="", who="Kangalo (Dormant Lifebloom Seeds)", zone=2151, coordX=56.6, coordY=59.2, quests={74933}, optKey="herbalism", optSlot=11},
      }
      -- Inscription
      local Prof_Insc = {
        {name="Instructor Quest", source="", who="NPC: Talendara", zone=2112, coordX=38.9, coordY=73.4, quests={70559, 70560, 70558, 70561}, optKey="inscription", optSlot=1},
        {name="Niffen/Consortium Quest", source="", who="NPC: Kayann", zone=2112, coordX=36.6, coordY=62.9, quests={75149,75573,66943, 66944, 72438, 66945}, optKey="inscription", optSlot=2},
        {name="Crafting Orders Quest", source="", who="NPC: Azley", zone=2112, coordX=35.4, coordY=58.8, quests={70592}, optKey="inscription", optSlot=3},
        {name=194699, source="Inscription Crafted/Crafing Order", who=nil, zone=nil, coordX=nil, coordY=nil, quests={74105}, optKey="inscription", optSlot=4},
        {name="Expedition Drop", source="Disturbed Dirt/Expedition Scout's Pack", who=nil, zone=nil, coordX=nil, coordY=nil, quests={66375, 66376}, optKey="inscription", optSlot=5},
        {name=198972, source="", who="Mobs: Dragonkin", zone=2024, coordX=65.4, coordY=59.3, quests={70519}, optKey="inscription", optSlot=6},
        {name=198971, source="", who="Mobs: Djaradin (Qalashis)", zone=2022, coordX=64.9, coordY=30.5, quests={70518}, optKey="inscription", optSlot=6},
        {name="Profession Master", source="", who="NPC: Lydiara Whisperfeather", zone=2024, coordX=40.2, coordY=64.3, quests={70254}, optKey="inscription", optSlot=7},
        {name=198704, source="", who=nil, zone=2022, coordX=67.87, coordY=57.96, quests={70306}, optKey="inscription", optSlot=8},
        {name=198703, source="", who=nil, zone=2023, coordX=85.07, coordY=25.02, quests={70307}, optKey="inscription", optSlot=8},
        {name=198693, source="", who=nil, zone=2024, coordX=46.02, coordY=23.09, quests={70297}, optKey="inscription", optSlot=8},
        {name=198686, source="", who=nil, zone=2024, coordX=43.07, coordY=30.09, quests={70293}, optKey="inscription", optSlot=8},
        {name=198669, source="", who=nil, zone=2112, coordX=13.02, coordY=63.68, quests={70281}, optKey="inscription", optSlot=8},
        {name=198659, source="", who=nil, zone=2025, coordX=56.03, coordY=41.02, quests={70264}, optKey="inscription", optSlot=8},
        {name=198659, source="", who=nil, zone=2025, coordX=47.24, coordY=40.01, quests={70248}, optKey="inscription", optSlot=8},
        {name=201015, source="", who=nil, zone=2025, coordX=56.01, coordY=40.09, quests={70287}, optKey="inscription", optSlot=8},
        {name=206034, source="", who=nil, zone=2133, coordX=53.01, coordY=74.27, quests={76120}, optKey="inscription", optSlot=8}, --10.1 knowledge item = Hissing Rune Draft
        {name=206035, source="", who=nil, zone=2133, coordX=54.57, coordY=20.21, quests={76121}, optKey="inscription", optSlot=8}, --10.1 knowledge item = Ancient Research (under table)
        {name=206031, source="", who=nil, zone=2133, coordX=36.73, coordY=46.32, quests={76117}, optKey="inscription", optSlot=8}, --10.1 knowledge item = Intricate Zaqali Runes
        {name="Writing the Future: Requires 5 Light Parchment ",source="", who="NPC: Sayge", zone=407, coordX=53, coordY=75.8, quests={29515}, optKey="inscription", optSlot=10}, 
        {name=204229, source="", who="Arcantrix (Arcane Dispelling Rune)", zone=2151, coordX=49.2, coordY=41.8, quests={74932}, optKey="inscription", optSlot=11},
      }
      --  Jewelcrafting
      local Prof_JC = {
        {name="Instructor Quest", source="", who="NPC: Tuluradormi", zone=2112, coordX=40.8, coordY=61.1, quests={70565, 70563, 70564, 70562}, optKey="jewelcrafting", optSlot=1},
        {name="Niffen/Consortium Quest", source="", who="NPC: Kayann", zone=2112, coordX=36.6, coordY=62.9, quests={75362,75602,66516, 72428, 66950, 66949}, optKey="jewelcrafting", optSlot=2},
        {name="Crafting Orders Quest", source="", who="NPC: Azley", zone=2112, coordX=35.4, coordY=58.8, quests={70593}, optKey="jewelcrafting", optSlot=3},
        {name=194703, source="Inscription Crafting Order", who=nil, zone=nil, coordX=nil, coordY=nil, quests={74112}, optKey="jewelcrafting", optSlot=4},
        {name="Expedition Drop", source="Disturbed Dirt/Expedition Scout's Pack", who=nil, zone=nil, coordX=nil, coordY=nil, quests={66388, 66389}, optKey="jewelcrafting", optSlot=5},
        {name=198974, source="", who="Mobs: Nokhud/Sundered Flame", zone=2023, coordX=74, coordY=41, quests={70521}, optKey="jewelcrafting", optSlot=6},
        {name=198973, source="", who="Mobs: Elemental Enemies", zone=2024, coordX=74.9, coordY=37.8, quests={70520}, optKey="jewelcrafting", optSlot=6},
        {name="Profession Master", source="", who="NPC: Pluutar", zone=2024, coordX=46.21, coordY=40.79, quests={70255}, optKey="jewelcrafting", optSlot=7},
        {name=198687, source="", who=nil, zone=2022, coordX=50.04, coordY=45.01, quests={70292}, optKey="jewelcrafting", optSlot=8},
        {name=201017, source="", who=nil, zone=2022, coordX=33.09, coordY=63.07, quests={70273}, optKey="jewelcrafting", optSlot=8},
        {name=198670, source="", who=nil, zone=2023, coordX=25.02, coordY=35.04, quests={70282}, optKey="jewelcrafting", optSlot=8},
        {name=198660, source="", who=nil, zone=2023, coordX=61.08, coordY=13.00, quests={70263}, optKey="jewelcrafting", optSlot=8},
        {name=198664, source="", who=nil, zone=2024, coordX=45.00, coordY=61.03, quests={70277}, optKey="jewelcrafting", optSlot=8},
        {name=201016, source="", who=nil, zone=2024, coordX=44.06, coordY=61.02, quests={70271}, optKey="jewelcrafting", optSlot=8},
        {name=198682, source="", who=nil, zone=2025, coordX=59.08, coordY=65.02, quests={70285}, optKey="jewelcrafting", optSlot=8},
        {name=198656, source="", who=nil, zone=2025, coordX=56.91, coordY=43.72, quests={70261}, optKey="jewelcrafting", optSlot=8},
        {name=205216, source="", who=nil, zone=2133, coordX=34.47, coordY=45.43, quests={75653}, optKey="jewelcrafting", optSlot=8}, --10.1 knowledge item = Gently Jostled Jewels
        {name=205219, source="", who=nil, zone=2133, coordX=54.41, coordY=32.47, quests={75654}, optKey="jewelcrafting", optSlot=8}, --10.1 knowledge item = Broken Barter Boulder
        {name=205214, source="", who=nil, zone=2133, coordX=40.37, coordY=80.66, quests={75652}, optKey="jewelcrafting", optSlot=8}, --10.1 knowledge item = Snubbed Snail Shells  
        {name="Keeping the Faire Sparkling",source="", who="NPC: Chronos", zone=407, coordX=55, coordY=70.6, quests={29516}, optKey="jewelcrafting", optSlot=10},
        {name=204222, source="", who="Amephyst (Crystal Tuning Fork)", zone=2151, coordX=29, coordY=57.2, quests={74936}, optKey="jewelcrafting", optSlot=11},
      }
      -- Leatherworking
      local Prof_LW = {
        {name="Instructor Quest", source="", who="NPC: Hideshaper Koruz", zone=2112, coordX=28.5, coordY=61.3, quests={70568, 70569, 70571, 70567},optKey="leatherworking",  optSlot=1},
        --{name="Consortium Quest", source="",  who=nil,zone=2112, coordX=36.6, coordY=62.9, quests={66363, 66364, 72407, 66951},  optKey="leatherworking", optSlot=2},
        {name="Niffen Quest", source="", who="NPC: Kayann", zone=2112, coordX=36.6, coordY=62.9, quests={75354,75368}, optKey="leatherworking", optSlot=2},
        {name="Crafting Orders Quest", source="",who="NPC: Azley", zone=2112, coordX=35.4, coordY=58.8, quests={70594},   optKey="leatherworking",  optSlot=3},
        {name=194700,  source="Inscription Crafting Order",  who=nil, zone=nil, coordX=nil, coordY=nil, quests={74113},  optKey="leatherworking",  optSlot=4},
        {name="Expedition Drop", source="Disturbed Dirt/Expedition Scout's Pack",  who=nil, zone=nil, coordX=nil, coordY=nil, quests={66384, 66385},   optKey="leatherworking",  optSlot=5},
        {name=198976,  source="",  who="Mobs: Slyvern/Vorquin", zone=2024, coordX=38.5, coordY=37.2, quests={70523},  optKey="leatherworking",  optSlot=6},
        {name=198975,  source="",   who="Mobs: Proto-dragon/drakes", zone=2022, coordX=42.8, coordY=82.4, quests={70522}, optKey="leatherworking",  optSlot=6},
        {name="Profession Master",   source="",  who="NPC: Erden", zone=2023, coordX=82.45, coordY=50.67,quests={70256},  optKey="leatherworking", optSlot=7},
        {name=198711, source="", who=nil, zone=2022, coordX=39, coordY=86, quests={70308}, optKey="leatherworking", optSlot=8},
        {name=198667, source="", who=nil, zone=2022, coordX=64.3, coordY=25.4, quests={70280}, optKey="leatherworking", optSlot=8},
        {name=198696, source="", who=nil, zone=2023, coordX=86.4, coordY=53.7, quests={70300}, optKey="leatherworking", optSlot=8},
        {name=201018, source="",who=nil, zone=2024, coordX=12.5, coordY=49.4, quests={70269}, optKey="leatherworking", optSlot=8},
        {name=198658, source="", who=nil, zone=2024, coordX=16.7, coordY=38.8, quests={70266}, optKey="leatherworking", optSlot=8},
        {name=198683, source="", who=nil, zone=2024, coordX=57.5, coordY=41.3, quests={70286}, optKey="leatherworking", optSlot=8},
        {name=198690, source="", who=nil, zone=2025, coordX=56.8, coordY=30.5, quests={70294}, optKey="leatherworking", optSlot=8},
        {name=204987, source="", who=nil, zone=2133, coordX=45.25, coordY=21.12, optKey="leatherworking", quests={75496}, optSlot=8}, --10.1 knowledge item = Lava-Forged Leatherworker's "Knife"
        {name=204986, source="", who=nil, zone=2133, coordX=41.16, coordY=48.81, optKey="leatherworking", quests={75495}, optSlot=8}, --10.1 knowledge item = Flame-Infused Scale Oil
        {name=204988, source="", who=nil, zone=2133, coordX=49.56, coordY=54.80, optKey="leatherworking", quests={75502}, optSlot=8}, --10.1 knowledge item = Sulfur-Soaked Skins
        {name="Eyes on the Prizes: Requires 10  Shiny Bauble,5 Coarse Thread and 5 Blue Dye", source="",  who="NPC: Rinling", zone=407, coordX=49.4, coordY=60.8,quests={29517},  optKey="leatherworking",  optSlot=10},
        {name=204232, source="", who="Snarfang (Reinforced Pristine Leather)", zone=2151, coordX=37, coordY=47, quests={74928}, optKey="leatherworking", optSlot=11},
      }
      -- Mining
      local Prof_Mine = {
        {name="Instructor Quest", source="", who="NPC: Sekita the Burrower", zone=2112, coordX=38.8, coordY=51.4, quests={70617, 72157, 70618, 72156}, optKey="mining", optSlot=1},
        {name=194708, source="Inscription Crafting Order", who=nil, zone=nil, coordX=nil, coordY=nil, quests={74106}, optKey="mining", optSlot=4},
        {name=201300, source="RNG Drop while Mining", who=nil, zone=nil, coordX=nil, coordY=nil, quests={72160, 72161 ,72162, 72163, 72164, 72165}, optKey="mining", optSlot=6},
        {name="Profession Master", source="", who="NPC: Bridgette Holdug", zone=2025, coordX=61.41, coordY=76.86, quests={70258}, optKey="mining", optSlot=7},
        {name="Rearm, Reuse, Recycle",source="", who="NPC: Rinling", zone=407, coordX=49.4, coordY=60.8, quests={29518}, optKey="mining", optSlot=10},
        {name=203418, source="", who="Tectonus (Amplified Quaking Stone)", zone=2151, coordX=43.2, coordY=49.6, quests={74926}, optKey="mining", optSlot=11},
      }
      
      -- Skinning
      local Prof_Skin = {
        {name="Instructor Quest", source="", who="NPC: Ralathor the Rugged", zone=2112, coordX=28.5, coordY=60.4, quests={70620, 72159, 70619, 72158}, optKey="skinning", optSlot=1},
        {name=201023, source="Inscription Crafting Order", who=nil, zone=nil, coordX=nil, coordY=nil, quests={74114}, optKey="skinning", optSlot=4},
        {name=198837, source="RNG Drop while Skinning", who=nil, zone=nil, coordX=nil, coordY=nil, quests={70381, 70383, 70384, 70385, 70386, 70389}, optKey="skinning", optSlot=6},
        {name="Profession Master", source="", who="NPC: Zenzi", zone=2022, coordX=73.34, coordY=69.72, quests={70259}, optKey="skinning", optSlot=7},
        {name="Tan My Hide",source="", who="NPC: Chronos", zone=407, coordX=55, coordY=70.6,quests={29519}, optKey="skinning", optSlot=10}, 
        {name=203417, source="", who="Faunos (Razor-Sharp Animal Bone)", zone=2151, coordX=45.2, coordY=36.6, quests={74930}, optKey="skinning", optSlot=11},
      }
      -- Tailoring
      local Prof_Tail = {
        {name="Instructor Quest", source="", who="NPC: Fulafong", zone=2112, coordX=31.9, coordY=67.2, quests={70572, 70587, 70586, 70582}, optKey="tailoring", optSlot=1},
        
        {name="Niffen/Consortium Quest", source="", who="NPC: Kayann", zone=2112, coordX=36.6, coordY=62.9, quests={75407,75600,72410, 66952, 66953, 66899}, optKey="tailoring", optSlot=2},
        {name="Crafting Orders Quest", source="", who="NPC: Azley", zone=2112, coordX=35.4, coordY=58.8, quests={70595}, optKey="tailoring", optSlot=3},
        {name=194698, source="Inscription Crafting Order", who=nil, zone=nil, coordX=nil, coordY=nil, quests={74115}, optKey="tailoring", optSlot=4},
        {name="Expedition Drop", source="Disturbed Dirt/Expedition Scout's Pack", who=nil, zone=nil, coordX=nil, coordY=nil, quests={66386, 66387}, optKey="tailoring", optSlot=5},
        {name=198977, source="", who="Mobs: Nokhud", zone=2023, coordX=74, coordY=41, quests={70524}, optKey="tailoring", optSlot=6},
        {name=198978, source="", who="Mobs: Gnolls", zone=2024, coordX=23.9, coordY=42.4, quests={70525}, optKey="tailoring", optSlot=6},
        {name="Profession Master", source="", who="NPC: Elysa Raywinder", zone=2112, coordX=27.96, coordY=45.76, quests={70260}, optKey="tailoring", optSlot=7},
        {name=198699, source="", who=nil,zone=2022, coordX=74.7, coordY=37.9, quests={70302}, optKey="tailoring", optSlot=8},
        {name=198702, source="", who=nil,zone=2022, coordX=24.9, coordY=69.7, quests={70304}, optKey="tailoring", optSlot=8},
        {name=198692, source="", who=nil,zone=2023, coordX=35.34,coordY=40.12,quests={70295}, optKey="tailoring", optSlot=8},
        {name=201020, source="", who=nil,zone=2023, coordX=66.1, coordY=52.9, quests={70303}, optKey="tailoring", optSlot=8},
        {name=198680, source="", who=nil,zone=2024, coordX=16.2, coordY=38.8, quests={70284}, optKey="tailoring", optSlot=8},
        {name=198662, source="", who=nil,zone=2024, coordX=40.7, coordY=54.5, quests={70267}, optKey="tailoring", optSlot=8},
        {name=198684, source="", who=nil,zone=2025, coordX=60.4, coordY=79.7, quests={70288}, optKey="tailoring", optSlot=8},
        {name=201019, source="", who=nil,zone=2025, coordX=58.6, coordY=45.8, quests={70372}, optKey="tailoring", optSlot=8},
        {name=206030, source="", who=nil, zone=2133, coordX=44.52, coordY=15.65, optKey="tailoring", quests={76116}, optSlot=8}, --10.1 knowledge item = Exquisitely Embroidered Banner
        {name=206019, source="", who=nil, zone=2133, coordX=47.21, coordY=48.55, optKey="tailoring", quests={76102}, optSlot=8}, --10.1 knowledge item = Abandoned Reserve Chute
        {name=206026, source="", who=nil, zone=2133, coordX=59.11, coordY=73.14, optKey="tailoring", quests={76110}, optSlot=8}, --10.1 knowledge item = Used Medical Wrap Kit
        {name="Banners, Banners Everywhere!: Requires 1 Coarse Thread, 1 Red Dye and 1 Blue Dye",source="", who="NPC: Selina Dourman", zone=407, coordX=55.4, coordY=54.8, quests={29520}, optKey="tailoring", optSlot=10},
        {name=204225, source="", who="Gareed (Traditional Morqut Kite)", zone=2151, coordX=31.2, coordY=53.6, quests={74929}, optKey="tailoring", optSlot=11},
        
      }
      
      local profList = {
        {prof=Prof_Alc,  profID=171, name="alchemy",        r=195, g=0, b=255},
        {prof=Prof_BS,   profID=164, name="blacksmithing",  r=201, g=142, b=100}, 
        {prof=Prof_Ench, profID=333, name="enchanting",     r=48, g=0, b=255},  
        {prof=Prof_Eng,  profID=202, name="engineering",    r=48, g=170, b=255},
        {prof=Prof_Herb, profID=182, name="herbalism",      r=0, g=255, b=89},
        {prof=Prof_Insc, profID=773, name="inscription",    r=225, g=255, b=153}, 
        {prof=Prof_JC,   profID=755, name="jewelcrafting",  r=255, g=0, b=102},
        {prof=Prof_LW,   profID=165, name="leatherworking", r=255, g=170, b=0},
        {prof=Prof_Mine, profID=186, name="mining",         r=255, g=102, b=51},  
        {prof=Prof_Skin, profID=393, name="skinning",       r=136, g=68, b=34},
        {prof=Prof_Tail, profID=197, name="tailoring",      r=255, g=255, b=0},
      }
----------------------------------------------------------------------------------------------------------------
 -- Define the welcome message
local message = "Tama's Helper\n\nWelcome " .. UnitName("player") .. "\n"
 -- Create a new frame object
local f = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
f:RegisterEvent("ADDON_LOADED")
f:RegisterEvent("PLAYER_LOGOUT")
if not Tamas_Helper then
    Tamas_Helper = {}
    Tamas_Helper.fx = 0 -- left- to right +
    Tamas_Helper.fy = -10 -- down- to up+
    Tamas_Helper.fw = 250
    Tamas_Helper.fh = 450
end
local frameX = Tamas_Helper.fx
local frameY = Tamas_Helper.fy
local frameW = Tamas_Helper.fw
local frameH = Tamas_Helper.fh
 -- Define a function to generate the profession to-do list string
local function GenerateProfessionString()
    local PTL = "Profession todo list " -- Define the prefix for the string
    return PTL -- Return the string
end
local function GeneratePossString()
    local PTLx = tostring(frameX)
    local PTLy = tostring(frameY)
    local PTL = "x"..PTLx.." & y"..PTLy
    return PTL 
end
 -- Set the position and size of the frame
f:SetPoint("TOPLEFT", frameX, frameY)
f:SetSize(frameW, frameH)
 -- Set the backdrop and border color of the frame
f:SetBackdrop(BACKDROP_TUTORIAL_16_16)
f:SetBackdropBorderColor(0, 0, 0, 0)
 -- Allow the frame to be moved
f:SetMovable(true)
 -- Register events for the frame
f:RegisterEvent("QUEST_LOG_UPDATE")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
 -- Set the script for the frame to update the to-do list string
f:SetScript("OnEvent", GenerateProfessionString)
 -- Add a text label to the frame
f.text = f:CreateFontString(nil, "ARTWORK")
f.text:SetFont("Fonts\\ARIALN.ttf", 13, "OUTLINE")
f.text:SetPoint("TOPLEFT", 3, -5)
f.text:SetTextColor(0, 255, 100)
f.text:SetJustifyH("LEFT")
 -- Set the initial text of the frame to the welcome message
f.text:SetText(message)
 -- Define a slash command to show or hide the frame
SLASH_TAMA1 = "/tama"
SlashCmdList["TAMA"] = function(msg, editBox)
    local cmd = strlower(msg)
    if cmd == "show" then
        f:Show()
    elseif cmd == "hide" then
        f:Hide()
    else
        print("Valid options are:\n/tama show\n/tama hide")
    end
end
 -- Update the text to include the to-do list strings
message = message..GenerateProfessionString().."\n\n"
 -- assign the text to the frame label
f.text:SetText(message)
 -- Set the script for the frame to allow it to be moved by dragging
f:SetScript("OnMouseDown", function(self, button)
    self:StartMoving()
end)
 f:SetScript("OnMouseUp", function(self, button)
    self:StopMovingOrSizing()
end)
 f:SetScript("OnDragStop", function(self)
    frameX= self:GetLeft()
    frameY=  self:GetTop()
    Tamas_Helper.fx = frameX
    Tamas_Helper.fy = frameY
    message = message..GeneratePossString()..".\n"
    f.text:SetText(message)
end)
Tamas_Helper.fx = frameX
Tamas_Helper.fy = frameY
Tamas_Helper.fw = frameW
Tamas_Helper.fh = frameH
Tamas_Helper.mes = message