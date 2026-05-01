local profile = gFunc.LoadFile('common/miniswap.lua');

local aliases = {
  -- Add your job specific aliases

  ["/locklv"] = "/lac fwd locklv",
};

local bindings = {
  -- Add your job specific bindings
	["^y"] = "/poke",
};
-- ==========================
--         GEAR SETS
-- ==========================
local sets = {
    Idle_Default_Priority  = {
        Main = {
					{ Name = "Wis.Wiz. Anelace"},
					{ Name = "Beestinger"},
				},
				Sub = "Wis.Wiz. Anelace",
        Body = "Malignance Tabard",
        Hands = "Malignance Gloves",
        Head = "Malignance Chapeau",
				Legs = "Malignance Tights",
				Feet = "Malignance Boots",
				Neck = "Spider Torque",
				Ear1 = "Helenus's Earring",
				Ear2 = "Cass. Earring",
				Ring1 = "Bastokan Ring",
				Ring2 = "Provenance Ring",
				Back = "Fed. Army Mantle",
				Waist = "Ryl.Kgt. Belt",
				Range = "",
				Ammo = "",
    },
    Resting_Default = {
        Main =  "Pilgrim's Wand",
				Sub = "Wis.Wiz. Anelace",
        Body = "Malignance Tabard",
        Hands = "Malignance Gloves",
        Head = "Malignance Chapeau",
				Legs = "Malignance Tights",
				Feet = "Malignance Boots",
				Neck = "Spider Torque",
				Ear1 = "Helenus's Earring",
				Ear2 = "Cass. Earring",
				Ring1 = "Bastokan Ring",
				Ring2 = "Provenance Ring",
				Back = "Fed. Army Mantle",
				Waist = "Ryl.Kgt. Belt",
				Range = "",
				Ammo = "",
    },
    Engaged_Default_Priority = {
        Main = {
					{ Name = "Wis.Wiz. Anelace"},
					{ Name = "Beestinger"},
				},
				Sub = "Wis.Wiz. Anelace",
        Body = "Malignance Tabard",
        Hands = "Malignance Gloves",
        Head = "Malignance Chapeau",
				Legs = "Malignance Tights",
				Feet = "Malignance Boots",
				Neck = "Spider Torque",
				Ear1 = "Helenus's Earring",
				Ear2 = "Cass. Earring",
				Ring1 = "Bastokan Ring",
				Ring2 = "Provenance Ring",
				Back = "Fed. Army Mantle",
				Waist = "Ryl.Kgt. Belt",
				Range = "",
				Ammo = "",
    },

    Precast_Default = {
				-- Fast Cast pieces here
        Main = "Wis.Wiz. Anelace",
				Sub = "Wis.Wiz. Anelace",
        Body = "Malignance Tabard",
        Hands = "Malignance Gloves",
        Head = "Malignance Chapeau",
				Legs = "Malignance Tights",
				Feet = "Malignance Boots",
				Neck = "Spider Torque",
				Ear1 = "Helenus's Earring",
				Ear2 = "Cass. Earring",
				Ring1 = "Bastokan Ring",
				Ring2 = "Provenance Ring",
				Back = "Fed. Army Mantle",
				Waist = "Ryl.Kgt. Belt",
				Range = "",
				Ammo = "",
    },
    Precast_HealingMagic = {
				-- Fast Cast pieces here
        Main = "Wis.Wiz. Anelace",
				Sub = "Wis.Wiz. Anelace",
        Body = "Malignance Tabard",
        Hands = "Malignance Gloves",
        Head = "Malignance Chapeau",
				Legs = "Malignance Tights",
				Feet = "Malignance Boots",
				Neck = "Spider Torque",
				Ear1 = "Helenus's Earring",
				Ear2 = "Cass. Earring",
				Ring1 = "Bastokan Ring",
				Ring2 = "Provenance Ring",
				Back = "Fed. Army Mantle",
				Waist = "Ryl.Kgt. Belt",
				Range = "",
				Ammo = "",

    },
    Precast_EnfeeblingMagic = {
				-- Fast Cast pieces here
        Main = "Wis.Wiz. Anelace",
				Sub = "Wis.Wiz. Anelace",
        Body = "Malignance Tabard",
        Hands = "Malignance Gloves",
        Head = "Malignance Chapeau",
				Legs = "Malignance Tights",
				Feet = "Malignance Boots",
				Neck = "Spider Torque",
				Ear1 = "Helenus's Earring",
				Ear2 = "Cass. Earring",
				Ring1 = "Bastokan Ring",
				Ring2 = "Provenance Ring",
				Back = "Fed. Army Mantle",
				Waist = "Ryl.Kgt. Belt",
				Range = "",
				Ammo = "",

    },

    Midcast_Default = {
        -- Magic skill/MAB pieces here
				Main = "Wis.Wiz. Anelace",
				Sub = "Wis.Wiz. Anelace",
        Body = "Malignance Tabard",
        Hands = "Malignance Gloves",
        Head = "Malignance Chapeau",
				Legs = "Malignance Tights",
				Feet = "Malignance Boots",
				Neck = "Spider Torque",
				Ear1 = "Helenus's Earring",
				Ear2 = "Cass. Earring",
				Ring1 = "Bastokan Ring",
				Ring2 = "Provenance Ring",
				Back = "Fed. Army Mantle",
				Waist = "Ryl.Kgt. Belt",
				Range = "",
				Ammo = "",
    },
    WS_Default = {
        -- WS pieces here
    },
		ITEM_Pick ={

		},
    -- Add more custom sets as needed!
};

