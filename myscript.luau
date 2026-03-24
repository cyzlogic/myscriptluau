--[[ Protected by Lua Guard ]]

(function(...) 
-- ================================================
--   LOGICS CLICKER  v5.0x1
--  REVAMPED RELEASE
-- ================================================

local Players          = game:GetService("\080\108\097\121\101\114\115")
local UserInputService = game:GetService("\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101")
local TweenService     = game:GetService("\084\119\101\101\110\083\101\114\118\105\099\101")

local _IIlIlIlIll   = Players.LocalPlayer
local _IlIIlIllIl = _IIlIlIlIll:WaitForChild("\080\108\097\121\101\114\071\117\105")

-- ============================================================
-- WORD BANK
-- ============================================================
local _lIlllllIIl = {
    "\099\097\116","\100\111\103","\115\117\110","\115\107\121","\109\097\112","\099\117\112","\098\111\120","\107\101\121","\105\099\101","\102\111\103","\103\101\109","\111\097\107","\115\101\097","\097\099\101","\097\115\104","\098\097\121","\098\117\100","\099\097\112","\100\101\110","\101\097\114","\102\097\110","\102\117\114","\103\097\112","\103\097\115","\104\097\121","\104\101\110","\104\117\098","\105\118\121","\106\097\109","\106\117\103","\108\097\112","\108\105\100","\108\105\112","\108\111\103","\108\111\116","\109\097\116","\109\111\098","\109\111\112","\110\097\112","\110\111\100","\111\119\108","\112\097\100","\112\105\103","\112\105\110","\112\111\100","\112\111\112","\112\111\116","\114\097\103","\114\097\109","\114\097\116","\114\097\121","\114\105\098","\114\111\100","\114\111\116","\114\117\103","\114\117\109","\114\117\110","\115\097\112","\115\097\119","\115\107\105","\115\111\098","\115\111\110","\115\112\097","\115\112\121","\116\097\098","\116\097\103","\116\097\110","\116\097\112","\116\097\114","\116\101\097","\116\105\110","\116\105\112","\116\111\101","\116\111\110","\116\111\121","\116\117\098","\116\117\103","\117\114\110","\118\097\116","\118\101\116","\119\097\103","\119\097\114","\119\097\120","\119\105\103","\119\105\110","\119\105\116","\121\097\107","\121\097\109","\121\101\119",
    "\099\097\107\101","\098\105\114\100","\102\105\114\101","\119\105\110\100","\109\111\111\110","\115\116\097\114","\119\097\118\101","\116\114\101\101","\102\105\115\104","\102\097\114\109","\100\111\111\114","\114\111\097\100","\104\105\108\108","\108\097\107\101","\114\097\105\110","\115\110\111\119","\103\111\108\100","\105\114\111\110","\119\111\108\102","\098\101\097\114","\100\101\101\114","\102\114\111\103","\104\097\119\107","\108\105\111\110","\114\111\115\101","\118\105\110\101","\100\117\115\116","\109\105\115\116","\103\108\111\119","\100\097\119\110","\100\117\115\107","\097\114\099\104","\098\101\097\109","\098\101\108\108","\098\111\108\116","\098\111\110\101","\098\111\111\109","\098\111\111\116","\098\117\108\098","\098\117\114\110","\098\117\122\122","\099\097\103\101","\099\097\108\109","\099\097\109\112","\099\097\114\100","\099\097\118\101","\099\101\108\108","\099\108\097\119","\099\108\097\121","\099\108\105\112","\099\108\117\098","\099\111\097\108","\099\111\097\116","\099\111\105\108","\099\111\105\110","\099\111\110\101","\099\111\111\108","\099\111\114\100","\099\111\114\101","\099\111\114\110","\099\114\097\098","\099\114\111\112","\099\114\111\119","\099\117\114\108","\099\117\116\101","\100\097\114\116","\100\097\115\104","\100\097\122\101","\100\101\097\108","\100\101\099\107","\100\101\110\116","\100\101\115\107","\100\105\118\101","\100\111\099\107","\100\111\109\101","\100\114\097\103","\100\114\097\119","\100\114\105\112","\100\114\111\112","\100\114\117\109","\100\117\099\107","\100\117\110\101","\101\097\114\108","\101\097\114\110","\101\100\103\101","\102\097\099\101","\102\097\099\116","\102\097\100\101","\102\097\109\101","\102\097\115\116","\102\097\116\101","\102\097\119\110","\102\101\097\114","\102\101\097\116","\102\101\101\100","\102\101\101\108","\102\101\114\110","\102\105\108\108","\102\105\108\109","\102\105\110\100","\102\105\114\109","\102\105\115\116","\102\108\097\103","\102\108\097\116","\102\108\097\119","\102\108\101\120","\102\108\105\112","\102\108\111\119","\102\111\097\109","\102\111\108\100","\102\111\110\100","\102\111\111\108","\102\111\114\109","\102\111\114\116","\102\111\119\108","\102\114\097\121","\102\114\101\101","\102\117\101\108","\102\117\108\108","\102\117\115\101","\103\097\105\110","\103\097\108\101","\103\097\109\101","\103\097\110\103","\103\097\116\101","\103\101\097\114","\103\101\114\109","\103\105\102\116","\103\108\097\100","\103\111\119\110","\103\114\097\109","\103\114\105\110","\103\114\105\112","\104\097\099\107","\104\097\105\108","\104\097\108\116","\104\097\110\100","\104\097\110\103","\104\097\114\100","\104\097\114\101","\104\097\114\109","\104\097\114\112","\104\097\115\104","\104\097\116\101","\104\097\122\101","\104\101\097\100","\104\101\097\112","\104\101\097\116","\104\101\101\108","\104\101\108\109","\104\101\108\112","\104\101\114\111","\104\105\100\101","\104\105\103\104","\104\105\107\101","\104\105\110\116","\104\105\114\101","\104\105\118\101","\104\111\108\100","\104\111\108\101","\104\111\109\101","\104\111\111\100","\104\111\111\107","\104\111\112\101","\104\111\114\110","\104\111\115\101","\104\111\119\108","\104\117\103\101","\104\117\110\116","\105\100\101\097","\105\100\108\101","\105\114\105\115","\105\115\108\101","\106\097\100\101","\106\101\115\116","\106\111\108\116","\106\117\109\112","\107\101\101\110","\107\105\099\107","\107\105\110\100","\107\105\110\103","\107\110\111\116","\108\097\099\107","\108\097\109\112","\108\097\110\100","\108\097\110\101","\108\097\116\101","\108\097\119\110","\108\101\097\100","\108\101\097\102","\108\101\097\110","\108\101\097\112","\108\101\110\100","\108\101\110\115","\108\105\102\101","\108\105\102\116","\108\105\109\101","\108\105\109\112","\108\105\110\101","\108\105\110\116","\108\105\118\101","\108\111\097\100","\108\111\097\110","\108\111\099\107","\108\111\102\116","\108\111\110\103","\108\111\111\107","\108\111\111\109","\108\111\111\112","\108\111\114\101","\108\111\117\100","\108\117\114\101","\108\117\115\104","\108\117\115\116","\109\097\105\100","\109\097\105\108","\109\097\105\110","\109\097\107\101","\109\097\110\101","\109\097\114\107","\109\097\115\104","\109\097\115\116","\109\101\108\116","\109\101\115\104","\109\105\108\100","\109\105\108\107","\109\105\108\108","\109\105\110\100","\109\105\110\101","\109\105\110\116","\109\111\097\116","\109\111\099\107","\109\111\108\100","\109\111\108\101","\109\111\110\107","\109\111\115\115","\109\111\118\101","\109\117\108\101","\110\097\105\108","\110\097\109\101","\110\101\097\114","\110\101\099\107","\110\101\101\100","\110\101\115\116","\110\101\120\116","\110\105\099\107","\110\111\111\107","\110\111\114\109","\110\111\116\101","\110\111\117\110","\111\097\116\104","\111\110\099\101","\111\112\101\110","\111\118\101\110","\112\097\099\107","\112\097\103\101","\112\097\105\114","\112\097\108\101","\112\097\108\109","\112\097\114\107","\112\097\114\116","\112\097\115\116","\112\097\116\104","\112\097\118\101","\112\101\097\107","\112\101\101\108","\112\101\101\114","\112\101\115\116","\112\105\099\107","\112\105\108\101","\112\105\110\101","\112\105\112\101","\112\108\097\110","\112\108\097\121","\112\108\117\103","\112\108\117\109","\112\111\110\100","\112\111\110\121","\112\111\111\108","\112\111\114\101","\112\111\114\107","\112\111\114\116","\112\111\115\101","\112\111\117\114","\112\114\101\121","\112\114\111\100","\112\117\108\108","\112\117\109\112","\112\117\114\101","\112\117\115\104","\114\097\099\101","\114\097\099\107","\114\097\103\101","\114\097\109\112","\114\097\110\107","\114\097\110\116","\114\101\097\112","\114\101\101\108","\114\101\101\102","\114\101\105\110","\114\101\108\121","\114\101\110\116","\114\101\115\116","\114\105\099\101","\114\105\099\104","\114\105\100\101","\114\105\110\103","\114\105\111\116","\114\105\115\101","\114\105\115\107","\114\111\097\109","\114\111\097\114","\114\111\099\107","\114\111\108\101","\114\111\108\108","\114\111\111\102","\114\111\111\109","\114\111\111\116","\114\111\112\101","\114\111\118\101","\114\117\105\110","\114\117\108\101","\114\117\115\104","\114\117\115\116","\115\097\103\101","\115\097\105\108","\115\097\108\116","\115\097\109\101","\115\097\110\100","\115\097\110\101","\115\097\118\101","\115\101\097\108","\115\101\101\100","\115\101\108\108","\115\101\110\100","\115\104\101\100","\115\104\105\112","\115\104\111\112","\115\104\111\119","\115\105\108\107","\115\105\110\103","\115\105\110\107","\115\105\116\101","\115\105\122\101","\115\108\097\109","\115\108\105\109","\115\108\105\112","\115\108\111\116","\115\108\111\119","\115\110\097\112","\115\111\099\107","\115\111\105\108","\115\111\110\103","\115\111\111\116","\115\111\117\108","\115\111\117\112","\115\112\097\110","\115\112\105\110","\115\112\111\116","\115\112\117\114","\115\116\101\109","\115\116\101\112","\115\116\101\119","\115\116\105\114","\115\117\105\116","\115\119\097\112","\115\119\097\121","\115\119\105\109","\116\097\105\108","\116\097\108\101","\116\097\108\108","\116\097\109\101","\116\097\110\107","\116\097\115\107","\116\101\108\108","\116\101\110\116","\116\101\115\116","\116\105\099\107","\116\105\100\101","\116\105\108\116","\116\105\109\101","\116\105\114\101","\116\111\097\100","\116\111\108\108","\116\111\110\101","\116\111\111\108","\116\111\115\115","\116\111\117\114","\116\111\119\110","\116\114\097\112","\116\114\105\109","\116\114\105\111","\116\114\105\112","\116\114\117\101","\116\117\099\107","\116\117\110\101","\116\117\114\102","\116\117\114\110","\116\119\105\103","\116\119\105\110","\116\121\112\101","\117\110\100\111","\117\110\105\116","\117\114\103\101","\118\097\108\101","\118\097\114\121","\118\101\105\108","\118\101\105\110","\118\101\110\116","\118\101\115\116","\118\105\101\119","\118\105\110\101","\118\111\105\100","\118\111\116\101","\119\097\100\101","\119\097\103\101","\119\097\107\101","\119\097\108\107","\119\097\108\108","\119\097\110\100","\119\097\114\100","\119\097\114\109","\119\097\115\112","\119\105\100\101","\119\105\108\108","\119\105\115\112","\119\111\107\101","\119\111\114\100","\119\111\114\109","\119\114\101\110","\121\101\108\108","\122\101\097\108","\122\101\115\116","\122\105\110\099","\122\111\110\101",
    "\097\112\112\108\101","\098\114\097\118\101","\099\108\111\117\100","\100\097\110\099\101","\101\097\103\108\101","\102\108\097\109\101","\103\114\097\099\101","\104\101\097\114\116","\105\109\097\103\101","\106\101\119\101\108","\107\110\105\102\101","\108\097\110\099\101","\109\097\103\105\099","\110\105\103\104\116","\111\099\101\097\110","\112\101\097\099\101","\113\117\101\101\110","\114\105\118\101\114","\115\116\111\110\101","\116\105\103\101\114","\118\111\105\099\101","\119\097\116\101\114","\121\097\099\104\116","\122\101\098\114\097","\097\098\105\100\101","\098\108\097\122\101","\099\114\105\115\112","\101\097\114\108\121","\102\097\098\108\101","\103\105\097\110\116","\104\097\112\112\121","\105\110\110\101\114","\106\111\107\101\114","\107\110\101\101\108","\108\101\109\111\110","\109\097\112\108\101","\110\117\114\115\101","\111\102\102\101\114","\112\105\097\110\111","\114\101\097\099\104","\115\097\118\111\114","\116\097\115\116\101","\117\110\099\108\101","\118\097\112\111\114","\119\097\108\116\122","\097\099\111\114\110","\098\108\111\111\109","\099\104\097\110\116","\100\119\097\114\102","\101\109\098\101\114","\102\108\105\110\116","\103\108\111\111\109","\104\097\115\116\121","\105\100\101\097\108","\106\111\108\108\121","\107\097\114\109\097","\108\117\115\116\121","\109\097\110\111\114","\110\101\114\118\101","\111\097\107\101\110","\112\114\105\115\109","\114\101\108\097\121","\115\099\111\114\110","\116\104\111\114\110","\118\105\118\105\100","\119\111\118\101\110","\098\101\097\114\100","\099\104\101\115\115","\101\108\098\111\119","\102\114\097\105\108","\103\117\105\115\101","\104\097\115\116\101","\105\110\103\111\116","\106\111\117\115\116","\107\110\097\118\101","\108\101\101\099\104","\109\097\114\115\104","\110\111\098\108\101","\111\097\115\105\115","\112\101\114\105\108","\114\097\118\101\110","\115\099\111\117\116","\118\105\111\108\097","\119\114\097\116\104","\098\108\117\110\116","\100\117\110\099\101","\101\108\101\103\121","\102\114\111\116\104","\103\114\111\097\110","\104\111\117\110\100","\105\114\097\116\101","\107\110\097\099\107","\108\105\098\101\108","\109\097\110\103\111","\110\097\105\118\101","\111\108\105\118\101","\112\097\114\099\104","\114\097\115\112\121","\115\099\097\108\100","\116\097\108\111\110","\117\110\105\116\121","\097\114\098\111\114","\098\105\114\099\104","\099\105\100\101\114","\100\111\119\110\121","\101\110\118\111\121","\102\108\117\109\101","\103\114\105\109\101","\105\114\111\110\121","\106\101\108\108\121","\107\105\111\115\107","\108\105\116\104\101","\109\101\108\111\110","\111\120\105\100\101","\112\101\111\110\121","\114\111\100\101\111","\115\116\097\108\101","\116\097\112\105\114","\118\101\114\118\101","\097\098\098\101\121","\098\108\105\115\115","\099\104\097\102\101","\100\114\111\108\108","\101\097\115\101\108","\103\117\097\118\097","\104\097\118\111\099","\105\099\105\110\103","\108\101\100\103\101","\109\111\111\115\101","\110\117\116\116\121","\112\097\110\115\121","\115\099\111\110\101","\118\105\120\101\110","\097\100\111\114\110","\098\108\097\110\100","\099\105\110\099\104","\100\111\119\101\108","\101\118\111\107\101","\103\114\117\102\102","\104\117\115\107\121","\105\110\115\101\116","\107\110\111\108\108","\108\101\097\112\116","\109\117\114\107\121","\111\110\115\101\116","\113\117\105\108\108","\114\105\118\101\116","\115\107\117\108\107","\116\101\109\112\111","\117\110\099\117\116","\118\097\108\105\100","\097\110\103\101\114","\098\105\115\111\110","\099\101\100\097\114","\100\101\108\116\097","\102\101\108\111\110","\103\110\111\109\101","\104\097\122\101\108","\108\097\112\101\108","\109\111\099\104\097","\110\121\109\112\104","\111\114\098\105\116","\112\108\117\109\098","\114\111\098\105\110","\115\116\111\109\112","\116\111\119\101\108","\117\115\104\101\114","\118\105\099\097\114",
    "\098\114\105\100\103\101","\099\097\115\116\108\101","\100\101\115\101\114\116","\102\108\111\119\101\114","\102\111\114\101\115\116","\103\097\114\100\101\110","\104\097\114\098\111\114","\105\115\108\097\110\100","\106\117\110\103\108\101","\107\110\105\103\104\116","\108\111\099\107\101\116","\109\101\097\100\111\119","\110\101\099\116\097\114","\111\121\115\116\101\114","\112\097\108\097\099\101","\113\117\097\114\114\121","\114\097\098\098\105\116","\115\105\108\118\101\114","\116\101\109\112\108\101","\116\117\110\110\101\108","\118\097\108\108\101\121","\119\097\108\110\117\116","\122\105\112\112\101\114","\097\110\105\109\097\108","\098\097\115\107\101\116","\099\097\110\100\108\101","\100\097\110\103\101\114","\101\110\103\105\110\101","\102\097\098\114\105\099","\103\111\098\108\105\110","\104\097\109\109\101\114","\105\110\115\101\099\116","\107\105\116\116\101\110","\109\105\114\114\111\114","\110\101\101\100\108\101","\111\114\097\110\103\101","\112\097\114\114\111\116","\113\117\097\114\116\122","\114\097\100\105\115\104","\115\097\100\100\108\101","\116\105\109\098\101\114","\117\114\099\104\105\110","\118\101\108\118\101\116","\119\105\099\107\101\114","\097\098\115\111\114\098","\098\111\116\116\108\101","\099\111\098\097\108\116","\100\114\097\103\111\110","\101\109\101\114\103\101","\102\097\108\108\111\119","\103\108\105\100\101\114","\104\117\110\116\101\114","\105\103\110\105\116\101","\106\101\115\116\101\114","\107\101\114\110\101\108","\109\117\102\102\105\110","\110\111\111\100\108\101","\112\101\112\112\101\114","\114\105\100\100\108\101","\115\116\111\107\101\114","\116\117\114\110\105\112","\119\105\122\097\114\100","\097\114\099\116\105\099","\098\111\114\114\111\119","\099\111\112\112\101\114","\100\097\103\103\101\114","\101\109\098\097\114\107","\102\097\108\099\111\110","\103\114\097\118\101\108","\104\111\098\098\105\116","\106\117\103\103\108\101","\107\101\116\116\108\101","\108\117\109\098\101\114","\109\111\114\116\097\114","\110\097\112\107\105\110","\112\101\098\098\108\101","\114\101\102\105\110\101","\115\112\111\110\103\101","\116\097\110\103\108\101","\099\111\098\098\108\101","\100\097\114\107\101\110","\101\118\111\108\118\101","\105\110\118\097\100\101","\106\097\110\103\108\101","\107\105\110\100\108\121","\109\101\108\108\111\119","\111\098\108\105\103\101","\112\117\114\115\117\101","\115\099\097\114\097\098","\116\104\111\114\110\121","\117\114\103\101\110\116","\118\111\114\116\101\120","\119\111\109\098\097\116","\097\098\114\117\112\116","\099\097\118\101\114\110","\101\097\114\116\104\121","\102\097\116\104\111\109","\104\101\097\114\116\104","\106\111\121\102\117\108","\107\105\110\103\108\121","\108\097\103\111\111\110","\109\097\108\108\111\119","\110\105\109\098\108\101","\112\105\108\108\097\114","\113\117\101\110\099\104","\114\097\102\116\101\114","\116\117\114\098\097\110","\117\112\108\105\102\116","\118\105\115\097\103\101",
    "\098\108\097\110\107\101\116","\099\097\098\105\110\101\116","\100\105\097\109\111\110\100","\101\108\101\109\101\110\116","\102\097\110\116\097\115\121","\103\097\116\101\119\097\121","\104\097\117\110\116\101\100","\105\099\101\098\101\114\103","\106\097\115\109\105\110\101","\107\105\110\103\100\111\109","\108\097\110\116\101\114\110","\109\105\120\116\117\114\101","\111\114\098\105\116\097\108","\112\101\110\115\105\111\110","\113\117\097\110\116\117\109","\114\097\105\110\098\111\119","\115\104\101\108\116\101\114","\116\097\098\108\101\097\117","\118\097\114\110\105\115\104","\119\097\114\114\105\111\114","\097\110\099\105\101\110\116","\098\111\117\108\100\101\114","\099\114\121\115\116\097\108","\100\111\114\109\097\110\116","\101\115\115\101\110\099\101","\102\101\097\116\104\101\114","\103\108\097\099\105\101\114","\104\111\114\105\122\111\110","\105\110\115\105\103\104\116","\106\111\117\114\110\101\121","\107\110\111\119\105\110\103","\108\101\111\112\097\114\100","\110\111\116\097\098\108\121","\111\117\116\112\111\115\116","\112\105\108\103\114\105\109","\114\101\115\111\108\118\101","\115\101\114\112\101\110\116","\116\097\099\116\105\099\115","\117\110\101\097\114\116\104","\118\101\108\118\101\116\121","\097\108\099\104\101\109\121","\098\114\101\119\101\114\121","\099\101\105\108\105\110\103","\100\117\114\097\098\108\101","\101\099\108\105\112\115\101","\102\117\114\110\097\099\101","\103\101\110\117\105\110\101","\104\097\114\118\101\115\116","\109\105\110\101\114\097\108","\110\111\115\116\114\105\108","\111\098\115\099\117\114\101","\112\101\114\102\101\099\116","\114\097\112\105\100\108\121","\115\105\108\101\110\099\101","\116\104\117\110\100\101\114","\117\110\105\102\111\114\109","\118\101\110\116\117\114\101","\119\101\115\116\101\114\110","\097\098\121\115\109\097\108","\098\111\114\111\117\103\104","\099\097\110\116\101\101\110","\100\101\102\105\097\110\116","\101\120\104\105\098\105\116","\102\114\101\115\104\101\110","\103\114\105\122\122\108\121","\104\111\115\116\105\108\101","\105\109\112\117\108\115\101","\106\097\118\101\108\105\110","\107\101\115\116\114\101\108","\108\105\109\105\116\101\100","\109\105\110\100\102\117\108","\110\097\116\117\114\097\108","\111\117\116\108\111\111\107","\112\097\115\116\117\114\101","\113\117\105\101\116\108\121","\114\101\115\117\109\101\100","\115\117\098\108\105\109\101","\116\119\105\115\116\101\100","\117\112\114\105\103\104\116","\118\105\098\114\097\110\116",
}

local _lIlIIIlIII  = {"\048","\049","\050","\051","\052","\053","\054","\055","\056","\057"}
local _IllllIIllI = {}
for i=0x61,0x7A do _IllllIIllI[#_IllllIIllI+0x1]=string.char(i) end

local function _IlllIlIIll(t) return t[math.random(0x1,#t)] end

-- ============================================================
-- SETTINGS
-- ============================================================
local _IIlIlllIIl = { Mode="\119\111\114\100", IncludeNums=true, PressEnter=false, LetterCount=0x6, Keybind=Enum.KeyCode.F5 }

local function _lIIIIIIlII()
    local _IIIlllIlII=_IlIIlIllIl:FindFirstChild("\076\067\095\067\084\082")
    if not _IIIlllIlII then _IIIlllIlII=Instance.new("\073\110\116\086\097\108\117\101");_IIIlllIlII.Name="\076\067\095\067\084\082";_IIIlllIlII.Value=0x0;_IIIlllIlII.Parent=_IlIIlIllIl end
    return _IIIlllIlII
end
local _llIIIIllll=_lIIIIIIlII(); local _IllllIIlll=0x0

local function _IlllIlIlIl()
    if _IIlIlllIIl.Mode~="\114\097\110\100\111\109" then
        local _lIIlIllllI=_IIlIlllIIl.LetterCount; local _IlIlIIlIII={}
        for _,w in ipairs(_lIlllllIIl) do if math.abs(#w-_lIIlIllllI)<=0x1 then _IlIlIIlIII[#_IlIlIIlIII+0x1]=w end end
        if #_IlIlIIlIII==0x0 then _IlIlIIlIII=_lIlllllIIl end
        local _IllllIIlll=_IlllIlIIll(_IlIlIIlIII)
        return _IIlIlllIIl.IncludeNums and (_IllllIIlll..pick(_lIlIIIlIII)) or _IllllIIlll
    else
        local _IlIlIIlIII={table.unpack(_IllllIIllI)}
        if _IIlIlllIIl.IncludeNums then for _,_IIIlllIlII in ipairs(_lIlIIIlIII) do _IlIlIIlIII[#_IlIlIIlIII+0x1]=_IIIlllIlII end end
        local _llllllllII={}; for i=0x1,_IIlIlllIIl.LetterCount do _llllllllII[#_llllllllII+0x1]=_IlllIlIIll(_IlIlIIlIII) end
        return table.concat(_llllllllII)
    end
end

local function _lIllllIIII(tb,_llllIllIlI)
    if not tb or not tb.Parent then return end
    tb:CaptureFocus(); task.wait(0.05); tb.Text=_llllIllIlI; task.wait(0.05); tb:ReleaseFocus(_IIlIlllIIl.PressEnter)
end

-- ============================================================
-- THEME  (subtle neon via UIStroke + tinted colours)
-- ============================================================
local _lIIIIIllIl = {
    bg       = Color3.fromRGB(0x7,   0x5,  0xF),
    panel    = Color3.fromRGB(0xD,   0x9,  0x1A),
    card     = Color3.fromRGB(0x13,  0xE,  0x24),
    cardB    = Color3.fromRGB(0x19,  0x13,  0x32),
    cardC    = Color3.fromRGB(0x20,  0x18,  0x3E),
    a1       = Color3.fromRGB(0x73,  0x1A, 0xCD),
    a2       = Color3.fromRGB(0x9B,  0x48, 0xF5),
    a3       = Color3.fromRGB(0xC6, 0x94, 0xFF),
    a4       = Color3.fromRGB(0xE1, 0xCD, 0xFF),
    neon     = Color3.fromRGB(0xB2, 0x64, 0xFF),   -- neon purple
    neonB    = Color3.fromRGB(0x82,  0x32, 0xE6),   -- darker neon
    tabOn    = Color3.fromRGB(0x58,   0x14, 0x9E),
    tabOff   = Color3.fromRGB(0xE,   0xA,  0x1A),
    _llllIllIlI     = Color3.fromRGB(0xDC, 0xD2, 0xFA),
    sub      = Color3.fromRGB(0x6C,  0x58, 0x96),
    muted    = Color3.fromRGB(0x3A,   0x2C,  0x5A),
    green    = Color3.fromRGB(0x41,  0xCD, 0x7D),
    red      = Color3.fromRGB(0xD2,  0x3A,  0x46),
    yellow   = Color3.fromRGB(0xFA, 0xCA,  0x48),
    border   = Color3.fromRGB(0x32,   0x16, 0x66),
    borderH  = Color3.fromRGB(0x8C,  0x48, 0xDC),
    gold     = Color3.fromRGB(0xFF, 0xC6,  0x4C),
    goldDim  = Color3.fromRGB(0x6E,  0x50,  0x10),
    discord  = Color3.fromRGB(0x58,  0x65, 0xF2),
    discordD = Color3.fromRGB(0x28,   0x2E, 0x78),
}

local function _IlIllllIll(o,p,t,_lIlIlIIlII,_lllIIlIIIl)
    TweenService:Create(o,TweenInfo.new(t or 0.18,_lIlIlIIlII or Enum.EasingStyle.Quad,_lllIIlIIIl or Enum.EasingDirection.Out),p):Play()
end

-- Neon glow helper: adds a glowing UIStroke
local function _IlIlIlllll(parent, col, thickness)
    local _lIlIlIIlII=Instance.new("\085\073\083\116\114\111\107\101",parent)
    _lIlIlIIlII.Color=col or _lIIIIIllIl.neon; _lIlIlIIlII.Thickness=thickness or 1.5
    -- Roblox UIStroke doesn't blur but we layer two strokes via a wrapper
    return _lIlIlIIlII
end

-- ============================================================
-- DESTROY OLD
-- ============================================================
if _IlIIlIllIl:FindFirstChild("\076\067\095\071\085\073") then _IlIIlIllIl.LC_GUI:Destroy() end

local _IIllllIlll=Instance.new("\083\099\114\101\101\110\071\117\105")
_IIllllIlll.Name="\076\067\095\071\085\073"; _IIllllIlll.ResetOnSpawn=false; _IIllllIlll.ZIndexBehavior=Enum.ZIndexBehavior.Sibling; _IIllllIlll.Parent=_IlIIlIllIl

-- ============================================================
-- SPLASH SCREEN
-- ============================================================
local _llIIIllIlI=Instance.new("\070\114\097\109\101",_IIllllIlll)
_llIIIllIlI.Size=UDim2.new(0x1,0x0,0x1,0x0); _llIIIllIlI.BackgroundColor3=Color3.fromRGB(0x4,0x2,0xA)
_llIIIllIlI.BorderSizePixel=0x0; _llIIIllIlI.ZIndex=0x64

-- Glow circles
local function _IllIIllIIl(_llllllllII,col,trans)
    local _IIIllIIIlI=Instance.new("\070\114\097\109\101",_llIIIllIlI)
    _IIIllIIIlI.Size=UDim2.new(0x0,_llllllllII*0x2,0x0,_llllllllII*0x2); _IIIllIIIlI.Position=UDim2.new(0.5,-_llllllllII,0.5,-_llllllllII)
    _IIIllIIIlI.BackgroundColor3=col; _IIIllIIIlI.BackgroundTransparency=trans; _IIIllIIIlI.BorderSizePixel=0x0; _IIIllIIIlI.ZIndex=0x64
    Instance.new("\085\073\067\111\114\110\101\114",_IIIllIIIlI).CornerRadius=UDim.new(0x1,0x0)
    return _IIIllIIIlI
end
local _llIllIIIII=_IllIIllIIl(0xF0,Color3.fromRGB(0x46,0xA,0x96),0.88)
local _IIIIllIIll=_IllIIllIIl(0xA0,Color3.fromRGB(0x64,0x14,0xBE),0.80)
local _lIIIlIlllI=_IllIIllIIl(0x5A, Color3.fromRGB(0x91,0x37,0xEB),0.68)

-- Neon _IIllllIIIl _IIIIIIIIIl _llIIIllIlI
local _IIllllIIIl=Instance.new("\070\114\097\109\101",_llIIIllIlI)
_IIllllIIIl.Size=UDim2.new(0x0,0xC8,0x0,0xC8); _IIllllIIIl.Position=UDim2.new(0.5,-0x64,0.5,-0x64)
_IIllllIIIl.BackgroundTransparency=0x1; _IIllllIIIl.BorderSizePixel=0x0; _IIllllIIIl.ZIndex=0x65
Instance.new("\085\073\067\111\114\110\101\114",_IIllllIIIl).CornerRadius=UDim.new(0x1,0x0)
local _lIIlllIllI=Instance.new("\085\073\083\116\114\111\107\101",_IIllllIIIl); _lIIlllIllI.Color=_lIIIIIllIl.neon; _lIIlllIllI.Thickness=0x2; _lIIlllIllI.Transparency=0x1
Instance.new("\085\073\067\111\114\110\101\114",_IIllllIIIl).CornerRadius=UDim.new(0x1,0x0)

local _IIIIIIlIll=Instance.new("\084\101\120\116\076\097\098\101\108",_llIIIllIlI)
_IIIIIIlIll.Text="\076\079\071\073\067\083"; _IIIIIIlIll.Font=Enum.Font.GothamBold; _IIIIIIlIll.TextSize=0x38
_IIIIIIlIll.TextColor3=_lIIIIIllIl.a3; _IIIIIIlIll.BackgroundTransparency=0x1; _IIIIIIlIll.TextTransparency=0x1
_IIIIIIlIll.Size=UDim2.new(0x0,0x190,0x0,0x48); _IIIIIIlIll.Position=UDim2.new(0.5,-0xC8,0.5,-0x40)
_IIIIIIlIll.TextXAlignment=Enum.TextXAlignment.Center; _IIIIIIlIll.ZIndex=0x66

local _lIIIllIlll=Instance.new("\084\101\120\116\076\097\098\101\108",_llIIIllIlI)
_lIIIllIlll.Text="\067\076\073\067\075\069\082"; _lIIIllIlll.Font=Enum.Font.Gotham; _lIIIllIlll.TextSize=0x14
_lIIIllIlll.TextColor3=Color3.fromRGB(0x82,0x5A,0xBE); _lIIIllIlll.BackgroundTransparency=0x1; _lIIIllIlll.TextTransparency=0x1
_lIIIllIlll.Size=UDim2.new(0x0,0x190,0x0,0x1E); _lIIIllIlll.Position=UDim2.new(0.5,-0xC8,0.5,0xE)
_lIIIllIlll.TextXAlignment=Enum.TextXAlignment.Center; _lIIIllIlll.ZIndex=0x66

local _lIllIIIIII=Instance.new("\084\101\120\116\076\097\098\101\108",_llIIIllIlI)
_lIllIIIIII.Text="\118\053\046\049"; _lIllIIIIII.Font=Enum.Font.GothamBold; _lIllIIIIII.TextSize=0xC
_lIllIIIIII.TextColor3=Color3.fromRGB(0x55,0x3A,0x82); _lIllIIIIII.BackgroundTransparency=0x1; _lIllIIIIII.TextTransparency=0x1
_lIllIIIIII.Size=UDim2.new(0x0,0x190,0x0,0x16); _lIllIIIIII.Position=UDim2.new(0.5,-0xC8,0.5,0x34)
_lIllIIIIII.TextXAlignment=Enum.TextXAlignment.Center; _lIllIIIIII.ZIndex=0x66

-- Loading bar
local _IIllIllIIl=Instance.new("\070\114\097\109\101",_llIIIllIlI); _IIllIllIIl.Size=UDim2.new(0x0,0xDC,0x0,0x3)
_IIllIllIIl.Position=UDim2.new(0.5,-0x6E,0.5,0x5A); _IIllIllIIl.BackgroundColor3=Color3.fromRGB(0x1E,0x12,0x3C)
_IIllIllIIl.BackgroundTransparency=0x1; _IIllIllIIl.BorderSizePixel=0x0; _IIllIllIIl.ZIndex=0x66
Instance.new("\085\073\067\111\114\110\101\114",_IIllIllIIl).CornerRadius=UDim.new(0x1,0x0)
local _IIIIlllllI=Instance.new("\070\114\097\109\101",_IIllIllIIl); _IIIIlllllI.Size=UDim2.new(0x0,0x0,0x1,0x0)
_IIIIlllllI.BackgroundColor3=_lIIIIIllIl.neon; _IIIIlllllI.BorderSizePixel=0x0; _IIIIlllllI.ZIndex=0x67
Instance.new("\085\073\067\111\114\110\101\114",_IIIIlllllI).CornerRadius=UDim.new(0x1,0x0)

-- ============================================================
-- MAIN WINDOW
-- ============================================================
local _llIIIIlIll,H=0x1EC,0x23E; local _IIIlIIIllI=0x32; local _IllIlIIlll=0x26; local _IlllllllIl=0xA

local _IIlIlllIlI=Instance.new("\070\114\097\109\101",_IIllllIlll)
_IIlIlllIlI.Size=UDim2.new(0x0,_llIIIIlIll,0x0,H); _IIlIlllIlI.Position=UDim2.new(0.5,-_llIIIIlIll/0x2,0.5,-H/0x2)
_IIlIlllIlI.BackgroundColor3=_lIIIIIllIl.bg; _IIlIlllIlI.BorderSizePixel=0x0
_IIlIlllIlI.Active=true; _IIlIlllIlI.Draggable=true; _IIlIlllIlI.ClipsDescendants=true; _IIlIlllIlI.Visible=false
Instance.new("\085\073\067\111\114\110\101\114",_IIlIlllIlI).CornerRadius=UDim.new(0x0,0xD)
-- Neon border _IIIIIIIIIl window
local _lIllIlIIII=Instance.new("\085\073\083\116\114\111\107\101",_IIlIlllIlI); _lIllIlIIII.Color=_lIIIIIllIl.neonB; _lIllIlIIII.Thickness=1.5

-- Resize
local _llIllIlIlI,MAX_W,MIN_H,MAX_H=0x1A4,0x2BC,0x1E0,0x2E4
local _IIllIIIIIl=Instance.new("\084\101\120\116\066\117\116\116\111\110",_IIlIlllIlI); _IIllIIIIIl.Size=UDim2.new(0x0,0x12,0x0,0x12); _IIllIIIIIl.Position=UDim2.new(0x1,-0x12,0x1,-0x12)
_IIllIIIIIl.BackgroundColor3=_lIIIIIllIl.a1; _IIllIIIIIl.Text=""; _IIllIIIIIl.BorderSizePixel=0x0; _IIllIIIIIl.ZIndex=0x14
Instance.new("\085\073\067\111\114\110\101\114",_IIllIIIIIl).CornerRadius=UDim.new(0x0,0x4)
local _IlIlIllIIl=Instance.new("\084\101\120\116\076\097\098\101\108",_IIllIIIIIl); _IlIlIllIIl.Text="\047\047"; _IlIlIllIIl.Font=Enum.Font.GothamBold; _IlIlIllIIl.TextSize=0x9
_IlIlIllIIl.TextColor3=_lIIIIIllIl.a4; _IlIlIllIIl.BackgroundTransparency=0x1; _IlIlIllIIl.Size=UDim2.new(0x1,0x0,0x1,0x0); _IlIlIllIIl.TextXAlignment=Enum.TextXAlignment.Center
local _lIlIIllIIl=false; local _IIIIlIlIlI,rSize=Vector2.new(),Vector2.new()
_IIllIIIIIl.MouseButton1Down:Connect(function() _lIlIIllIIl=true; _IIIIlIlIlI=UserInputService:GetMouseLocation(); rSize=Vector2.new(_IIlIlllIlI.AbsoluteSize.X,_IIlIlllIlI.AbsoluteSize.Y) end)
UserInputService.InputChanged:Connect(function(i)
    if _lIlIIllIIl and i.UserInputType==Enum.UserInputType.MouseMovement then
        local _lIllllIIll=UserInputService:GetMouseLocation(); local _lllIIlIIIl=_lIllllIIll-_IIIIlIlIlI
        _llIIIIlIll=math.clamp(rSize.X+_lllIIlIIIl.X,_llIllIlIlI,MAX_W); H=math.clamp(rSize.Y+_lllIIlIIIl.Y,MIN_H,MAX_H)
        _IIlIlllIlI.Size=UDim2.new(0x0,_llIIIIlIll,0x0,H)
    end
end)
UserInputService.InputEnded:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 then _lIlIIllIIl=false end end)

-- ============================================================
-- TITLE BAR
-- ============================================================
local _IlIlIIlIII=Instance.new("\070\114\097\109\101",_IIlIlllIlI)
_IlIlIIlIII.Size=UDim2.new(0x1,0x0,0x0,_IIIlIIIllI); _IlIlIIlIII.BackgroundColor3=_lIIIIIllIl.panel; _IlIlIIlIII.BorderSizePixel=0x0; _IlIlIIlIII.ZIndex=0x5
Instance.new("\085\073\067\111\114\110\101\114",_IlIlIIlIII).CornerRadius=UDim.new(0x0,0xD)
local _lIIIIllIll=Instance.new("\070\114\097\109\101",_IlIlIIlIII); _lIIIIllIll.Size=UDim2.new(0x1,0x0,0.5,0x0)
_lIIIIllIll.Position=UDim2.new(0x0,0x0,0.5,0x0); _lIIIIllIll.BackgroundColor3=_lIIIIIllIl.panel; _lIIIIllIll.BorderSizePixel=0x0

-- Neon _IlIIIlllIl mark
local _IlIIIlllIl=Instance.new("\070\114\097\109\101",_IlIlIIlIII); _IlIIIlllIl.Size=UDim2.new(0x0,0xD,0x0,0xD)
_IlIIIlllIl.Position=UDim2.new(0x0,0xE,0.5,-0x6); _IlIIIlllIl.BackgroundColor3=_lIIIIIllIl.neon; _IlIIIlllIl.BorderSizePixel=0x0
Instance.new("\085\073\067\111\114\110\101\114",_IlIIIlllIl).CornerRadius=UDim.new(0x0,0x3)
local _IIIlIIIlll=Instance.new("\070\114\097\109\101",_IlIIIlllIl); _IIIlIIIlll.Size=UDim2.new(0x1,0x0,0x0,0x4)
_IIIlIIIlll.Position=UDim2.new(0x0,0x0,0x0,0x5); _IIIlIIIlll.BackgroundColor3=_lIIIIIllIl.a3; _IIIlIIIlll.BorderSizePixel=0x0
Instance.new("\085\073\067\111\114\110\101\114",_IIIlIIIlll).CornerRadius=UDim.new(0x0,0x2)

local _IIllIlIlIl=Instance.new("\084\101\120\116\076\097\098\101\108",_IlIlIIlIII); _IIllIlIlIl.Text="\076\079\071\073\067\083\032\067\076\073\067\075\069\082"
_IIllIlIlIl.Font=Enum.Font.GothamBold; _IIllIlIlIl.TextSize=0xF; _IIllIlIlIl.TextColor3=_lIIIIIllIl.a3
_IIllIlIlIl.BackgroundTransparency=0x1; _IIllIlIlIl.Size=UDim2.new(0x0,0xC8,0x1,0x0)
_IIllIlIlIl.Position=UDim2.new(0x0,0x21,0x0,0x0); _IIllIlIlIl.TextXAlignment=Enum.TextXAlignment.Left

local _IIlIlIlIlI=Instance.new("\070\114\097\109\101",_IlIlIIlIII); _IIlIlIlIlI.Size=UDim2.new(0x0,0x26,0x0,0x12)
_IIlIlIlIlI.Position=UDim2.new(0x0,0xC4,0.5,-0x9); _IIlIlIlIlI.BackgroundColor3=Color3.fromRGB(0x1C,0xF,0x38); _IIlIlIlIlI.BorderSizePixel=0x0
Instance.new("\085\073\067\111\114\110\101\114",_IIlIlIlIlI).CornerRadius=UDim.new(0x0,0x5)
_IlIlIlllll(_IIlIlIlIlI, _lIIIIIllIl.neonB, 0x1)
local _llllIlIlII=Instance.new("\084\101\120\116\076\097\098\101\108",_IIlIlIlIlI); _llllIlIlII.Text="\118\053\046\049"
_llllIlIlII.Font=Enum.Font.GothamBold; _llllIlIlII.TextSize=0x9; _llllIlIlII.TextColor3=_lIIIIIllIl.neon
_llllIlIlII.BackgroundTransparency=0x1; _llllIlIlII.Size=UDim2.new(0x1,0x0,0x1,0x0); _llllIlIlII.TextXAlignment=Enum.TextXAlignment.Center

-- Neon _IllIIIllll glow stripe
local _IIIIlIIlIl=Instance.new("\070\114\097\109\101",_IlIlIIlIII)
_IIIIlIIlIl.Size=UDim2.new(0.45,0x0,0x0,0x2); _IIIIlIIlIl.Position=UDim2.new(0.275,0x0,0x0,0x0)
_IIIIlIIlIl.BackgroundColor3=_lIIIIIllIl.neon; _IIIIlIIlIl.BorderSizePixel=0x0
Instance.new("\085\073\067\111\114\110\101\114",_IIIIlIIlIl).CornerRadius=UDim.new(0x1,0x0)

-- Controls
local function _IIIlIlIIII(xOff,bg,sym,cb)
    local _llllIIllIl=Instance.new("\084\101\120\116\066\117\116\116\111\110",_IlIlIIlIII)
    _llllIIllIl.Size=UDim2.new(0x0,0x18,0x0,0x18); _llllIIllIl.Position=UDim2.new(0x1,xOff,0.5,-0xC)
    _llllIIllIl.BackgroundColor3=bg; _llllIIllIl.Text=sym; _llllIIllIl.Font=Enum.Font.GothamBold
    _llllIIllIl.TextSize=0xC; _llllIIllIl.TextColor3=Color3.new(0x1,0x1,0x1); _llllIIllIl.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_llllIIllIl).CornerRadius=UDim.new(0x1,0x0)
    _llllIIllIl.MouseButton1Click:Connect(cb)
    _llllIIllIl.MouseEnter:Connect(function() _IlIllllIll(_llllIIllIl,{BackgroundTransparency=0.3}) end)
    _llllIIllIl.MouseLeave:Connect(function() _IlIllllIll(_llllIIllIl,{BackgroundTransparency=0x0}) end)
end
_IIIlIlIIII(-0xE,_lIIIIIllIl.red,"\088",function() _IIllllIlll:Destroy() end)

local _IlIIIlIlIl=false; local _IlIllIIIll
_IIIlIlIIII(-0x2C,Color3.fromRGB(0x28,0x16,0x48),"\045",function()
    _IlIIIlIlIl=not _IlIIIlIlIl
    if _IlIIIlIlIl then _IlIllIIIll.Visible=false; _IlIllllIll(_IIlIlllIlI,{Size=UDim2.new(0x0,_llIIIIlIll,0x0,_IIIlIIIllI)},0.2)
    else _IlIllllIll(_IIlIlllIlI,{Size=UDim2.new(0x0,_llIIIIlIll,0x0,H)},0.2); task.delay(0.18,function() _IlIllIIIll.Visible=true end) end
end)

-- ============================================================
-- BODY
-- ============================================================
_IlIllIIIll=Instance.new("\070\114\097\109\101",_IIlIlllIlI)
_IlIllIIIll.Size=UDim2.new(0x1,0x0,0x1,-_IIIlIIIllI); _IlIllIIIll.Position=UDim2.new(0x0,0x0,0x0,_IIIlIIIllI)
_IlIllIIIll.BackgroundTransparency=0x1; _IlIllIIIll.BorderSizePixel=0x0; _IlIllIIIll.ClipsDescendants=false

-- ============================================================
-- TAB BAR
-- ============================================================
local _IllIlllIII=Instance.new("\070\114\097\109\101",_IlIllIIIll)
_IllIlllIII.Size=UDim2.new(0x1,-_IlllllllIl*0x2,0x0,_IllIlIIlll); _IllIlllIII.Position=UDim2.new(0x0,_IlllllllIl,0x0,_IlllllllIl)
_IllIlllIII.BackgroundColor3=_lIIIIIllIl.panel; _IllIlllIII.BorderSizePixel=0x0
Instance.new("\085\073\067\111\114\110\101\114",_IllIlllIII).CornerRadius=UDim.new(0x0,0x9)
_IlIlIlllll(_IllIlllIII,_lIIIIIllIl.border,0x1)
local _IllIIlIIII=Instance.new("\085\073\076\105\115\116\076\097\121\111\117\116",_IllIlllIII)
_IllIIlIIII.FillDirection=Enum.FillDirection.Horizontal; _IllIIlIIII.HorizontalAlignment=Enum.HorizontalAlignment.Left

-- Neon sliding _IIlllIlIll
local _IIlllIlIll=Instance.new("\070\114\097\109\101",_IllIlllIII)
_IIlllIlIll.Size=UDim2.new(0x0,0x62,0x0,0x3); _IIlllIlIll.Position=UDim2.new(0x0,0x0,0x1,-0x3)
_IIlllIlIll.BackgroundColor3=_lIIIIIllIl.neon; _IIlllIlIll.BorderSizePixel=0x0; _IIlllIlIll.ZIndex=0xA
Instance.new("\085\073\067\111\114\110\101\114",_IIlllIlIll).CornerRadius=UDim.new(0x1,0x0)

local _IlIlllIIIl=_IlllllllIl+_IllIlIIlll+_IlllllllIl
local _lllIIlIIll=Instance.new("\070\114\097\109\101",_IlIllIIIll)
_lllIIlIIll.Size=UDim2.new(0x1,-_IlllllllIl*0x2,0x1,-_IlIlllIIIl-_IlllllllIl); _lllIIlIIll.Position=UDim2.new(0x0,_IlllllllIl,0x0,_IlIlllIIIl)
_lllIIlIIll.BackgroundTransparency=0x1; _lllIIlIIll.BorderSizePixel=0x0; _lllIIlIIll.ClipsDescendants=true

local _IllIIlIllI={}; local _IIlIIIlIlI=0x62

local function _lIIIlIlIlI(label,_IlllIllIlI)
    local _lllllIlllI=Instance.new("\084\101\120\116\066\117\116\116\111\110",_IllIlllIII)
    _lllllIlllI.Size=UDim2.new(0x0,_IIlIIIlIlI,0x1,0x0); _lllllIlllI.BackgroundColor3=_lIIIIIllIl.tabOff; _lllllIlllI.BorderSizePixel=0x0
    _lllllIlllI.Text=label; _lllllIlllI.Font=Enum.Font.GothamBold; _lllllIlllI.TextSize=0xB; _lllllIlllI.TextColor3=_lIIIIIllIl.sub
    Instance.new("\085\073\067\111\114\110\101\114",_lllllIlllI).CornerRadius=UDim.new(0x0,0x9)

    local _llllIlIIll=Instance.new("\070\114\097\109\101",_lllIIlIIll)
    _llllIlIIll.Size=UDim2.new(0x1,0x0,0x1,0x0); _llllIlIIll.BackgroundTransparency=0x1; _llllIlIIll.BorderSizePixel=0x0
    _llllIlIIll.Visible=false; _llllIlIIll.ClipsDescendants=false

    local _IlIIlIIIII=Instance.new("\083\099\114\111\108\108\105\110\103\070\114\097\109\101",_llllIlIIll)
    _IlIIlIIIII.Size=UDim2.new(0x1,0x0,0x1,0x0); _IlIIlIIIII.BackgroundTransparency=0x1; _IlIIlIIIII.BorderSizePixel=0x0
    _IlIIlIIIII.ScrollBarThickness=0x3; _IlIIlIIIII.ScrollBarImageColor3=_lIIIIIllIl.neon
    _IlIIlIIIII.CanvasSize=UDim2.new(0x0,0x0,0x0,0x0); _IlIIlIIIII.AutomaticCanvasSize=Enum.AutomaticSize.Y
    local _lllIllIIlI=Instance.new("\085\073\076\105\115\116\076\097\121\111\117\116",_IlIIlIIIII); _lllIllIIlI.Padding=UDim.new(0x0,0x7); _lllIllIIlI.FillDirection=Enum.FillDirection.Vertical
    _lllIllIIlI.HorizontalAlignment=Enum.HorizontalAlignment.Left
    local _lIIIIIIllI=Instance.new("\085\073\080\097\100\100\105\110\103",_IlIIlIIIII); _lIIIIIIllI.PaddingBottom=UDim.new(0x0,0xC)

    local _IIlIIllIIl={_lllllIlllI=_lllllIlllI,_llllIlIIll=_llllIlIIll,_IlIIlIIIII=_IlIIlIIIII,_IlllIllIlI=_IlllIllIlI}; _IllIIlIllI[#_IllIIlIllI+0x1]=_IIlIIllIIl
    _lllllIlllI.MouseButton1Click:Connect(function()
        for _,t in ipairs(_IllIIlIllI) do
            local _IIIIIIIIIl=(t==_IIlIIllIIl)
            t.page.Visible=_IIIIIIIIIl
            _IlIllllIll(t.btn,{BackgroundColor3=_IIIIIIIIIl and _lIIIIIllIl.tabOn or _lIIIIIllIl.tabOff},0.15)
            _IlIllllIll(t.btn,{TextColor3=_IIIIIIIIIl and _lIIIIIllIl.a3 or _lIIIIIllIl.sub},0.15)
        end
        _IlIllllIll(_IIlllIlIll,{Position=UDim2.new(0x0,(_IlllIllIlI-0x1)*_IIlIIIlIlI,0x1,-0x3)},0.18)
    end)
    return _IlIIlIIIII
end

-- ============================================================
-- WIDGET HELPERS
-- ============================================================
local function _IIIIIIllII(parent,h,col,neon)
    local _IIIllIIIlI=Instance.new("\070\114\097\109\101",parent)
    _IIIllIIIlI.Size=UDim2.new(0x1,0x0,0x0,h); _IIIllIIIlI.BackgroundColor3=col or _lIIIIIllIl.card; _IIIllIIIlI.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_IIIllIIIlI).CornerRadius=UDim.new(0x0,0xA)
    local _lIlIlIIlII=Instance.new("\085\073\083\116\114\111\107\101",_IIIllIIIlI); _lIlIlIIlII.Color=neon and _lIIIIIllIl.neonB or _lIIIIIllIl.border; _lIlIlIIlII.Thickness=neon and 1.5 or 0x1
    return _IIIllIIIlI,_lIlIlIIlII
end

local function _lIIIlIlIII(parent,txt,x,y,w,h,sz,font,col,xa)
    local _llllllIIIl=Instance.new("\084\101\120\116\076\097\098\101\108",parent)
    _llllllIIIl.Text=txt; _llllllIIIl.Font=font or Enum.Font.Gotham; _llllllIIIl.TextSize=sz or 0xD
    _llllllIIIl.TextColor3=col or _lIIIIIllIl.text; _llllllIIIl.BackgroundTransparency=0x1
    _llllllIIIl.Size=w==0x0 and UDim2.new(0x1,-(x*0x2),0x0,h or 0x14) or UDim2.new(0x0,w,0x0,h or 0x14)
    _llllllIIIl.Position=UDim2.new(0x0,x,0x0,y)
    _llllllIIIl.TextXAlignment=xa or Enum.TextXAlignment.Left; _llllllIIIl.TextWrapped=true
    return _llllllIIIl
end

local function _lIlIllIIll(parent,txt)
    local _IIIllIIIlI=Instance.new("\070\114\097\109\101",parent); _IIIllIIIlI.Size=UDim2.new(0x1,0x0,0x0,0x12)
    _IIIllIIIlI.BackgroundTransparency=0x1; _IIIllIIIlI.BorderSizePixel=0x0
    _lIIIlIlIII(_IIIllIIIlI,"\032\032"..txt,0x0,0x0,0x0,0x12,0x9,Enum.Font.GothamBold,_lIIIIIllIl.muted); return _IIIllIIIlI
end

local function _llIIIllIll(parent,h)
    local _IIIllIIIlI=Instance.new("\070\114\097\109\101",parent); _IIIllIIIlI.Size=UDim2.new(0x1,0x0,0x0,h or 0x2)
    _IIIllIIIlI.BackgroundTransparency=0x1; _IIIllIIIlI.BorderSizePixel=0x0; return _IIIllIIIlI
end

local function _IIIIlllllI(parent,defVal,rightPad,yPos,cb)
    local _lIllIlllII=Instance.new("\070\114\097\109\101",parent)
    _lIllIlllII.Size=UDim2.new(0x0,0x32,0x0,0x1A); _lIllIlllII.Position=UDim2.new(0x1,-(rightPad or 0x3A),0x0,yPos or 0x0)
    _lIllIlllII.BackgroundColor3=Color3.fromRGB(0x18,0xE,0x30); _lIllIlllII.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_lIllIlllII).CornerRadius=UDim.new(0x1,0x0)
    local os=Instance.new("\085\073\083\116\114\111\107\101",_lIllIlllII); os.Color=_lIIIIIllIl.border; os.Thickness=0x1
    local _IIIllIIllI=Instance.new("\070\114\097\109\101",_lIllIlllII); _IIIllIIllI.Size=UDim2.new(0x0,0x14,0x0,0x14)
    _IIIllIIllI.BackgroundColor3=_lIIIIIllIl.sub; _IIIllIIllI.Position=UDim2.new(0x0,0x3,0.5,-0xA); _IIIllIIllI.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_IIIllIIllI).CornerRadius=UDim.new(0x1,0x0)
    local _IlllIlllll=Instance.new("\084\101\120\116\066\117\116\116\111\110",_lIllIlllII); _IlllIlllll.Size=UDim2.new(0x1,0x0,0x1,0x0)
    _IlllIlllll.BackgroundTransparency=0x1; _IlllIlllll.Text=""; _IlllIlllll.BorderSizePixel=0x0
    local _IIIIllIlII=defVal
    local function _IIIlllIIII()
        if _IIIIllIlII then
            _IlIllllIll(_IIIllIIllI,{Position=UDim2.new(0x1,-0x17,0.5,-0xA)},0.16,Enum.EasingStyle.Back)
            _IlIllllIll(_lIllIlllII,{BackgroundColor3=_lIIIIIllIl.a1},0.16); _IlIllllIll(os,{Color=_lIIIIIllIl.neon},0.16)
            _IlIllllIll(_IIIllIIllI,{BackgroundColor3=Color3.new(0x1,0x1,0x1)},0.16)
        else
            _IlIllllIll(_IIIllIIllI,{Position=UDim2.new(0x0,0x3,0.5,-0xA)},0.16,Enum.EasingStyle.Back)
            _IlIllllIll(_lIllIlllII,{BackgroundColor3=Color3.fromRGB(0x18,0xE,0x30)},0.16); _IlIllllIll(os,{Color=_lIIIIIllIl.border},0.16)
            _IlIllllIll(_IIIllIIllI,{BackgroundColor3=_lIIIIIllIl.sub},0.16)
        end
    end
    _IIIlllIIII()
    _IlllIlllll.MouseButton1Click:Connect(function() _IIIIllIlII=not _IIIIllIlII; _IIIlllIIII(); cb(_IIIIllIlII) end)
    return _lIllIlllII
end

local function _lIllllIIll(parent,txt,col)
    local _llllIIllIl=Instance.new("\084\101\120\116\066\117\116\116\111\110",parent)
    _llllIIllIl.Size=UDim2.new(0x1,0x0,0x0,0x2A); _llllIIllIl.BackgroundColor3=col or _lIIIIIllIl.a1
    _llllIIllIl.Text=txt; _llllIIllIl.Font=Enum.Font.GothamBold; _llllIIllIl.TextSize=0xE
    _llllIIllIl.TextColor3=Color3.new(0x1,0x1,0x1); _llllIIllIl.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_llllIIllIl).CornerRadius=UDim.new(0x0,0xA)
    -- Neon glow _IIIIIIIIIl button
    local _llllIlIIlI=Instance.new("\085\073\083\116\114\111\107\101",_llllIIllIl); _llllIlIIlI.Color=_lIIIIIllIl.neon; _llllIlIIlI.Thickness=1.5; _llllIlIIlI.Transparency=0.6
    _llllIIllIl.MouseEnter:Connect(function() _IlIllllIll(_llllIIllIl,{BackgroundColor3=_lIIIIIllIl.a2},0.15); _IlIllllIll(_llllIlIIlI,{Transparency=0x0},0.15) end)
    _llllIIllIl.MouseLeave:Connect(function() _IlIllllIll(_llllIIllIl,{BackgroundColor3=col or _lIIIIIllIl.a1},0.15); _IlIllllIll(_llllIlIIlI,{Transparency=0.6},0.15) end)
    return _llllIIllIl
end

local function _IIlIllIIII(parent,_IlllIlIllI,sub)
    local _lIIIIIIllI,_=_IIIIIIllII(parent,0x38)
    _lIIIlIlIII(_lIIIIIIllI,_IlllIlIllI,0xE,0xA,0x0,0x14,0xD,Enum.Font.GothamBold,_lIIIIIllIl.text)
    if sub and sub~="" then _lIIIlIlIII(_lIIIIIIllI,sub,0xE,0x1D,0x0,0x12,0xA,Enum.Font.Gotham,_lIIIIIllIl.sub) end
    return _lIIIIIIllI
end

-- ============================================================
-- PAGE 0x1 — HOME
-- ============================================================
local _IIllllllll=_lIIIlIlIlI("\032\032\072\111\109\101",0x1)

do
    local _IlIIIlllII,gs=_IIIIIIllII(_IIllllllll,0x62,nil,true)
    -- neon left accent
    local _IlIllIIlIl=Instance.new("\070\114\097\109\101",_IlIIIlllII); _IlIllIIlIl.Size=UDim2.new(0x0,0x3,0x1,-0x12)
    _IlIllIIlIl.Position=UDim2.new(0x0,0x0,0x0,0x9); _IlIllIIlIl.BackgroundColor3=_lIIIIIllIl.neon; _IlIllIIlIl.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_IlIllIIlIl).CornerRadius=UDim.new(0x0,0x3)

    local _IIllIIIlIl=Instance.new("\070\114\097\109\101",_IlIIIlllII); _IIllIIIlIl.Size=UDim2.new(0x0,0x42,0x0,0x42)
    _IIllIIIlIl.Position=UDim2.new(0x0,0xC,0.5,-0x21); _IIllIIIlIl.BackgroundColor3=_lIIIIIllIl.cardB; _IIllIIIlIl.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_IIllIIIlIl).CornerRadius=UDim.new(0x0,0xA)
    local _IlIlIllllI=Instance.new("\085\073\083\116\114\111\107\101",_IIllIIIlIl); _IlIlIllllI.Color=_lIIIIIllIl.neon; _IlIlIllllI.Thickness=0x2
    local _lIlIIlllII=Instance.new("\073\109\097\103\101\076\097\098\101\108",_IIllIIIlIl); _lIlIIlllII.Size=UDim2.new(0x1,0x0,0x1,0x0)
    _lIlIIlllII.BackgroundTransparency=0x1; _lIlIIlllII.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_lIlIIlllII).CornerRadius=UDim.new(0x0,0x9)
    task.spawn(function()
        local _lIIIIlllIl,url=pcall(function() return Players:GetUserThumbnailAsync(_IIlIlIlIll.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size100x100) end)
        if _lIIIIlllIl and url then _lIlIIlllII.Image=url end
    end)

    _lIIIlIlIII(_IlIIIlllII,"\072\101\108\108\111\044",0x5A,0xE,0x0,0x12,0xC,Enum.Font.Gotham,_lIIIIIllIl.sub)
    local _lIllllIIIl=_lIIIlIlIII(_IlIIIlllII,_IIlIlIlIll.DisplayName,0x5A,0x1E,0x0,0x1C,0x15,Enum.Font.GothamBold,_lIIIIIllIl.a3)
    _lIllllIIIl.TextTruncate=Enum.TextTruncate.AtEnd
    _lIIIlIlIII(_IlIIIlllII,"\064"..LP.Name,0x5A,0x3C,0x0,0x10,0xB,Enum.Font.Gotham,_lIIIIIllIl.sub)

    local _IlllIIIllI=Instance.new("\070\114\097\109\101",_IlIIIlllII); _IlllIIIllI.Size=UDim2.new(0x0,0x3A,0x0,0x12)
    _IlllIIIllI.Position=UDim2.new(0x1,-0x42,0x0,0xC); _IlllIIIllI.BackgroundColor3=Color3.fromRGB(0xE,0x28,0x16); _IlllIIIllI.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_IlllIIIllI).CornerRadius=UDim.new(0x0,0x9)
    local _IIIIlllIll=Instance.new("\070\114\097\109\101",_IlllIIIllI); _IIIIlllIll.Size=UDim2.new(0x0,0x7,0x0,0x7); _IIIIlllIll.Position=UDim2.new(0x0,0x5,0.5,-3.5)
    _IIIIlllIll.BackgroundColor3=_lIIIIIllIl.green; _IIIIlllIll.BorderSizePixel=0x0; Instance.new("\085\073\067\111\114\110\101\114",_IIIIlllIll).CornerRadius=UDim.new(0x1,0x0)
    local _lIIIllIIIl=Instance.new("\084\101\120\116\076\097\098\101\108",_IlllIIIllI); _lIIIllIIIl.Text="\079\110\108\105\110\101"; _lIIIllIIIl.Font=Enum.Font.GothamBold; _lIIIllIIIl.TextSize=0x9
    _lIIIllIIIl.TextColor3=_lIIIIIllIl.green; _lIIIllIIIl.BackgroundTransparency=0x1; _lIIIllIIIl.Size=UDim2.new(0x1,-0xE,0x1,0x0); _lIIIllIIIl.Position=UDim2.new(0x0,0xE,0x0,0x0)
    task.delay(0x1,function() _lIllllIIIl.Text=_IIlIlIlIll.DisplayName end)
