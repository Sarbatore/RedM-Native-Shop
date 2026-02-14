-- In a real implementation, you'd want to use dynamic menus instead
-- This is just to demonstrate how you could set up a complete gunsmith
local WEAPON_COMPONENTS <const> = {
    AMMO = {
        "AMMO_RIFLE",
        "AMMO_RIFLE_EXPRESS",
        "AMMO_RIFLE_HIGH_VELOCITY",
    },
    VARIANTS = {
        "WEAPON_VARIANT_NONE",
        "COMPONENT_LONGARM_ROLE_ENGRAVING_ROLLINGBLOCK_REAPER",
    },
    RIFLING = {
        "COMPONENT_LONGARM_BARREL_RIFLING_NONE",
        "COMPONENT_LONGARM_BARREL_RIFLING_1",
    },
    SCOPES = {
        "COMPONENT_RIFLE_SCOPE02",
        "COMPONENT_RIFLE_SCOPE03",
        "COMPONENT_RIFLE_SCOPE04",
    },
    GRIPS = {
        "COMPONENT_SNIPERRIFLE_ROLLINGBLOCK_GRIP",
        "COMPONENT_SNIPERRIFLE_ROLLINGBLOCK_GRIP_IRONWOOD",
        "COMPONENT_SNIPERRIFLE_ROLLINGBLOCK_GRIP_ENGRAVED",
        "COMPONENT_SNIPERRIFLE_ROLLINGBLOCK_GRIP_BURLED",
    },
    GRIP_TINTS = {
        "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_1",
        "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_2",
        "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_3",
        "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_4",
        "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_5",
        "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_6",
        "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_7",
        "COMPONENT_LONGARM_GRIPSTOCK_TINT_A_8",
        "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_1",
        "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_2",
        "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_3",
        "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_4",
        "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_5",
        "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_6",
        "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_7",
        "COMPONENT_LONGARM_GRIPSTOCK_TINT_B_8",
        "COMPONENT_LONGARM_GRIPSTOCK_TINT_GRAY_BIRCH",
    },
    CLOTH_WRAPS = {
        "COMPONENT_WRAP_NONE",
        "COMPONENT_RIFLE_ROLLINGBLOCK_WRAP2",
        "COMPONENT_RIFLE_ROLLINGBLOCK_WRAP3",
        "COMPONENT_RIFLE_ROLLINGBLOCK_WRAP4",
        "COMPONENT_RIFLE_ROLLINGBLOCK_WRAP5",
    },
    CLOTH_WRAP_TINTS = {
        -- You'll want to filter this based on the wrap component
        "COMPONENT_LONGARM_WRAP_TINT_B_1",
        "COMPONENT_LONGARM_WRAP_TINT_B_2",
        "COMPONENT_LONGARM_WRAP_TINT_B_3",
        "COMPONENT_LONGARM_WRAP_TINT_B_4",
        "COMPONENT_LONGARM_WRAP_TINT_B_5",
        "COMPONENT_LONGARM_WRAP_TINT_B_6",
        "COMPONENT_LONGARM_WRAP_TINT_B_7",
        "COMPONENT_LONGARM_WRAP_TINT_B_8",
        "COMPONENT_LONGARM_WRAP_TINT_C_1",
        "COMPONENT_LONGARM_WRAP_TINT_C_2",
        "COMPONENT_LONGARM_WRAP_TINT_C_3",
        "COMPONENT_LONGARM_WRAP_TINT_C_4",
        "COMPONENT_LONGARM_WRAP_TINT_C_5",
        "COMPONENT_LONGARM_WRAP_TINT_C_6",
        "COMPONENT_LONGARM_WRAP_TINT_C_7",
        "COMPONENT_LONGARM_WRAP_TINT_C_8",
        "COMPONENT_LONGARM_WRAP_TINT_C_9",
        "COMPONENT_LONGARM_WRAP_TINT_D_1",
        "COMPONENT_LONGARM_WRAP_TINT_D_2",
        "COMPONENT_LONGARM_WRAP_TINT_D_3",
        "COMPONENT_LONGARM_WRAP_TINT_D_4",
        "COMPONENT_LONGARM_WRAP_TINT_D_5",
        "COMPONENT_LONGARM_WRAP_TINT_D_6",
        "COMPONENT_LONGARM_WRAP_TINT_D_7",
        "COMPONENT_LONGARM_WRAP_TINT_D_8",

        "COMPONENT_LONGARM_WRAP_TINT_POLKADOT_DEFAULT",
        "COMPONENT_LONGARM_WRAP_TINT_POLKADOT_1",
        "COMPONENT_LONGARM_WRAP_TINT_POLKADOT_2",
        "COMPONENT_LONGARM_WRAP_TINT_POLKADOT_3",
        "COMPONENT_LONGARM_WRAP_TINT_POLKADOT_4",
        "COMPONENT_LONGARM_WRAP_TINT_POLKADOT_5",

        "COMPONENT_LONGARM_WRAP_TINT_NATIVE_DEFAULT",
        "COMPONENT_LONGARM_WRAP_TINT_NATIVE_1",
        "COMPONENT_LONGARM_WRAP_TINT_NATIVE_2",
        "COMPONENT_LONGARM_WRAP_TINT_NATIVE_3",
        "COMPONENT_LONGARM_WRAP_TINT_NATIVE_4",
        "COMPONENT_LONGARM_WRAP_TINT_NATIVE_5",

        "COMPONENT_LONGARM_WRAP_TINT_TARTAN_DEFAULT",
        "COMPONENT_LONGARM_WRAP_TINT_TARTAN_1",
        "COMPONENT_LONGARM_WRAP_TINT_TARTAN_2",
        "COMPONENT_LONGARM_WRAP_TINT_TARTAN_3",
        "COMPONENT_LONGARM_WRAP_TINT_TARTAN_4",
        "COMPONENT_LONGARM_WRAP_TINT_TARTAN_5",
    },
    LEATHER_WRAPS = {
        "COMPONENT_WRAP_NONE",
        "COMPONENT_RIFLE_ROLLINGBLOCK_WRAP1",
        "COMPONENT_RIFLE_ROLLINGBLOCK_WRAP6",
    },
    LEATHER_WRAP_TINTS = {
        -- You'll want to filter this based on the wrap component
        "COMPONENT_LONGARM_WRAP_TINT_A_1",
        "COMPONENT_LONGARM_WRAP_TINT_A_2",
        "COMPONENT_LONGARM_WRAP_TINT_A_3",
        "COMPONENT_LONGARM_WRAP_TINT_A_4",
        "COMPONENT_LONGARM_WRAP_TINT_A_5",
        "COMPONENT_LONGARM_WRAP_TINT_A_6",
        "COMPONENT_LONGARM_WRAP_TINT_A_7",
        "COMPONENT_LONGARM_WRAP_TINT_A_8",
        "COMPONENT_LONGARM_WRAP_TINT_WHITE",
        "COMPONENT_LONGARM_WRAP_TINT_BLACK",

        "COMPONENT_LONGARM_WRAP_TINT_E_1",
        "COMPONENT_LONGARM_WRAP_TINT_E_2",
        "COMPONENT_LONGARM_WRAP_TINT_E_3",
        "COMPONENT_LONGARM_WRAP_TINT_E_4",
        "COMPONENT_LONGARM_WRAP_TINT_E_5",
        "COMPONENT_LONGARM_WRAP_TINT_E_6",
        "COMPONENT_LONGARM_WRAP_TINT_E_7",
        "COMPONENT_LONGARM_WRAP_TINT_E_8",
        "COMPONENT_LONGARM_WRAP_TINT_E_9",
        "COMPONENT_LONGARM_WRAP_TINT_E_10",
    },
    BARREL_MATERIALS = {
        "COMPONENT_LONGARM_BARREL_MATERIAL_1",
        "COMPONENT_LONGARM_BARREL_MATERIAL_2",
        "COMPONENT_LONGARM_BARREL_MATERIAL_3",
        "COMPONENT_LONGARM_BARREL_MATERIAL_4",
        "COMPONENT_LONGARM_BARREL_MATERIAL_5",
        "COMPONENT_LONGARM_BARREL_MATERIAL_6",
        "COMPONENT_LONGARM_BARREL_MATERIAL_8",
        "COMPONENT_LONGARM_BARREL_MATERIAL_9",
        "COMPONENT_LONGARM_BARREL_MATERIAL_7",
        "COMPONENT_LONGARM_BARREL_MATERIAL_10",
    },
    CYLINDER_MATERIALS = {
        "COMPONENT_LONGARM_CYLINDER_MATERIAL_1",
        "COMPONENT_LONGARM_CYLINDER_MATERIAL_2",
        "COMPONENT_LONGARM_CYLINDER_MATERIAL_3",
        "COMPONENT_LONGARM_CYLINDER_MATERIAL_4",
        "COMPONENT_LONGARM_CYLINDER_MATERIAL_5",
        "COMPONENT_LONGARM_CYLINDER_MATERIAL_6",
        "COMPONENT_LONGARM_CYLINDER_MATERIAL_8",
        "COMPONENT_LONGARM_CYLINDER_MATERIAL_9",
        "COMPONENT_LONGARM_CYLINDER_MATERIAL_7",
        "COMPONENT_LONGARM_CYLINDER_MATERIAL_10",
    },
    FRAME_MATERIALS = {
        "COMPONENT_LONGARM_FRAME_MATERIAL_1",
        "COMPONENT_LONGARM_FRAME_MATERIAL_2",
        "COMPONENT_LONGARM_FRAME_MATERIAL_3",
        "COMPONENT_LONGARM_FRAME_MATERIAL_4",
        "COMPONENT_LONGARM_FRAME_MATERIAL_5",
        "COMPONENT_LONGARM_FRAME_MATERIAL_6",
        "COMPONENT_LONGARM_FRAME_MATERIAL_8",
        "COMPONENT_LONGARM_FRAME_MATERIAL_9",
        "COMPONENT_LONGARM_FRAME_MATERIAL_7",
        "COMPONENT_LONGARM_FRAME_MATERIAL_10",
    },
    HAMMER_MATERIALS = {
        "COMPONENT_LONGARM_HAMMER_MATERIAL_1",
        "COMPONENT_LONGARM_HAMMER_MATERIAL_2",
        "COMPONENT_LONGARM_HAMMER_MATERIAL_3",
        "COMPONENT_LONGARM_HAMMER_MATERIAL_4",
        "COMPONENT_LONGARM_HAMMER_MATERIAL_5",
        "COMPONENT_LONGARM_HAMMER_MATERIAL_6",
        "COMPONENT_LONGARM_HAMMER_MATERIAL_8",
        "COMPONENT_LONGARM_HAMMER_MATERIAL_9",
        "COMPONENT_LONGARM_HAMMER_MATERIAL_7",
        "COMPONENT_LONGARM_HAMMER_MATERIAL_10",
    },
    SIGHT_MATERIALS = {
        "COMPONENT_LONGARM_SIGHT_MATERIAL_1",
        "COMPONENT_LONGARM_SIGHT_MATERIAL_2",
        "COMPONENT_LONGARM_SIGHT_MATERIAL_3",
        "COMPONENT_LONGARM_SIGHT_MATERIAL_4",
        "COMPONENT_LONGARM_SIGHT_MATERIAL_5",
        "COMPONENT_LONGARM_SIGHT_MATERIAL_6",
        "COMPONENT_LONGARM_SIGHT_MATERIAL_8",
        "COMPONENT_LONGARM_SIGHT_MATERIAL_9",
        "COMPONENT_LONGARM_SIGHT_MATERIAL_7",
        "COMPONENT_LONGARM_SIGHT_MATERIAL_10",
    },
    TRIGGER_MATERIALS = {
        "COMPONENT_LONGARM_TRIGGER_MATERIAL_1",
        "COMPONENT_LONGARM_TRIGGER_MATERIAL_2",
        "COMPONENT_LONGARM_TRIGGER_MATERIAL_3",
        "COMPONENT_LONGARM_TRIGGER_MATERIAL_4",
        "COMPONENT_LONGARM_TRIGGER_MATERIAL_5",
        "COMPONENT_LONGARM_TRIGGER_MATERIAL_6",
        "COMPONENT_LONGARM_TRIGGER_MATERIAL_8",
        "COMPONENT_LONGARM_TRIGGER_MATERIAL_9",
        "COMPONENT_LONGARM_TRIGGER_MATERIAL_7",
        "COMPONENT_LONGARM_TRIGGER_MATERIAL_10",
    },
    WEAPON_ENGRAVINGS = {
        0x2B46067B,
        "COMPONENT_LONGARM_ENGRAVING_1",
        "COMPONENT_LONGARM_ENGRAVING_2",
        "COMPONENT_LONGARM_ENGRAVING_3",
        "COMPONENT_LONGARM_ENGRAVING_4",
    },
    ENGRAVING_MATERIALS = {
        "COMPONENT_LONGARM_ENGRAVING_MATERIAL_1",
        "COMPONENT_LONGARM_ENGRAVING_MATERIAL_2",
        "COMPONENT_LONGARM_ENGRAVING_MATERIAL_3",
        "COMPONENT_LONGARM_ENGRAVING_MATERIAL_4",
        "COMPONENT_LONGARM_ENGRAVING_MATERIAL_5",
        "COMPONENT_LONGARM_ENGRAVING_MATERIAL_6",
        "COMPONENT_LONGARM_ENGRAVING_MATERIAL_8",
        "COMPONENT_LONGARM_ENGRAVING_MATERIAL_9",
        "COMPONENT_LONGARM_ENGRAVING_MATERIAL_7",
        "COMPONENT_LONGARM_ENGRAVING_MATERIAL_10",
        "COMPONENT_LONGARM_ENGRAVING_MATERIAL_11",
        "COMPONENT_LONGARM_ENGRAVING_MATERIAL_12",
        "COMPONENT_LONGARM_ENGRAVING_MATERIAL_13",
        "COMPONENT_LONGARM_ENGRAVING_MATERIAL_14",
    },
    BARREL_ENGRAVINGS = {
        "COMPONENT_LONGARM_BARREL_ENGRAVING_NONE",
        "COMPONENT_LONGARM_BARREL_ENGRAVING_1",
        "COMPONENT_LONGARM_BARREL_ENGRAVING_2",
        "COMPONENT_LONGARM_BARREL_ENGRAVING_3",
        "COMPONENT_LONGARM_BARREL_ENGRAVING_4",
    },
    CYLINDER_ENGRAVINGS = {
        "COMPONENT_LONGARM_CYLINDER_ENGRAVING_NONE",
        "COMPONENT_LONGARM_CYLINDER_ENGRAVING_1",
        "COMPONENT_LONGARM_CYLINDER_ENGRAVING_2",
        "COMPONENT_LONGARM_CYLINDER_ENGRAVING_3",
        "COMPONENT_LONGARM_CYLINDER_ENGRAVING_4",
    },
    FRAME_ENGRAVINGS = {
        "COMPONENT_LONGARM_FRAME_ENGRAVING_NONE",
        "COMPONENT_LONGARM_FRAME_ENGRAVING_1",
        "COMPONENT_LONGARM_FRAME_ENGRAVING_2",
        "COMPONENT_LONGARM_FRAME_ENGRAVING_3",
        "COMPONENT_LONGARM_FRAME_ENGRAVING_4",
    },
    GRIP_ENGRAVINGS = {
        "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_NONE",
        "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_1",
        "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_2",
        "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_3",
        "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_4",
        "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_5",
        "COMPONENT_LONGARM_GRIPSTOCK_ENGRAVING_6",
    }
}

