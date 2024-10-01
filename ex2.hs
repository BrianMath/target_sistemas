{- 2) Escreva um programa que verifique, em uma string, a existência da letra ‘a’, 
 - seja maiúscula ou minúscula, além de informar a quantidade de vezes em que ela ocorre.

IMPORTANTE: Essa string pode ser informada através de qualquer entrada de sua preferência
ou pode ser previamente definida no código -}

quantos_a :: [Char] -> Int
quantos_a [] = 0
quantos_a (x:xs) = if x == 'a' then 1 + quantos_a xs else quantos_a xs

str :: [Char]
str = "Cavalo dado não se olhA dos dentes"
str1 = "Bote de socorro"

main = do
    if num == 0 then putStrLn "Não tem 'a' nessa string"
                else putStrLn ("Tem " ++ show num ++ " 'a's nessa string")
    where num = quantos_a str