end

_llIIIllIll(_IIllllllll,0x2)

local _lllIIlIllI,sessLbl,lenLbl
do
    local _IIlIlIIIlI=Instance.new("\070\114\097\109\101",_IIllllllll); _IIlIlIIIlI.Size=UDim2.new(0x1,0x0,0x0,0x4A)
    _IIlIlIIIlI.BackgroundTransparency=0x1; _IIlIlIIIlI.BorderSizePixel=0x0
    local _IIllllIIII=Instance.new("\085\073\076\105\115\116\076\097\121\111\117\116",_IIlIlIIIlI); _IIllllIIII.FillDirection=Enum.FillDirection.Horizontal; _IIllllIIII.Padding=UDim.new(0x0,0x5)

    local function _IIIlIIlIIl(_IlllIlIllI,accent)
        local _lIIIIIIllI=Instance.new("\070\114\097\109\101",_IIlIlIIIlI); _lIIIIIIllI.Size=UDim2.new(0.333,-0x4,0x1,0x0)
        _lIIIIIIllI.BackgroundColor3=_lIIIIIllIl.card; _lIIIIIIllI.BorderSizePixel=0x0
        Instance.new("\085\073\067\111\114\110\101\114",_lIIIIIIllI).CornerRadius=UDim.new(0x0,0xA)
        local _IIlllIIIll=Instance.new("\085\073\083\116\114\111\107\101",_lIIIIIIllI); _IIlllIIIll.Color=_lIIIIIllIl.border; _IIlllIIIll.Thickness=0x1
        -- neon _IllIIIllll accent line
        local _IllIIIllll=Instance.new("\070\114\097\109\101",_lIIIIIIllI); _IllIIIllll.Size=UDim2.new(0.4,0x0,0x0,0x3)
        _IllIIIllll.BackgroundColor3=accent; _IllIIIllll.BorderSizePixel=0x0
        Instance.new("\085\073\067\111\114\110\101\114",_IllIIIllll).CornerRadius=UDim.new(0x1,0x0)
        _lIIIlIlIII(_lIIIIIIllI,_IlllIlIllI,0x8,0x8,0x0,0xE,0x8,Enum.Font.GothamBold,_lIIIIIllIl.sub)
        local _llllIlIlIl=_lIIIlIlIII(_lIIIIIIllI,"\048",0x8,0x18,0x0,0x24,0x1A,Enum.Font.GothamBold,accent)
        _lIIIIIIllI.MouseEnter:Connect(function() _IlIllllIll(_IIlllIIIll,{Color=accent,Transparency=0.4},0.15) end)
        _lIIIIIIllI.MouseLeave:Connect(function() _IlIllllIll(_IIlllIIIll,{Color=_lIIIIIllIl.border,Transparency=0x0},0.15) end)
        return _llllIlIlIl
    end
    _lllIIlIllI=_IIIlIIlIIl("\084\079\084\065\076",_lIIIIIllIl.neon)
    sessLbl =_IIIlIIlIIl("\083\069\083\083\073\079\078",Color3.fromRGB(0xA2,0x52,0xF8))
    lenLbl  =_IIIlIIlIIl("\067\072\065\082\032\076\069\078",Color3.fromRGB(0x7A,0x2A,0xCA))
    lenLbl.Text=tostring(_IIlIlllIIl.LetterCount)