local function getItems(type)
    local items = {}
    for i, component in ipairs(WEAPON_COMPONENTS[type] or {}) do
        local name = GetStringFromHashKey(component)

        table.insert(items, {
            Id = component,
            Type = "INVENTORY",
            Label = name,
            Data = {
                Owned = true,
                Equipped = i == 1,
                EquippedTextureDictionary = "menu_textures",
                EquippedTexture = "menu_icon_tick",
            },
            Action = function(item)
                PostFeedTicker(string.format("Selected item: %s", item.Id))
            end,
        })
    end
    return items
end

local function getSwatches(type)
    local swatches = {}
    for i, component in ipairs(WEAPON_COMPONENTS[type] or {}) do
        local name = GetStringFromHashKey(component)
        local ui = GetItemUiData(joaat(component))
        local swatchTextureDict = ui.swatchTextureDict
        local swatchTextureId = ui.swatchTextureId

        if swatchTextureDict and swatchTextureId then
            table.insert(swatches, {
                Id = component,
                Visible = true,
                Text = name,
                TextureDictionary = swatchTextureDict,
                Texture = swatchTextureId,
                Owned = true,
                Equipped = i == 1,
            })
        end
    end
    return swatches
end

local function getSwatchAction(type)
    return function(item)
        local value = item.Data.Palette.Value or 1
        local swatches = getSwatches(type)

        local swatch = swatches[value]
        if not swatch then return end

        PostFeedTicker(string.format("Selected item: %s", swatch.Id))
    end
