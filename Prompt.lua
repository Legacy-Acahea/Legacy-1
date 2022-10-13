if Legacy then
if target == nil then
  target = "Aranos"
end

local vitals = Legacy[gmcp.Char.Status.name].Vitals

Legacy.Settings.Prompt = Legacy.Settings.Prompt or {

["showHealth"]        = true,
["showMana"]          = true,
["showWillpower"]     = true,
["showTarget"]        = true,
["showEndurance"]     = true,


}









if Legacy.Settings.usePrompt then
deleteFull()
  --Set HP Colors by %
  if vitals.hpPer < 25 then
    healthColor = "red"
  elseif vitals.hpPer < 50 then
    healthColor = "red"
  elseif vitals.hpPer < 75 then
    healthColor = "yellow"
  elseif vitals.hpPer > 100 then
    healthColor = "orange"
  else
    healthColor = "forest_green"
  end
  
  --Set Mana Colors by %
  if vitals.mpPer < 25 then
    manaColor = "white"
  elseif vitals.mpPer < 50 then
    manaColor = "red"
  elseif vitals.mpPer < 75 then
    manaColor = "yellow"
  elseif vitals.mpPer > 100 then
    manaColor = "orange"
  else
    manaColor = "forest_green"
  end
  
  --Set Endurance Colors by %
  if vitals.epPer < 25 then
    endColor = "white"
  elseif vitals.epPer < 50 then
    endColor = "red"
  elseif vitals.epPer < 75 then
    endColor = "yellow"
  elseif vitals.epPer > 100 then
    endColor = "orange"
  else
    endColor = "forest_green"
  end
  
  --Set Willpower Colors by %
  if vitals.epPer < 25 then
    willColor = "white"
  elseif vitals.wpPer < 50 then
    willColor = "red"
  elseif vitals.wpPer < 75 then
    willColor = "yellow"
  elseif vitals.wpPer > 100 then
    willColor = "orange"
  else
    willColor = "forest_green"
  end
  
  
  
  --Movitals. the table Show X order around to change where it will appear in your prompt
  
  echo("\n")
  --Show Health
  if Legacy.Settings.Prompt.showHealth == true then
    cecho("<green>H:<"..healthColor..">"..vitals.Health.."<white>|<"..healthColor..">"..vitals.MaxHP.." ")
  end
  
  --Show Mana
  if Legacy.Settings.Prompt.showMana == true then
    cecho("<cyan>M:<"..manaColor..">"..vitals.Mana.."<white>|<"..manaColor..">"..vitals.MaxMP.." ")
  end
  
  --Show Endurance
  if Legacy.Settings.Prompt.showEndurance == true then
    cecho("<purple>E:<"..endColor..">"..vitals.Endurance.."<white>|<"..endColor..">"..vitals.MaxEP.." ")
  end
  
  --Show Willpower
  if Legacy.Settings.Prompt.showWillpower == true then
    cecho("<yellow>W:<"..willColor..">"..vitals.Willpower.."<white>|<"..willColor..">"..vitals.MaxWP.." ")
  end
  
  --Show Target
  if Legacy.Settings.Prompt.showTarget == true then
    if Legacy.NDB.db[target] then
      local city = Legacy.NDB.db[target].city:lower()
      local citycolor = Legacy.Settings.NDB.Config[city].color
      cecho("<DimGray>[ <"..citycolor..">"..target.." <DimGray>]")
    else
      cecho("<DimGray>[ <cyan>"..target.." <DimGray>]")
    end
  end
  
  
  
  cechoPopup("*", 
  {  
  function() Legacy.echo("Restored Prompt Defaults") Legacy.Settings.Prompt.showMana = true Legacy.Settings.Prompt.showHealth = true Legacy.Settings.Prompt.showTarget = true Legacy.Settings.Prompt.showEndurance = false Legacy.Settings.Prompt.showWillpower = false end, 
  function() if Legacy.Settings.Prompt.showHealth == true then Legacy.Settings.Prompt.showHealth = false Legacy.echo("Removed Health from the Legacy Prompt") else Legacy.Settings.Prompt.showHealth = true Legacy.echo("Added Health to the Legacy Prompt")end end, 
  function() if Legacy.Settings.Prompt.showMana == true then Legacy.Settings.Prompt.showMana = false Legacy.echo("Removed Mana from the Legacy Prompt") else Legacy.Settings.Prompt.showMana = true Legacy.echo("Added Mana to the Legacy Prompt") end end,
  function() if Legacy.Settings.Prompt.showTarget == true then Legacy.Settings.Prompt.showTarget = false Legacy.echo("Removed Target from the Legacy Prompt") else Legacy.Settings.Prompt.showTarget = true Legacy.echo("Added Target to the Legacy Prompt") end end,
  function() if Legacy.Settings.Prompt.showEndurance == true then Legacy.Settings.Prompt.showEndurance = false Legacy.echo("Remoed Endurance from the Legacy Prompt") else Legacy.Settings.Prompt.showEndurance = true Legacy.echo("Added Endurance to the Legacy Prompt") end end,
  function() if Legacy.Settings.Prompt.showWillpower == true then Legacy.Settings.Prompt.showWillpower = false Legacy.echo("Removed Willpower from the Legacy Prompt") else Legacy.Settings.Prompt.showWillpower = true Legacy.echo("Added Willpower to the Legacy Prompt")end end,

  },
  
  {
  "Restore Legacy Prompt Defaults",
  "Toggle showing Health in prompt", 
  "Toggle showing Mana in prompt",
  "Toggle showing Target in prompt",
  "Toggle showing Endurance in prompt",
  "Toggle showing Willpower in prompt",
  }, true)
end
end