end

_llIIIllIll(_IIllllllll,0x2)

local _lllllIIllI
do
    local _lllllIllIl,_=_IIIIIIllII(_IIllllllll,0x22,_lIIIIIllIl.cardB,true)
    _lllllIIllI=_lIIIlIlIII(_lllllIllIl,"\077\111\100\101\058\032\032\068\105\099\116\105\111\110\097\114\121\032\087\111\114\100\115",0xA,0x0,0x0,0x22,0xC,Enum.Font.GothamBold,_lIIIIIllIl.neon)
end

_llIIIllIll(_IIllllllll,0x2)

local _llllllllIl; local _IIIIlIIlII={}
do
    local _IlIIIllIIl,_=_IIIIIIllII(_IIllllllll,0xB2)
    _lIIIlIlIII(_IlIIIllIIl,"\082\069\067\069\078\084\032\079\085\084\080\085\084\083",0xC,0x8,0x0,0xE,0x9,Enum.Font.GothamBold,_lIIIIIllIl.muted)
    local _IlllllIlII=Instance.new("\070\114\097\109\101",_IlIIIllIIl); _IlllllIlII.Size=UDim2.new(0x1,-0x18,0x0,0x1); _IlllllIlII.Position=UDim2.new(0x0,0xC,0x0,0x18)
    _IlllllIlII.BackgroundColor3=_lIIIIIllIl.border; _IlllllIlII.BorderSizePixel=0x0
    _llllllllIl=Instance.new("\083\099\114\111\108\108\105\110\103\070\114\097\109\101",_IlIIIllIIl)
    _llllllllIl.Size=UDim2.new(0x1,-0x8,0x0,0x90); _llllllllIl.Position=UDim2.new(0x0,0x4,0x0,0x1C)
    _llllllllIl.BackgroundTransparency=0x1; _llllllllIl.BorderSizePixel=0x0
    _llllllllIl.ScrollBarThickness=0x2; _llllllllIl.ScrollBarImageColor3=_lIIIIIllIl.neon
    _llllllllIl.CanvasSize=UDim2.new(0x0,0x0,0x0,0x0); _llllllllIl.AutomaticCanvasSize=Enum.AutomaticSize.Y
    local _IIIlIlIIIl=Instance.new("\085\073\076\105\115\116\076\097\121\111\117\116",_llllllllIl); _IIIlIlIIIl.Padding=UDim.new(0x0,0x3)
