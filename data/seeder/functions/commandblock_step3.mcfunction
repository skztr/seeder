gamerule sendCommandFeedback false
execute in minecraft:overworld if block ~1 ~ ~ minecraft:command_block{"Command":"seed","auto":1b} run setblock ~ ~ ~ minecraft:bedrock
execute in minecraft:overworld if block ~1 ~ ~ minecraft:command_block{"Command":"seed","auto":1b} run setblock ~1 ~ ~ minecraft:bedrock
execute in minecraft:the_nether if block ~1 ~ ~ minecraft:command_block{"Command":"seed","auto":1b} run setblock ~ ~ ~ minecraft:bedrock
execute in minecraft:the_nether if block ~1 ~ ~ minecraft:command_block{"Command":"seed","auto":1b} run setblock ~1 ~ ~ minecraft:bedrock
execute in minecraft:the_end if block ~1 ~ ~ minecraft:command_block{"Command":"seed","auto":1b} run setblock ~ ~ ~ minecraft:air
execute in minecraft:the_end if block ~1 ~ ~ minecraft:command_block{"Command":"seed","auto":1b} run setblock ~1 ~ ~ minecraft:air
