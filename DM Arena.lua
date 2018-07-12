require "DM.dmconfig"
require "DM.dmutils"

while (1==1) do
 -- Begin Arena Farm
 -- -- -- --

  -- Enter Arena
  if getColor(76,1904) == 14393094 then
     log("Entered arena.");
     tap(101,1922);
     usleep(500000);
  end

  -- Begin Arena Fight
  if getColor(68,2235) == 14656006 then
     log("Arena fight initiated.");
     tap(102,2160);
     usleep(500000);
  end

  -- Golden Tiamat
  if hasPixel(Heroes.godArrow) then
    log("Used Golden Tiamat's God Arrow.");
    thirdAttack();
  else
    if hasPixel(Heroes.holyStorm) then
      log("Used Golden Tiamat's Holy Storm.");
      firstAttack();
    end
  end

  -- Umbra
  if hasPixel(Heroes.overdrive) then
    log("Used Umbra's Overdrive.");
    secondAttack();
  else
    if hasPixel(Heroes.rainOfBlades) then
      log("Used Umbra's Rain of Blades.");
      fourthAttack();
    else
      if hasPixel(Heroes.electroShock) then
        log("Used Umbra's Electro Shock.");
        firstAttack();
      end
    end
  end

  -- Vault Keeper
  if hasPixel(Heroes.renewal) then
    log("Used Vault Keeper's Renewal.");
    fourthAttack();
  else
    if hasPixel(Heroes.vaultBlast) then
      log("Used Vault Keeper's Vault Blast.");
      thirdAttack();
    else
      if hasPixel(Heroes.vaultSlash) then
        log("Used Vault Keeper's Vault Slash.");
        firstAttack();
      end
    end
  end

  -- Wyld Troll
  if hasPixel(Heroes.barkBlowout) then
    log("Used Wyld Troll's Bark Blowout.");
    secondAttack();
  else
    if hasPixel(Heroes.entangle) then
      log("Used Wyld Troll's Entangle");
      thirdAttack();
    else
      if hasPixel(Heroes.knockOut) then
        log("Used Wyld Troll's Knockout");
        firstAttack();
      end
    end
  end

  -- Results Screen
  if getColor(124,1229) == 4030374 then
     -- Close Victory Screen
     log("We won! Closing results screen.");
     tap(96,572);
     usleep(500000);
  else
     if getColor(124,1229) == 5602451 then
       -- Close Defeat Screen
       log("We Lost... Closing results screen.");
       tap(100,192);
       usleep(500000);
     end
  end

--   -- Open Reward Chests
--   local results = findColors({{8069152,0,0}, {1973018,-12,16}, {13603340,-12,27}}, 0, nil);
--   if results ~= nil then
--     log("Opened reward chest.");
--     for i, a in pairs(results) do
--       tap(a[1], a[2])
--       usleep(5000)
--       tap(a[1], a[2])
--       usleep(5000)
--     end
--   end
--
--   -- Close Reward Screen
--   local results = findColors({{2630974,0,0}, {16040806,-9,-4}, {14524968,-20,-5}}, 0, nil);
--   if results ~= nil then
--     log("Collected chest rewards, back to arena.");
--     for i, a in pairs(results) do
--       tap(a[1], a[2])
--       usleep(30000)
--       tap(a[1], a[2])
--       usleep(30000)
--     end
--   end
--
--   -- Daily Login
--   if getColor(955, 2097) == 7799812 then
--      -- Close Daily Screen
--      log("Collected daily login rewards, back to arena.");
--      tap(948, 2112);
--      usleep(30000);
--   end
--
--   -- End Arena Farm
--   -- -- -- --
end