end

_llIIIllIll(_IIllllllll,0x2)
local _IIIIlIIlII=_lIllllIIll(_IIllllllll,"\062\062\032\071\101\110\101\114\097\116\101\032\078\111\119")

-- ============================================================
-- PAGE 0x2 — GENERATOR
-- ============================================================
local _IIIIlIlIII=_lIIIlIlIlI("\032\071\101\110\101\114\097\116\111\114",0x2)
_lIlIllIIll(_IIIIlIlIII,"\079\085\084\080\085\084\032\077\079\068\069")

local _IIIIIIllIl={}
local function _lIllllllII(id)
    _IIlIlllIIl.Mode=id
    local _lllIIIlIlI={_IllllIIlll="\068\105\099\116\105\111\110\097\114\121\032\087\111\114\100\115",readable="\082\101\097\100\097\098\108\101\032\083\121\108\108\097\098\108\101\115",random="\082\097\110\100\111\109\032\067\104\097\114\097\099\116\101\114\115"}
    if _lllllIIllI then _lllllIIllI.Text="\077\111\100\101\058\032\032"..names[id] end
    for _,_lIllllIIll in ipairs(_IIIIIIllIl) do
        local _IIIIIIIIIl=(_lIllllIIll.id==id)
        _IlIllllIll(_lIllllIIll.card,{BackgroundColor3=_IIIIIIIIIl and _lIIIIIllIl.cardC or _lIIIIIllIl.card},0.15)
        _IlIllllIll(_lIllllIIll.stroke,{Color=_IIIIIIIIIl and _lIIIIIllIl.neon or _lIIIIIllIl.border},0.15)
        _lIllllIIll.tl.TextColor3=_IIIIIIIIIl and _lIIIIIllIl.a3 or _lIIIIIllIl.text
    end
