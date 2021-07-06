module Main where

import Graphics.Gloss
import Graphics.Gloss.Interface.IO.Interact

import DrawingFunctions

main :: IO ()
main = interactIO window black "hi" draw readClick controllerSetRedraw
    where
        window :: Display
        window = InWindow "TicTacToe" (600, 800) (20, 20)

        draw :: String -> IO Picture
        draw s = return $ pictures [(render s), grid]
        
        render :: String -> Picture
        render s = translate (-200) 0 $ Text s

        readClick :: Event -> String -> IO String
        readClick (EventKey (MouseButton LeftButton) Down _ _) s = return $ s ++ " world"
        readClick _ s = return s

