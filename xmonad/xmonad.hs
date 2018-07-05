import XMonad
import XMonad.Config.Desktop
import XMonad.Util.EZConfig
import XMonad.Util.Run
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Layout.Spacing
import XMonad.Layout.Fullscreen
import XMonad.Layout.MultiToggle


main :: IO ()
main = do xproc <- statusBar "xmobar" myPP toggleStrutsKey myConfig
          xmonad $ xproc `additionalKeys` addKeys

myLayoutHook = avoidStruts $ smartSpacing 4 $ Tall 4 (3/100) (1/2)

myStartUpHook = do spawn "compton"
                   spawn "nitrogen --restore"
                   spawn "light-locker"
                   spawn "setxkbmap gb"

myManageHook = composeAll [isFullscreen --> doFullFloat,
                           manageHook defaultConfig] 

myModMask = mod1Mask
myTerminal = "urxvt"
myNormalBorderColor = "#7c7c7c"
myFocusedBorderColor = "#ffb6b0"
myBorderWidth = 3

myPP = xmobarPP {ppCurrent = xmobarColor "#429932" "" . wrap "<" ">"}
toggleStrutsKey _ = (myModMask, xK_b)

addKeys = [((myModMask .|. shiftMask, xK_l), spawn "light-locker-command -l"),
           ((myModMask, xK_c), kill),
           ((myModMask, xK_q), spawn "killall xmobar; xmonad --recompile && xmonad --restart")]

myConfig = desktopConfig {terminal = myTerminal,
                          modMask = myModMask,
                          borderWidth = myBorderWidth,
                          normalBorderColor = myNormalBorderColor,
                          focusedBorderColor = myFocusedBorderColor,
                          startupHook = myStartUpHook,
                          layoutHook = myLayoutHook,
                          manageHook = myManageHook}
