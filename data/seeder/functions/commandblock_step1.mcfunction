# create a command block which will hold the "seed" value.
# we use command blocks for this, because the seed value is not correctly stored
# in "storage" as a Long (64bit) integer, resulting in truncation.

gamerule sendCommandFeedback true
gamerule commandBlockOutput false

execute at @s if entity @s[nbt={Dimension:"minecraft:overworld"}] if block ~ -64 ~ minecraft:bedrock run setblock ~ -64 ~ minecraft:command_block{"Command":"seed","auto":1b} replace
execute at @s if entity @s[nbt={Dimension:"minecraft:overworld"}] if block ~ -64 ~ minecraft:command_block{"Command":"seed","auto":1b} run setblock ~-1 -64 ~ minecraft:repeating_command_block{"Command":"function seeder:commandblock_step2","auto":1b} replace

execute at @s if entity @s[nbt={Dimension:"minecraft:the_nether"}] if block ~ 0 ~ minecraft:bedrock run setblock ~ 0 ~ minecraft:command_block{"Command":"seed","auto":1b} replace
execute at @s if entity @s[nbt={Dimension:"minecraft:the_nether"}] if block ~ 0 ~ minecraft:command_block{"Command":"seed","auto":1b} run setblock ~-1 0 ~ minecraft:repeating_command_block{"Command":"function seeder:commandblock_step2","auto":1b} replace

execute at @s if entity @s[nbt={Dimension:"minecraft:the_end"}] if block ~ 0 ~ minecraft:air run setblock ~ 0 ~ minecraft:command_block{"Command":"seed","auto":1b} replace
execute at @s if entity @s[nbt={Dimension:"minecraft:the_end"}] if block ~ 0 ~ minecraft:command_block{"Command":"seed","auto":1b} run setblock ~-1 0 ~ minecraft:repeating_command_block{"Command":"function seeder:commandblock_step2","auto":1b} replace
