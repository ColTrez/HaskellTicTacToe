module TypesAndConstants(
   Space ) where

data Space = O | Blank | X 
            deriving (Show, Eq)

data Board = [Space] -- list of 9 spaces

data Turn = Space O | Space X


