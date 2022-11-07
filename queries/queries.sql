-- 1-Verificar quais dos índices foram negociados por mais tempo (mais resultados)
SELECT symbol, COUNT(symbol) AS days_traded 
FROM "etld2tec"."bovespa_indexes" 
GROUP BY symbol 
ORDER BY days_traded DESC;

-- 2-Verificar qual o maior valor de fechamento registrado em de cada índice
SELECT symbol, MAX(close) AS higher_close 
FROM "etld2tec"."bovespa_indexes" 
GROUP BY symbol
ORDER BY higher_close DESC;

-- 3-Verificar qual o maior valor atingido por 20 ações
SELECT symbol, MAX(open) AS higher_opening
FROM "etld2tec"."bovespa_stocks" 
GROUP BY symbol
ORDER BY higher_opening DESC
LIMIT 20;

-- 4-Cria uma view com as principais moedas no período de 2020
CREATE VIEW main_currencies_2020 AS
SELECT calendar_date, eur, gbp, inr, aud, cad, chf, jpy, brl, isk, rub
FROM exchange_rates
WHERE calendar_date BETWEEN CAST('2020-01-01' AS DATE) AND CAST('2020-12-31' AS DATE);

-- 5-Calcular a variação da moeda EURO em relação ao dolar entre o início e o fim de 2020
SELECT
((SELECT FIRST_VALUE(eur) OVER (ORDER BY calendar_date ASC) AS val FROM "etld2tec"."main_currencies_2020" LIMIT 1) -
(SELECT  FIRST_VALUE(eur) OVER (ORDER BY calendar_date DESC) AS val FROM "etld2tec"."main_currencies_2020" LIMIT 1)) / (SELECT FIRST_VALUE(eur) OVER (ORDER BY calendar_date ASC) AS val FROM "etld2tec"."main_currencies_2020" LIMIT 1);

