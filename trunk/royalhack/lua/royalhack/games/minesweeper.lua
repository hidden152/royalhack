/*

 ______     ______     __  __     ______     __            __  __     ______     ______     __  __
/\  == \   /\  __ \   /\ \_\ \   /\  __ \   /\ \          /\ \_\ \   /\  __ \   /\  ___\   /\ \/ /
\ \  __<   \ \ \/\ \  \ \____ \  \ \  __ \  \ \ \____     \ \  __ \  \ \  __ \  \ \ \____  \ \  _"-.
 \ \_\ \_\  \ \_____\  \/\_____\  \ \_\ \_\  \ \_____\     \ \_\ \_\  \ \_\ \_\  \ \_____\  \ \_\ \_\
  \/_/ /_/   \/_____/   \/_____/   \/_/\/_/   \/_____/      \/_/\/_/   \/_/\/_/   \/_____/   \/_/\/_/
  EXTREM WIP !!!!
  old
*/
function LoadItems()
Msg("\n ---------------------------------------------------- \n")
Msg("Load Items...")
if !file.Exists("minesweeper/LoseId.txt") then
file.Write("minesweeper/LoseId.txt", 1)
Msg("LoseId.txt")
else
Msg("LoseId.txt")
if !file.Exists("minesweeper/AllId.txt") then
file.Write("minesweeper/AllId.txt", 1)
Msg("AllId.txt")
else
Msg("AllId.txt")
if !file.Exists("minesweeper/WinId.txt") then
file.Write("minesweeper/WinId.txt", 1)
Msg("WinId.txt")
Msg("-------------------------------------------------------")
else
Msg("WinId.txt")
Msg("-------------------------------------------------------")
			end
		end
	end
end

local LoseCount = 0
local WinCount = 0
local AllCount = 0
local Win = true
function ReadData()
Date = tostring(os.date())
LoseId = tonumber(file.Read("minesweeper/LoseId.txt"))
AllId = tonumber(file.Read("minesweeper/AllId.txt"))
WinId = tonumber(file.Read("minesweeper/AllId.txt")) - tonumber(file.Read("minesweeper/LoseId.txt"))
WinP = (AllId/100)*WinId
end

function Main()
LoadItems()
ReadData()
local Mines = vgui.Create( "RoyalFrame" )
Mines:SetPos(500,300 )
Mines:SetSize( 300, 300 )
Mines:SetTitle( "MineSweeper" )
Mines:ShowCloseButton( true )
Mines:SetVisible( true )
Mines:SetDraggable( true)
Mines:MakePopup()


local Playfield = vgui.Create( "DPanel", Mines )
Playfield:SetPos( 25, 25 )
Playfield:SetSize( 243, 243 )
Playfield.Paint = function() 
    surface.SetDrawColor( 50, 50, 50, 255 ) 
    surface.DrawRect( 0, 0, Playfield:GetWide(), Playfield:GetTall() ) 

end

local function TextBox()
local TB = vgui.Create( "RoyalFrame" )
TB:SetPos(500,300 )
TB:SetSize( 350, 200 )
TB:SetTitle( "Spiel Verloren" )
TB:ShowCloseButton( true )
TB:SetVisible( true )
TB:SetDraggable( true)
TB:MakePopup()
if Win == true then
constt= vgui.Create("DLabel", TB)
constt:SetText("Spiel Gewonnen. Spielen Sie noch einmal")
constt:SetPos(80,30)
constt:SetSize(300,20)
else
constt= vgui.Create("DLabel", TB)
constt:SetText("Leider verloren. Spielen Sie noch einmal")
constt:SetPos(80,30)
constt:SetSize(300,20)
end
cons=vgui.Create("DLabel", TB)
cons:SetText(" Zeit:  Sekunden \n Bestzeit:  Sekunde                     Datum: "..Date.." \n Gespielte Spiele: "..AllId.." \n Gewonnene Spiele: "..WinId.."                     Prozentsatz: "..WinP.." ")
cons:SetPos(20,20)
cons:SetSize(350,150)
								ex=vgui.Create("DButton",TB)
                ex:SetText("Beenden")
                ex:SetPos(10,160)
                ex:SetSize(100,20)
				ex.DoClick = function ()
				Mines:Close()
				end
				
				               new=vgui.Create("DButton",TB)
                new:SetText("Spiel neu starten")
                new:SetPos(125,160)
                new:SetSize(100,20)
				new.DoClick = function ()
				Mines:Close()
				RunConsoleCommand("fuck_play")
				end
				
				                newsx=vgui.Create("DButton",TB)
                newsx:SetText("Erneut spielen")
                newsx:SetPos(240,160)
                newsx:SetSize(100,20)
				newsx.DoClick = function ()
				
				end

