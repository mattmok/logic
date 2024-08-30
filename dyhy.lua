i = 0
running = false
x,y = GetMousePosition()

function OnEvent(event, arg)
  if (event == "MOUSE_BUTTON_PRESSED" and arg == 6) then
    running = not running
    if running then
      i = 0
      if not IsKeyLockOn("numlock") then
        PressAndReleaseKey("numlock")
        Sleep(100)
      end
      --OutputLogMessage("%s\n", IsKeyLockOn("numlock"))
      x,y = GetMousePosition()
      while IsKeyLockOn("numlock") do
        method1()
        --method2()
      end
      running = false
      i = 0
    end
  end
end


function method1()
  --PressMouseButton(3)
  --Sleep(10)
  --MoveMouseTo(x, y)
  --MoveMouseTo(32767, 32767)
  --Sleep(20)
  PressAndReleaseKey("c")
  PressKey("w")
  Sleep(968)
  ReleaseKey("w")
  Sleep(20)
  PressAndReleaseKey("c")
  PressAndReleaseKey("v")
  Sleep(50)
  for i = 0,5 do 
    erduantiao()
    Sleep(5)
    PressAndReleaseKey("v")
  end
  PressKey("s")
  Sleep(100)
  PressAndReleaseKey("lctrl")
  Sleep(100)
  ReleaseKey("s")
  Sleep(800)
  --MoveMouseTo(52192, 34521)
  --x,y = GetMousePosition()
  --OutputLogMessage("Mouse1 is at %d, %d\n", x, y)
  --for i = 0,750 do
    --MoveMouseRelative(1, 0)
    --Sleep(10)
    --x,y = GetMousePosition()
    --OutputLogMessage("Mouse2 is at %d, %d\n", x, y)
  --end
  --ReleaseKey("w")
  --向后转身
  --MoveMouseRelative(786, 0)
  --Sleep(10)
  --x,y = GetMousePosition()
  --OutputLogMessage("Mouse2 is at %d, %d\n", x, y)
  --PressAndReleaseKey("v")
  --ReleaseMouseButton(3)
  --Sleep(1500)
end


function method2()
  if i%35 == 0 then
    PressAndReleaseKey("c")
    Sleep(1200)
  end
  if i%10 == 0 then
    PressKey("z")
    Sleep(550)
    PressMouseButton(1)
    Sleep(50)
    ReleaseMouseButton(1)
    Sleep(50)
    ReleaseKey("z")
  end
  Sleep(800)
  i = i + 1
  OutputLogMessage("%d\n", i)
end

function erduantiao()
  PressKey("spacebar")
  Sleep(10)
  ReleaseKey("spacebar")
  Sleep(100)
  PressKey("spacebar")
  Sleep(10)
  ReleaseKey("spacebar")
  Sleep(1100)
end
