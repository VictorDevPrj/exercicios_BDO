USE comercio;
/*
    FUNCAO que retorna
    nome, email, numero, estado

    ifnull()
*/

SELECT c.nome, IFNULL(c.email, "E-mail não cadastrado") AS email, e.uf, t.numero
FROM cliente AS c 
INNER JOIN endereco AS e 
ON c.id = e.id_cliente 
INNER JOIN telefone AS t 
ON c.id = t.id_cliente; 

+-----+-----------+------+-----------------------------------------------+---------------+
| id  | nome      | sexo | email                                         | cpf           |
+-----+-----------+------+-----------------------------------------------+---------------+
|   1 | Xander    | M    | purus.mauris.a@dictum.com                     | 16370512 4919 |
|   2 | Reece     | F    | pretium.et.rutrum@aenimSuspendisse.com        | 16870923 9092 |
|   3 | Ralph     | F    | et.arcu.imperdiet@adipiscingnon.com           | 16500421 4408 |
|   4 | Azalia    | F    | commodo.ipsum.Suspendisse@hendreritidante.net | 16840615 1400 |
|   5 | Lila      | F    | tempus@laoreetposuere.co.uk                   | 16940902 7894 |
|   6 | Iliana    | M    | porttitor.interdum.Sed@elitpedemalesuada.org  | 16140911 2537 |
|   7 | Dante     | F    | sapien.cursus.in@afacilisisnon.net            | 16200410 8029 |
|   8 | Nissim    | F    | enim@consectetuer.edu                         | 16520708 6306 |
|   9 | Noelani   | M    | id.sapien@metusIn.org                         | 16160909 8858 |
|  10 | Blaine    | F    | natoque@egestas.net                           | 16950820 8049 |
|  11 | Upton     | M    | Mauris@erateget.edu                           | 16990317 8813 |
|  12 | Timothy   | F    | elementum.dui.quis@dictumcursusNunc.edu       | 16620601 1576 |
|  13 | Allegra   | M    | velit.Cras@estmollisnon.co.uk                 | 16970311 6674 |
|  14 | Kato      | M    | sapien.Cras.dolor@eleifend.org                | 16391002 6313 |
|  15 | Jeanette  | F    | ac.ipsum@Maurisvestibulum.org                 | 16550513 4428 |
|  16 | Dominique | M    | mus@liberoMorbi.net                           | 16720914 8977 |
|  17 | Amery     | F    | Nunc.ac.sem@molestiepharetranibh.ca           | 16820602 1472 |
|  18 | Ivory     | M    | pellentesque.Sed@lobortisauguescelerisque.org | 16321130 8162 |
|  19 | Daria     | M    | pede.Nunc.sed@leo.net                         | 16821229 7645 |
|  20 | Dieter    | M    | ipsum.Donec.sollicitudin@Donec.net            | 16911122 7261 |
|  21 | Georgia   | F    | lacus.vestibulum.lorem@utdolor.ca             | 16160823 8307 |
|  22 | Zeph      | F    | feugiat@elementumdui.ca                       | 16620821 4756 |
|  23 | Thomas    | F    | sapien@magnaCras.net                          | 16070115 2761 |
|  24 | Alexandra | M    | Aliquam@diamnunc.edu                          | 16560221 9312 |
|  25 | Curran    | M    | vitae@arcu.ca                                 | 16981126 9183 |
|  26 | Amelia    | M    | ac.feugiat@vestibulummassarutrum.org          | 16520815 7239 |
|  27 | Orla      | F    | Phasellus.elit@ligulatortordictum.ca          | 16950901 1699 |
|  28 | Chloe     | F    | mi.enim.condimentum@elementum.ca              | 16051214 8909 |
|  29 | Tarik     | F    | nibh@leoCrasvehicula.org                      | 16970827 3108 |
|  30 | Justine   | F    | bibendum@eu.ca                                | 16671202 0665 |
|  31 | Vladimir  | M    | in@Morbiaccumsanlaoreet.co.uk                 | 16810510 8602 |
|  32 | Bianca    | M    | lorem@risusDonecegestas.co.uk                 | 16691125 3315 |
|  33 | Lamar     | F    | blandit@feugiat.ca                            | 16670310 0856 |
|  34 | Claudia   | M    | interdum.libero.dui@dictumProineget.co.uk     | 16340216 8078 |
|  35 | Yael      | F    | vestibulum.nec.euismod@fermentumrisus.net     | 16360713 6334 |
|  36 | Caryn     | F    | vitae.nibh.Donec@odioAliquamvulputate.co.uk   | 16361104 2320 |
|  37 | Violet    | M    | nonummy.ultricies@duiFuscealiquam.edu         | 16960709 8085 |
|  38 | Jasper    | M    | Sed.auctor@miac.com                           | 16450314 3481 |
|  39 | Paul      | M    | conubia@tristiquealiquetPhasellus.com         | 16820401 0931 |
|  40 | Cooper    | F    | cursus.et.eros@Quisqueornaretortor.net        | 16371108 8793 |
|  51 | Jermaine  | F    | porttitor.eros@ligula.ca                      | 16530208 8330 |
|  52 | Brody     | F    | eros.turpis.non@ullamcorperviverra.edu        | 16900528 4576 |
|  53 | Bevis     | M    | Aliquam.tincidunt.nunc@atauctor.edu           | 16110129 8873 |
|  54 | Mason     | M    | Sed@penatibuset.ca                            | 16540429 7052 |
|  55 | Carson    | F    | euismod.ac.fermentum@rutrumnonhendrerit.net   | 16320426 5999 |
|  56 | Ronan     | M    | parturient.montes.nascetur@euismodac.org      | 16990215 7677 |
|  57 | Julie     | M    | dictum.sapien.Aenean@DonectinciduntDonec.org  | 16320128 8044 |
|  58 | Alexandra | M    | eget.massa.Suspendisse@erosnectellus.com      | 16810906 1203 |
|  59 | Linda     | F    | nec.mauris@ridiculus.edu                      | 16930703 0255 |
|  60 | Stuart    | F    | Nullam.feugiat@ornareFuscemollis.com          | 16480809 6871 |
|  61 | Danielle  | M    | nisl.Quisque@anteiaculisnec.edu               | 16770526 8659 |
|  62 | Elmo      | F    | dui.semper@vestibulumneque.net                | 16111021 6437 |
|  63 | Holly     | F    | Cras@MaurismagnaDuis.com                      | 16870411 4811 |
|  64 | Palmer    | M    | rhoncus.Proin@ut.net                          | 16120903 3636 |
|  65 | Sawyer    | F    | scelerisque@interdumligula.ca                 | 16400514 6719 |
|  66 | Charissa  | F    | Proin.nisl@Vivamusnisi.net                    | 16241123 2727 |
|  67 | Jena      | M    | leo@Cum.co.uk                                 | 16630625 1304 |
|  68 | Jermaine  | M    | vestibulum.neque@arcuSed.com                  | 16240322 7313 |
|  69 | Minerva   | F    | nunc.est.mollis@vulputateeuodio.ca            | 16261002 6995 |
|  70 | Yolanda   | F    | lobortis@malesuada.com                        | 16510123 4598 |
|  71 | Myles     | M    | aliquam.iaculis.lacus@dictum.com              | 16150429 5567 |
|  72 | Graham    | M    | euismod.urna.Nullam@fermentummetusAenean.edu  | 16730909 3115 |
|  73 | Anthony   | M    | arcu.vel@dignissimMaecenas.edu                | 16730119 2345 |
|  74 | Curran    | M    | nisi.dictum.augue@egettinciduntdui.co.uk      | 16810522 7345 |
|  75 | Garrison  | F    | sem.vitae.aliquam@Duiscursusdiam.net          | 16820527 6580 |
|  76 | Tobias    | F    | a@convallis.net                               | 16980611 8759 |
|  77 | Steven    | F    | leo.in@consequatnecmollis.co.uk               | 16670707 4990 |
|  78 | Chaney    | M    | Sed.et@sapien.net                             | 16410809 3362 |
|  79 | Clayton   | M    | libero@quisturpis.net                         | 16291009 8843 |
|  80 | Xyla      | M    | auctor.non.feugiat@mollislectus.net           | 16810520 6356 |
|  81 | Charlotte | M    | elit.pretium.et@ligula.com                    | 16090930 4800 |
|  82 | Ray       | M    | primis.in.faucibus@risusvarius.co.uk          | 16040915 8466 |
|  83 | Zenia     | F    | posuere.at.velit@lobortis.com                 | 16900919 4268 |
|  84 | Lance     | F    | risus.Quisque.libero@nec.org                  | 16040905 4202 |
|  85 | Janna     | F    | enim.Etiam.imperdiet@magnis.ca                | 16000221 3437 |
|  86 | Alvin     | M    | vel.sapien.imperdiet@etmalesuadafames.co.uk   | 16911130 8715 |
|  87 | Cain      | F    | tellus@elementumat.com                        | 16060622 2461 |
|  88 | Lance     | F    | enim.Sed@risusQuisque.com                     | 16420222 7593 |
|  89 | Gretchen  | F    | semper.et.lacinia@magnaSedeu.co.uk            | 16420607 6293 |
|  90 | Ingrid    | M    | mus.Proin.vel@musAenean.net                   | 16560112 9082 |
| 122 | Charlotte | M    | NULL                                          | 1609030400    |
| 123 | Ray       | M    | NULL                                          | 10409158466   |
| 124 | Zenia     | F    | NULL                                          | 6900919268    |
| 125 | Lance     | F    | NULL                                          | 1604005402    |
| 126 | Janna     | F    | NULL                                          | 1600221437    |
| 127 | Alvin     | M    | NULL                                          | 1691110715    |
| 128 | Cain      | F    | NULL                                          | 6606222461    |
| 129 | Lance     | F    | NULL                                          | 16402227593   |
| 130 | Gretchen  | F    | NULL                                          | 64206076293   |
| 131 | Ingrid    | M    | NULL                                          | 65601129082   |
+-----+-----------+------+-----------------------------------------------+---------------+