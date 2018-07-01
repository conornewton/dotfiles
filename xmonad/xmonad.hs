import XMonad
import XMonad.Config.Desktop
import XMonad.Util.EZConfig
import XMonad.Hooks.DynamicLog
import XMonad.Layout.Spacing

main :: IO ()
main = do xs <- xmobar defaults
          xmonad $ xs `additionalKeys` addKeys

myLayoutHook = smartSpacing 2 $ Tall 1 (3/100) (1/2)

myStartUpHook = do spawn "compton"
                   spawn "nitrogen --restore"
                   spawn "light-locker"
                   spawn "setxkbmap gb"


myModMask = mod1Mask
myTerminal = "urxvt"
myNormalBorderColor = "#7c7c7c"
myFocusedBorderColor = "#ffb6b0"
myBorderWidth = 3

xmobarTitleColor = "#ffb6b0"
xmobarCurrentWorkspaceColor = "#ceffac"

addKeys = [((myModMask .|. shiftMask, xK_l), spawn "light-locker-command -l"),
           ((myModMask, xK_Return), spawn myTerminal)]

defaults = desktopConfig {terminal = myTerminal,
                          modMask = myModMask,
                          borderWidth = myBorderWidth,
                          normalBorderColor = myNormalBorderColor,
                          focusedBorderColor = myFocusedBorderColor,
                          startupHook = myStartUpHook,
                          layoutHook = myLayoutHook }
