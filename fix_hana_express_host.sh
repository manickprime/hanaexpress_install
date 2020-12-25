# No change execute as is
ALTER SYSTEM ALTER CONFIGURATION ('global.ini', 'system') SET ('public_hostname_resolution', 'use_default_route') = 'name' WITH RECONFIGURE;
# update hostname map_<containerHost> and FQDN instead IP
ALTER SYSTEM ALTER CONFIGURATION ('global.ini', 'system') SET ('public_hostname_resolution', 'map_hxehost') = '192.168.99.100' WITH RECONFIGURE;
