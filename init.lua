
local blu = "#c0d5d5"


minetest.register_craftitem("galvmith:mithril_ingot", {
    description = minetest.colorize(blu,"Galvanized Mithril Ingot"),
    inventory_image = "galvmith_mithril_ingot.png",
    
})



minetest.register_craft({
    output = "galvmith:mithril_ingot",
    recipe = {
        {"moreores:mithril_ingot", "moreores:mithril_ingot", "moreores:mithril_ingot"},
        {"moreores:mithril_ingot", "default:steel_ingot", "moreores:mithril_ingot"},
        {"moreores:mithril_ingot", "moreores:mithril_ingot", "moreores:mithril_ingot"}, 
    }
})



minetest.register_tool("galvmith:mithril_sword", {
    description = minetest.colorize(blu,"Galvanized Mithril Sword"),
    inventory_image = "galvmith_mithril_sword.png",
    
    tool_capabilities = {
        full_punch_interval = 0.45,
        max_drop_level = 1,
        groupcaps = {
            snappy = {times = {0.01, 0.07, 0.06}, uses = 600, maxlevel = 2},
        },
        damage_groups = {fleshy = 9, burns = 0},
    },
})


    minetest.register_tool("galvmith:mithril_pickaxe", {
        description = minetest.colorize(blu,"Galvanized Mithril Pickaxe"),
        inventory_image = "galvmith_mithril_pickaxe.png",
       
        tool_capabilities = {
            full_punch_interval = 0.45,
            max_drop_level = 3,
            groupcaps={
                cracky = {times = {[1] = 2.25, [2] = 0.55, [3] = 0.35}, uses = 600, maxlevel = 2},
             },
            damage_groups = {fleshy = 9, burns = 0},
        },
    sound = {breaks = "default_tool_breaks"},
})


minetest.register_tool("galvmith:mithril_shovel", {
    description = minetest.colorize(blu,"Galvanized Mithril Shovel"),
    inventory_image = "galvmith_mithril_shovel.png",

    tool_capabilities = {
        full_punch_interval = 0.45,
        max_drop_level=1,
        groupcaps={
            crumbly = {times = {[1] = 0.70, [2] = 0.35, [3] = 0.20}, uses = 600, maxlevel = 2},
        },
        damage_groups = {fleshy=9}, 
    },
    sound = {breaks = "default_tool_breaks"},
})


minetest.register_tool("galvmith:mithril_axe", {
    description = minetest.colorize(blu,"Galvanized Mithril Axe"),
    inventory_image = "galvmith_mithril_axe.png",

    tool_capabilities = {
        full_punch_interval = 0.45,
        max_drop_level = 10,
        groupcaps = {
            choppy = {times = {[1] = 1.75, [2] = 0.45, [3] = 0.45}, uses = 600, maxlevel = 2},
        },
        damage_groups = {fleshy = 9, burns = 0},
    },
    sound = {breaks = "default_tool_breaks"},
})


minetest.register_craft({
    output = "galvmith:mithril_sword",
    recipe = {
        {"galvmith:mithril_ingot"},
        {"galvmith:mithril_ingot"},
        {"default:stick"},
    }
})


minetest.register_craft({
    output = "galvmith:mithril_pickaxe",
    recipe = {
        {"galvmith:mithril_ingot", "galvmith:mithril_ingot", "galvmith:mithril_ingot"},
        {"", "default:stick", ""},
        {"", "default:stick", ""},
    }
})


minetest.register_craft({
    output = "galvmith:mithril_shovel",
    recipe = {
        {"galvmith:mithril_ingot"},
        {"default:stick"},
        {"default:stick"},
    }
})


minetest.register_craft({
    output = "galvmith:mithril_axe",
    recipe = {
        {"galvmith:mithril_ingot", "galvmith:mithril_ingot", ""},
        {"galvmith:mithril_ingot", "default:stick", ""},
        {"", "default:stick", ""},
    }
})


