require("vicious")
require("awful")

-- Initialize widgets
cpuwidget = widget({ type = "textbox", align = "left" })
memwidget = widget({ type = "textbox", align = "left" })
datewidget = widget({ type = "textbox", align = "right" })
separator = widget({ type = "textbox", name = "separator", align = "left" })

-- Register widgets
vicious.register(datewidget, vicious.widgets.date, "<span color='#61DB45'>DATE:</span> %R", 5)
vicious.register(memwidget, vicious.widgets.mem, "<span color='#61DB45'>MEM:</span> $1% ($2MB)", 13)
vicious.register(cpuwidget, vicious.widgets.cpu, "<span color='#61DB45'>CPU:</span> $1%")
vicious.register(separator, function () return ' <span color="#61DB45">|</span> ' end)
