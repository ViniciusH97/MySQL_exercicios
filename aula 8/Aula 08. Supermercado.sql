CREATE DATABASE supermercado;
USE supermercado;

CREATE TABLE segmento (
idsegmproduto INT NOT NULL PRIMARY KEY, 
descsegmproduto VARCHAR(40));

CREATE TABLE unidmedida (
idunidmedida INT NOT NULL PRIMARY KEY,
siglaunidmedida CHAR(2) NOT NULL,
descrunidmedida VARCHAR(20) NOT NULL);

CREATE TABLE volume (
idvolume INT NOT NULL PRIMARY KEY,
valorvolume DECIMAL(5,2) NOT NULL);

CREATE TABLE produto (
idproduto INT NOT NULL PRIMARY KEY,
descproduto VARCHAR(40) NOT NULL,
valorunitario DECIMAL(6,2) NOT NULL,
segmento INT NOT NULL, 
unidademedida INT NOT NULL,
volume INT NOT NULL);


DELETE FROM SEGMENTO;
INSERT INTO SEGMENTO VALUES (1,'Limpeza');
INSERT INTO SEGMENTO VALUES (2,'Mercearia');
INSERT INTO SEGMENTO VALUES (3,'Higiene');
INSERT INTO SEGMENTO VALUES (4,'Carnes');
INSERT INTO SEGMENTO VALUES (5,'Bebidas');
INSERT INTO SEGMENTO VALUES (6,'Leite');
INSERT INTO SEGMENTO VALUES (7,'Hortifruti');

DELETE FROM UNIDMEDIDA;
INSERT INTO UNIDMEDIDA VALUES (1,'Lt','Litros');
INSERT INTO UNIDMEDIDA VALUES (2,'Kg','Kilos');
INSERT INTO UNIDMEDIDA VALUES (3,'Rl','Rolos');
INSERT INTO UNIDMEDIDA VALUES (4,'Un','Unidades');
INSERT INTO UNIDMEDIDA VALUES (5,'Ml','Mililitros');
INSERT INTO UNIDMEDIDA VALUES (6,'Gr','Gramas');
INSERT INTO UNIDMEDIDA VALUES (7,'Cx','Caixas');
INSERT INTO UNIDMEDIDA VALUES (8,'Mg','Miligramas');

DELETE FROM VOLUME;
INSERT INTO VOLUME VALUES (1,1.0);
INSERT INTO VOLUME VALUES (2,1.5);
INSERT INTO VOLUME VALUES (3,2.0);
INSERT INTO VOLUME VALUES (4,2.5);
INSERT INTO VOLUME VALUES (5,4.0);
INSERT INTO VOLUME VALUES (6,5.0);
INSERT INTO VOLUME VALUES (7,8.0);
INSERT INTO VOLUME VALUES (8,10.0);
INSERT INTO VOLUME VALUES (9,12.0);
INSERT INTO VOLUME VALUES (10,20.0);
INSERT INTO VOLUME VALUES (11,24.0);
INSERT INTO VOLUME VALUES (12,25.0);
INSERT INTO VOLUME VALUES (13,50.0);
INSERT INTO VOLUME VALUES (14,80.0);
INSERT INTO VOLUME VALUES (15,85.0);
INSERT INTO VOLUME VALUES (16,90.0);
INSERT INTO VOLUME VALUES (17,100.0);
INSERT INTO VOLUME VALUES (18,103.0);
INSERT INTO VOLUME VALUES (19,200.0);
INSERT INTO VOLUME VALUES (20,250.0);
INSERT INTO VOLUME VALUES (21,290.0);
INSERT INTO VOLUME VALUES (22,300.0);
INSERT INTO VOLUME VALUES (23,350.0);
INSERT INTO VOLUME VALUES (24,395.0);
INSERT INTO VOLUME VALUES (25,400.0);
INSERT INTO VOLUME VALUES (26,500.0);
INSERT INTO VOLUME VALUES (27,540.0);
INSERT INTO VOLUME VALUES (28,600.0);
INSERT INTO VOLUME VALUES (29,660.0);
INSERT INTO VOLUME VALUES (30,700.0);
INSERT INTO VOLUME VALUES (31,720.0);
INSERT INTO VOLUME VALUES (32,750.0);
INSERT INTO VOLUME VALUES (33,900.0);

