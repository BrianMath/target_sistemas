{- 3) Observe o trecho de código abaixo: 
 - int INDICE = 12, SOMA = 0, K = 1; 
 - enquanto K < INDICE faça { 
 -		K = K + 1; SOMA = SOMA + K; 
 - } imprimir(SOMA);

Ao final do processamento, qual será o valor da variável SOMA? -}

{- 
1 < 12 -> K = 2; SOMA = 2 
2 < 12 -> K = 3; SOMA = 5 
3 < 12 -> K = 4; SOMA = 9 
4 < 12 -> K = 5; SOMA = 14 
5 < 12 -> K = 6; SOMA = 20
6 < 12 -> K = 7; SOMA = 27 
7 < 12 -> K = 8; SOMA = 35
8 < 12 -> K = 9; SOMA = 44
9 < 12 -> K = 10; SOMA = 54
10 < 12 -> K = 11; SOMA = 65 
11 < 12 -> K = 12; SOMA = 77

SOMA vale 77
-}


indice :: Int
indice = 12

k :: Int
k = 1

soma :: Int
soma = sum [i | i<-[k+1..indice]]

main = do
    print soma

