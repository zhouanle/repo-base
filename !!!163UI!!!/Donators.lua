local _, U1 = ...;
U1Donators = {}
local topNames = "奶瓶小裤衩-血色十字军,御箭乘风-贫瘠之地,叶心安-远古海滩,释言丶-伊森利恩,魔道刺靑-菲拉斯,乱灬乱-伊森利恩,瓜瓜哒-白银之手,Monarch-霜之哀伤,海潮之声-白银之手,败家少爷-死亡之翼,不含防腐剂-诺森德,不要捣乱-斯克提斯,大江江米库-雷霆之王,幽幽花舞-贫瘠之地,蒋公子-死亡之翼,Majere-冰风岗,邪恶肥嘟嘟-卡德罗斯,空灵道-回音山,橙阿鬼丶-达尔坎,贞姬-霜之哀伤,剑四-幽暗沼泽,站如松-夏维安";
local recentDonators = {["死亡之翼"] = "E3,酒蒙子丶,成蹊,车队领导着,最终自由,车队领导者,來生缘,星空下的小宇;E2,Shellin;E1,纳格法尔号,重要的是姿势,荒青春逝流年",["埃加洛尔"] = "E3,神手健一",["利刃之拳"] = "E3,梁皓然,西蓝花;E1,主体责任",["燃烧之刃"] = "E3,尐丶傻馒,韦家三少;E2,酒仙陈玄风;E1,䬕飍䬕䬕,大西叔叔",["白银之手"] = "E3,怀熙,Scientists,莽穿天淦神仙,Voidelfin,东哥不识美,古德貓宁,抠脚灬无情,肥宅快乐祝;E2,圣纳六千,小猪鱼呆贼,牧冥,我不是帝凯;E1,蓝衫极品,九門丶佛爺,妖妖的小猎,烏拉",["末日行者"] = "E3,语动静默,刺客聂隐娘;E2,艾迦狄亚;E1,凤兮丶曼陀罗",["翡翠梦境"] = "E3,鑫丶低调",["风暴峭壁"] = "E3,暴躁鬼畜少女",["血色十字军"] = "E3,风斩氷华,不知火朧;E1,凌东拳霸",["金色平原"] = "E3,西蒙贝尔蒙特,阿帕罗丶夜风;E2,法伤负数",["轻风之语"] = "E3,瑪维娜的诗歌",["主宰之剑"] = "E3,Magiccoffee,左右看風景;E1,丷大里奥",["壁炉谷"] = "E3,巨闕",["凤凰之神"] = "E3,阿基米德,IDÆçrider,哪哈哟,墨角兽;E2,Vier;E1,影锋灬",["达斯雷玛"] = "E3,高压钠灯",["圣火神殿"] = "E3,逝殇易云",["阿尔萨斯"] = "E3,楊超越丶",["海克泰尔"] = "E3,糖手扶鼎",["格瑞姆巴托"] = "E3,首席非酋,野原叫新之助,小新有大象,乄夕陽;E2,丶武侯;E1,法似一明灯",["无尽之海"] = "E3,碧空之歌,丶心如止水丶,血之遗弃者,又起秋风;E2,Venars;E1,酔酒当歌,扶摇索伦",["伊森利恩"] = "E3,武器器,山石大哥,丶风骚小辣椒;E2,随风如影",["安其拉"] = "E3,李茶他姑妈",["海达希亚"] = "E3,无限星云",["血吼"] = "E3,用嘴铩人,封昆达",["熔火之心"] = "E3,好运来来;E1,泡泡茉茉",["通灵学院"] = "E3,牧濑丨红莉栖",["索瑞森"] = "E3,战叼",["国王之谷"] = "E3,虚空咒语,羽影之歌",["蜘蛛王国"] = "E3,還差一點點",["熊猫酒仙"] = "E3,死神的傀儡,翱瀛徽坤;E2,臭飞飞;E1,废柴老奶奶",["狂热之刃"] = "E3,黯然叉烧饭",["迦拉克隆"] = "E3,初夏听雪;E1,深深的雪",["阿纳克洛斯"] = "E3,小轻玥;E1,魔中君子",["麦迪文"] = "E3,阿水",["丽丽（四川）"] = "E3,桑叶丶白",["贫瘠之地"] = "E3,丨嘚噜噫丨,花魚兒,御箭乘风;E2,东北小野马;E1,Dreamers,二丶同学",["奥特兰克"] = "E3,咸鱼冲击",["安苏"] = "E3,Hellix",["瓦里玛萨斯"] = "E3,噼里啪啦砰",["阿克蒙德"] = "E3,切奶的阿昆达",["霜狼"] = "E3,天堂真矢;E1,八荒",["石锤"] = "E3,南城南撞南墙",["哈兰"] = "E3,泰国脏脏包",["耐奥祖"] = "E3,德玛卍西亚,六的一皮;E1,精灵的魅影",["克尔苏加德"] = "E3,丨比格沃斯丨;E2,甩动吧肥肉",["死亡熔炉"] = "E3,散蘰公主",["巨龙之吼"] = "E3,一岱玹一",["影之哀伤"] = "E3,卌成鸡思汉卌;E2,柚儿园的蘑菇,跳跳熊冫",["阿卡玛"] = "E3,灬咖啡店卩",["加尔"] = "E3,親爱的不二",["布兰卡德"] = "E2,命运的落叶;E1,李阳脚很臭,两秒偷药",["雷斧堡垒"] = "E2,猎空闪光;E1,奥霏莉娅,明玉",["黑石尖塔"] = "E2,相声演员琪琪",["回音山"] = "E2,Accetation",["阿古斯"] = "E2,女神丶伊阿索,徳鲁希丽雅",["霜之哀伤"] = "E2,疾風怒涛",["艾萨拉"] = "E2,六五四二",["罗宁"] = "E2,小猪佩琪,无羁乾坤;E1,無月丶",["外域"] = "E2,魔兽小师妹",["艾露恩"] = "E2,豆浆",["加里索斯"] = "E2,迷之小友",["晴日峰（江苏）"] = "E2,丢雷佬母",["菲拉斯"] = "E2,风中狂魔",["古尔丹"] = "E2,Kellykeith",["Illidan[US]"] = "E2,Zenganiu",["远古海滩"] = "E1,天下小白",["安加萨"] = "E1,有点寂寞",["沙怒"] = "E1,傲月痕",["黑铁"] = "E1,玉狐前",["布鲁塔卢斯"] = "E1,毒灬药",["银月"] = "E1,骑墙等红杏",["阿迦玛甘"] = "E1,上半身的希望",["激流堡"] = "E1,思绪的水",["布莱克摩"] = "E1,口水多过浪花",["泰兰德"] = "E1,冰寒",["烈焰峰"] = "E1,阿蔓遇见苏儿",["冰风岗"] = "E1,霸王硬上弓丶",["奥达曼"] = "E1,Douloureux,Astalos",["雷霆之王"] = "E1,江山入画来",["???"] = "E1,快乐水;Ey,伊康美宝;Ex,反扒大队,起手开爆发,不必记得我;Ew,无奈",["银松森林"] = "E1,医用有机必过"};
local start = { year = 2018, month = 8, day = 3, hour = 7, min = 0, sec = 0 }
local now = time()
local player_shown = {}
U1Donators.players = player_shown

