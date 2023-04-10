local S = minetest.get_translator(minetest.get_current_modname())

-- titanium

minetest.register_node("ctg_world:stone_with_titanium", {
    description = S("Titanium Ore"),
    tiles = {"default_stone.png^ctg_mineral_titanium.png"},
    groups = {
        cracky = 1
    },
    drop = "ctg_world:titanium_lump",
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("ctg_world:desert_stone_with_titanium", {
    description = S("Titanium Ore"),
    tiles = {"default_desert_stone.png^ctg_mineral_titanium.png"},
    groups = {
        cracky = 1
    },
    drop = "ctg_world:titanium_lump",
    sounds = default.node_sound_stone_defaults()
})

if minetest.get_modpath("other_worlds") then
    minetest.register_node("ctg_world:stone_space_with_titanium", {
        description = S("Titanium Ore"),
        tiles = {"default_stone.png^ctg_mineral_titanium.png"},
        groups = {
            cracky = 1
        },
        drop = "ctg_world:titanium_lump",
        sounds = default.node_sound_stone_defaults()
    })

    minetest.register_node("ctg_world:stone_red_with_titanium", {
        description = S("Titanium Ore"),
        tiles = {"asteroid_redstone.png^ctg_mineral_titanium.png"},
        groups = {
            cracky = 1
        },
        drop = "ctg_world:titanium_lump",
        sounds = default.node_sound_stone_defaults()
    })
end

minetest.register_node("ctg_world:titanium_block", {
    description = S("Titanium Block"),
    tiles = {"ctg_titanium_block_top.png", "ctg_titanium_block_top.png", "ctg_titanium_block.png"},
    paramtype2 = "facedir",
    sounds = default.node_sound_metal_defaults(),
    groups = {
        cracky = 1,
        level = 2,
        metal = 3
    },
    is_ground_content = false,

    on_place = minetest.rotate_node
})

minetest.register_craft({
    output = "ctg_world:titanium_block",
    recipe = {{"ctg_world:titanium_ingot", "ctg_world:titanium_ingot", "ctg_world:titanium_ingot"},
              {"ctg_world:titanium_ingot", "ctg_world:titanium_ingot", "ctg_world:titanium_ingot"},
              {"ctg_world:titanium_ingot", "ctg_world:titanium_ingot", "ctg_world:titanium_ingot"}}
})

minetest.register_craft({
    type = "cooking",
    output = "ctg_world:titanium_ingot",
    recipe = "ctg_world:titanium_lump"
})

minetest.register_craftitem("ctg_world:titanium_ingot", {
    description = S("Titanium Ingot"),
    inventory_image = "ctg_titanium_ingot.png"
})

minetest.register_craftitem("ctg_world:titanium_lump", {
    description = S("Titanium Lump"),
    inventory_image = "ctg_titanium_lump.png"
})

-------------------------------------------------------------

-- nickel

minetest.register_node("ctg_world:stone_with_nickel", {
    description = S("Nickel Ore"),
    tiles = {"default_stone.png^ctg_mineral_nickel.png"},
    groups = {
        cracky = 1
    },
    drop = "ctg_world:nickel_lump",
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("ctg_world:desert_stone_with_nickel", {
    description = S("Nickel Ore"),
    tiles = {"default_desert_stone.png^ctg_mineral_nickel.png"},
    groups = {
        cracky = 1
    },
    drop = "ctg_world:nickel_lump",
    sounds = default.node_sound_stone_defaults()
})

if minetest.get_modpath("other_worlds") then
    minetest.register_node("ctg_world:stone_space_with_nickel", {
        description = S("Nickel Ore"),
        tiles = {"default_stone.png^ctg_mineral_nickel.png"},
        groups = {
            cracky = 1
        },
        drop = "ctg_world:nickel_lump",
        sounds = default.node_sound_stone_defaults()
    })

    minetest.register_node("ctg_world:red_stone_with_nickel", {
        description = S("Nickel Ore"),
        tiles = {"asteroid_redstone.png^ctg_mineral_nickel.png"},
        groups = {
            cracky = 1
        },
        drop = "ctg_world:nickel_lump",
        sounds = default.node_sound_stone_defaults()
    })
end

minetest.register_node("ctg_world:nickel_block", {
    description = S("Nickel Block"),
    tiles = {"ctg_nickel_block_top.png"},
    -- tiles = {"ctg_nickel_block_top.png","ctg_nickel_block_top.png","ctg_nickel_block.png"},
    -- paramtype2 = "facedir",
    sounds = default.node_sound_metal_defaults(),
    groups = {
        cracky = 1,
        level = 1,
        metal = 2
    },
    is_ground_content = false,

    on_place = minetest.rotate_node
})

-- Crafting

minetest.register_craft({
    output = "ctg_world:nickel_block",
    recipe = {{"ctg_world:nickel_ingot", "ctg_world:nickel_ingot", "ctg_world:nickel_ingot"},
              {"ctg_world:nickel_ingot", "ctg_world:nickel_ingot", "ctg_world:nickel_ingot"},
              {"ctg_world:nickel_ingot", "ctg_world:nickel_ingot", "ctg_world:nickel_ingot"}}
})

minetest.register_craft({
    type = "cooking",
    output = "ctg_world:nickel_ingot",
    recipe = "ctg_world:nickel_lump"
})

minetest.register_craftitem("ctg_world:nickel_ingot", {
    description = S("Nickel Ingot"),
    inventory_image = "ctg_nickel_ingot.png"
})

minetest.register_craftitem("ctg_world:nickel_lump", {
    description = S("Nickel Lump"),
    inventory_image = "ctg_nickel_lump.png"
})

minetest.register_craftitem("ctg_world:nickel_dust", {
    description = S("Nickel Dust"),
    inventory_image = "ctg_nickel_dust.png"
})

minetest.register_craftitem("ctg_world:coppery_metal", {
    description = S("Coppery Metal Clumps"),
    inventory_image = "ctg_coppery_dust.png"
})

-- alloy
minetest.register_craftitem("ctg_world:hiduminium_stock", {
    description = S("Hiduminium Stock"),
    inventory_image = "ctg_hiduminium_stock.png"
})

technic.register_grinder_recipe({
    input = {"ctg_world:nickel_ingot"},
    output = "ctg_world:nickel_dust 1"
})

technic.register_alloy_recipe({
    input = {"technic:copper_dust 2", "ctg_world:nickel_dust 1"},
    output = "ctg_world:coppery_metal 1",
    time = 5
})

technic.register_alloy_recipe({
    input = {"ctg_world:aluminum_ingot 4", "ctg_world:coppery_metal 1"},
    output = "ctg_world:hiduminium_stock 3",
    time = 8
})

-------------------------------------------------------------

-- aluminum

minetest.register_node("ctg_world:stone_with_aluminum", {
    description = S("Aluminum Ore"),
    tiles = {"default_stone.png^ctg_mineral_aluminum.png"},
    groups = {
        cracky = 1
    },
    drop = "ctg_world:aluminum_lump",
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("ctg_world:desert_stone_with_aluminum", {
    description = S("Aluminum Ore"),
    tiles = {"default_desert_stone.png^ctg_mineral_aluminum.png"},
    groups = {
        cracky = 1
    },
    drop = "ctg_world:aluminum_lump",
    sounds = default.node_sound_stone_defaults()
})

if minetest.get_modpath("other_worlds") then
    minetest.register_node("ctg_world:stone_space_with_aluminum", {
        description = S("Aluminum Ore"),
        tiles = {"default_stone.png^ctg_mineral_aluminum.png"},
        groups = {
            cracky = 1
        },
        drop = "ctg_world:aluminum_lump",
        sounds = default.node_sound_stone_defaults()
    })

    minetest.register_node("ctg_world:red_stone_with_aluminum", {
        description = S("Aluminum Ore"),
        tiles = {"asteroid_redstone.png^ctg_mineral_aluminum.png"},
        groups = {
            cracky = 1
        },
        drop = "ctg_world:aluminum_lump",
        sounds = default.node_sound_stone_defaults()
    })
end

minetest.register_node("ctg_world:aluminum_block", {
    description = S("Aluminum Block"),
    tiles = {"ctg_aluminum_block_top.png"},
    -- tiles = {"ctg_aluminum_block_top.png","ctg_aluminum_block_top.png","ctg_aluminum_block.png"},
    -- paramtype2 = "facedir",
    sounds = default.node_sound_metal_defaults(),
    groups = {
        cracky = 1,
        level = 1,
        metal = 4
    },
    is_ground_content = false,

    on_place = minetest.rotate_node
})

minetest.register_craftitem("ctg_world:aluminum_ingot", {
    description = S("Aluminum Ingot"),
    inventory_image = "ctg_aluminum_ingot.png"
})

minetest.register_craftitem("ctg_world:aluminum_lump", {
    description = S("Aluminum Lump"),
    inventory_image = "ctg_aluminum_lump.png"
})

-- Crafting

minetest.register_craft({
    output = "ctg_world:aluminum_block",
    recipe = {{"ctg_world:aluminum_ingot", "ctg_world:aluminum_ingot", "ctg_world:aluminum_ingot"},
              {"ctg_world:aluminum_ingot", "ctg_world:aluminum_ingot", "ctg_world:aluminum_ingot"},
              {"ctg_world:aluminum_ingot", "ctg_world:aluminum_ingot", "ctg_world:aluminum_ingot"}}
})

minetest.register_craft({
    type = "cooking",
    output = "ctg_world:aluminum_ingot",
    recipe = "ctg_world:aluminum_lump"
})

if minetest.get_modpath("basic_materials") then
    minetest.register_craft({
        type = "cooking",
        output = "basic_materials:aluminum_bar 2",
        recipe = "ctg_world:aluminum_ingot",
        cooktime = 5
    })

    minetest.register_craft({
        type = "shapeless",
        output = "basic_materials:aluminum_strip 6",
        recipe = {"ctg_world:aluminum_ingot", "ctg_world:aluminum_ingot"}
    })
end

--- resources

minetest.register_node("ctg_world:desert_stone_with_coal", {
    description = S("Coal Ore"),
    tiles = {"default_desert_stone.png^default_mineral_coal.png"},
    groups = {
        cracky = 1
    },
    drop = "default:coal_lump",
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("ctg_world:desert_stone_with_copper", {
    description = S("Copper Ore"),
    tiles = {"default_desert_stone.png^default_mineral_copper.png"},
    groups = {
        cracky = 1
    },
    drop = "default:copper_lump",
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("ctg_world:desert_stone_with_diamond", {
    description = S("Diamond Ore"),
    tiles = {"default_desert_stone.png^default_mineral_diamond.png"},
    groups = {
        cracky = 1
    },
    drop = "default:diamond_lump",
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("ctg_world:desert_stone_with_gold", {
    description = S("Gold Ore"),
    tiles = {"default_desert_stone.png^default_mineral_gold.png"},
    groups = {
        cracky = 1
    },
    drop = "default:gold_lump",
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("ctg_world:desert_stone_with_iron", {
    description = S("Iron Ore"),
    tiles = {"default_desert_stone.png^default_mineral_iron.png"},
    groups = {
        cracky = 1
    },
    drop = "default:iron_lump",
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("ctg_world:desert_stone_with_tin", {
    description = S("Tin Ore"),
    tiles = {"default_desert_stone.png^default_mineral_tin.png"},
    groups = {
        cracky = 1
    },
    drop = "default:tin_lump",
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node("ctg_world:desert_stone_with_mese", {
    description = S("Mese Ore"),
    tiles = {"default_desert_stone.png^default_mineral_mese.png"},
    groups = {
        cracky = 1
    },
    drop = "default:mese_crystal",
    sounds = default.node_sound_stone_defaults()
})