end

do
    local _IlllIllIll=Instance.new("\070\114\097\109\101",_IIIIlIlIII); _IlllIllIll.Size=UDim2.new(0x1,0x0,0x0,0x44)
    _IlllIllIll.BackgroundTransparency=0x1; _IlllIllIll.BorderSizePixel=0x0
    local _llllIIIIll=Instance.new("\085\073\076\105\115\116\076\097\121\111\117\116",_IlllIllIll); _llllIIIIll.FillDirection=Enum.FillDirection.Horizontal; _llllIIIIll.Padding=UDim.new(0x0,0x5)
    for _,_lIllllIIll in ipairs({{id="\119\111\114\100",t="\068\105\099\116\105\111\110\097\114\121",_lIlIlIIlII="\082\101\097\108\032\119\111\114\100\115"},{id="\114\101\097\100\097\098\108\101",t="\082\101\097\100\097\098\108\101",_lIlIlIIlII="\083\121\108\108\097\098\108\101\115"},{id="\114\097\110\100\111\109",t="\082\097\110\100\111\109",_lIlIlIIlII="\067\104\097\114\097\099\116\101\114\115"}}) do
        local _lIIIIIIllI=Instance.new("\070\114\097\109\101",_IlllIllIll); _lIIIIIIllI.Size=UDim2.new(0.333,-0x4,0x1,0x0)
        _lIIIIIIllI.BackgroundColor3=_lIIIIIllIl.card; _lIIIIIIllI.BorderSizePixel=0x0
        Instance.new("\085\073\067\111\114\110\101\114",_lIIIIIIllI).CornerRadius=UDim.new(0x0,0xA)
        local _IIlllIIIll=Instance.new("\085\073\083\116\114\111\107\101",_lIIIIIIllI); _IIlllIIIll.Color=_lIIIIIllIl.border; _IIlllIIIll.Thickness=0x1
        local _IIIlIIIlll=_lIIIlIlIII(_lIIIIIIllI,_lIllllIIll.t,0xA,0xB,0x0,0x14,0xC,Enum.Font.GothamBold,_lIIIIIllIl.text)
        _lIIIlIlIII(_lIIIIIIllI,_lIllllIIll.s,0xA,0x1D,0x0,0x12,0x9,Enum.Font.Gotham,_lIIIIIllIl.sub)
        local _IlllIlllll=Instance.new("\084\101\120\116\066\117\116\116\111\110",_lIIIIIIllI); _IlllIlllll.Size=UDim2.new(0x1,0x0,0x1,0x0); _IlllIlllll.BackgroundTransparency=0x1; _IlllIlllll.Text=""; _IlllIlllll.BorderSizePixel=0x0
        local _IIlIIllIIl={id=_lIllllIIll.id,card=_lIIIIIIllI,stroke=_IIlllIIIll,_IIIlIIIlll=_IIIlIIIlll}; _IIIIIIllIl[#_IIIIIIllIl+0x1]=_IIlIIllIIl
        _IlllIlllll.MouseButton1Click:Connect(function() _lIllllllII(_lIllllIIll.id) end)
        _lIIIIIIllI.MouseEnter:Connect(function() if _IIlIlllIIl.Mode~=_lIllllIIll.id then _IlIllllIll(_IIlllIIIll,{Color=_lIIIIIllIl.borderH},0.12) end end)
        _lIIIIIIllI.MouseLeave:Connect(function() if _IIlIlllIIl.Mode~=_lIllllIIll.id then _IlIllllIll(_IIlllIIIll,{Color=_lIIIIIllIl.border},0.12) end end)
    end
    _lIllllllII("\119\111\114\100")
end

_lIlIllIIll(_IIIIlIlIII,"\079\080\084\073\079\078\083")
do local _lIIIIIIllI=_IIlIllIIII(_IIIIlIlIII,"\073\110\099\108\117\100\101\032\078\117\109\098\101\114\115","\065\112\112\101\110\100\115\032\097\032\100\105\103\105\116\032\116\111\032\116\104\101\032\111\117\116\112\117\116"); _IIIIlllllI(_lIIIIIIllI,_IIlIlllIIl.IncludeNums,0x3C,0xE,function(_IIIlllIlII) _IIlIlllIIl.IncludeNums=_IIIlllIlII end) end
do local _lIIIIIIllI=_IIlIllIIII(_IIIIlIlIII,"\080\114\101\115\115\032\069\110\116\101\114\032\065\102\116\101\114","\083\105\109\117\108\097\116\101\115\032\069\110\116\101\114\032\111\110\032\102\111\099\117\115\032\114\101\108\101\097\115\101"); _IIIIlllllI(_lIIIIIIllI,_IIlIlllIIl.PressEnter,0x3C,0xE,function(_IIIlllIlII) _IIlIlllIIl.PressEnter=_IIIlllIlII end) end
_lIlIllIIll(_IIIIlIlIII,"\067\072\065\082\065\067\084\069\082\032\067\079\085\078\084")

local _llIIIlllII
do
    local _lIIIIIIllI,_=_IIIIIIllII(_IIIIlIlIII,0x38)
    _lIIIlIlIII(_lIIIIIIllI,"\076\101\110\103\116\104\032\032\040\049\032\045\032\049\048\041",0xE,0xA,0x0,0x14,0xD,Enum.Font.GothamBold,_lIIIIIllIl.text)
    local _lIIlllIIII=Instance.new("\070\114\097\109\101",_lIIIIIIllI); _lIIlllIIII.Size=UDim2.new(0x0,0x94,0x0,0x4)
    _lIIlllIIII.Position=UDim2.new(0x1,-0xEC,0.5,0x8); _lIIlllIIII.BackgroundColor3=Color3.fromRGB(0x18,0xE,0x2E); _lIIlllIIII.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_lIIlllIIII).CornerRadius=UDim.new(0x1,0x0)
    local _lIlllIlIII=Instance.new("\070\114\097\109\101",_lIIlllIIII); _lIlllIlIII.Size=UDim2.new(_IIlIlllIIl.LetterCount/0xA,0x0,0x1,0x0)
    _lIlllIlIII.BackgroundColor3=_lIIIIIllIl.neon; _lIlllIlIII.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_lIlllIlIII).CornerRadius=UDim.new(0x1,0x0)
    local _llIIIlllII=Instance.new("\084\101\120\116\076\097\098\101\108",_lIIIIIIllI); _llIIIlllII.Text=tostring(_IIlIlllIIl.LetterCount)
    _llIIIlllII.Font=Enum.Font.GothamBold; _llIIIlllII.TextSize=0xF; _llIIIlllII.TextColor3=_lIIIIIllIl.neon
    _llIIIlllII.BackgroundColor3=Color3.fromRGB(0x10,0xA,0x22); _llIIIlllII.Size=UDim2.new(0x0,0x1E,0x0,0x1C)
    _llIIIlllII.Position=UDim2.new(0x1,-0x4E,0.5,-0xE); _llIIIlllII.TextXAlignment=Enum.TextXAlignment.Center; _llIIIlllII.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_llIIIlllII).CornerRadius=UDim.new(0x0,0x6)
    local function _llIllIllII(sym,xOff,delta)
        local _llllIIllIl=Instance.new("\084\101\120\116\066\117\116\116\111\110",_lIIIIIIllI); _llllIIllIl.Size=UDim2.new(0x0,0x18,0x0,0x18)
        _llllIIllIl.Position=UDim2.new(0x1,xOff,0.5,-0xC); _llllIIllIl.BackgroundColor3=Color3.fromRGB(0x1E,0x10,0x3A)
        _llllIIllIl.Text=sym; _llllIIllIl.Font=Enum.Font.GothamBold; _llllIIllIl.TextSize=0x10; _llllIIllIl.TextColor3=_lIIIIIllIl.neon; _llllIIllIl.BorderSizePixel=0x0
        Instance.new("\085\073\067\111\114\110\101\114",_llllIIllIl).CornerRadius=UDim.new(0x0,0x6)
        _llllIIllIl.MouseButton1Click:Connect(function()
            _IIlIlllIIl.LetterCount=math.clamp(_IIlIlllIIl.LetterCount+delta,0x1,0xA); _llIIIlllII.Text=tostring(_IIlIlllIIl.LetterCount)
            _IlIllllIll(_lIlllIlIII,{Size=UDim2.new(_IIlIlllIIl.LetterCount/0xA,0x0,0x1,0x0)},0.2)
            if lenLbl then lenLbl.Text=tostring(_IIlIlllIIl.LetterCount) end
        end)
    end
    _llIllIllII("\045",-0x6C,-0x1); _llIllIllII("\043",-0x28,0x1)
