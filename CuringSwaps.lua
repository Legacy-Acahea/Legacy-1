function CuringSwaps()
if Legacy.CT.Enemies then
  enClass = Legacy.CT.Enemies[target]
  --Legacy.panic()
  
  
  local Aff = Legacy.Curing.Affs  --List of Afflictions
  local SS  = Legacy.Settings.Curing.SS.Settings --Used for Tracking your Serverside settings
  local affCount = table.size(Legacy.Curing.Affs) --Used for Tracking the total count of Afflictions
   
   
   withTarget = function()
    if table.contains(gmcp.Room.Players, target) then
      return true
    else
      return false
    end
   end
  
  
  
    if enClass == "Alchemist" then
      if withTarget() then
        
      end
    elseif enClass == "Apostate" then
    elseif enClass == "Bard" then
    elseif enClass == "Blademaster" then
      if withTarget() then
        Deprio("clumsiness", "hard")
      end
    elseif enClass == "Depthswalker" then
        if Aff.timeloop then
          Prio("timeloop")
          --Legacy.echo("YA FUCKIN TIME IS OFF")
        end
        if Legacy.Aranos.Vitals.hpPer < 75 and Legacy.Aranos.Vitals.mpPer > 50 and SS.sipPrio ~= "Health" then
        send("curing prio health")
        elseif Legacy.Aranos.Vitals.hpPer > 50 and Legacy.Aranos.Vitals.mpPer < 75 and SS.sipPrio ~= "Mana" then
        send("curing prio mana") 
      end 
    elseif enClass == "Druid" then
    elseif enClass == "Infernal" then
    elseif enClass == "Jester" then
    elseif enClass == "Magi" then
    elseif enClass == "Monk" then
    elseif enClass == "Occultist" then
    elseif enClass == "Paladin" then
    elseif enClass == "Pariah" then
    elseif enClass == "Priest" then
      if Aff.inquisition and SS.sipPrio == "Health" then
        send("curing prio mana")
      elseif Legacy.Aranos.Vitals.hpPer < 50 and Legacy.Aranos.Vitals.mpPer > 50 and SS.sipPrio ~= "Health" then
        send("curing prio health")
      elseif Legacy.Aranos.Vitals.hpPer > 50 and Legacy.Aranos.Vitals.mpPer < 50 and SS.sipPrio ~= "Mana" then
        send("curing prio mana")
      end  
    elseif enClass == "Psion" then
      if withTarget() then
       
      end
    elseif enClass == "Runewarden" then
    elseif enClass == "Sentinel" then
    elseif enClass == "Serpent" then
    elseif enClass == "Shaman" then
    elseif enClass == "Sylvan" then
    elseif enClass == "Unnamable" then
    end
  
  
  
  end
end

registerAnonymousEventHandler("gmcp.Char.Afflictions", "CuringSwaps")
