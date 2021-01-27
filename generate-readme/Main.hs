{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Aeson
import Data.Bifunctor (first)
import Data.Char (toLower)
import Data.List (intercalate, sortOn)
import GHC.Generics
import System.Environment
import Text.Parsec
import Text.Parsec.Text

data Streamer = Streamer
  { name :: String,
    channel :: String,
    speaking :: [String],
    languages :: [String],
    schedule :: String
  }
  deriving (Show, Generic, FromJSON)

startFence :: String
startFence = "<!-- generated:start -->"

endFence :: String
endFence = "<!-- generated:end -->"

readmeP :: Parser (String, String)
readmeP =
  (,)
    <$> manyTill anyChar (string startFence)
    <* manyTill anyChar (string endFence)
    <*> manyTill anyChar eof

streamer :: Streamer -> String
streamer s =
  intercalate
    "\n"
    [ "- [" <> name s <> "](" <> channel s <> "):",
      "  - Speaking: " <> intercalate ", " (speaking s),
      "  - Programming Languages: " <> intercalate ", " (languages s),
      "  - Schedule: " <> schedule s
    ]

generateReadme :: (String, String) -> [Streamer] -> String
generateReadme (before, after) ss =
  intercalate
    "\n"
    [ before <> startFence <> "\n",
      intercalate "\n" $ fmap streamer ss,
      "\n" <> endFence <> after
    ]

readme :: String
readme = "Usage: ./generate-readme README.md streamers.json"

main :: IO ()
main = do
  args <- getArgs
  case args of
    [readmeFileName, streamerFileName] -> do
      contents <- first show <$> parseFromFile readmeP readmeFileName
      streamers <- (fmap . fmap) (sortOn (fmap toLower . name)) $ eitherDecodeFileStrict streamerFileName
      case generateReadme <$> contents <*> streamers of
        Right newContents -> putStr newContents
        Left err -> putStrLn err
    _ -> putStrLn readme
