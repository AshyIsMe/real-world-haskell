module Prettify (
  )

  where

import SimpleJSON

renderJValue :: JValue -> Doc
renderJValue (JBool True)   = text "true"
renderJValue (JBool False)   = text "false"
renderJValue JNull          = text "null"
renderJValue (JNumber num)  = double num
renderJValue (JString str)  = string str


data Doc = ToBeDefined
         deriving (Show)

string :: String -> Doc
string str = enclose '"' '"' . hcat . map oneChar

text :: String -> Doc
text str = undefined

double :: Double -> Doc
double num = undefined

enclose :: Char -> Char -> Doc -> Doc
enclose left right x = char left <> x <> char right

(<>) :: Doc -> Doc -> Doc
a <> b = undefined

char :: Char -> Doc
char c = undefined

hcat :: [Doc] -> Doc
hcat xs = undefined
