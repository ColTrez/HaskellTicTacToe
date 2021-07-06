module DrawingFunctions
    ( grid
    , fixedWords) where

import Graphics.Gloss

grid :: Picture
grid = pictures lines
    where
        lines :: [Picture]
        lines = map (color white) [(Line [(-100,400),(-100,-200)]),
                                   (Line [(100,400),(100,-200)]),
                                   (Line [(-300,200),(300,200)]),
                                   (Line [(-300,0),(300,0)]),
                                   (Line [(-300,-200),(300,-200)])]

-- This function is condemned to be fuck-ugly because Gloss
-- doesnt let you set size or location when creating Text 'objects'
fixedWords :: Picture
fixedWords = pictures words
        where
            words :: [Picture]
            words = map (color white) [translate (-300) (-250) $ scale 0.33 0.33 (Text "Turn: "), translate (-300) (-300) $ scale 0.25 0.25 (Text "Player O wins: "),
                                       scale 0.25 0.25 (Text "Player O wins: "), scale 0.25 0.25 (Text "Draws: ")]