end

local function CreateMine()
Mines1 = math.random(1,30)
MineX = {}
MineY = {}
MineY[1] = 12
MineX[1] = 1
--
MineY[2] = 1
MineX[2] = 12
--
MineY[3] = 34
MineX[3] = 23
--
MineY[4] = 12
MineX[4] = 34
--
MineY[5] = 12
MineX[5] = 45
--
MineY[6] = 1
MineX[6] = 56
--
MineY[7] = 232
MineX[7] = 67
--
MineY[8] = 122
MineX[8] = 78
--
MineY[9] = 45
MineX[9] = 89
--
MineY[10] = 122
MineX[10] = 100
--
MineY[11] = 155
MineX[11] = 67
--
MineY[12] = 144
MineX[12] = 232
--
MineY[13] = 12
MineX[13] = 133
--
MineY[14] = 1
MineX[14] = 232
--
MineY[15] = 45
MineX[15] = 155
--
MineY[16] = 89
MineX[16] = 166
--
MineY[17] = 1
MineX[17] = 177
--
MineY[18] = 12
MineX[18] = 78
--
MineY[19] = 100
MineX[19] = 199
--
MineY[20] = 199
MineX[20] = 210
--
MineY[21] = 34
MineX[21] = 221
--
MineY[22] = 11
MineX[22] = 232
--
MineY[23] = 12
MineX[23] = 78
--
MineY[24] = 67
MineX[24] = 12
--
MineY[25] = 56
MineX[25] = 56
--
MineY[26] = 12
MineX[26] = 34
--
MineY[27] = 12
MineX[27] = 67
--
MineY[28] = 12
MineX[28] = 111
--
MineY[29] = 32
MineX[29] = 67
--
MineY[30] = 12
MineX[30] = 78
for k=1, Mines1 do
l=vgui.Create("Mine")
				l:SetMaterial( "VGUI/entities/npc_mossman" )
                l:SetParent(Playfield)
                l:SetText("X")
                l:SetPos(MineX[k],MineY[k])
                l:SetSize(10,10)
				l.OnCursorEntered = function()
				RunConsoleCommand("say",""..LocalPlayer():Name().." hat das Spiel Verloren :(")
			TextBox()
			LoseCount = LoseId + 1
			file.Write("minesweeper/LoseId.txt", LoseCount)
				end
	end
	Fields = 484 - Mines1
	Msg("Mines1 "..Mines1.." ")
	
end




CreateMine()
for  w=1, 22 do
        for h=1, 22 do
			for i=1, 1 do
			x= w*11-10
			y= h*11 -10
			Msg("MineX["..i.."] = "..y.."\nMineY["..i.."] = "..x.."\n")
			file.Write("minesweeper/pos.txt","\n Button: "..i.." was created X: "..x.." Y: "..y.."\n")
                i=vgui.Create("HButton")
                i:SetParent(Playfield)
                i:SetText(" ")
                i:SetPos((w*11)-10,(h*11)-10)
                i:SetSize(10,10)
				i.DoClick = function ()
		i:Remove()
		local RealFields = Fields
		Zonk = RealFields - 1
		Msg("Realf;"..Zonk.." "..Fields.." ")
				end
			end
		end
	end
	AllCount = AllId + 1
	file.Write("minesweeper/AllId.txt", AllCount)
	/*if (RealFields < 1) then
	WinCount = WinId + 1
	file.Write("minesweeper/WinID.txt", WinCount)
	Win = true
	Testbox()	
	end*/
	
	RunConsoleCommand("say",""..LocalPlayer():Name().." spielt zur Zeit Minesweeper 0.9b von Royal.")
end
concommand.Add("Royalhack_minespweeper",Main)
/*

error log
*/