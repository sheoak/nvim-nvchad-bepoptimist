require "custom/settings"
require "custom/autocommand"
require "custom/mappings"

-- Load private files (bookmarks, custom alias…)
-- use runtimepath so that you can have plugin/ after/… folders
-- if (!empty($DOTFILES_PRIVATE))
-- exe "set runtimepath+=" . expand($DOTFILES_PRIVATE . "/nvim/")
-- endif