end

local data = {
    Id = "DEMO_GUNSMITH",
    Title = "GUNSMITH",
    Subtitle = "Rolling Block Rifle",
    Scene = "MENU_LIST_WEAPON_STATS",
    AllowWalking = true,
    RepositionCamera = true,
    Items = {
        {
            Id = "CLEAN_WEAPON",
            Label = "Clean Weapon",
            Action = function()
                PostFeedTicker("Cleaned weapon!")
            end,
        },
        {
            Id = "WEAPON_VARIANTS",
            Scene = "ITEM_LIST_WEAPON_STATS",
            Label = "Variants",
            Items = getItems("VARIANTS")
        },
        {
            Id = "WEAPON_COMPONENTS",
            Scene = "MENU_LIST_WEAPON_STATS",
            Label = "Components",
            Items = {
                {
                    Id = "WEAPON_BARRELS",
                    Scene = "MENU_LIST_WEAPON_STATS",
                    Label = "Barrel",
                    Items = {
                        {
                            Id = "WEAPON_RIFLING",
                            Scene = "ITEM_LIST_WEAPON_STATS",
                            Label = "Rifling",
                            Items = getItems("RIFLING"),
                        }
                    }
                },
                {
                    Id = "WEAPON_SCOPES",
                    Scene = "ITEM_LIST_WEAPON_STATS",
                    Label = "Scope",
                    Items = getItems("SCOPES"),
                },
                {
                    Id = "WEAPON_STOCKS",
                    Scene = "ITEM_LIST_WEAPON_STATS",
                    Label = "Stock",
                    Items = getItems("GRIPS"),
                },
                {
                    Id = "WEAPON_WRAPS",
                    Scene = "MENU_LIST_WEAPON_STATS",
                    Label = "Wrap",
                    Items = {
                        {
                            Id = "CLOTH_WRAPS",
                            Scene = "ITEM_LIST_WEAPON_STATS",
                            Label = "Cloth Wraps",
                            Items = getItems("CLOTH_WRAPS"),
                        },
                        {
                            Id = "LEATHER_WRAPS",
                            Scene = "ITEM_LIST_WEAPON_STATS",
                            Label = "Leather Wraps",
                            Items = getItems("LEATHER_WRAPS"),
                        }
                    }
                }
            }
        },
        {
            Id = "WEAPON_STYLES",
            Scene = "ITEM_LIST_COLOUR_PALETTE",
            Label = "Styles",
            Items = {
                {
                    Id = "WEAPON_METALS",
                    Scene = "ITEM_LIST_COLOUR_PALETTE",
                    Label = "Metals",
                    Items = {
                        {
                            Id = "WEAPON_BARREL_MATERIALS",
                            Type = "PALETTE",
                            Label = "Barrel",
                            Data = {
                                IconVisible = true,
                                Palette = {
                                    Value = 1,
                                    Items = getSwatches("BARREL_MATERIALS"),
                                }
                            },
                            Action = getSwatchAction("BARREL_MATERIALS"),
                        },
                        {
                            Id = "WEAPON_CYLINDER_MATERIALS",
                            Type = "PALETTE",
                            Label = "Block",
                            Data = {
                                IconVisible = true,
                                Palette = {
                                    Value = 1,
                                    Items = getSwatches("CYLINDER_MATERIALS"),
                                }
                            },
                            Action = getSwatchAction("CYLINDER_MATERIALS"),
                        },
                        {
                            Id = "WEAPON_FRAME_MATERIALS",
                            Type = "PALETTE",
                            Label = "Frame",
                            Data = {
                                IconVisible = true,
                                Palette = {
                                    Value = 1,
                                    Items = getSwatches("FRAME_MATERIALS"),
                                }
                            },
                            Action = getSwatchAction("FRAME_MATERIALS"),
                        },
                        {
                            Id = "WEAPON_HAMMER_MATERIALS",
                            Type = "PALETTE",
                            Label = "Hammer",
                            Data = {
                                IconVisible = true,
                                Palette = {
                                    Value = 1,
                                    Items = getSwatches("HAMMER_MATERIALS"),
                                }
                            },
                            Action = getSwatchAction("HAMMER_MATERIALS"),
                        },
                        {
                            Id = "WEAPON_SIGHT_MATERIALS",
                            Type = "PALETTE",
                            Label = "Sight",
                            Data = {
                                IconVisible = true,
                                Palette = {
                                    Value = 1,
                                    Items = getSwatches("SIGHT_MATERIALS"),
                                }
                            },
                            Action = getSwatchAction("SIGHT_MATERIALS"),
                        },
                        {
                            Id = "WEAPON_TRIGGER_MATERIALS",
                            Type = "PALETTE",
                            Label = "Trigger",
                            Data = {
                                IconVisible = true,
                                Palette = {
                                    Value = 1,
                                    Items = getSwatches("TRIGGER_MATERIALS"),
                                }
                            },
                            Action = getSwatchAction("TRIGGER_MATERIALS"),
                        }
                    }
                },
                {
                    Id = "WEAPON_ENGRAVINGS",
                    Scene = "ITEM_LIST_COLOUR_PALETTE",
                    Label = "Engravings",
                    Items = {
                        {
                            Id = "WEAPON_FULL_ENGRAVINGS",
                            Type = "PALETTE",
                            Label = "Full Engravings",
                            Data = {
                                IconVisible = true,
                                Palette = {
                                    Value = 1,
                                    Items = getSwatches("WEAPON_ENGRAVINGS"),
                                }
                            },
                            Action = getSwatchAction("WEAPON_ENGRAVINGS"),
                        },
                        {
                            Id = "WEAPON_ENGRAVING_MATERIALS",
                            Type = "PALETTE",
                            Label = "Inlay Metals",
                            Data = {
                                IconVisible = true,
                                Palette = {
                                    Value = 1,
                                    Items = getSwatches("ENGRAVING_MATERIALS"),
                                }
                            },
                            Action = getSwatchAction("ENGRAVING_MATERIALS"),
                        },
                        {
                            Id = "WEAPON_BARREL_ENGRAVINGS",
                            Type = "PALETTE",
                            Label = "Barrel",
                            Data = {
                                IconVisible = true,
                                Palette = {
                                    Value = 1,
                                    Items = getSwatches("BARREL_ENGRAVINGS"),
                                }
                            },
                            Action = getSwatchAction("BARREL_ENGRAVINGS"),
                        },
                        {
                            Id = "WEAPON_CYLINDER_ENGRAVINGS",
                            Type = "PALETTE",
                            Label = "Block",
                            Data = {
                                IconVisible = true,
                                Palette = {
                                    Value = 1,
                                    Items = getSwatches("CYLINDER_ENGRAVINGS"),
                                }
                            },
                            Action = getSwatchAction("CYLINDER_ENGRAVINGS"),
                        },
                        {
                            Id = "WEAPON_FRAME_ENGRAVINGS",
                            Type = "PALETTE",
                            Label = "Frame",
                            Data = {
                                IconVisible = true,
                                Palette = {
                                    Value = 1,
                                    Items = getSwatches("FRAME_ENGRAVINGS"),
                                }
                            },
                            Action = getSwatchAction("FRAME_ENGRAVINGS"),
                        }
                    }
                },
                {
                    Id = "WEAPON_CARVINGS",
                    Scene = "ITEM_LIST_COLOUR_PALETTE",
                    Label = "Carvings",
                    Items = {
                        {
                            Id = "WEAPON_GRIP_ENGRAVINGS",
                            Type = "PALETTE",
                            Label = "Grip",
                            Data = {
                                IconVisible = true,
                                Palette = {
                                    Value = 1,
                                    Items = getSwatches("GRIP_ENGRAVINGS"),
                                }
                            },
                            Action = getSwatchAction("GRIP_ENGRAVINGS"),
                        }
                    }
                },
                {
                    Id = "WEAPON_WRAP_TINTS",
                    Scene = "ITEM_LIST_COLOUR_PALETTE",
                    Label = "Wrap",
                    Items = {
                        {
                            Id = "WEAPON_CLOTH_TINTS",
                            Type = "PALETTE",
                            Label = "Cloth",
                            Data = {
                                IconVisible = true,
                                Palette = {
                                    Value = 1,
                                    Items = getSwatches("CLOTH_WRAP_TINTS"),
                                }
                            },
                            Action = getSwatchAction("CLOTH_WRAP_TINTS"),
                        },
                        {
                            Id = "WEAPON_LEATHER_TINTS",
                            Type = "PALETTE",
                            Label = "Leather",
                            Data = {
                                IconVisible = true,
                                Palette = {
                                    Value = 1,
                                    Items = getSwatches("LEATHER_WRAP_TINTS"),
                                }
                            },
                            Action = getSwatchAction("LEATHER_WRAP_TINTS"),
                        }
                    }
                },
                {
                    Id = "WEAPON_VARNISH",
                    Type = "PALETTE",
                    Label = "Varnish",
                    Data = {
                        IconVisible = true,
                        Palette = {
                            Value = 1,
                            Items = getSwatches("GRIP_TINTS"),
                        }
                    },
                    Action = getSwatchAction("GRIP_TINTS"),
                }
            }
        },
        {
            Id = "AMMUNITION",
            Scene = "ITEM_LIST_WEAPON_STATS",
            Label = "Ammunition",
            Items = getItems("AMMO"),
        }
    }
}

-- In your script, you may want to load these elsewhere
-- Perhaps you could move this to a thread that runs during game load
while HasStreamedTxdLoaded("swatches_gunsmith_mp") ~= 1 do
    RequestStreamedTxd("swatches_gunsmith_mp", false)
    Wait(0)
end

while HasStreamedTxdLoaded("swatches_gunsmith") ~= 1 do
    RequestStreamedTxd("swatches_gunsmith", false)
    Wait(0)
end

ShopNavigator:register(data)
