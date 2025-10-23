local Mod = TFI
local Collectibles = Mod.Collectibles
--local Players = Mod.Players
--local Cards = Mod.Cards

local Translation = {}
Translation.Collectibles = {
    [Collectibles.PanicNecklace.ID] = {
        Name = "恐惧项链",
        Description = '骇死我力',
    },
    [Collectibles.BrainOfConfusion.ID] = {
        Name = "混乱之脑",
        Description = '晕乎乎',
    },
    [Collectibles.LuckyCoin.ID] = {
        Name = "幸运硬币",
        Description = '通货膨胀',
    },
    [Collectibles.MoonShell.ID] = {
        Name = "月亮贝壳",
        Description = '月光的庇护',
    },
    [Collectibles.SporeSac.ID] = {
        Name = "孢子囊",
        Description = '它们在你周围滋生...',
    },
    [Collectibles.TelsonNecklace.ID] = {
        Name = "毒刺项链",
        Description = '丛林之击',
    },
    [Collectibles.BoneHelmet.ID] = {
        Name = "骨盔",
        Description = '黑暗中的守护...',
    },
    [Collectibles.FrozenShell.ID] = {
        Name = "冰冻壳",
        Description = '冻结敌人',
    },
    [Collectibles.PillarOfUnity.ID] = {
        Name = "归一心原石",
        Description = '无尽力量',
    },
    [Collectibles.PigDragonBallon.ID] = {
        Name = "猪龙气球",
        Description = '向着天空...和大海',
    },
    [Collectibles.WingsofRebirth.ID] = {
        Name = "涅槃龙翼",
        Description = '华焰璀璨，直至尽头',
    },
    [Collectibles.DraedonsHeart.ID] = {
        Name = "嘉登之心",
        Description = '纳米机器，小子',
    },
    [Collectibles.AncientSoul.ID] = {
        Name = "古代之魂",
        Description = '古老的光明与黑暗之魂已经释放',
    },
    [Collectibles.BloodTears.ID] = {
        Name = "血泪",
        Description = '诅咒之夜太可怕了',
    },
    [Collectibles.TallyCounter.ID] = {
        Name = "杀怪计数器",
        Description = '数量=财富',
    },
    [Collectibles.GunSight.ID] = {
        Name = "瞄准镜",
        Description = '精准射击',
    },
}

Translation.Players = {

}

Translation.Cards = {

}

do -- 中文描述
    for item, text in pairs(Translation.Collectibles) do
        local itemConfig = Isaac.GetItemConfig()
        local config = itemConfig:GetCollectible(item)
        if config and item then
            config.Description = text.Description
        end
    end
    for card, text in pairs(Translation.Cards) do
        local itemConfig = Isaac.GetItemConfig()
        local config = itemConfig:GetCard(card)
        if config and card then
            config.Description = text.Description
        end
    end
end

function Translation:preItemTextDisplay(title, subtitle, isSticky, isCurseDisplay)
    if isSticky or isCurseDisplay then return end
    for item, text in pairs(Translation.Collectibles) do
        local itemConfig = Isaac.GetItemConfig()
        local config = itemConfig:GetCollectible(item)
        if config and title == config.Name and subtitle == config.Description then
            local game = Game()
            local hud = game:GetHUD()
            hud:ShowItemText(text.Name, text.Description)
            return false
        end
    end
    for card, text in pairs(Translation.Cards) do
        local cardConfig = Isaac.GetItemConfig()
        local config = cardConfig:GetCard(card)
        if config and title == config.Name and subtitle == config.Description then
            local game = Game()
            local hud = game:GetHUD()
            hud:ShowItemText(text.Name, text.Description)
            return false
        end
    end
    for playerId, text in pairs(Translation.Players) do
        local config = EntityConfig.GetPlayer(playerId)
        if config and title == "长子名分" and subtitle == config:GetBirthrightDescription() then
            local game = Game()
            local hud = game:GetHUD()
            hud:ShowItemText("长子名分", text.Birthright)
            return false
        end
    end
end

Mod:AddCallback(ModCallbacks.MC_PRE_ITEM_TEXT_DISPLAY, Translation.preItemTextDisplay)

return Translation
