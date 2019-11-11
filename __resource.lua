resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Legacy Fuel'

version '1.3' 

server_scripts {
	'source/fuel_server.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'locales/sc.lua',
	'locales/tc.lua',
	'config.lua',
	'@es_extended/i18n.lua',
	'functions/functions_client.lua',
	'source/fuel_client.lua'
}

exports {
	'GetFuel',
	'SetFuel'
}
