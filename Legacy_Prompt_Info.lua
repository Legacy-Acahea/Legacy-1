function Legacy_Prompt()
if Legacy then
  if Legacy[gmcp.Char.Status.name] == nil then
    Legacy[gmcp.Char.Status.name] = {}
  end
  
  local Profile = Legacy[gmcp.Char.Status.name]
  local bleed = string.gsub(gmcp.Char.Vitals.charstats[1], "Bleed: ", "")
  Profile.class = gmcp.Char.Status.class
  Profile.Vitals = {
    ["Health"] = tonumber(gmcp.Char.Vitals.hp),
    ["Mana"] = tonumber(gmcp.Char.Vitals.mp),
    ["Willpower"] = tonumber(gmcp.Char.Vitals.wp),
    ["Endurance"] = tonumber(gmcp.Char.Vitals.ep),
    ["MaxHP"] = tonumber(gmcp.Char.Vitals.maxhp),
    ["MaxMP"] = tonumber(gmcp.Char.Vitals.maxmp),
    ["MaxEP"] = tonumber(gmcp.Char.Vitals.maxep),
    ["MaxWP"] = tonumber(gmcp.Char.Vitals.maxwp),
    ["hpPer"] = math.floor(gmcp.Char.Vitals.hp/gmcp.Char.Vitals.maxhp * 100),
    ["mpPer"] = math.floor(gmcp.Char.Vitals.mp/gmcp.Char.Vitals.maxmp * 100),
    ["wpPer"] = math.floor(gmcp.Char.Vitals.wp/gmcp.Char.Vitals.maxwp * 100),
    ["epPer"] = math.floor(gmcp.Char.Vitals.ep/gmcp.Char.Vitals.maxep * 100),
    ["bleed"] = tonumber(bleed)
  }
  
  if Profile.Vitals.Health == 0 then
    raiseEvent("Dead")
  end