local topNamesOrder = {} for i, name in ipairs({ strsplit(',', topNames) }) do topNamesOrder[name] = i end

local realms, players, player_days = {}, {}, {}
local base64 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
local function ConvertDonators(day_realm_players)
    if not day_realm_players then return end
    for realm, allday in pairs(day_realm_players) do
        if not tContains(realms, realm) then table.insert(realms, realm) end
        for _, oneday in ipairs({strsplit(';', allday)}) do
            local date;
            for i, player in ipairs({strsplit(',', oneday)}) do
                if i == 1 then
                    local dec = (base64:find(player:sub(1,1)) - 1) * 64 + (base64:find(player:sub(2,2)) - 1)
                    local y, m, d = floor(dec/12/31)+2018, floor(dec/31)%12+1, dec%31+1
                    date = format("%04d-%02d-%02d", y, m, d)
                else
                    local fullname = player .. '-' .. (realm:gsub("%[.-%]", ""))
                    if not tContains(players, fullname) then
                        table.insert(players, fullname)
                        player_days[fullname] = date
                        player_shown[fullname] = topNamesOrder[fullname] or 0
                    end
                end
            end
        end
    end
end
ConvertDonators(recentDonators)
recentDonators = nil
ConvertDonators(U1.historyDonators)
U1.historyDonators = nil

table.sort(players, function(a, b)
    local order1 = topNamesOrder[a] or 9999
    local order2 = topNamesOrder[b] or 9999
    if order1 ~= order2 then return order1 < order2 end
    local _, r1 = strsplit("-", a)
    local _, r2 = strsplit("-", b)
    if r1 ~= r2 then
        if r1 == '???' then return false
        elseif r2 == '???' then return true
        else return r1 < r2; end
    end
    local day1 = player_days[a]
    local day2 = player_days[b]
    if day1 ~= day2 then return day1 > day2 end
    return a < b
end)
-- 排完序就不需要了
topNames = nil
topNamesOrder = nil

