#!/usr/bin/env stack
{- stack
   script
   --resolver lts-16.21
   --package aeson
   --package parsec
-}

{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

import Data.Aeson
import Data.Bifunctor (first)
import Data.List (intercalate)
import GHC.Generics
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

main :: IO ()
main = do
  contents <- first show <$> parseFromFile readmeP "README.md"
  streamers <- eitherDecodeFileStrict "streamers.json"
  case generateReadme <$> contents <*> streamers of
    Right f -> do
      writeFile "README.md" f
      putStrLn "README.md generated!"
    Left err -> putStrLn err