DELETE FROM PRODUTO;
INSERT INTO PRODUTO VALUES(1,'Agua Sanitaria QBoa',1.45,1,1,1),(
2,'Agua Sanitaria Brilhante',2.39,1,1,1),(
3,'Agua Sanitaria Eficassy',0.99,1,1,1),(
4,'Agua Sanitaria DA Oma',0.99,1,1,1),(
5,'Agua Sanitaria Big',1.33,1,1,1),(
6,'Agua Sanitaria Candura',0.99,1,1,1),(
7,'Agua Sanitaria Candura',1.79,1,1,3),(
8,'Agua Sanitaria Brilhante',4.29,1,1,3),(
9,'Agua Sanitaria DA Oma',1.99,1,1,3),(
10,'Agua Sanitaria QBoa',2.85,1,1,3),(
11,'Agua Sanitaria Big',1.89,1,1,3),(
12,'Agua Sanitaria Eficassy',1.89,1,1,3),(
13,'Amaciante Eficassy',2.15,1,1,3),(
14,'Amaciante Baby Soft',2.79,1,1,3),(
15,'Amaciante Minuano',2.99,1,1,3),(
16,'Amaciante Confort',4.05,1,1,3),(
17,'Amaciante Mon Bijou',3.99,1,1,2),(
18,'Amaciante Fofo',5.99,1,1,3),(
19,'Amaciante Toque',2.69,1,1,3),(
20,'Amaciante Santhinner',2.25,1,1,3),(
21,'Amaciante Estrela',2.45,1,1,3),(
22,'Desengordurador Veja',2.66,1,5,26),(
23,'Desengordurador Cif',3.15,1,5,26),(
24,'Desengordurador X-14',2.55,1,5,26),(
25,'Desengordurador QBoa Multiuso',0.99,1,5,26),(
26,'Desengordurador Ajax Multiuso',2.10,1,5,26),(
27,'Desengordurador Pratice',2.65,1,5,26),(
28,'Desinfetante Pinho Sol',1.99,1,5,26),(
29,'Desinfetante Pinho Bril',1.94,1,5,26),(
30,'Desinfetante Minuano',1.39,1,5,26),(
31,'Desinfetante de Sanitario Veja',3.85,1,5,26),(
32,'Desinfetante de Sanitario Harpic',3.69,1,5,26),(
33,'Desinfetante de Sanitario Pato',3.49,1,5,26),(
34,'Detergente Minuano',0.83,1,5,26),(
35,'Detergente Ype',0.85,1,5,26),(
36,'Detergente 2000',0.69,1,5,26),(
37,'Detergente Eficassy',0.69,1,5,26),(
38,'Detergente Limpol',0.89,1,5,26),(
39,'Detergente Higie',0.59,1,5,26),(
40,'Detergente Font',0.85,1,5,26),(
41,'Detergente Qlar',0.69,1,5,26),(
42,'Lustra Moveis Poliflor',2.89,1,5,19),(
43,'Lustra Moveis Peroba',1.49,1,5,19),(
44,'Lustra Moveis Bravo',2.89,1,5,19),(
45,'Palha de Aco Bombril',1.85,1,6,13),(
46,'Palha de Aco Assolan',1.55,1,6,13),(
47,'Sabao Minuano',3.59,1,2,1),(
48,'Sabao Rio',2.98,1,2,1),(
49,'Sabao Minerva',3.45,1,2,1),(
50,'Sabao Brilhante',4.25,1,2,1),(
51,'Sabao Cruz Azul',3.15,1,2,1),(
52,'Sabao em Po Bold',4.96,1,2,1),(
53,'Sabao em Po Omo',6.89,1,2,1),(
54,'Sabao em Po Brilhante',5.63,1,2,1),(
55,'Sabao em Po Minerva',5.85,1,2,1),(
56,'Sabao em Po Eficassy',2.99,1,2,1),(
57,'Sabao em Po Ace',5.48,1,2,1),(
58,'Toalha de Papel Chifon',2.87,2,3,3),(
59,'Toalha de Papel Kitchen',1.99,2,3,3),(
60,'Toalha de Papel Snob',2.42,2,3,3),(
61,'Toalha de Papel Yuri',1.99,2,3,3),(
62,'Toalha de Papel Residense',2.35,2,3,3),(
63,'Toalha de Papel Big',2.15,2,3,3),(
64,'Toalha de Papel Toallita',1.55,2,3,3),(
65,'Acucar Alto Alegre',1.00,2,2,1),(
66,'Acucar Dolce',1.40,2,2,1),(
67,'Acucar Uniao',1.38,2,2,1),(
68,'Acucar Ducula',1.42,2,2,1),(
69,'Acucar Ducula',5.95,2,2,6),(
70,'Acucar Alto Alegre',4.98,2,2,6),(
71,'Acucar Uniao',7.40,2,2,6),(
72,'Acucar Da Barra',4.59,2,2,6),(
73,'Acucar Dolce',6.98,2,2,6),(
74,'Adocante Zero-cal',1.89,2,5,17),(
75,'Adocante Adocyl',1.89,2,5,17),(
76,'Adocante Stevia',2.85,2,5,17),(
77,'Adocante Doce Menor',1.79,2,5,17),(
78,'Adocante Magro',1.59,2,5,17),(
79,'Adocante Finn',1.69,2,5,17),(
80,'Amido de Milho Maisena',2.89,2,6,26),(
81,'Amido de Milho Tell',2.39,2,6,26),(
82,'Amido de Milho Maxsenna',1.99,2,6,26),(
83,'Amido de Milho Big',2.09,2,6,26),(
84,'Amido de Milho Sinha',1.95,2,6,26),(
85,'Amido de Milho Molinari',1.45,2,6,26),(
86,'Amido de Milho Yoki',1.89,2,6,26),(
87,'Arroz Tio Urbano',6.89,2,2,2),(
88,'Arroz Naco',3.97,2,2,2),(
89,'Arroz Branco Kiarroz',6.09,2,2,2),(
90,'Arroz Branco Tia Maria',6.39,2,2,2),(
91,'Arroz Branco Tio Joao',7.90,2,2,2),(
92,'Arroz Branco Chines',5.59,2,2,2),(
93,'Arroz Branco Campeiro',6.30,2,2,2),(
94,'Arroz Branco Gelao',5.68,2,2,2),(
95,'Arroz Branco Super A',5.98,2,2,2),(
96,'Azeite Galo',13.98,2,5,26),(
97,'Azeite Arisco',11.99,2,5,26),(
98,'Azeitona Vale Fertil Verde',7.25,2,6,26),(
99,'Azeitona Rivoli Verde',7.25,2,6,26),(
100,'Azeitona La Violetera Verde',4.99,2,6,26),(
101,'Biscoito Tortinhas',1.55,2,6,19),(
102,'Biscoito Paraty',0.89,2,6,17),(
103,'Biscoito Trakinas',1.09,2,6,17),(
104,'Biscoito Bono',1.85,2,6,19),(
105,'Biscoito Negresco',1.85,2,6,19),(
106,'Biscoito Gulosos',1.29,2,6,19),(
107,'Biscoito Isabel Agua e Sal',1.43,2,6,19),(
108,'Biscoito Parati Agua e Sal',1.20,2,6,19),(
109,'Biscoito Club Social Cream Cracker',1.89,2,6,17),(
110,'Biscoito Triunfo Cream Cracker',1.65,2,6,19),(
111,'Biscoito Bauducco Agua e Sal',1.69,2,6,19),(
112,'Cafe em po Damasco',4.48,2,6,26),(
113,'Cafe em po Uniao',3.98,2,6,26),(
114,'Cafe em po Sasse',4.19,2,6,26),(
115,'Cafe em po Melita',4.98,2,6,26),(
116,'Cafe em po Caboclo',3.89,2,6,26),(
117,'Cafe Soluvel Nescafe',4.75,2,6,17),(
118,'Cafe Soluvel Pele',4.15,2,6,17),(
119,'Cafe Soluvel Iguacu',2.99,2,6,17),(
120,'Cafe Soluvel Melita',4.19,2,6,17),(
121,'Cafe Soluvel Colonial',3.90,2,6,17),(
122,'Cafe Soluvel - refil Nescafe',1.97,2,6,13),(
123,'Cafe Soluvel - refil Pele',1.93,2,6,13),(
124,'Cafe Soluvel - refil Damasco',1.85,2,6,13),(
125,'Cafe Soluvel - refil Iguacu',1.59,2,6,13),(
126,'Cafe Soluvel - refil Colonial',1.55,2,6,13),(
127,'Catchup Hellmanns',2.98,2,6,24),(
128,'Catchup Arisco',2.39,2,6,24),(
129,'Catchup Tell',1.89,2,6,25),(
130,'Catchup Pic',2.99,2,6,25),(
131,'Chocolate em po Nescau',2.67,2,6,25),(
132,'Chocolate em po Garotada',2.59,2,6,25),(
133,'Chocolate em po Magico',1.45,2,6,25),(
134,'Chocolate em po Toddy',3.47,2,6,25),(
135,'Chocolate em po Ovomaltine',4.99,2,6,22),(
136,'Chocolate em po Chocoleite',1.59,2,6,25),(
137,'Ervilha Poupe Mais',0.78,2,6,25),(
138,'Ervilha Twist',0.99,2,6,19),(
139,'Ervilha Quero',0.85,2,6,19),(
140,'Ervilha Etti',0.79,2,6,19),(
141,'Ervilha Jussara',1.15,2,6,19),(
142,'Ervilha Lar',0.79,2,6,19),(
143,'Ervilha Oderich',0.92,2,6,19),(
144,'Ervilha Jurema',1.48,2,6,19),(
145,'Extrato de Tomate Elefante',1.95,2,6,23),(
146,'Extrato de Tomate Pomarola',1.79,2,6,23),(
147,'Extrato de Tomate Arisco',0.79,2,6,23),(
148,'Extrato de Tomate Cajamar',1.69,2,6,23),(
149,'Extrato de Tomate Quero',1.29,2,6,23),(
150,'Extrato de Tomate Luc',0.99,2,6,23),(
151,'Farinha de Mandioca Molinari',2.59,2,6,26),(
152,'Farinha de Mandioca Jaragua',1.97,2,2,1),(
153,'Farinha de Mandioca Zuque',2.39,2,2,1),(
154,'Farinha de Mandioca Gelao',1.19,2,2,1),(
155,'Farinha de Mandioca Rocha',0.89,2,2,1),(
156,'Farinha de trigo Nordeste',1.06,2,2,1),(
157,'Farinha de trigo Dona Benta',1.49,2,2,1),(
158,'Farinha de trigo Boa Sorte',1.15,2,2,1),(
159,'Farinha de trigo Flor de Liz',0.89,2,2,1),(
160,'Farinha de trigo Rosa Branca',0.99,2,2,1),(
161,'Farinha de trigo Guth',1.09,2,2,1),(
162,'Farinha de trigo Sol',1.45,2,2,1),(
163,'Feijao Preto Biju',2.59,2,2,1),(
164,'Feijao Preto Jaragua',2.59,2,2,1),(
165,'Feijao Preto Naco',1.97,2,2,1),(
166,'Feijao Preto Jureia',2.35,2,2,1),(
167,'Feijao Preto Caldao',2.66,2,2,1),(
168,'Feijao Preto Azulao',2.29,2,2,1),(
169,'Feijao Preto Caldo Bom',2.98,2,2,1),(
170,'Feijao Preto Super A',2.38,2,2,1),(
171,'Macarrao Renata Semola',1.59,2,6,26),(
172,'Macarrao Galo Semola',1.89,2,6,26),(
173,'Macarrao Todeschini Semola',1.55,2,6,26),(
174,'Macarrao Isabela Semola',1.99,2,6,26),(
175,'Macarrao Dona Benta Semola',1.69,2,6,26),(
176,'Macarrao Germani Semola',0.99,2,6,26),(
177,'Macarrao Instantaneo Nissin',0.67,2,6,14),(
178,'Macarrao Instantaneo Maggi',0.67,2,6,15),(
179,'Macarrao Instantaneo Renata',0.55,2,6,14),(
180,'Macarrao Instantaneo Arisco',0.58,2,6,15),(
181,'Macarrao Instantaneo Orient',0.45,2,6,15),(
182,'Maionese Hellmanns',3.69,2,6,26),(
183,'Maionese Arisco',1.97,2,6,26),(
184,'Maionese Primor',1.99,2,6,26),(
185,'Maionese Oderich',2.13,2,6,26),(
186,'Maionese Delicia',2.59,2,6,26),(
187,'Milho Twist',0.10,2,6,19),(
188,'Milho Quero',1.10,2,6,19),(
189,'Milho Oderich',1.27,2,6,19),(
190,'Milho Lar',0.95,2,6,19),(
191,'Milho Jurema',1.89,2,6,19),(
192,'Oleo de milho Salada',3.49,2,5,33),(
193,'Oleo de soja Soya',2.09,2,5,33),(
194,'Oleo de soja Sadia',1.87,2,5,33),(
195,'Oleo de soja Primor',1.95,2,5,33),(
196,'Oleo de soja Big',1.93,2,5,33),(
197,'Oleo de soja Liza',1.99,2,5,33),(
198,'Sal Diana Fino',0.75,2,2,1),(
199,'Sal Cisne',1.09,2,2,1),(
200,'Sal Jasmine',1.55,2,2,1),(
201,'Sal Big',0.63,2,2,1),(
202,'Sal Lebre',0.65,2,2,1),(
203,'Sal Zizo',0.73,2,2,1),(
204,'Sal Cruzeiro',0.55,2,2,1),(
205,'Vinagre Belmont Vinho',1.35,2,5,32),(
206,'Vinagre Chemim Branco',0.89,2,5,33),(
207,'Vinagre Heining Branco',0.85,2,5,33),(
208,'Vinagre Da Ilha Branco',0.91,2,5,33),(
209,'Condicionador Seda Selective',6.25,3,5,23),(
210,'Condicionador Palmolive',2.75,3,5,23),(
211,'Condicionador Monange',4.99,3,5,23),(
212,'Condicionador Colorama',4.89,3,5,26),(
213,'Desodorante Rexona Spray',2.98,3,5,16),(
214,'Desodorante Dove Aerosol',11.65,3,5,18),(
215,'Desodorante Axe Spray',3.15,3,5,16),(
216,'Palito Theoto Cx',0.59,2,4,17),(
217,'Palitos Gaboardi Cx',0.25,2,4,17),(
218,'Palitos Maua Cx',0.75,2,4,17),(
219,'Palitos Gina Cx',0.35,2,4,17),(
220,'Papel Higiênico Neve',3.99,3,3,5),(
221,'Papel Higiênico Scott',2.39,3,3,5),(
222,'Papel Higiênico Personal',2.15,3,3,5),(
223,'Papel Higiênico Mili',2.39,3,3,5),(
224,'Papel Higiênico Sirius',1.19,3,3,5),(
225,'Papel Higiênico Sublime',1.67,3,3,5),(
226,'Papel Higiênico Poupe Mais',1.09,3,3,5),(
227,'Papel Higiênico Paloma',1.63,3,3,5),(
228,'Papel Higiênico Sirius',2.15,3,3,7),(
229,'Papel Higiênico Personal',2.99,3,3,7),(
230,'Papel Higiênico Paloma',3.25,3,3,7),(
231,'Papel Higiênico Scott',4.89,3,3,7),(
232,'Pasta de Dente Sorriso',1.48,3,6,16),(
233,'Pasta de Dente Colgate',1.22,3,6,16),(
234,'Pasta de Dente Signal',1.15,3,6,16),(
235,'Pasta de Dente Closeup',1.69,3,6,16),(
236,'Sabonete Palmolive',0.49,3,6,16),(
237,'Sabonete Phebo',1.39,3,6,16),(
238,'Sabonete Lux',0.69,3,6,16),(
239,'Sabonete Vinolia',0.99,3,6,16),(
240,'Sabonete Dove',1.65,3,6,17),(
241,'Sabonete Francis',0.75,3,6,16),(
242,'Shampoo Seda Selective',5.49,3,5,26),(
243,'Shampoo Seda Lamolina',5.49,3,5,26),(
244,'Shampoo Palmolive',2.75,3,5,26),(
245,'Shampoo Elseve',3.49,3,5,20),(
246,'Shampoo Monange',4.39,3,5,23),(
247,'Shampoo Colorama',4.39,3,5,26),(
248,'Carne de Boi Alcatra',9.98,4,2,1),(
249,'Carne de Boi Costela',3.99,4,2,1),(
250,'Carne de Boi Picanha',17.90,4,2,1),(
251,'Carne de Boi Coxao Duro',4.99,4,2,1),(
252,'Carne de Boi Coxao Mole',7.99,4,2,1),(
253,'Carne de Boi Patinho',7.58,4,2,1),(
254,'Frango Macedo Inteiro',2.49,4,2,1),(
255,'Frango FrangoBom Inteiro',2.29,4,2,1),(
256,'Frango Agro Veneto Inteiro',2.98,4,2,1),(
257,'Frango (cs) Agro Veneto Coxa/sobrecoxa',4.99,4,2,1),(
258,'Frango (cs) Macedo Coxa/sobrecoxa',4.89,4,2,1),(
259,'Frango (cs) Copacol Coxa/sobrecoxa',3.39,4,2,1),(
260,'Frango (p) Macedo Peito',5.49,4,2,1),(
261,'Frango (p) Copacol Peito',3.79,4,2,1),(
262,'Frango (p) TopFrango Peito',3.39,4,2,1),(
263,'Ovos Kasulke Vermelho',2.35,7,4,9),(
264,'Ovos Kasulke Branco',2.25,7,4,9),(
265,'Ovos Ronchi Vermelho',1.99,7,4,9),(
266,'Ovos Barao Vermelho',2.29,7,4,9),(
267,'Ovos Friolar Branco',2.32,7,4,9),(
268,'Agua Da Guarda Sem Gas',4.39,5,1,10),(
269,'Agua Santa Catarina Sem Gas',4.88,5,1,10),(
270,'Agua Imperatriz Sem Gas',4.97,5,1,10),(
271,'Cerveja Antartica',0.99,5,5,23),(
272,'Cerveja Schincariol',0.89,5,5,23),(
273,'Cerveja Skol',1.19,5,5,23),(
274,'Cerveja Brahma',1.10,5,5,23),(
275,'Cerveja Kaiser',0.97,5,5,23),(
276,'Refrigerante Cocacola',2.47,5,1,3),(
277,'Refrigerante Kuat',1.79,5,1,3),(
278,'Refrigerante Fanta',1.89,5,1,3),(
279,'Refrigerante Guarana Antartica',2.29,5,1,3),(
280,'Refrigerante Thom',1.49,5,1,3),(
281,'Refrigerante Thom-Cola',1.59,5,1,3),(
282,'Creme de Leite Parmalat',1.87,2,6,21),(
283,'Creme de Leite Nestle',1.59,2,6,22),(
284,'Creme de Leite Gloria',2.08,2,6,22),(
285,'Creme de Leite Batavo',1.15,2,6,20),(
286,'Creme de Leite Itambe',1.89,2,6,22),(
287,'Leite Elege Integral',1.38,6,1,1),(
288,'Leite Tirol Integral',1.29,6,1,1),(
289,'Leite Frimesa Integral',1.29,6,1,1),(
290,'Leite Polli Integral',1.25,6,1,1),(
291,'Leite Lider Integral',1.39,6,1,1),(
292,'Leite Bom Gosto Integral',1.29,6,1,1),(
293,'Leite Aurolat Integral',1.35,6,1,1),(
294,'Leite Nutrilat Integral',1.15,6,1,1),(
295,'Leite Cedrense Integral',1.39,6,1,1),(
296,'Leite Condensado Moca',1.59,2,6,24),(
297,'Leite Condensado Elege',1.85,2,6,24),(
298,'Leite Condensado Parmalat',1.89,2,6,24),(
299,'Leite Condensado Gloria',2.15,2,6,24),(
300,'Leite Condensado Mococa',1.79,2,6,24),(
301,'Leite Condensado Itambe',1.99,2,6,24),(
302,'Leite em po Ninho Integral',4.59,2,6,25),(
303,'Leite em po Itambe Integral',6.18,2,6,25),(
304,'Leite em po Gloria Integral',6.57,2,6,25),(
305,'Leite em po Elege Integral',5.25,2,6,25),(
306,'Leite em po Molico Integral',5.67,2,6,22),(
307,'Margarina Qualy',2.68,6,6,26),(
308,'Margarina Becel c/ sal',2.99,6,6,26),(
309,'Margarina Delicata',1.09,6,6,26),(
310,'Margarina Delícia',2.65,6,6,26),(
311,'Margarina Soya',0.99,6,6,26),(
312,'Margarina Primor',2.48,6,6,26),(
313,'Margarina Mila',2.45,6,6,26),(
314,'Queijo Frimesa Prato',11.90,6,2,1),(
315,'Queijo Prove Prato',11.50,6,2,1),(
316,'Queijo Cedrense Prato',13.99,6,2,1),(
317,'Queijo Tirol Prato',10.15,6,2,1),(
318,'Queijo Predileto Prato',9.85,6,2,1),(
319,'Queijo Tirolez Prato',11.40,6,2,1),(
320,'Queijo Ralado Cedrense Parmesao',0.95,2,6,13),(
321,'Queijo Ralado Parmezao Parmesao',0.99,2,6,13),(
322,'Queijo Ralado Dinamarca',0.79,2,6,13),(
323,'Queijo Ralado Bufalo',0.85,2,6,13),(
324,'Queijo Ralado Três Fronteiras',0.59,2,6,13),(
325,'Queijo San Diego Minas',4.98,6,2,1),(
326,'Queijo Predileto Minas',8.89,6,2,1),(
327,'Queijo Tres Fronteiras Minas',7.65,6,2,1),(
328,'Queijo Cedrense Minas',9.98,6,2,1),(
329,'Queijo Tirol Mussarela',10.98,6,2,1),(
330,'Queijo Calcar Mussarela',12.90,6,2,1),(
331,'Queijo Frimesa Mussarela',10.90,6,2,1),(
332,'Queijo Cedrense Mussarela',9.90,6,2,1),(
333,'Requeijao Tirol',3.49,6,6,20),(
334,'Requeijao Vigor',1.79,6,6,19),(
335,'Requeijao Lider',2.75,6,6,20),(
336,'Requeijao Do Vale',2.62,6,6,20),(
337,'Requeijao Catupiry',2.48,6,6,20),(
338,'Requeijao Frimesa',1.98,6,6,20),(
339,'Yogurte Veneza',2.15,6,6,31),(
340,'Yogurte Danone',3.19,6,6,27),(
341,'Yogurte Parmalat',2.19,6,6,31),(
342,'Yogurte Batavo',2.74,6,6,28),(
343,'Yogurte Vigor',2.15,6,6,31),(
344,'Yogurte DoVale',2.49,6,6,31),(
345,'Alho',1.49,7,6,17),(
346,'Banana Branca',2.35,7,2,1),(
347,'Banana Caturra',0.79,7,2,1),(
348,'Batata Escovada Inglesa',0.79,7,2,1),(
349,'Batata Lavada Inglesa',1.27,7,2,1),(
350,'Beterraba',1.83,7,2,1),(
351,'Cebola',1.79,7,2,1),(
352,'Cenoura',0.99,7,2,1),(
353,'Chuchu',0.99,7,2,1),(
354,'Laranja Lima',1.39,7,2,1),(
355,'Laranja Pera',1.09,7,2,1),(
356,'Limao',2.25,7,2,1),(
357,'Maca Gala',3.42,7,2,1),(
358,'Mamao Papaya',1.98,7,2,1),(
359,'Mamao Papaya',0.98,7,4,1),(
360,'Pimentao',2.69,7,2,1),(
361,'Repolho',1.25,7,2,1),(
362,'Tomate',2.45,7,2,1);

-- Quantidade

SELECT COUNT(*) FROM SEGMENTO;
SELECT COUNT(*) FROM VOLUME;
SELECT COUNT(*) FROM UNIDMEDIDA;
SELECT COUNT(*) FROM PRODUTO;

-- Visualizar as tabelas
select * from produto;
select * from volume;
select * from segmento;
select * from unidmedida;

-- Quais os produtos do segmento de Limpeza?
select idsegmproduto from SEGMENTO where descsegmproduto = 'Limpeza';

