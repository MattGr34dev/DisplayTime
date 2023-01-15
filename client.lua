local x = Config.posX 
local y = Config.posY
local outline = Config.textOutline
local time
local hour
local minute

time = hour .. ":" .. minute
drawTime()

function drawTime()
	SetTextFont(Config.textFont)
	SetTextProportional(1)
	SetTextScale(Config.textScale, Config.textSize)
	SetTextColour(Config.colorR, Config.colorG, Config.colorB, Config.colorA)
	SetTextDropshadow(0, 0, 0, 0, 255)
	SetTextDropShadow()
	if outline == true then 
	SetTextOutline()
	end
	SetTextWrap(0,0)
	SetTextEntry("STRING")
	AddTextComponentString(time)
	DrawText(x, y)
end

function calculateTime()
	hour = GetClockHours()
	minute = GetClockMinutes()
end