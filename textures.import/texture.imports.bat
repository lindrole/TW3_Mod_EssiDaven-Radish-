::
:: will be called at texture import step
::
@echo off
:: ---------------------------------------------------
:: --- check for settings
:: ---------------------------------------------------
IF %SETTINGS_LOADED% EQU 1 goto :SettingsLoaded

echo ERROR! Settings not loaded! - do not start this file directly!
EXIT /B 1

:SettingsLoaded

:: ---------------------------------------------------
:: add one line for every texture to import
::
:: %BIN_IMPORT_TEXTURE% <srcimage> <targetpath>.xbm <optional texturegroup>
::
:: e.g.:
::  %BIN_IMPORT_TEXTURE% data/entities/meshes/ciri_hw_clumping.png data/entities/meshes/ciri_hw_clumping.xbm
:: data/fx/ == dlc/dlcsted/data/fx/
%BIN_IMPORT_TEXTURE% data/fx/sted_fire_anim_04.png data/fx/sted_fire_anim_04.xbm Particles
%BIN_IMPORT_TEXTURE% data/fx/sted_fire_spark_04.png data/fx/sted_fire_spark_04.xbm ParticlesWithoutAlpha
%BIN_IMPORT_TEXTURE% data/fx/sted_fire_mid_2k.png data/fx/sted_fire_mid_2k.xbm Particles
%BIN_IMPORT_TEXTURE% data/fx/sted_fire_tileable_2.png data/fx/sted_fire_tileable_2.xbm ParticlesWithoutAlpha

robocopy %DIR_PROJECT_BASE%\textures.import\data\gameplay\gui_new\textures\journal\characters\ %DIR_PROJECT_BASE%\uncooked.textures\dlc\dlcsted\data\gameplay\gui_new\textures\journal\characters\ journal_essi.png
robocopy %DIR_PROJECT_BASE%\textures.import\data\gameplay\gui_new\textures\journal\characters\ %DIR_PROJECT_BASE%\uncooked.textures\dlc\dlcsted\data\gameplay\gui_new\textures\journal\characters\ journal_sheenaz.png
robocopy %DIR_PROJECT_BASE%\textures.import\data\gameplay\gui_new\icons\inventory %DIR_PROJECT_BASE%\uncooked.textures\dlc\dlcsted\data\gameplay\gui_new\icons\inventory sted_pearl_64x64_skyblue.png
robocopy %DIR_PROJECT_BASE%\textures.import\data\gameplay\gui_new\icons\characters\ %DIR_PROJECT_BASE%\uncooked.textures\dlc\dlcsted\data\gameplay\gui_new\icons\characters\ journal_essi.png
robocopy %DIR_PROJECT_BASE%\textures.import\data\gameplay\gui_new\icons\characters\ %DIR_PROJECT_BASE%\uncooked.textures\dlc\dlcsted\data\gameplay\gui_new\icons\characters\ journal_sheenaz.png


:: last parameter can be set to define texturegroup if necessary, like this:
::
:: %BIN_IMPORT_TEXTURE% <srctexture.png> /data/textures/<targetname>.xbm WorldDiffuseWithAlpha
::
:: default texturegroup is: WorldDiffuse
:: Supported texture group names:
::       BillboardAtlas
::       CharacterDiffuse
::       CharacterDiffuseWithAlpha
::       CharacterEmissive
::       CharacterNormal
::       CharacterNormalHQ
::       CharacterNormalmapGloss
::       Default
::       DetailNormalMap
::       DiffuseNoMips
::       Flares
::       FoliageDiffuse
::       Font
::       GUIWithAlpha
::       GUIWithoutAlpha
::       HeadDiffuse
::       HeadDiffuseWithAlpha
::       HeadEmissive
::       HeadNormal
::       HeadNormalHQ
::       MimicDecalsNormal
::       NormalmapGloss
::       NormalsNoMips
::       Particles
::       ParticlesWithoutAlpha
::       PostFxMap
::       QualityColor
::       QualityOneChannel
::       QualityTwoChannels
::       SpecialQuestDiffuse
::       SpecialQuestNormal
::       SystemNoMips
::       TerrainDiffuse
::       TerrainNormal
::       WorldDiffuse
::       WorldDiffuseWithAlpha
::       WorldEmissive
::       WorldNormal
::       WorldNormalHQ
::       WorldSpecular
