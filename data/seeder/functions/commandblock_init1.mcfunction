# create a command block which will be used to detect if commands are enabled
gamerule commandBlockOutput false
execute at @s if entity @s[nbt={Dimension:"minecraft:overworld"}] if block ~ -64 ~ minecraft:bedrock run setblock ~ -64 ~ minecraft:command_block{"Command":"scoreboard players set #seeder_global seeder_init_step 3","auto":1b} replace
execute at @s if entity @s[nbt={Dimension:"minecraft:the_nether"}] if block ~ 0 ~ minecraft:bedrock run setblock ~ 0 ~ minecraft:command_block{"Command":"scoreboard players set #seeder_global seeder_init_step 3","auto":1b} replace
execute at @s if entity @s[nbt={Dimension:"minecraft:the_end"}] if block ~ 0 ~ minecraft:air run setblock ~ 0 ~ minecraft:command_block{"Command":"scoreboard players set #seeder_global seeder_init_step 3","auto":1b} replace
scoreboard players set #seeder_global seeder_init_step 2
scoreboard players set #seeder_global seeder_init_cool 1
