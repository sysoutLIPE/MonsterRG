--[[

Program Name: demonRG.lua
Author: Felipe Marques da Costa Moreira
Github: @sysoutLIPE
Graduating in Computer Engeneering
Date: 16/09/2023
Description: Program to print a demon card with attributes and progress bar.
Country: Brazil
Program: That program was made to the formation Lua Developer from Digital Innovation One.
Idiom: English
Progamming language: Lua
Program Version: 1.0
Platform: VSCode

Notes: - To run this program you need to install Lua in your machine and run the command "lua monsterRG.lua" in the terminal.
       - That program was made reusing the code from the teacher Gabriel Henrique.
]]--


--  To UTF-8
os.execute("chcp 65001")

-- Demon
local demonName = "Demoniak"
local description = "A demon that looks like a ugly frog."
local emoji = "💥"
local sound = "RAWWWWWWR"
local favoriteTime = "Noturno"
local letalItem = "Devil's Tongue"
local habitat = "Swamps"

-- Attributes
local attackAttribute = 9
local defenseAttribute = 3
local lifeAttribute = 6
local speedAttribute = 8
local inteligenceAttribute = 1

-- Function to get the progress bar
local function getProgressBar(attribute)
    local fullChar = "💙"
    local emptyChar = "🤍"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

-- Card's line defined to begin and end the card
local function printCardLine()
    print("| " .. string.rep("=", 48))
end

-- Card's pipe( only one per line unsed to separate the card's content)
local function printCardPipe()
    print("| ")
end

-- RG Card
printCardLine()
printCardPipe()
print("| " .. demonName)
print("| " .. description)
printCardPipe()
print("| " ..  "Item: " .. letalItem)
print("| " ..  "Sound: " .. sound)
print("| " ..  "Emoji: " .. emoji)
print("| " ..  "Favorite Time: " .. favoriteTime)
print("| " ..  "Habitat: " .. habitat)
printCardPipe()
print("| " ..  string.rep("-", 9) .. "Attributes" .. string.rep("-", 9))
print("| " ..  "    Attack:" .. string.rep(" ", 8) .. getProgressBar(attackAttribute))
print("| " ..  "    Defense:" .. string.rep(" ", 7) .. getProgressBar(defenseAttribute))
print("| " ..  "    Life:".. string.rep(" ", 10) .. getProgressBar(lifeAttribute))
print("| " ..  "    Speed:" .. string.rep(" ", 9) .. getProgressBar(speedAttribute))
print("| " ..  "    Inteligence:" .. string.rep(" ", 3) .. getProgressBar(inteligenceAttribute))
printCardPipe()
printCardLine()