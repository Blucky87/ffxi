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
    Idle_Default_Priority = {
        Main   = {
            { Name = "Wis.Wiz. Anelace" },
            { Name = "Beestinger" }
        },
        Sub    = {
            { Name = "Wis.Wiz. Anelace" }
        },
        Body   = {
            { Name = "Malignance Tabard" },
            { Name = "Warlock's Tabard" },
            { Name = "Garrison Tunica +1" },
            { Name = "Leather Vest" }
        },
        Hands  = {
            { Name = "Malignance Gloves" },
            { Name = "Warlock's Gloves" },
            { Name = "Garrison Gloves" },
            { Name = "Leather Gloves" }
        },
        Head   = {
            { Name = "Malignance Chapeau" },
            { Name = "Warlock's Chapeau" },
            { Name = "Gambler's Chapeau" },
            { Name = "Leather Bandana" }
        },
        Legs   = {
            { Name = "Malignance Tights" },
            { Name = "Warlock's Tights" },
            { Name = "Garrison Hose +1" },
            { Name = "Leather Trousers" }
        },
        Feet   = {
            { Name = "Malignance Boots" },
            { Name = "Warlock's Boots" },
            { Name = "Garrison Boots" },
            { Name = "Leaping Boots" }
        },
        Neck   = {
            { Name = "Spider Torque" }
        },
        Ear1   = {
            { Name = "Helenus's Earring" }
        },
        Ear2   = {
            { Name = "Cass. Earring" }
        },
        Ring1  = {
            { Name = "Bastokan Ring" }
        },
        Ring2  = {
            { Name = "Provenance Ring" }
        },
        Back   = {
            { Name = "Fed. Army Mantle" }
        },
        Waist  = {
            { Name = "Ryl.Kgt. Belt" }
        },
        Range  = {
            { Name = "" }
        },
        Ammo   = {
            { Name = "" }
        }
    },
    Resting_Default_Priority = {
        Main   = { { Name = "Pilgrim's Wand" } },
        Sub    = { { Name = "Wis.Wiz. Anelace" } },
        Body   = { { Name = "Malignance Tabard" } },
        Hands  = { { Name = "Malignance Gloves" } },
        Head   = { { Name = "Malignance Chapeau" } },
        Legs   = { { Name = "Malignance Tights" } },
        Feet   = { { Name = "Malignance Boots" } },
        Neck   = { { Name = "Spider Torque" } },
        Ear1   = { { Name = "Helenus's Earring" } },
        Ear2   = { { Name = "Cass. Earring" } },
        Ring1  = { { Name = "Bastokan Ring" } },
        Ring2  = { { Name = "Provenance Ring" } },
        Back   = { { Name = "Fed. Army Mantle" } },
        Waist  = { { Name = "Ryl.Kgt. Belt" } },
        Range  = { { Name = "" } },
        Ammo   = { { Name = "" } },
    },
    Engaged_Default_Priority = {
        Main   = {
            { Name = "Wis.Wiz. Anelace" },
            { Name = "Beestinger" }
        },
        Sub    = { { Name = "Wis.Wiz. Anelace" } },
        Body   = { { Name = "Malignance Tabard" } },
        Hands  = { { Name = "Malignance Gloves" } },
        Head   = { { Name = "Malignance Chapeau" } },
        Legs   = { { Name = "Malignance Tights" } },
        Feet   = { { Name = "Malignance Boots" } },
        Neck   = { { Name = "Spider Torque" } },
        Ear1   = { { Name = "Helenus's Earring" } },
        Ear2   = { { Name = "Cass. Earring" } },
        Ring1  = { { Name = "Bastokan Ring" } },
        Ring2  = { { Name = "Provenance Ring" } },
        Back   = { { Name = "Fed. Army Mantle" } },
        Waist  = { { Name = "Ryl.Kgt. Belt" } },
        Range  = { { Name = "" } },
        Ammo   = { { Name = "" } }
    },

    Precast_Default_Priority = {
        -- Fast Cast pieces here
        Main   = { { Name = "Wis.Wiz. Anelace" } },
        Sub    = { { Name = "Wis.Wiz. Anelace" } },
        Body   = { { Name = "Malignance Tabard" } },
        Hands  = { { Name = "Malignance Gloves" } },
        Head   = { { Name = "Malignance Chapeau" } },
        Legs   = { { Name = "Malignance Tights" } },
        Feet   = { { Name = "Malignance Boots" } },
        Neck   = { { Name = "Spider Torque" } },
        Ear1   = { { Name = "Helenus's Earring" } },
        Ear2   = { { Name = "Cass. Earring" } },
        Ring1  = { { Name = "Bastokan Ring" } },
        Ring2  = { { Name = "Provenance Ring" } },
        Back   = { { Name = "Fed. Army Mantle" } },
        Waist  = { { Name = "Ryl.Kgt. Belt" } },
        Range  = { { Name = "" } },
        Ammo   = { { Name = "" } }
    },
    Precast_HealingMagic_Priority = {
        -- Fast Cast pieces here
        Main   = { { Name = "Wis.Wiz. Anelace" } },
        Sub    = { { Name = "Wis.Wiz. Anelace" } },
        Body   = { { Name = "Malignance Tabard" } },
        Hands  = { { Name = "Malignance Gloves" } },
        Head   = { { Name = "Malignance Chapeau" } },
        Legs   = { { Name = "Malignance Tights" } },
        Feet   = { { Name = "Malignance Boots" } },
        Neck   = { { Name = "Spider Torque" } },
        Ear1   = { { Name = "Helenus's Earring" } },
        Ear2   = { { Name = "Cass. Earring" } },
        Ring1  = { { Name = "Bastokan Ring" } },
        Ring2  = { { Name = "Provenance Ring" } },
        Back   = { { Name = "Fed. Army Mantle" } },
        Waist  = { { Name = "Ryl.Kgt. Belt" } },
        Range  = { { Name = "" } },
        Ammo   = { { Name = "" } }
    },
    Precast_EnfeeblingMagic_Priority = {
        -- Fast Cast pieces here
        Main   = { { Name = "Wis.Wiz. Anelace" } },
        Sub    = { { Name = "Wis.Wiz. Anelace" } },
        Body   = { { Name = "Malignance Tabard" } },
        Hands  = { { Name = "Malignance Gloves" } },
        Head   = { { Name = "Malignance Chapeau" } },
        Legs   = { { Name = "Malignance Tights" } },
        Feet   = { { Name = "Malignance Boots" } },
        Neck   = { { Name = "Spider Torque" } },
        Ear1   = { { Name = "Helenus's Earring" } },
        Ear2   = { { Name = "Cass. Earring" } },
        Ring1  = { { Name = "Bastokan Ring" } },
        Ring2  = { { Name = "Provenance Ring" } },
        Back   = { { Name = "Fed. Army Mantle" } },
        Waist  = { { Name = "Ryl.Kgt. Belt" } },
        Range  = { { Name = "" } },
        Ammo   = { { Name = "" } }
    },

    Midcast_Default_Priority = {
        -- Magic skill/MAB pieces here
        Main   = { { Name = "Wis.Wiz. Anelace" } },
        Sub    = { { Name = "Wis.Wiz. Anelace" } },
        Body   = { { Name = "Malignance Tabard" } },
        Hands  = { { Name = "Malignance Gloves" } },
        Head   = { { Name = "Malignance Chapeau" } },
        Legs   = { { Name = "Malignance Tights" } },
        Feet   = { { Name = "Malignance Boots" } },
        Neck   = { { Name = "Spider Torque" } },
        Ear1   = { { Name = "Helenus's Earring" } },
        Ear2   = { { Name = "Cass. Earring" } },
        Ring1  = { { Name = "Bastokan Ring" } },
        Ring2  = { { Name = "Provenance Ring" } },
        Back   = { { Name = "Fed. Army Mantle" } },
        Waist  = { { Name = "Ryl.Kgt. Belt" } },
        Range  = { { Name = "" } },
        Ammo   = { { Name = "" } }
    },
    WS_Default_Priority = {
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

--     -- if string.match(item.Name, 'Holy Water') then gFunc.EquipSet(gcinclude.sets.Holy_Water) end
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