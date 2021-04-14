-- Resource Metadata
fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'Harry W.'
description 'Godmode'
version '1.0.0'

-- What to run
client_scripts {
    'Client.lua',
    'functions.lua'
}

-- Extra data can be used as well
my_data 'one' { two = 42 }
my_data 'three' { four = 69 }

-- due to Lua syntax, the following works too:
my_data('nine')({ninety = "nein"})
