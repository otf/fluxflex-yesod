{-# LANGUAGE OverloadedStrings, MultiParamTypeClasses, TypeFamilies, TemplateHaskell, QuasiQuotes #-}
module Main (main) where
import Yesod
import Network.Wai.Handler.Warp (run)

data Fluxflex = Fluxflex

mkYesod "Fluxflex" [parseRoutes|
/ HomeR GET
|]

instance Yesod Fluxflex where

getHomeR :: Handler RepHtml
getHomeR = defaultLayout [whamlet|Hello, Yesod!|]

main :: IO ()
main = warp 80 Fluxflex 