end
_lIlIllIIll(_IIIIlIlIII,"\080\082\069\086\073\069\087")
do
    local _lIIIIIIllI,_=_IIIIIIllII(_IIIIlIlIII,0x42,nil,true)
    _lIIIlIlIII(_lIIIIIIllI,"\076\073\086\069\032\080\082\069\086\073\069\087",0xC,0x8,0x0,0xE,0x9,Enum.Font.GothamBold,_lIIIIIllIl.muted)
    _llIIIlllII=_lIIIlIlIII(_lIIIIIIllI,_IlllIlIlIl(),0xE,0x18,0x0,0x20,0x14,Enum.Font.Code,_lIIIIIllIl.neon)
    local _lIIlIlIllI=Instance.new("\084\101\120\116\066\117\116\116\111\110",_lIIIIIIllI); _lIIlIlIllI.Size=UDim2.new(0x0,0x1E,0x0,0x1E)
    _lIIlIlIllI.Position=UDim2.new(0x1,-0x28,0.5,-0xF); _lIIlIlIllI.BackgroundColor3=Color3.fromRGB(0x1A,0xE,0x34)
    _lIIlIlIllI.Text="\060\062"; _lIIlIlIllI.Font=Enum.Font.GothamBold; _lIIlIlIllI.TextSize=0xB; _lIIlIlIllI.TextColor3=_lIIIIIllIl.a2; _lIIlIlIllI.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_lIIlIlIllI).CornerRadius=UDim.new(0x0,0x7)
    _lIIlIlIllI.MouseButton1Click:Connect(function()
        _llIIIlllII.Text=_IlllIlIlIl(); _IlIllllIll(_llIIIlllII,{TextColor3=_lIIIIIllIl.green},0.1)
        task.delay(0.6,function() _IlIllllIll(_llIIIlllII,{TextColor3=_lIIIIIllIl.neon},0.3) end)
    end)
end
local _lIlllIIlII=_lIllllIIll(_IIIIlIlIII,"\062\062\032\071\101\110\101\114\097\116\101\032\038\032\073\110\106\101\099\116")

-- ============================================================
-- PAGE 0x3 — KEYBIND
-- ============================================================
local _IIlIIllllI=_lIIIlIlIlI("\032\075\101\121\098\105\110\100",0x3)
local _IlIlIllIlI,kbSetBtnRef,kbStatus,focLbl

do
    local _lIIIIIIllI,_=_IIIIIIllII(_IIlIIllllI,0x72)
    _lIIIlIlIII(_lIIIIIIllI,"\067\085\082\082\069\078\084\032\075\069\089\066\073\078\068",0xE,0xC,0x0,0xE,0x9,Enum.Font.GothamBold,_lIIIIIllIl.muted)
    _IlIlIllIlI=Instance.new("\084\101\120\116\076\097\098\101\108",_lIIIIIIllI); _IlIlIllIlI.Text="\070\053"
    _IlIlIllIlI.Font=Enum.Font.GothamBold; _IlIlIllIlI.TextSize=0x1C; _IlIlIllIlI.TextColor3=_lIIIIIllIl.neon
    _IlIlIllIlI.BackgroundColor3=Color3.fromRGB(0xE,0x9,0x20); _IlIlIllIlI.Size=UDim2.new(0x0,0x6E,0x0,0x32)
    _IlIlIllIlI.Position=UDim2.new(0x0,0xE,0x0,0x32); _IlIlIllIlI.TextXAlignment=Enum.TextXAlignment.Center; _IlIlIllIlI.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_IlIlIllIlI).CornerRadius=UDim.new(0x0,0xA)
    _IlIlIlllll(_IlIlIllIlI,_lIIIIIllIl.neon,1.5)

    kbSetBtnRef=Instance.new("\084\101\120\116\066\117\116\116\111\110",_lIIIIIIllI); kbSetBtnRef.Size=UDim2.new(0x1,-0x8C,0x0,0x26)
    kbSetBtnRef.Position=UDim2.new(0x0,0x86,0x0,0x38); kbSetBtnRef.BackgroundColor3=Color3.fromRGB(0x2A,0x12,0x50)
    kbSetBtnRef.Text="\091\032\067\108\105\099\107\032\116\111\032\082\101\098\105\110\100\032\093"; kbSetBtnRef.Font=Enum.Font.GothamBold
    kbSetBtnRef.TextSize=0xC; kbSetBtnRef.TextColor3=_lIIIIIllIl.a3; kbSetBtnRef.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",kbSetBtnRef).CornerRadius=UDim.new(0x0,0x9)
    _IlIlIlllll(kbSetBtnRef,_lIIIIIllIl.neonB,0x1)
    kbSetBtnRef.MouseEnter:Connect(function() _IlIllllIll(kbSetBtnRef,{BackgroundColor3=_lIIIIIllIl.a1},0.15) end)
    kbSetBtnRef.MouseLeave:Connect(function() _IlIllllIll(kbSetBtnRef,{BackgroundColor3=Color3.fromRGB(0x2A,0x12,0x50)},0.15) end)
end
kbStatus=_lIIIlIlIII(_IIlIIllllI,"",0x0,0x0,0x0,0x16,0xB,Enum.Font.Gotham,_lIIIIIllIl.sub,Enum.TextXAlignment.Center); kbStatus.Visible=false
do
    local _lIIIIIIllI,_=_IIIIIIllII(_IIlIIllllI,0x34)
    _lIIIlIlIII(_lIIIIIIllI,"\070\079\067\085\083\069\068\032\084\069\088\084\066\079\088",0xE,0x9,0x0,0xE,0x9,Enum.Font.GothamBold,_lIIIIIllIl.muted)
    focLbl=_lIIIlIlIII(_lIIIIIIllI,"\078\111\110\101\032\045\032\099\108\105\099\107\032\097\032\084\101\120\116\066\111\120\032\105\110\045\103\097\109\101",0xE,0x1A,0x0,0x14,0xC,Enum.Font.Gotham,_lIIIIIllIl.sub)
