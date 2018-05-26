import Data.Char
import Data.List
import Test.QuickCheck

data Pinta = Picas | Diamante | Corazones | Treboles deriving (Read, Show, Enum, Eq, Ord)

data ValorCarta = Dos | Tres | Cuatro | Cinco | Seis | Siete | Ocho | Nueve | Dies | J | Q | K | A deriving (Read, Show, Enum, Eq, Ord)

data Carta = Carta { value :: ValorCarta, pinta :: Pinta} deriving (Read, Show, Eq)

type Baraja = [Carta]

baraja :: Baraja
baraja = [Carta val pin | val <- [Dos .. A], pin <- [Picas .. Treboles] ]



sumarMano :: [(String,String)] -> Int
sumarMano [ ] = 0
sumarMano ((xv,xp):xs) = if leerAces xv == True
			then (
			if (valor_carta xv + sumarMano xs) <= 11 then valor_carta xv + sumarMano xs +10
			else valor_carta xv + sumarMano xs
			)
			else	valor_carta xv + sumarMano xs

valor_carta :: String -> Int
valor_carta n 
  | n == "2" = 2
  | n == "3" = 3
  | n == "4" = 4
  | n == "5" = 5
  | n == "6" = 6
  | n == "7" = 7
  | n == "8" = 8
  | n == "9" = 9
  | n == "10" = 10
  | n == "J" = 10 
  | n == "Q" = 10
  | n == "K" = 10
  | n == "A" = 1
  | otherwise = 0

leerAces :: String -> Bool
leerAces " " = False
leerAces x = if x == "A" then True else False
