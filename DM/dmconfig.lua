-- Classes

Pixel = {}
function Pixel.new(x, y, color)
    local o = {}
    o.x = x
    o.y = y
    o.color = color
    return o
end

Pixels = {}
function Pixels.new(table, region)
    local o = {}
    o.table = table
    o.region = region
    return o
end

-- Attack Buttons

function firstAttack()
  tap(100,192);
  usleep(30000);
  tap(100,192);
  usleep(1500000);
end

function secondAttack()
  tap(99, 382);
  usleep(30000);
  tap(99, 382);
  usleep(1500000);
end

function thirdAttack()
  tap(96,572);
  usleep(30000);
  tap(96,572);
  usleep(1500000);
end

function fourthAttack()
  tap(108, 757);
  usleep(30000);
  tap(108, 757);
  usleep(1500000);
end

-- Menu:
-- Pixels for detecting menu buttons and states.
menu = {
  -- Battle Result
  victoryResult  = Pixel.new(124,1229, 4030374),
  defeatResult   = Pixel.new(124,1229, 5602451),

  -- Reward Chest
  openRewardChest =  Pixel.new(140,939, 13208329),
  closeRewardChest = Pixel.new(167,1273, 6950928),
  closeRewardChestAlt = Pixel.new(167,1273, 7344658),

  -- Daily Reward
  closeDaily =  Pixel.new(955, 2097, 7799812),

  -- Arena menu
  enterArena = Pixel.new(76,1904, 14393094),
  skipFight = Pixel.new(290,2228, 5479109),
  startFight = Pixel.new(68,2235, 14656006),
}


-- Stage:
-- Pixels for detecting what screen I'm on.
screen = {
  -- Town Center
  townCenter = Pixel.new(1063,2284, 494787),
  -- Arena
  arena  = Pixel.new(1050,1248, 3222049),
}


-- Menu:
-- Pixels for finding if certain enemies are present in a battle
detectEnemy = {
  rolanda  = Pixel.new(399,1750, 14933980),
  keymasterFrame1 = Pixel.new(623,1576, 6395067),
  keymasterFrame2 = Pixel.new(623,1576, 6461115),
  keymasterFrame3 = Pixel.new(623,1576, 6394811),
}

blackList = {
  -- Arena Blacklist
  ukAsian = Pixels.new({{14485000,749,1418}, {11170088,751,1443}}),
  fartville = Pixels.new({{7011324,762,1403}, {7387057,743,1455}}),
  dassvakten = Pixels.new({{8416315,735,1422}, {13409785,747,1462}}),
  piupap = Pixels.new({{4106214,750,1403}, {7742242,746,1453}}),
  sharqu = Pixels.new({{11739172,749,1416}, {7676446,750,1456}}),
  luckyAsian = Pixels.new({{16111699,764,1407}, {7676446,748,1455}}),
  asgard = Pixels.new({{13533917,752,1415}, {4369105,744,1455}}),
  duchp86 = Pixels.new({{8133920,767,1418}, {47688485,755,1475}}),
  willpla4food = Pixels.new({{6028028,762,1402}, {10899453,747,1456}}),
  cityTheCats = Pixels.new({{13054751,761,1420}, {2270699,742,1465}}),
  admiral = Pixels.new({{12089891,769,1400}, {5603499,744,1466}}),
  ribsy = Pixels.new({{8863313,798,1394}, {5615818,743,1464}}),
  botBlock = Pixels.new({{4143703,751,1412}, {3116139,741,1461}}),
  wilmington = Pixels.new({{12751383,750,1404}, {3876987,743,1475}}),
  sony = Pixels.new({{12666415,759,1403}, {7676447,749,1454}}),
}

-- Roster:
-- These are all pixels for detecting relevant heroes abilities.
goldenTiamat = {
  -- Golden Tiamat
  godArrowActive     = Pixel.new(101, 621, 12096294),
  godArrowInactive     = Pixel.new(101, 621, 5066061),
}

ursusUmbra = {
  -- Umbra
  rainOfBladesActive = Pixel.new(125, 814, 4147553),
  rainOfBladesInactive = Pixel.new(125, 814, 2500134),
  overdriveActive    = Pixel.new(104, 415, 4662856),
  overdriveInactive    = Pixel.new(104, 415, 14474460),
  basicAttackActive    = Pixel.new(98, 207, 16243834),
}

vaultKeeper = {
  -- Vault Keeper
  vaultBlastActive   = Pixel.new(78, 581, 11842936),
  vaultBlastInactive   = Pixel.new(78, 581, 6052956),
  renewalActive      = Pixel.new(154, 771, 10485247),
  renewalInactive      = Pixel.new(154, 771, 7829367),
}

wyldTroll = {
  -- Wyld Troll
  barkBlowoutActive  = Pixel.new(125, 396, 3515994),
  barkBlowoutInactive  = Pixel.new(125, 396, 4276545),
  entangleActive     = Pixel.new(93, 584, 3620629),
  entangleInactive     = Pixel.new(93, 584, 1907997),
}

ivyElfHerbalist = {
  -- Herbalist
  herbalismActive   = Pixel.new(135, 404, 7600127),
  herbalismInactive   = Pixel.new(135, 404, 7237230),
  overgrowthActive  = Pixel.new(161, 618, 940577),
  overgrowthInactive  = Pixel.new(161, 618, 2171169),
}

ivyElfWarden = {
  -- Ivy Elf Warden
  seedBarrageActive   = Pixel.new(64, 407, 81501),
  seedBarrageInactive   = Pixel.new(64, 407, 1644825),
  blessedRootActive  = Pixel.new(111, 576, 2699023),
  blessedRootInactive  = Pixel.new(111, 576, 4607328),
}

vaultMasterTimothy = {
  -- Vault Master Timothy
  vaultShieldBlastActive   = Pixel.new(97, 576, 13302015),
  vaultShieldBlastInactive   = Pixel.new(97, 576, 5263699),
  infernoBlitzActive  = Pixel.new(104, 767, 6426885),
  infernoBlitzInactive  = Pixel.new(104, 767, 594733),
  basicAttackActive = Pixel.new(81,185, 16030751)
}

rolanda = {
  -- Rolanda
  rallyCallActive   = Pixel.new(110, 384, 10823176),
  rallyCallInactive   = Pixel.new(110, 384, 14079960),
  lionsRoarActive  = Pixel.new(100, 563, 16438644),
  lionsRoarInactive  = Pixel.new(100, 563, 14079960),
  bloodlineActive  = Pixel.new(124, 799, 10485759),
  bloodlineInactive  = Pixel.new(124, 799, 16777215),
}

blackMask = {
  -- Black Mask
  bombTossActive   = Pixel.new(73, 596, 10241801),
  bombTossInactive   = Pixel.new(73, 596, 3158064),
}
