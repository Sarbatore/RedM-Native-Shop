local MENU_ID <const> = "FEATURE_PROMPTS"

local data = {
    Id = MENU_ID,
    Title = "FEATURES",
    Subtitle = "Prompts",
    Scene = "MENU_LIST",
    AllowWalking = true,
    RepositionCamera = true,
    Items = {
        {
            Id = "PROMPTS_ACTION",
            Type = "TEXT",
            Label = "Prompts",
            Footer = "This is the default footer",
            Prompts = {
                Select = "Custom Select",
                Option = "Custom Option",
                Toggle = "Custom Toggle",
                Info = "Custom Info",
                Adjust = "Custom Adjust",
                Modify = "Custom Modify",
            },
            Data = {
                ItemDescription = "Showcases an example of custom prompt labels for all available prompts.",
                DisabledFooter = "~e~Disabled footer overrides default footer",
            }
        },
        {
            Id = "HELD_PROMPTS_ACTION",
            Type = "TEXT",
            Label = "Held Prompts",
            Footer = "This is the default footer",
            Prompts = {
                Select = { Visible = true, Label = "Held Select", Held = true },
                Option = { Visible = true, Label = "Held Option", Held = true },
                Toggle = { Visible = true, Label = "Held Toggle", Held = true },
                Info = { Visible = true, Label = "Info (not supported)", Held = false },
                Adjust = { Visible = true, Label = "Adjust (not supported)", Held = false },
                Modify = { Visible = true, Label = "Modify (not supported)", Held = false },
            },
            Data = {
                ItemDescription = "Showcases an example of held prompts for all available prompts.",
                DisabledFooter = "~e~Disabled footer overrides default footer",
            }
        },
        {
            Id = "DISABLED_PROMPTS_ACTION",
            Type = "TEXT",
            Label = "Disabled Prompts",
            Disabled = true,
            Footer = "This is the default footer",
            Prompts = {
                Select = "Disabled Select",
                Option = "Disabled Option",
                Toggle = "Disabled Toggle",
                Info = "Disabled Info",
                Adjust = "Disabled Adjust",
                Modify = "Disabled Modify",
            },
            Data = {
                ItemDescription = "Showcases what happens when an item is disabled with custom prompts and a footer. Also has effects on scene UI.",
                DisabledFooter = "~e~Disabled footer overrides default footer",
            }
        },
    }
}

ShopNavigator:register(data)

AddEventHandler("native_shop:item_action", function(event)
    if ShopNavigator:getCurrentMenuId() ~= MENU_ID then
        return
    end

    if event.ID == "PROMPTS_ACTION" or event.ID == "HELD_PROMPTS_ACTION" then
        if event.ActionParameter then
            PostFeedTicker(string.format("Action: '%s' with parameter '%s'", event.Action, event.ActionParameter))
        else
            PostFeedTicker(string.format("Action: '%s'", event.Action))
        end
    end
end)
