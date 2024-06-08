#
# Description:	Creates a format for the item in its nbt
# Called by:	format functions
# Entity @s:	none
#
data modify storage name_formatting:item_storage item set from entity @s SelectedItem
data modify storage name_formatting:item_storage item.tag.NameFormatting merge from storage name_formatting:base_format NameFormatting
data modify storage name_formatting:item_storage item.tag.NameFormatting.OriginalName merge from storage name_formatting:item_storage item.tag.display.Name
data modify storage name_formatting:item_storage item.tag.NameFormatting.ModifiedName merge from storage name_formatting:item_storage item.tag.display.Name
item modify entity @s weapon.mainhand name_formatting:reformat_name
#data modify block ~ ~ ~ Items[0].tag merge value {NameFormatting: {color:"{\"nbt\":\"Items[0].tag.NameFormatting.OriginalName\",\"block\":\"~ ~ ~\",\"interpret\":\"true\"}", italic:"{\"nbt\":\"Items[0].tag.NameFormatting.color\",\"block\":\"~ ~ ~\",\"interpret\":\"true\"}", underlined:"{\"nbt\":\"Items[0].tag.NameFormatting.italic\",\"block\":\"~ ~ ~\",\"interpret\":\"true\"}", bold:"{\"nbt\":\"Items[0].tag.NameFormatting.underlined\",\"block\":\"~ ~ ~\",\"interpret\":\"true\"}", strikethrough:"{\"nbt\":\"Items[0].tag.NameFormatting.bold\",\"block\":\"~ ~ ~\",\"interpret\":\"true\"}", obfuscated:"{\"nbt\":\"Items[0].tag.NameFormatting.strikethrough\",\"block\":\"~ ~ ~\",\"interpret\":\"true\"}"} }
#data modify block ~ ~ ~ Items[0].tag.NameFormatting.OriginalName set from block ~ ~ ~ Items[0].tag.display.Name
#data modify block ~ ~ ~ Items[0].tag.NameFormatting.ModifiedName set from block ~ ~ ~ Items[0].tag.display.Name
