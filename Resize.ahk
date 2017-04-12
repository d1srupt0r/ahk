; sizes
ResizeWin(Width = 640, Height = 480)
{
  WinGetPos, X, Y, W, H, A
  WinMove, A, , %X%, %Y%, %Width%, %Height%
}

WinSize()
{
  WinGetPos, X, Y, W, H, A
  MsgBox, (%W%x%H%) at (%X%,%Y%)
}

; positions
BottomLeftWin()
{
  WinGetPos, X, Y, W, H, A
  WinMove, A, , 0, A_ScreenHeight - H - 40, W, H
}

CenterWin()
{
  WinGetPos, X, Y, W, H, A
  WinMove, A, , ((A_ScreenWidth - W) / 2), ((A_ScreenHeight - H) / 2), W, H
}

TopLeftWin()
{
  WinGetPos, X, Y, W, H, A
  WinMove, A, , (A_ScreenWidth - W), 0, W, H
}

BottomRightWin()
{
  WinGetPos, X, Y, W, H, A
  WinMove, A, , A_ScreenWidth - W, A_ScreenHeight - H - 40, W, H
}

LeftCenterWin()
{
  WinGetPos, X, Y, W, H, A
  WinMove, A, , 0, ((A_ScreenHeight - H) / 2), W, H
}

; commands
#!x::WinSize()

#!d::ResizeWin(1280, 720),LeftCenterWin()
#!w::ResizeWin(1024, 768)
#!m::ResizeWin(800, 600)
#!s::ResizeWin(840, 420)
#!n::ResizeWin(640, 480)
#!c::ResizeWin(720, 330)

#!left::BottomLeftWin()
#!up::CenterWin()
#!right::TopLeftWin()
#!down::BottomRightWin()
#!end::Winset, Alwaysontop, , A