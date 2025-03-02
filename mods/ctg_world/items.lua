local S = minetest.get_translator(minetest.get_current_modname())

-- disable old recipes

minetest.clear_craft({ output = "unified_inventory:bag_small" })
minetest.clear_craft({ output = "unified_inventory:bag_medium" })
minetest.clear_craft({ output = "unified_inventory:bag_large" })
minetest.clear_craft({ output = "mobs:saddle" })
minetest.clear_craft({ output = "prefab:boat" })
local recipe = {
    { 'skullkingsitems:bone' }
}
minetest.clear_craft({recipe = recipe})

local dye_dark_greyrecipe = {
    {'dye:blue', 'dye:orange'}
}
minetest.clear_craft({recipe = dye_dark_greyrecipe})

local dye_dark_greyrecipe_2 = {
    {'dye:yellow', 'dye:violet'}
}
minetest.clear_craft({recipe = dye_dark_greyrecipe_2})

local dye_magenta = {
    {'dye:blue', 'dye:red'}
}
minetest.clear_craft({recipe = dye_magenta})


-- unregister items from creative

minetest.unregister_item("prefab:boat")
minetest.unregister_item("mobs:saddle")

-- new recipes

minetest.register_craft({
    output = "unified_inventory:bag_small",
    recipe = {
        { "",             "farming:string", "" },
        { "mobs:leather", "mobs:leather",   "mobs:leather" },
        { "mobs:leather", "mobs:leather",   "mobs:leather" },
    },
})

minetest.register_craft({
    output = "unified_inventory:bag_medium",
    recipe = {
        { "",             "",                            "" },
        { "mobs:leather", "unified_inventory:bag_small", "mobs:leather" },
        { "mobs:leather", "unified_inventory:bag_small", "mobs:leather" },
    },
})

minetest.register_craft({
    output = "unified_inventory:bag_large",
    recipe = {
        { "",             "",                             "" },
        { "mobs:leather", "unified_inventory:bag_medium", "mobs:leather" },
        { "mobs:leather", "unified_inventory:bag_medium", "mobs:leather" },
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "x_farming:bonemeal 3",
    recipe = {
        "skullkingsitems:bone",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "x_farming:bonemeal 9",
    recipe = {
        "skullkingsitems:bone_block",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "x_farming:bonemeal 3",
    recipe = {
        "goblins:goblins_goblin_bone",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "dye:brown 2",
    recipe = {"dye:blue", "dye:orange"},
})

minetest.register_craft({
    type = "shapeless",
    output = "dye:brown 2",
    recipe = {
        "dye:yellow",
        "dye:violet",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "dye:violet 2",
    recipe = {"dye:blue", "dye:red"},
})

minetest.register_craft({
    type = 'cooking',
    cooktime = 10,
    output = 'x_farming:corn_pop',
    recipe = 'x_farming:seed_corn',
})

minetest.register_craft({
    type = "shapeless",
    output = "x_farming:seed_corn 4",
    recipe = { "x_farming:corn" },
})

minetest.register_craft({
    type = 'cooking',
    cooktime = 15,
    output = 'ctg_world:corn_on_the_cob',
    recipe = 'x_farming:corn'
})

--new item

-- corn on the cob

minetest.register_craftitem("ctg_world:corn_on_the_cob", {
    description = S('Corn on the Cob') .. '\n' ..
        minetest.colorize(x_farming.colors.brown, S('Hunger') .. ': 4'),
    inventory_image = "ctg_corn_on_the_cob.png",
    
    on_use = function(itemstack, user, pointed_thing)
        local hunger_amount = minetest.get_item_group(itemstack:get_name(), "hunger_amount") or 0
        if hunger_amount == 0 then
            return itemstack
        end
        return minetest.item_eat(hunger_amount)(itemstack, user, pointed_thing)
    end
})

for i = 1, #aquaz.coral_deco do
    local def = minetest.registered_nodes[aquaz.coral_deco[i].name]
    local marked_groups = def.groups
    marked_groups.hunger_amount = 4
    -- Let's hack the node!
    minetest.override_item(aquaz.coral_deco[i].name, {
        description = S(aquaz.coral_deco[i].description) .. '\n' ..
            minetest.colorize(x_farming.colors.brown, S('Hunger') .. ': 4'),
        groups = marked_groups,
        on_use = function(itemstack, user, pointed_thing)
            local hunger_amount = minetest.get_item_group(itemstack:get_name(), "hunger_amount") or 0
            if hunger_amount == 0 then
                return itemstack
            end
            return minetest.item_eat(hunger_amount)(itemstack, user, pointed_thing)
        end
    })
end

local growler_meat_raw = minetest.registered_items["growler:growler_meat_raw"]
local growler_meat_raw_groups = growler_meat_raw.groups or {}
growler_meat_raw_groups.hunger_amount = -5

minetest.override_item("growler:growler_meat_raw", {
    description = S(growler_meat_raw.description) .. '\n' ..
        minetest.colorize(x_farming.colors.brown, S('Hunger') .. ': -5'),
    groups = growler_meat_raw_groups,
    on_use = function(itemstack, user, pointed_thing)
        local hunger_amount = minetest.get_item_group(itemstack:get_name(), "hunger_amount") or 0
        if hunger_amount == 0 then
            return itemstack
        end
        return minetest.item_eat(hunger_amount)(itemstack, user, pointed_thing)
    end
})


local growler_meat = minetest.registered_items["growler:growler_meat"]
local growler_meat_groups = growler_meat.groups or {}
growler_meat_groups.hunger_amount = 5

minetest.override_item("growler:growler_meat", {
    description = S(growler_meat.description) .. '\n' ..
        minetest.colorize(x_farming.colors.brown, S('Hunger') .. ': 5'),
    groups = growler_meat_groups,
    on_use = function(itemstack, user, pointed_thing)
        local hunger_amount = minetest.get_item_group(itemstack:get_name(), "hunger_amount") or 0
        if hunger_amount == 0 then
            return itemstack
        end
        return minetest.item_eat(hunger_amount)(itemstack, user, pointed_thing)
    end
})

lumpblocks.register_lump_block { base_name = 'aluminum_lump', name = 'ctg_world:aluminum_lump_block', lump =
'ctg_world:aluminum_lump', colours = {
    '#B35E2F',
    '#E6C9B7' }, description =
    S('Raw Aluminum Block') };
lumpblocks.register_lump_block { base_name = 'nickel_lump', name = 'ctg_world:nickel_lump_block', lump =
'ctg_world:nickel_lump', colours = {
    '#387737',
    '#A2C782' }, description =
    S('Raw Nickel Block') };
lumpblocks.register_lump_block { base_name = 'titanium_lump', name = 'ctg_world:titanium_lump_block', lump =
'ctg_world:titanium_lump', colours = {
    '#8E8BBE',
    '#80B5C1' }, description =
    S('Raw Titanium Block') };

local a = "ctg_world:aluminum_ingot"
local u = "pipeworks:tube_1"
local n = "ctg_world:nickel_ingot"
-- air tight tubes
minetest.register_craft({
    output = "ctg_world:aluminum_block_embedded_tube 1",
    recipe = {{a, a, a}, {a, u, a}, {a, a, a}}
})

minetest.register_craft({
    output = "ctg_world:nickel_block_embedded_tube 1",
    recipe = {{n, n, n}, {n, u, n}, {n, n, n}}
})