minetest.register_node("galvmith:mithril_block", {
    description = minetest.colorize(blu,"Galvanized Mithril Block"),
    tiles = {"galvmith_mithril_block.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 2},
})


minetest.register_craft({
    type = "shapeless",
    output = "galvmith:mithril_ingot 9",
    recipe = {"galvmith:mithril_block"}
})


minetest.register_craft({
    output = "galvmith:mithril_block",
    recipe = {
        {"galvmith:mithril_ingot", "galvmith:mithril_ingot", "galvmith:mithril_ingot"},
        {"galvmith:mithril_ingot", "galvmith:mithril_ingot", "galvmith:mithril_ingot"},
        {"galvmith:mithril_ingot", "galvmith:mithril_ingot", "galvmith:mithril_ingot"},
    }
})


if minetest.get_modpath("3d_armor") then

	minetest.register_craft({
	    output = "galvmith:helmet_mithril",
	    recipe = {
	        {"galvmith:mithril_ingot", "galvmith:mithril_ingot", "galvmith:mithril_ingot"},
	        {"galvmith:mithril_ingot", "", "galvmith:mithril_ingot"},
	    }
	})


	minetest.register_craft({
	    output = "galvmith:chestplate_mithril",
	    recipe = {
	        {"galvmith:mithril_ingot", "", "galvmith:mithril_ingot"},
	        {"galvmith:mithril_ingot", "galvmith:mithril_ingot", "galvmith:mithril_ingot"},
	        {"galvmith:mithril_ingot", "galvmith:mithril_ingot", "galvmith:mithril_ingot"},
	    }
	})


	minetest.register_craft({
	    output = "galvmith:leggings_mithril",
	    recipe = {
	        {"galvmith:mithril_ingot", "galvmith:mithril_ingot", "galvmith:mithril_ingot"},
	        {"galvmith:mithril_ingot", "", "galvmith:mithril_ingot"},
	        {"galvmith:mithril_ingot", "", "galvmith:mithril_ingot"},
	    }
	})


	minetest.register_craft({
	    output = "galvmith:boots_mithril",
	    recipe = {
        	{"galvmith:mithril_ingot", "", "galvmith:mithril_ingot"},
        	{"galvmith:mithril_ingot", "", "galvmith:mithril_ingot"},
 	    }
	})


	minetest.register_craft({
	    output = "galvmith:shield_mithril",
	    recipe = {
  	        {"galvmith:mithril_ingot", "galvmith:mithril_ingot", "galvmith:mithril_ingot"},
  	        {"galvmith:mithril_ingot", "galvmith:mithril_ingot", "galvmith:mithril_ingot"},
  	        {"", "galvmith:mithril_ingot", ""},
  	    }
	})


	armor:register_armor("galvmith:helmet_mithril", {
		description = minetest.colorize(blu, "Galvanized Mithril Helmet"),
		inventory_image = "galvmith_inv_helmet_mithril.png",
		groups = {armor_head=1, armor_heal=15, armor_use=300, armor_fire=3},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=1, level=5},
	})
	armor:register_armor("galvmith:chestplate_mithril", {
		description = minetest.colorize(blu, "Galvanized Mithril Chestplate"),
		inventory_image = "galvmith_inv_chestplate_mithril.png",
		groups = {armor_torso=1, armor_heal=15, armor_use=300, armor_fire=3},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=5},
	})
	armor:register_armor("galvmith:leggings_mithril", {
		description = minetest.colorize(blu, "Galvanized Mithril Leggings"),
		inventory_image = "galvmith_inv_leggings_mithril.png",
		groups = {armor_legs=1, armor_heal=15, armor_use=300, armor_fire=3},
		armor_groups = {fleshy=20},
		damage_groups = {cracky=2, snappy=1, level=5},
	})
	armor:register_armor("galvmith:boots_mithril", {
		description = minetest.colorize(blu, "Galvanized Mithril Boots"),
		inventory_image = "galvmith_inv_boots_mithril.png",
		groups = {armor_feet=1, armor_heal=15, armor_use=300, armor_fire=3},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=1, level=5},
	})
	armor:register_armor("galvmith:shield_mithril", {
		description = minetest.colorize(blu, "Galvanized Mithril Shield"),
		inventory_image = "galvmith_inv_shield_mithril.png",
		groups = {armor_shield=1, armor_heal=15, armor_use=300},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=1, level=5},
		reciprocate_damage = true,
	})
end