end
do
    local _lIIIIIIllI,_=_IIIIIIllII(_IIlIIllllI,0x84)
    _lIIIlIlIII(_lIIIIIIllI,"\072\079\087\032\084\079\032\085\083\069",0xE,0xA,0x0,0xE,0x9,Enum.Font.GothamBold,_lIIIIIllIl.muted)
    for i,t in ipairs({"\049\046\032\032\067\108\105\099\107\032\097\110\121\032\084\101\120\116\066\111\120\032\105\110\032\116\104\101\032\103\097\109\101\046","\050\046\032\032\080\114\101\115\115\032\121\111\117\114\032\107\101\121\098\105\110\100\032\040\100\101\102\097\117\108\116\058\032\070\053\041\046","\051\046\032\032\084\101\120\116\032\105\110\106\101\099\116\101\100\032\097\110\100\032\070\111\099\117\115\076\111\115\116\032\102\105\114\101\115\046","\052\046\032\032\084\111\103\103\108\101\032\080\114\101\115\115\032\069\110\116\101\114\032\105\102\032\103\097\109\101\032\110\101\101\100\115\032\105\116\046","\053\046\032\032\068\105\099\116\105\111\110\097\114\121\032\109\111\100\101\032\061\032\114\101\097\108\105\115\116\105\099\032\117\115\101\114\110\097\109\101\115\046"}) do
        _lIIIlIlIII(_lIIIIIIllI,t,0xE,0x8+i*0x16,0x0,0x14,0xB,Enum.Font.Gotham,_lIIIIIllIl.sub)
    end
end

-- ============================================================
-- PAGE 0x4 — CREDITS
-- ============================================================
local _IllllIllll=_lIIIlIlIlI("\032\067\114\101\100\105\116\115",0x4)

-- Banner with pulse
do
    local _llllIIllIl,_llllIlIIlI=_IIIIIIllII(_IllllIllll,0x52,_lIIIIIllIl.cardB,true)
    -- neon side strips
    local _IIlllIIIll=Instance.new("\070\114\097\109\101",_llllIIllIl); _IIlllIIIll.Size=UDim2.new(0x0,0x3,0x1,-0x14); _IIlllIIIll.Position=UDim2.new(0x0,0x0,0x0,0xA)
    _IIlllIIIll.BackgroundColor3=_lIIIIIllIl.neon; _IIlllIIIll.BorderSizePixel=0x0; Instance.new("\085\073\067\111\114\110\101\114",_IIlllIIIll).CornerRadius=UDim.new(0x0,0x3)
    local _lIIIIlIlll=Instance.new("\070\114\097\109\101",_llllIIllIl); _lIIIIlIlll.Size=UDim2.new(0x0,0x3,0x1,-0x14); _lIIIIlIlll.Position=UDim2.new(0x1,-0x3,0x0,0xA)
    _lIIIIlIlll.BackgroundColor3=_lIIIIIllIl.neon; _lIIIIlIlll.BorderSizePixel=0x0; Instance.new("\085\073\067\111\114\110\101\114",_lIIIIlIlll).CornerRadius=UDim.new(0x0,0x3)

    local _IlllIlIllI=_lIIIlIlIII(_llllIIllIl,"\076\079\071\073\067\083\032\067\076\073\067\075\069\082",0x0,0xC,0x0,0x1C,0x16,Enum.Font.GothamBold,_lIIIIIllIl.a3,Enum.TextXAlignment.Center)
    _IlllIlIllI.Size=UDim2.new(0x1,0x0,0x0,0x1C)
    _lIIIlIlIII(_llllIIllIl,"\118\053\046\049\032\032\045\045\032\032\077\097\100\101\032\119\105\116\104\032\099\097\114\101",0x0,0x2A,0x0,0x14,0xB,Enum.Font.Gotham,_lIIIIIllIl.sub,Enum.TextXAlignment.Center).Size=UDim2.new(0x1,0x0,0x0,0x14)
    _lIIIlIlIII(_llllIIllIl,"\084\104\097\110\107\032\121\111\117\032\102\111\114\032\117\115\105\110\103\032\076\111\103\105\099\115\032\067\108\105\099\107\101\114\033",0x0,0x3C,0x0,0x12,0xA,Enum.Font.Gotham,_lIIIIIllIl.muted,Enum.TextXAlignment.Center).Size=UDim2.new(0x1,0x0,0x0,0x12)

    -- pulse _IlllIlIllI
    task.spawn(function()
        while _IlllIlIllI and _IlllIlIllI.Parent do
            _IlIllllIll(_IlllIlIllI,{TextColor3=_lIIIIIllIl.neon},1.4,Enum.EasingStyle.Sine)
            task.wait(1.5); _IlIllllIll(_IlllIlIllI,{TextColor3=_lIIIIIllIl.a4},1.4,Enum.EasingStyle.Sine); task.wait(1.5)
        end
    end)
end

_lIlIllIIll(_IllllIllll,"\068\069\086\069\076\079\080\069\082")

-- Dev card
do
    local _lIIIIIIllI,_IIlllIIIll=_IIIIIIllII(_IllllIllll,0x42,nil,true)
    -- Gold _IIllllIIIl
    local _IIllllIIIl=Instance.new("\070\114\097\109\101",_lIIIIIIllI); _IIllllIIIl.Size=UDim2.new(0x0,0x2C,0x0,0x2C)
    _IIllllIIIl.Position=UDim2.new(0x0,0xC,0.5,-0x16); _IIllllIIIl.BackgroundColor3=_lIIIIIllIl.cardC; _IIllllIIIl.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_IIllllIIIl).CornerRadius=UDim.new(0x1,0x0)
    local _IIIlIIIIlI=Instance.new("\085\073\083\116\114\111\107\101",_IIllllIIIl); _IIIlIIIIlI.Color=_lIIIIIllIl.gold; _IIIlIIIIlI.Thickness=0x2
    local _lllIllIlIl=_lIIIlIlIII(_IIllllIIIl,"\068\069\086",0x0,0x0,0x0,0x2C,0x9,Enum.Font.GothamBold,_lIIIIIllIl.gold,Enum.TextXAlignment.Center)
    _lllIllIlIl.Size=UDim2.new(0x1,0x0,0x1,0x0)

    _lIIIlIlIII(_lIIIIIIllI,"\064\048\050\100\109",0x3E,0xA,0x0,0x16,0x11,Enum.Font.GothamBold,_lIIIIIllIl.gold)
    _lIIIlIlIII(_lIIIIIIllI,"\068\101\118\101\108\111\112\101\114\032\032\124\032\032\067\114\101\097\116\111\114",0x3E,0x1F,0x0,0x12,0xA,Enum.Font.Gotham,_lIIIIIllIl.sub)

    local _IIllIIllll=Instance.new("\070\114\097\109\101",_lIIIIIIllI); _IIllIIllll.Size=UDim2.new(0x0,0x38,0x0,0x13)
    _IIllIIllll.Position=UDim2.new(0x1,-0x42,0.5,-0x9); _IIllIIllll.BackgroundColor3=_lIIIIIllIl.goldDim; _IIllIIllll.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_IIllIIllll).CornerRadius=UDim.new(0x0,0x5)
    local _llIIlIlIll=Instance.new("\084\101\120\116\076\097\098\101\108",_IIllIIllll); _llIIlIlIll.Text="\067\082\069\065\084\079\082"
    _llIIlIlIll.Font=Enum.Font.GothamBold; _llIIlIlIll.TextSize=0x8; _llIIlIlIll.TextColor3=_lIIIIIllIl.gold
    _llIIlIlIll.BackgroundTransparency=0x1; _llIIlIlIll.Size=UDim2.new(0x1,0x0,0x1,0x0); _llIIlIlIll.TextXAlignment=Enum.TextXAlignment.Center
end

_lIlIllIIll(_IllllIllll,"\083\085\080\080\079\082\084\032\084\069\065\077")

for i,member in ipairs({{_lIIlIIIlIl="\064\054\115\121\106",role="\083\117\112\112\111\114\116"},{_lIIlIIIlIl="\064\048\106\053\120",role="\083\117\112\112\111\114\116"},{_lIIlIIIlIl="\064\048\102\109\108",role="\083\117\112\112\111\114\116"}}) do
    local _lIIIIIIllI,_=_IIIIIIllII(_IllllIllll,0x34)
    local _IlllIllIlI=Instance.new("\084\101\120\116\076\097\098\101\108",_lIIIIIIllI); _IlllIllIlI.Text=tostring(i)
    _IlllIllIlI.Font=Enum.Font.GothamBold; _IlllIllIlI.TextSize=0xD; _IlllIllIlI.TextColor3=_lIIIIIllIl.neon
    _IlllIllIlI.BackgroundColor3=Color3.fromRGB(0x18,0xE,0x32); _IlllIllIlI.Size=UDim2.new(0x0,0x20,0x0,0x20)
    _IlllIllIlI.Position=UDim2.new(0x0,0xC,0.5,-0x10); _IlllIllIlI.TextXAlignment=Enum.TextXAlignment.Center; _IlllIllIlI.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_IlllIllIlI).CornerRadius=UDim.new(0x0,0x8)
    _IlIlIlllll(_IlllIllIlI,_lIIIIIllIl.neonB,0x1)
    _lIIIlIlIII(_lIIIIIIllI,member.name,0x36,0x8,0x0,0x14,0xF,Enum.Font.GothamBold,_lIIIIIllIl.a3)
    _lIIIlIlIII(_lIIIIIIllI,member.role,0x36,0x1B,0x0,0x10,0xA,Enum.Font.Gotham,_lIIIIIllIl.sub)
    local _IIlIllIIII=Instance.new("\070\114\097\109\101",_lIIIIIIllI); _IIlIllIIII.Size=UDim2.new(0x0,0x34,0x0,0x12)
    _IIlIllIIII.Position=UDim2.new(0x1,-0x3E,0.5,-0x9); _IIlIllIIII.BackgroundColor3=Color3.fromRGB(0x12,0xC,0x2A); _IIlIllIIII.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_IIlIllIIII).CornerRadius=UDim.new(0x0,0x5); _IlIlIlllll(_IIlIllIIII,_lIIIIIllIl.border,0x1)
    local _IIllllIIll=Instance.new("\084\101\120\116\076\097\098\101\108",_IIlIllIIII); _IIllllIIll.Text="\083\085\080\080\079\082\084"
    _IIllllIIll.Font=Enum.Font.GothamBold; _IIllllIIll.TextSize=0x8; _IIllllIIll.TextColor3=_lIIIIIllIl.neon
    _IIllllIIll.BackgroundTransparency=0x1; _IIllllIIll.Size=UDim2.new(0x1,0x0,0x1,0x0); _IIllllIIll.TextXAlignment=Enum.TextXAlignment.Center
end

_lIlIllIIll(_IllllIllll,"\067\079\077\077\085\078\073\084\089")

-- Discord link card  (clickable - copies to clipboard)
do
    local _lIIllIIIII = "\100\105\115\099\111\114\100\046\103\103\047\067\122\056\068\119\068\104\074\118\069"
    local _lIIIIIIllI,_IIlllIIIll=_IIIIIIllII(_IllllIllll,0x3E,_lIIIIIllIl.discordD)
    _IIlllIIIll.Color=_lIIIIIllIl.discord; _IIlllIIIll.Thickness=1.5

    -- Discord _IlIIIlllIl-ish mark
    local _lIIllIIIlI=Instance.new("\070\114\097\109\101",_lIIIIIIllI); _lIIllIIIlI.Size=UDim2.new(0x0,0x24,0x0,0x24)
    _lIIllIIIlI.Position=UDim2.new(0x0,0xC,0.5,-0x12); _lIIllIIIlI.BackgroundColor3=_lIIIIIllIl.discord; _lIIllIIIlI.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_lIIllIIIlI).CornerRadius=UDim.new(0x0,0x9)
    local _llllllIlll=_lIIIlIlIII(_lIIllIIIlI,"\068\067",0x0,0x0,0x0,0x24,0xA,Enum.Font.GothamBold,Color3.new(0x1,0x1,0x1),Enum.TextXAlignment.Center)
    _llllllIlll.Size=UDim2.new(0x1,0x0,0x1,0x0)

    _lIIIlIlIII(_lIIIIIIllI,"\074\111\105\110\032\111\117\114\032\068\105\115\099\111\114\100",0x38,0x8,0x0,0x14,0xD,Enum.Font.GothamBold,Color3.fromRGB(0xB4,0xBE,0xFF))
    local _lIIlIIIIIl=_lIIIlIlIII(_lIIIIIIllI,_lIIllIIIII,0x38,0x1C,0x0,0x12,0xB,Enum.Font.Code,Color3.fromRGB(0x8C,0x9B,0xFF))

    -- Clickable overlay button
    local _IlllIlllll=Instance.new("\084\101\120\116\066\117\116\116\111\110",_lIIIIIIllI); _IlllIlllll.Size=UDim2.new(0x1,0x0,0x1,0x0); _IlllIlllll.BackgroundTransparency=0x1
    _IlllIlllll.Text=""; _IlllIlllll.BorderSizePixel=0x0

    -- Copy button _IIIIIIIIIl right
    local _IlllIlllll=Instance.new("\084\101\120\116\066\117\116\116\111\110",_lIIIIIIllI); _IlllIlllll.Size=UDim2.new(0x0,0x2E,0x0,0x1A)
    _IlllIlllll.Position=UDim2.new(0x1,-0x36,0.5,-0xD); _IlllIlllll.BackgroundColor3=_lIIIIIllIl.discord; _IlllIlllll.BorderSizePixel=0x0
    _IlllIlllll.Text="\067\111\112\121"; _IlllIlllll.Font=Enum.Font.GothamBold; _IlllIlllll.TextSize=0xB
    _IlllIlllll.TextColor3=Color3.new(0x1,0x1,0x1)
    Instance.new("\085\073\067\111\114\110\101\114",_IlllIlllll).CornerRadius=UDim.new(0x0,0x7)

    -- Hover effect _IIIIIIIIIl card
    _IlllIlllll.MouseEnter:Connect(function() _IlIllllIll(_lIIIIIIllI,{BackgroundColor3=Color3.fromRGB(0x32,0x37,0x82)},0.15); _IlIllllIll(_IIlllIIIll,{Color=Color3.fromRGB(0x78,0x87,0xFF)},0.15) end)
    _IlllIlllll.MouseLeave:Connect(function() _IlIllllIll(_lIIIIIIllI,{BackgroundColor3=_lIIIIIllIl.discordD},0.15); _IlIllllIll(_IIlllIIIll,{Color=_lIIIIIllIl.discord},0.15) end)

    local _lllIllllll=false
    local function _IIllIIllII()
        if _lllIllllll then return end
        _lllIllllll=true
        -- Try setclipboard (executor), fallback graceful
        if setclipboard then
            setclipboard(_lIIllIIIII)
        elseif syn and syn.write_clipboard then
            syn.write_clipboard(_lIIllIIIII)
        end
        _IlllIlllll.Text="\068\111\110\101\033"; _IlllIlllll.BackgroundColor3=_lIIIIIllIl.green
        _lIIlIIIIIl.Text="\067\111\112\105\101\100\032\116\111\032\099\108\105\112\098\111\097\114\100\033"; _lIIlIIIIIl.TextColor3=_lIIIIIllIl.green
        task.delay(0x2,function()
            _lllIllllll=false
            _IlllIlllll.Text="\067\111\112\121"; _IlIllllIll(_IlllIlllll,{BackgroundColor3=_lIIIIIllIl.discord},0.3)
            _lIIlIIIIIl.Text=_lIIllIIIII; _lIIlIIIIIl.TextColor3=Color3.fromRGB(0x8C,0x9B,0xFF)
        end)
    end
    _IlllIlllll.MouseButton1Click:Connect(_IIllIIllII)
    _IlllIlllll.MouseButton1Click:Connect(_IIllIIllII)