-- ==========================
--        PACKER (Optional)
-- ==========================
profile.Packer = {
    -- Add always-carried items here, if using Lushitacast's packer system
};

-- ==========================
--         LOAD/UNLOAD
-- ==========================
profile.OnLoad = function()
    gSettings.AllowAddSet = true;

		profile.MiniSwap.OnLoad();

		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 1');
end

profile.OnUnload = function()
    -- Any cleanup on unload

		profile.MiniSwap.OnUnload();

		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 1');
end

-- -- ==========================
-- --      MANUAL COMMANDS
-- -- ==========================
-- profile.HandleCommand = function(args)
--     -- Custom /lac profile commands
-- end

-- -- ==========================
-- --       GEARSWAPS/STATUS
-- -- ==========================
-- profile.HandleDefault = function()
--     -- Called every time a gear check is performed and not interrupted by another handler
--     local player = gData.GetPlayer();
--     if player.Status == 'Engaged' then
--         gFunc.EquipSet(sets.TP);
--     elseif player.Status == 'Resting' then
--         gFunc.EquipSet(sets.Rest);
--     else
--         gFunc.EquipSet(sets.Idle);
--     end
-- end

-- -- ==========================
-- --     ABILITY, ITEM, REST
-- -- ==========================
-- profile.HandleAbility = function()
--     -- Called when a Job Ability/Blood Pact/Waltz is used
-- end

-- profile.HandleItem = function()
--     -- Called when using an item

-- local item = gData.GetAction();

-- 	-- if string.match(item.Name, 'Holy Water') then gFunc.EquipSet(gcinclude.sets.Holy_Water) end
-- end

-- -- ==========================
-- --      CASTING HOOKS
-- -- ==========================
-- profile.HandlePrecast = function()
--     -- Called before a spell is cast (equip Fast Cast)
--     gFunc.EquipSet(sets.Precast);
-- end

-- profile.HandleMidcast = function()
--     -- Called during a spell's midcast window (equip relevant gear)
--     gFunc.EquipSet(sets.Midcast);
-- end

-- profile.HandleWeaponskill = function()
--     -- Called when using a weaponskill
--     gFunc.EquipSet(sets.Weaponskill);
-- end

-- -- ==========================
-- --     RANGED ATTACK HOOKS
-- -- ==========================
-- profile.HandlePreshot = function()
--     -- Called before ranged attack
-- end

-- profile.HandleMidshot = function()
--     -- Called during ranged attack
-- end

profile.Aliases = aliases;
profile.Bindings = bindings;
profile.Sets = sets;

return profile;