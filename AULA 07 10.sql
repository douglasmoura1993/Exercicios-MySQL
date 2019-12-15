SELECT * FROM VOO;

SELECT timediff(data_hora_chegada, data_hora_saida) AS DURAÇÃO FROM VOO;

SELECT minute(data_hora_saida) as MINUTOS from voo;

SELECT HOUR(data_hora_saida) AS HORAS FROM VOO;

SELECT date_format(data_hora_saida, "%T %d/%m/%y") FROM VOO;

SELECT num_voo, date_format(data_hora_saida, "%T %d/%m/%y") AS SAIDA, date_format(data_hora_chegada, "%T %d/%m/%y") AS CHEGADA from voo;

SELECT NUM_VOO, date_format(data_hora_saida, "%T") AS SAIDA, date_format(data_hora_chegada, "%T") AS CHEGADA FROM VOO;

SELECT date_format(data_hora_saida "DAY %D %M  %Y") FROM VOO