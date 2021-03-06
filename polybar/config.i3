[colors]
background = #253F54
background-alt = #253F54
foreground = #A6D5DF
foreground-alt = #F6192A

[section/base]
height = 23

offset-y = 6
radius = 8

module-margin = 1
padding = 2

background = ${colors.background}
foreground = ${colors.foreground}

fixed-center = true
override-redirect = true
wm-restack = i3
enable-ipc = true

font-0 = "Font Awesome 5 Brands:style=Regular:size=14;3"
font-1 = "Font Awesome 5 Free:style=Solid:size=14;3"
font-2 = "Font Awesome 5 Free:style=Regular:size=14;3"
font-3 = "Roboto:size=11;2"
font-4 = "Material Icons:size=14;4"

[bar/left]
inherit = section/base
width = 90
offset-x = 13
modules-center = date

[bar/center]
inherit = section/base
width = 100
offset-x = 630
modules-center = bspwm

[bar/right]
inherit = section/base
width = 120
offset-x = 1230
padding = 4
modules-center = battery alsa network

[module/i3]
type=internal/i3

label-focused = 
label-focused-padding = 1
label-unfocused = 
label-unfocused-padding = 1
format-padding = 3

[module/xwindow]
type = internal/xwindow
format-padding = 1

label-maxlen = 25

[module/date]
type = internal/date
interval = 2
date = "%a, %e"
date-alt = "%e %b %Y"

time = "%H:%M"
time-alt = "%I:%M %p"

label =   %time%

[module/battery]
type = internal/battery
battery = BAT0
adapter = AC

poll-interval = 5

format-charging = <label-charging>
format-discharging = <ramp-capacity>
format-full = <ramp-capacity>

label-charging = %{T5}  %{T-}
label-discharging = "%percentage%%"
padding-left = 1

animation-charging-0 = 
animation-charging-1 = 
animation-charging-2 = 
animation-charging-3 = 
animation-charging-4 = 
animation-charging-framerate = 750

ramp-capacity-0 = 
ramp-capacity-1 = 
ramp-capacity-2 = 
ramp-capacity-3 = 
ramp-capacity-4 = 

[module/alsa]
type = internal/alsa

format-volume = <ramp-volume>
label-volume = %percentage%
label-muted = %{T5}  %{T-}

ramp-volume-0 = %{T5}  %{T-}
ramp-volume-1 = %{T5}  %{T-}
ramp-volume-2 = %{T5}  %{T-}

[module/network]
type = internal/network

interface = wlp6s0

interval = 5

format-connected = <label-connected>
format-disconnected = <label-disconnected>

label-connected = %{T5}   %{T-}
label-disconnected = %{T5}   %{T-}

ramp-signal-0 = 😱
ramp-signal-1 = 😠
ramp-signal-2 = 😒
ramp-signal-3 = 😊
ramp-signal-4 = 😃
ramp-signal-5 = 😈

[module/memory]
type = internal/memory

format = <label>
label =   RAM %gb_used%

interval = 5