function U1Donators:CreateFrame()
    local f = WW:Frame("U1DonatorsFrame", UIParent, "BasicFrameTemplateWithInset"):Size(320, 500):TR(U1Frame, "TL", -10, 0):SetToplevel(1):SetFrameStrata("DIALOG")

    f.TitleText:SetText("爱不易的捐助者，谢谢你们")
    f.InsetBg:SetPoint("TOPLEFT", 4, -50)
    CoreUIMakeMovable(f)

    local scroll = CoreUICreateHybridStep1(nil, f(), nil, true, true, nil)
    WW(scroll):TL(f.InsetBg, 3, -3):BR(f.InsetBg, -2-21, 2):un() --:TL(3, -20)
    f.scroll = scroll

    local headn = TplColumnButton(f, nil, 22):SetWidth(108):SetText("玩家主角色"):SetScript("OnClick", noop):un()
    WW(headn:GetFontString()):SetFontHeight(14):un()
    local heads = TplColumnButton(f, nil, 22):SetWidth(80):SetText("服务器"):SetScript("OnClick", noop):un()
    WW(heads:GetFontString()):SetFontHeight(14):un()
    local headd = TplColumnButton(f, nil, 22):SetWidth(100):SetText("捐助时间"):SetScript("OnClick", noop):un()
    WW(headd:GetFontString()):SetFontHeight(14):un()
    CoreUIAnchor(f, "TOPLEFT", "TOPLEFT", 8, -30, "LEFT", "RIGHT", 0, 0, headn, heads, headd)

    local function fix_text_width(obj)
      obj:GetFontString():SetAllPoints()
    end

    scroll.creator = function(self, index, name)
      local row = WW(self.scrollChild):Button(name):LEFT():RIGHT():Size(0, 20)
      row:SetHighlightTexture([[Interface\QuestFrame\UI-QuestTitleHighlight]], 'ADD')

      row.name = row:Button():Size(100, 20):EnableMouse(false):SetButtonFont(U1FCenterTextMid):SetText(111):GetButtonText():SetJustifyH("Center"):up()
      row.server = row:Button():Size(75, 20):EnableMouse(false):SetButtonFont(U1FCenterTextTiny):SetText(111):GetButtonText():SetJustifyH("Right"):up()
      row.firstdate = row:Button():Size(90, 20):EnableMouse(false):SetButtonFont(U1FCenterTextTiny):SetText(333):GetButtonText():SetJustifyH("Right"):up()

      fix_text_width(row.name)
      fix_text_width(row.server)
      fix_text_width(row.firstdate)

      CoreUIAnchor(row, "LEFT", "LEFT", 5, 0, "LEFT", "RIGHT", 5, 0, row.name, row.server, row.firstdate)
      return row:un()
    end

    scroll.getNumFunc = function()
      return #players
    end

    scroll.updateFunc = function(self, row, index)
      row.index = index
      local name, realm = strsplit('-', players[index])
      row.name:SetText(name)
      row.server:SetText(realm)
      row.firstdate:SetText(player_days[players[index]]);
      --row.name:GetFontString():SetTextColor(1,1,1)
      --local date_fmt = '%Y/%m/%d'
      --local txt = date(date_fmt, time())
      --row.firstdate:SetText(txt)
    end

    CoreUICreateHybridStep2(scroll, 0, 0, "TOPLEFT", "TOPLEFT", 0)

    f:Hide();
    return f()
end

CoreOnEvent("PLAYER_ENTERING_WORLD", function()
    local origs = {}
    local addMessageReplace = function(self, msg, ...)
        msg = msg and tostring(msg) or ""
        local h, t, part1, fullname, part2 = msg:find("(\124Hplayer:(.-):.-:.-:.-\124h%[)(\124c.........-\124r%]\124h)")
        if fullname and ((U1Donators and U1Donators.players[fullname]) or (U1STAFF and U1STAFF[fullname])) then
            --local _, height = self:GetFont()
            msg = msg:sub(1,h-1) .. part1 .. '\124TInterface\\AddOns\\!!!163UI!!!\\Textures\\UI2-logo:' .. (13) .. '\124t' .. part2 .. msg:sub(t+1);
        end
        origs[self](self, msg, ...)
    end
    WithAllChatFrame(function(cf)
        if cf:GetID() == 2 then return end
        origs[cf] = cf.AddMessage
        cf.AddMessage = addMessageReplace
    end)
    return "remove"
end)