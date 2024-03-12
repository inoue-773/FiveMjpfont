Citizen.CreateThread(function()

    RegisterFontFile('NotoSansBold')
    local jpfont = RegisterFontId('NotoSansBold')
	
    print('Registered font:' .. jpfont)
	
end)
Citizen.CreateThread(function()

    RegisterFontFile('NotoSansMedium')
    local jpfont2 = RegisterFontId('NotoSansMedium')
	
    print('Registered font:' .. jpfont2)
	
end)
Citizen.CreateThread(function()

    RegisterFontFile('NotoSansSemiBold')
    local jpfont3 = RegisterFontId('NotoSansSemiBold')
	
    print('Registered font:' .. jpfont3)
	
end)
Citizen.CreateThread(function()

    RegisterFontFile('NotoSansThin')
    local jpfont4 = RegisterFontId('NotoSansThin')
	
    print('Registered font:' .. jpfont4)
	
end)



