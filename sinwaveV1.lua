valuea = 0
valueb = 0
valuec = 0

red = Color.new(31, 0, 0)
green = Color.new(0, 31, 0)
blue = Color.new(0, 0, 31)

while not Keys.held.Start do
	randint = math.random(0,1)*31
	randcolor = Color.new(randint, randint, randint)
	if valuec > 256 then
		valuea = 0
		end
	valuea = valuea + 0.1
    valuec = valuea * 20
	valueb = math.floor(math.sin(valuea)*50)+100
	render()
	-- x , x , y , y , green     |	x1		|	y1		|	x2		|	y2		|	color	
	screen.drawFillRect(SCREEN_UP, valuec 	, 0			, valuec + 1, 192		, blue)
	screen.drawFillRect(SCREEN_UP, 0	 	, valueb 	, 256		, valueb + 1, blue)
	
	screen.drawFillRect(SCREEN_UP, valuec -1, valueb -1	, valuec + 3, valueb + 3, green)
	
	screen.print(SCREEN_DOWN, 2  , 2  , "f(x) = ")
	screen.print(SCREEN_DOWN, 158, 2  , "sin(x*20)*50+100", red)
    screen.print(SCREEN_DOWN, 2  , 11 , "f(")
	screen.print(SCREEN_DOWN, 15 , 11 , valuea, red)
	screen.print(SCREEN_DOWN, 40 , 11 , ") = ")
	screen.print(SCREEN_DOWN, 64 , 11 , valueb, red)
	screen.print(SCREEN_DOWN, 60 , 180 , "Programmed by Victor V.", randcolor)
end