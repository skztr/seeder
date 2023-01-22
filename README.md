# Seed Helper

Places the Seed somewhere it can be retrieved by other datapacks.

Internally, this generates and then removes "temporary commandblocks", as there is currently no way to directly capture
the output of the `/seed` command (see [MC-132503](https://bugs.mojang.com/browse/MC-132503)).

## usage

   - `/function seeder:store` -> arranges to have the seeder:seed's `StringSeed` filled with text including the seed
   - afterwards, access via eg: `/tellraw @s [{"nbt":"StringSeed","storage":"seeder:seed","interpret":true}]`

## note

Command Blocks must be enabled for this datapack to work
