local noirbuddy = require("noirbuddy.colors").all()

local colorbuddy = require("colorbuddy")
colorbuddy.colorscheme("moorts")



-- And then modify as you like
local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local groups = colorbuddy.groups
local styles = colorbuddy.styles

-- Use Color.new(<name>, <#rrggbb>) to create new colors
-- They can be accessed through colors.<name>
Color.new('background',  '#000000')
Color.new('foreground',  '#d5d5d5')
Color.new('red',         '#cc6666')
Color.new('green',       '#99cc99')
Color.new('bold_red',    '#ff0000')
Color.new('pink',        '#ff0088')

Color.new('noir_0',      '#ffffff')
Color.new('noir_1',      '#f5f5f5')
Color.new('noir_2',      '#d5d5d5')
Color.new('noir_3',      '#b4b4b4')
Color.new('noir_4',      '#a7a7a7')
Color.new('noir_5',      '#949494')
Color.new('noir_6',      '#737373')
Color.new('noir_7',      '#535353')
Color.new('noir_8',      '#323232')
Color.new('noir_9',      '#212121')

-- Doc Comments should be bright red!
Group.new("@comment.documentation", colors.bold_red)
Group.new("SpecialComment", colors.bold_red)

Group.new("Keyword", colors.bold_red, colors.background, styles.bold)

Group.new("Function", colors.noir_0)
Group.new("Macro", colors.noir_0)

Group.new("String", colors.pink)
Group.new("@number", colors.pink)
Group.new("Number", colors.pink)
Group.new("Float", colors.pink)
Group.new("@character", colors.pink)
Group.new("Character", colors.pink)

Group.new("Normal", colors.foreground, colors.background)
Group.new("NonText", colors.foreground, colors.background)
Group.new("SignColumn", colors.noir_5, colors.background)
Group.new("LineNr", colors.noir_7, colors.background)
Group.new("LineNrAbove", colors.noir_7, colors.background)
Group.new("LineNrBelow", colors.noir_7, colors.background)

Group.new("Include", colors.foreground)

Group.new("DiagnosticInfo", colors.noir_5)
Group.new("DiagnosticHint", colors.noir_5)
