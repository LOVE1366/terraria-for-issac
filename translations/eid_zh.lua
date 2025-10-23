local Mod = TFI
local Collectibles = Mod.Collectibles
--local Cards = Mod.Cards
--local Players = Mod.Players
--local Slots = Mod.Slots
--local Pickups = Mod.Pickups

local EIDInfo = {};
EIDInfo.Collectibles = {
    [Collectibles.PanicNecklace.ID] = {
        name = "恐惧项链",
        info = ""
    },
    [Collectibles.BrainOfConfusion.ID] = {
        name = "混乱之脑",
        info = "20%概率闪避所有类型伤害并对攻击者施加混乱" ..
            "#{{Luck}} 幸运20:50%概率"
    },
    [Collectibles.LuckyCoin.ID] = {
        name = "幸运硬币",
        info = '10%概率使硬币生成时增加一个等级' ..
            "#{{Luck}} 幸运30:100%概率"
    },
    [Collectibles.MoonShell.ID] = {
        name = "月亮贝壳",
        info = '',
    },
    [Collectibles.SporeSac.ID] = {
        name = "孢子囊",
        info = '',
    },
    [Collectibles.TelsonNecklace.ID] = {
        name = "毒刺项链",
        info = '',
    },
    [Collectibles.BoneHelmet.ID] = {
        name = "骨盔",
        info = '',
    },
    [Collectibles.FrozenShell.ID] = {
        name = "冰冻壳",
        info = '',
    },
    [Collectibles.PillarOfUnity.ID] = {
        name = "归一心原石",
        info = '',
    },
    [Collectibles.PigDragonBallon.ID] = {
        name = "猪龙气球",
        info = '',
    },
    [Collectibles.WingsofRebirth.ID] = {
        name = "涅槃龙翼",
        info = '',
    },
    [Collectibles.DraedonsHeart.ID] = {
        name = "嘉登之心",
        info = '',
    }
    [Collectibles.AncientSoul.ID] = {
        name = "古代之魂",
        info = '',
    },
    [Collectibles.BloodTears.ID] = {
        name = "血泪",
        info = '',
    },
    [Collectibles.TallyCounter.ID] = {
        name = "杀怪计数器",
        info = '',
    },
    [Collectibles.GunSight.ID] = {
        name = "瞄准镜",
        info = '',
    },
}


EIDInfo.EIDBirthright = {

}

EIDInfo.EIDPlayers = {

}

EIDInfo.EIDCards = {

}

EIDInfo.EIDEntities = {

}

return EIDInfo
