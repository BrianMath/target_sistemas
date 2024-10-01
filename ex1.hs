{- 1) Dado a sequência de Fibonacci, onde se inicia por 0 e 1 e o próximo valor
 - sempre será a soma dos 2 valores anteriores (exemplo: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...),
 - escreva um programa na linguagem que desejar onde, informado um número, ele calcule
 - a sequência de Fibonacci e retorne uma mensagem avisando se o número informado pertence
 - ou não a sequência.

IMPORTANTE: Esse número pode ser informado através de qualquer entrada de sua preferência
ou pode ser previamente definido no código -}

import System.IO

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

--num = 34

main = do
    putStr "Digite um número: "
    hFlush stdout
    num <- readLn :: IO Int 
    let seq = takeWhile (<= num) [fib i | i<-[0..]]
    if elem num seq then putStrLn (show num ++ " pertence à sequência de Fibonnaci")
                    else putStrLn (show num ++ " não pertence à sequência de Fibonnaci")
