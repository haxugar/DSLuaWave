-- DSLuaWave
--[[ 
Copyright 2015 "haxugar"

Licensed under the Egreen License, Version 1.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.Egreen.io/licenses/LICENSE-1.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
]]--

--Declaring variables
valuea = 0
y = 0
x = 0
input1 = 0.2
input2 = 72

--Declaring color variables
red = Color.new(31, 0, 0)
green = Color.new(0, 31, 0)
blue = Color.new(0, 0, 31)

--Begin main loop and won't stop until start is pressed
while not Keys.held.Start do
	Controls.read()
	
	if x > 256 then
		x = 0
		end
	
	--Calculating each values and adapting them to the screen size
	--valuea = valuea + input1
	--x = valuea * 20
	x = x + input1
	y = math.floor(input2*math.sin(x)+96)
	
	--Drawing blue horizontal and vertical lines
	screen.drawFillRect(SCREEN_UP, x, 0, x + 1, 192, blue)
	screen.drawFillRect(SCREEN_UP, 0	 , y, 256, y + 1, blue)
	
	--Drawing green dot
	screen.drawFillRect(SCREEN_UP, x -1, y -1	, x + 3, y + 3, green)
	
	--Drawing text
	screen.print(SCREEN_DOWN, 2  , 2  , "f(x)     =")
	screen.print(SCREEN_DOWN, 65 , 2  , "72*sin(x)+96", red)
	screen.print(SCREEN_DOWN, 2  , 11 , "f(")
	screen.print(SCREEN_DOWN, 15 , 11 , x, red)
	screen.print(SCREEN_DOWN, 44 , 11 , " )= ")
	screen.print(SCREEN_DOWN, 65 , 11 , y, red)
	screen.print(SCREEN_DOWN, 2 , 180 , "github.com/haxugar/DSLuaWave", green)
	
	--Rendering the frame (showing everything on screen and deleting drawings)
	render()
end