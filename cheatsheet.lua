-- Declare variables
message = "lua is awesome"

-- Conditional statements
condition = 0
if (condition > 0) then
  message = "Condition is greater than zero"
elseif (condition == 0) then
  message = "Condition is equal to zero"
else
  message = "Condition is less than zero"
end

-- Loops
whileIterator = 10
while whileIterator < 15 do
  whileIterator = whileIterator + 1
end

forIterator = 0
-- Equivilant of for (i = 0; i <= 3; i++)
for i = 0, 3, 1 do
  forIterator = forIterator + 1
end

-- Functions
functionIterator = 0
function increaseIterator(value)
  functionIterator = functionIterator + value
end
increaseIterator(5)

function doubleValue(value)
  value = value * 2
  return value
end

--[[
This
is
a
multiline
comment
]]

-- Local v global
function squareValue(value)
  local var = value
  var = var * var
  return var
end

-- Tables
-- Tables' index begins at 1, not 0
testScores1 = {}
testScores1[1] = 95
testScores1[2] = 87
testScores1[3] = 98

testScores2 = {95, 87, 98}

testScores3 = {}
table.insert(testScores3, 95)
table.insert(testScores3, 87)
table.insert(testScores3, 98)

-- i = index, s = value
tableIterator = 0
for i,s in ipairs(testScores1) do
  tableIterator = tableIterator + s
end

-- Add properties to tables, such as 'subject' as 'history'
testScores1.subject = "history"


-- Printing text
function love.draw()
  love.graphics.setFont(love.graphics.newFont(50))
  love.graphics.print(message)
end
