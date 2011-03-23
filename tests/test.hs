{-# LANGUAGE OverloadedStrings #-}
module Main where

--import Prelude hiding (id)
--import Control.Category (id)
import Control.Arrow ((>>>), (***), arr)
import Control.Monad (forM_)
-- import Data.Monoid (mempty, mconcat)

-- import System.FilePath

import Hakyll

    
main :: IO ()
main = hakyll $ do

    route   "css/*" $ setExtension "css"
    compile "css/*" $ byExtension (error "Not a (S)CSS file")
        [ (".css",  compressCssCompiler)
        , (".scss", sass)
        ]

    route   "js/**" idRoute
    compile "js/**" copyFileCompiler

    route   "img/*" idRoute
    compile "img/*" copyFileCompiler

    compile "templates/*" templateCompiler

    forM_ ["test.md", "index.md"] $ \page -> do
        route   page $ setExtension "html"
        compile page $ pageCompiler
            >>> applyTemplateCompiler "templates/default.html"
            >>> relativizeUrlsCompiler

sass :: Compiler Resource String
sass = getResourceString >>> unixFilter "sass" ["-s", "--scss"]
                         >>> arr compressCss
