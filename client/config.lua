Config = {}

-- Whether to run validation checks on menu and item data
-- Enabling this will validate the structure of the data tables returned by menu
-- and item callbacks, and print detailed error messages if the structure is
-- incorrect. This is useful for development and debugging, but will have a
-- performance impact, so it is recommended to disable it in production.
Config.Validate = false

-- Whether to enforce the usage of metadata for menu and item data
-- Enabling this will require that any key not used by the shop system is placed
-- inside the `Metadata` table of the menu or item data. This is useful for
-- ensuring that no shop system keys are accidentally used for other purposes,
-- and for checking that there are no spelling mistakes in keys.
Config.EnforceMetadata = false