end

_llIIIllIll(_IllllIllll,0x4)

-- Footer
do
    local _lIIIIIIllI,_=_IIIIIIllII(_IllllIllll,0x24,_lIIIIIllIl.cardB)
    _lIIIlIlIII(_lIIIIIIllI,"\066\117\105\108\116\032\119\105\116\104\032\076\117\097\117\032\032\124\032\032\076\111\103\105\099\115\032\067\108\105\099\107\101\114\032\032\050\048\050\053",0x0,0x0,0x0,0x24,0xA,Enum.Font.Gotham,_lIIIIIllIl.muted,Enum.TextXAlignment.Center).Size=UDim2.new(0x1,0x0,0x1,0x0)
end

-- ============================================================
-- GENERATE FUNCTION
-- ============================================================
local _lIIIIIIlIl=nil
UserInputService.TextBoxFocused:Connect(function(tb)
    _lIIIIIIlIl=tb
    if focLbl then focLbl.Text="\082\101\097\100\121\058\032\032"..tb.Name; focLbl.TextColor3=_lIIIIIllIl.green end
end)
UserInputService.TextBoxFocusReleased:Connect(function()
    if focLbl then focLbl.Text="\082\101\108\101\097\115\101\100\032\045\032\115\116\105\108\108\032\116\097\114\103\101\116\105\110\103\032\108\097\115\116\032\098\111\120"; focLbl.TextColor3=_lIIIIIllIl.sub end
end)

local function _IIlIIIllll(_llllIllIlI,_lIlIIllIlI)
    if not _llllllllIl then return end
    local _IIIlIllIII=Instance.new("\070\114\097\109\101",_llllllllIl)
    _IIIlIllIII.Size=UDim2.new(0x1,-0x4,0x0,0x1A); _IIIlIllIII.BackgroundColor3=_lIIIIIllIl.cardB; _IIIlIllIII.BorderSizePixel=0x0
    Instance.new("\085\073\067\111\114\110\101\114",_IIIlIllIII).CornerRadius=UDim.new(0x0,0x6)
    local _IIlIIlIIll=Instance.new("\070\114\097\109\101",_IIIlIllIII); _IIlIIlIIll.Size=UDim2.new(0x0,0x24,0x0,0x10)
    _IIlIIlIIll.Position=UDim2.new(0x0,0x5,0.5,-0x8)
    _IIlIIlIIll.BackgroundColor3=_lIlIIllIlI and Color3.fromRGB(0xC,0x28,0x14) or Color3.fromRGB(0x18,0xC,0x32)
    _IIlIIlIIll.BorderSizePixel=0x0; Instance.new("\085\073\067\111\114\110\101\114",_IIlIIlIIll).CornerRadius=UDim.new(0x0,0x4)
    local _llIlllIIIl=Instance.new("\084\101\120\116\076\097\098\101\108",_IIlIIlIIll); _llIlllIIIl.Text=_lIlIIllIlI and "\087\079\082\068" or "\082\065\078\068"
    _llIlllIIIl.Font=Enum.Font.GothamBold; _llIlllIIIl.TextSize=0x8; _llIlllIIIl.BackgroundTransparency=0x1
    _llIlllIIIl.TextColor3=_lIlIIllIlI and _lIIIIIllIl.green or _lIIIIIllIl.neon; _llIlllIIIl.Size=UDim2.new(0x1,0x0,0x1,0x0); _llIlllIIIl.TextXAlignment=Enum.TextXAlignment.Center
    local _IIIlIIIlll=Instance.new("\084\101\120\116\076\097\098\101\108",_IIIlIllIII); _IIIlIIIlll.Text=_llllIllIlI; _IIIlIIIlll.Font=Enum.Font.Code; _IIIlIIIlll.TextSize=0xD
    _IIIlIIIlll.TextColor3=_lIlIIllIlI and _lIIIIIllIl.green or _lIIIIIllIl.neon; _IIIlIIIlll.BackgroundTransparency=0x1
    _IIIlIIIlll.Size=UDim2.new(0x0,0xC8,0x1,0x0); _IIIlIIIlll.Position=UDim2.new(0x0,0x30,0x0,0x0); _IIIlIIIlll.TextXAlignment=Enum.TextXAlignment.Left
    local _llIIIIIlll=Instance.new("\084\101\120\116\076\097\098\101\108",_IIIlIllIII); _llIIIIIlll.Text=os.date("\037\072\058\037\077\058\037\083"); _llIIIIIlll.Font=Enum.Font.Gotham
    _llIIIIIlll.TextSize=0x9; _llIIIIIlll.TextColor3=_lIIIIIllIl.muted; _llIIIIIlll.BackgroundTransparency=0x1
    _llIIIIIlll.Size=UDim2.new(0x0,0x3E,0x1,0x0); _llIIIIIlll.Position=UDim2.new(0x1,-0x41,0x0,0x0); _llIIIIIlll.TextXAlignment=Enum.TextXAlignment.Left
    table.insert(_IIIIlIIlII,0x1,_IIIlIllIII)
    if #_IIIIlIIlII>0x7 then _IIIIlIIlII[0x8]:Destroy(); table.remove(_IIIIlIIlII,0x8) end
    for i,_llllllllII in ipairs(_IIIIlIIlII) do _llllllllII.LayoutOrder=i end
end

local function _llIlIlllIl()
    if not _lIIIIIIlIl or not _lIIIIIIlIl.Parent then
        kbStatus.Text="\078\111\032\084\101\120\116\066\111\120\032\102\111\099\117\115\101\100\032\045\032\099\108\105\099\107\032\111\110\101\032\102\105\114\115\116\033"
        kbStatus.TextColor3=_lIIIIIllIl.red; kbStatus.Visible=true
        task.delay(2.5,function() kbStatus.Visible=false end); return
    end
    local _llllIllIlI=_IlllIlIlIl(); local _lIlIIllIlI=(_IIlIlllIIl.Mode~="\114\097\110\100\111\109")
    _lIllllIIII(_lIIIIIIlIl,_llllIllIlI)
    _llIIIIllll.Value=_llIIIIllll.Value+0x1; _IllllIIlll=_IllllIIlll+0x1
    if _lllIIlIllI then _lllIIlIllI.Text=tostring(_llIIIIllll.Value) end
    if sessLbl  then sessLbl.Text=tostring(_IllllIIlll) end
    if lenLbl   then lenLbl.Text=tostring(_IIlIlllIIl.LetterCount) end
    _IIlIIIllll(_llllIllIlI,_lIlIIllIlI)
    if _llIIIlllII then _llIIIlllII.Text=_IlllIlIlIl() end
    kbStatus.Text="\068\111\110\101\058\032\032"..text; kbStatus.TextColor3=_lIIIIIllIl.green; kbStatus.Visible=true
    task.delay(2.5,function() kbStatus.Visible=false end)
end

_lIlllIIlII.MouseButton1Click:Connect(_llIlIlllIl)
_IIIIlIIlII.MouseButton1Click:Connect(_llIlIlllIl)

local _llllllllII=false
kbSetBtnRef.MouseButton1Click:Connect(function()
    if _llllllllII then return end
    _llllllllII=true; kbSetBtnRef.Text="\091\032\076\105\115\116\101\110\105\110\103\046\046\046\032\093"
    _IlIllllIll(kbSetBtnRef,{BackgroundColor3=_lIIIIIllIl.a1},0.2)
    kbStatus.Text="\080\114\101\115\115\032\097\110\121\032\107\101\121\046\046\046"; kbStatus.TextColor3=_lIIIIIllIl.yellow; kbStatus.Visible=true
end)

UserInputService.InputBegan:Connect(function(input,gp)
    if _llllllllII then
        if input.UserInputType==Enum.UserInputType.Keyboard then
            _IIlIlllIIl.Keybind=input.KeyCode
            local _lIIlIIIlIl=tostring(input.KeyCode):gsub("\069\110\117\109\046\075\101\121\067\111\100\101\046","")
            _IlIlIllIlI.Text=_lIIlIIIlIl; kbSetBtnRef.Text="\091\032\067\108\105\099\107\032\116\111\032\082\101\098\105\110\100\032\093"
            _IlIllllIll(kbSetBtnRef,{BackgroundColor3=Color3.fromRGB(0x2A,0x12,0x50)},0.2)
            kbStatus.Text="\075\101\121\098\105\110\100\032\115\101\116\032\116\111\032\032"..name; kbStatus.TextColor3=_lIIIIIllIl.green
            task.delay(0x2,function() kbStatus.Visible=false end); _llllllllII=false
        end
        return
    end
    if input.KeyCode==_IIlIlllIIl.Keybind then _llIlIlllIl() end
end)

-- ============================================================
-- INIT
-- ============================================================
if _lllIIlIllI then _lllIIlIllI.Text=tostring(_llIIIIllll.Value) end
if sessLbl  then sessLbl.Text="\048" end
if lenLbl   then lenLbl.Text=tostring(_IIlIlllIIl.LetterCount) end
_IllIIlIllI[0x1].page.Visible=true
_IlIllllIll(_IllIIlIllI[0x1].btn,{BackgroundColor3=_lIIIIIllIl.tabOn},0x0); _IlIllllIll(_IllIIlIllI[0x1].btn,{TextColor3=_lIIIIIllIl.a3},0x0)

-- ============================================================
-- STARTUP ANIMATION
-- ============================================================
task.spawn(function()
    _IlIllllIll(_llIllIIIII,{BackgroundTransparency=0.55},0.5,Enum.EasingStyle.Quad)
    _IlIllllIll(_IIIIllIIll,{BackgroundTransparency=0.44},0.5,Enum.EasingStyle.Quad)
    _IlIllllIll(_lIIIlIlllI,{BackgroundTransparency=0.26},0.5,Enum.EasingStyle.Quad)
    _IlIllllIll(_lIIlllIllI,{Transparency=0.2},0.5)
    task.wait(0.55)
    _IlIllllIll(_IIIIIIlIll,{TextTransparency=0x0},0.4,Enum.EasingStyle.Quad)
    task.wait(0.28)
    _IlIllllIll(_lIIIllIlll,{TextTransparency=0x0},0.35,Enum.EasingStyle.Quad)
    _IlIllllIll(_lIllIIIIII,{TextTransparency=0x0},0.35,Enum.EasingStyle.Quad)
    task.wait(0.3)
    _IlIllllIll(_IIllIllIIl,{BackgroundTransparency=0x0},0.2)
    task.wait(0.1)
    _IlIllllIll(_IIIIlllllI,{Size=UDim2.new(0x1,0x0,0x1,0x0)},0.85,Enum.EasingStyle.Quad)
    task.wait(0.95)
    -- pulse _IIllllIIIl once
    _IlIllllIll(_lIIlllIllI,{Transparency=0x0,Color=Color3.fromRGB(0xC8,0x78,0xFF)},0.2)
    task.wait(0.2)
    _IlIllllIll(_lIIlllIllI,{Transparency=0x1},0.3)
    task.wait(0.1)
    -- fade _llIIIllIlI
    _IlIllllIll(_llIIIllIlI,{BackgroundTransparency=0x1},0.38,Enum.EasingStyle.Quad)
    _IlIllllIll(_IIIIIIlIll,{TextTransparency=0x1},0.28)
    _IlIllllIll(_lIIIllIlll,{TextTransparency=0x1},0.28)
    _IlIllllIll(_lIllIIIIII,{TextTransparency=0x1},0.28)
    _IlIllllIll(_llIllIIIII,{BackgroundTransparency=0x1},0.28)
    _IlIllllIll(_IIIIllIIll,{BackgroundTransparency=0x1},0.28)
    _IlIllllIll(_lIIIlIlllI,{BackgroundTransparency=0x1},0.28)
    _IlIllllIll(_IIllIllIIl,{BackgroundTransparency=0x1},0.28)
    task.wait(0.36)
    _llIIIllIlI:Destroy()
    -- window slides in
    _IIlIlllIlI.Position=UDim2.new(0.5,-_llIIIIlIll/0x2,0.5,-H/0x2+0x1C)
    _IIlIlllIlI.BackgroundTransparency=0x1; _IIlIlllIlI.Visible=true
    _IlIllllIll(_IIlIlllIlI,{Position=UDim2.new(0.5,-_llIIIIlIll/0x2,0.5,-H/0x2)},0.36,Enum.EasingStyle.Back)
    _IlIllllIll(_IIlIlllIlI,{BackgroundTransparency=0x0},0.28)
    -- neon border pulses _IIIIIIIIIl _IIlIIllIIl
    _IlIllllIll(_lIllIlIIII,{Color=_lIIIIIllIl.neon,Thickness=0x2},0.2)
    task.wait(0.5)
    _IlIllllIll(_lIllIlIIII,{Color=_lIIIIIllIl.neonB,Thickness=1.5},0.4)
end)

print("\091\076\111\103\105\099\115\067\108\105\099\107\101\114\032\118\053\046\049\093\032\082\101\097\100\121\032\045\032"..LP.Name)
 end)(...)
