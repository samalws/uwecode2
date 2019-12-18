module Uwecode.Project where

import Uwecode.UweObj
import Uwecode.IO
import Uwecode.StdIOs
import Control.Monad.Trans.Class
import System.IO
import System.FilePath

projectFolderName :: FilePath
projectFolderName = ".uwe"

projectLocation :: FilePath -> FilePath
projectLocation f = takeDirectory f </> projectFolderName

iosFileName :: FilePath
iosFileName = "ios"

iosLocation :: FilePath -> FilePath
iosLocation projLoc = projLoc </> iosFileName

getProjectIOs :: IO ([String], [String], String)
getProjectIOs = return (["Uwecode.StdIOs", "Control.Monad.Trans.Class"], ["printIO", "getThreadNumIO", "delayIO"], "(lift $ putStrLn \"thread done\\n\")") --TODO

optimizeObj :: UweObj -> IO ([String], String)
optimizeObj obj = return ([], show obj)
