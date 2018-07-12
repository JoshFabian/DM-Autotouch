require "DM.dmconfig"
require "DM.dmutils"

local mmr = 0;

while (1==1) do
 -- Begin Arena Farm
 -- -- -- --

  -- Enter Arena
  if hasPixel(menu.enterArena) then
     tap(101,1922);
     usleep(500000);
  end

  -- Check Enemy Blacklist
  if hasPixels(blackList.dassvakten)
  or hasPixels(blackList.fartville)
  or hasPixels(blackList.piupap)
  or hasPixels(blackList.sharqu)
  or hasPixels(blackList.luckyAsian)
  or hasPixels(blackList.asgard)
  or hasPixels(blackList.duchp86)
  or hasPixels(blackList.ukAsian)
  or hasPixels(blackList.willpla4food)
  or hasPixels(blackList.cityTheCats)
  or hasPixels(blackList.admiral)
  or hasPixels(blackList.ribsy)
  or hasPixels(blackList.botBlock)
  or hasPixels(blackList.wilmington)
  or hasPixels(blackList.sony) then
    if hasPixel(menu.skipFight) then
      tap(233,2156);
      usleep(1000000);
      tap(1061,162); -- Necessary until avatar bug is fixed
      usleep(1000000);
    end
  else
    -- Start Fight
    if hasPixel(menu.startFight) then
       tap(102,2160);
       usleep(500000);
    end
  end


  while hasPixel(screen.arena) do

    -- Black Mask
    if hasPixel(blackMask.bombTossActive) then
      thirdAttack();
    else
      if hasPixel(blackMask.bombTossInactive) then
        thirdAttack();
        firstAttack();
      end
    end

    -- Umbra
    if hasPixel(ursusUmbra.overdriveActive) then
      firstAttack();
    end

    -- Ivy Elf Warden
    -- if hasPixel(ivyElfWarden.seedBarrageActive) then
    --   secondAttack();
    -- else
    --   if hasPixel(ivyElfWarden.seedBarrageInactive) then
    --     firstAttack();
    --   end
    -- end

    -- Rolanda
    if hasPixel(rolanda.rallyCallActive) then
      secondAttack();
    else
      if hasPixel(rolanda.lionsRoarActive) then
        secondAttack();
        thirdAttack();
      else
        if hasPixel(rolanda.lionsRoarInactive) then
          secondAttack();
          firstAttack();
        end
      end
    end

    -- Legend Tim
    if hasPixel(vaultMasterTimothy.infernoBlitzActive) then
      fourthAttack();
    else
      if hasPixel(vaultMasterTimothy.infernoBlitzInactive) then
        fourthAttack();
        firstAttack();
      end
    end

    -- Vault Keeper
    -- if hasPixel(vaultKeeper.renewalActive) then
    --   fourthAttack();
    -- else
    --   if hasPixel(vaultKeeper.vaultBlastActive) then
    --     thirdAttack();
    --   else
    --     if hasPixel(vaultKeeper.renewalInactive)  then
    --       firstAttack();
    --     end
    --   end
    -- end

    -- Wyld Troll
    -- if hasPixel(wyldTroll.barkBlowoutActive) then
    --   secondAttack();
    -- else
    --   if hasPixel(wyldTroll.entangleActive) then
    --     thirdAttack();
    --   else
    --     if hasPixel(wyldTroll.entangleInactive) then
    --       firstAttack();
    --     end
    --   end
    -- end

    -- Herbalist
    -- if hasPixel(ivyElfHerbalist.overgrowthActive) then
    --   thirdAttack();
    -- else
    --   if hasPixel(ivyElfHerbalist.herbalismActive) then
    --     secondAttack();
    --   else
    --     if hasPixel(ivyElfHerbalist.herbalismInactive) then
    --       firstAttack();
    --     end
    --   end
    -- end

    -- Results Screen
    if hasPixel(menu.victoryResult) then
       -- Close Victory Screen
       mmr=mmr+5
       log(string.format("We won : %d", mmr));
       tap(96,572);
       usleep(500000);
    else
       if hasPixel(menu.defeatResult) then
         -- Close Defeat Screen
         mmr=mmr-40
         log(string.format("We Lost : %d", mmr));
         tap(100,192);
         usleep(500000);
       end
    end
  end

  -- Open Reward Chest
  if hasPixel(menu.openRewardChest) then
    log("Opened reward chest.");
    tap(140,939);
    usleep(500000);
  end

  -- Close Reward Chest
  if hasPixel(menu.closeRewardChest) or hasPixel(menu.closeRewardChestAlt)  then
    log("Closed reward chest.");
    tap(112,2284);
    usleep(500000);
  end

  -- Close Daily Popup
  if hasPixel(menu.closeDaily) then
    log("Closed reward chest.");
    tap(172, 1271);
    usleep(500000);
  end

-- End Arena Farm
-- -- -- --
end
