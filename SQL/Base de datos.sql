DROP DATABASE SISTEMA_VOTACION;
CREATE DATABASE SISTEMA_VOTACION;
USE SISTEMA_VOTACION;

CREATE TABLE COMUNA (
NOMBRE_COMUNA VARCHAR(30)
);

CREATE TABLE REGION (
NOMBRE_REGION VARCHAR(50),
NUMERO_REGION VARCHAR(4)
);

CREATE TABLE CANDIDATO (
NOMBRE_CANDIDATO VARCHAR(30),
APELLIDO_CANDIDATO VARCHAR(30)
);

CREATE TABLE VOTO (
NOMBRE_COMPLETO_VOTANTE VARCHAR(100),
ALIAS_VOTANTE VARCHAR(30),
RUT_VOTANTE VARCHAR(15),
MAIL_VOTANTE VARCHAR(50),
REGION VARCHAR(60),
COMUNA VARCHAR(30),
CANDIDATO VARCHAR(60),
CHECKBOX VARCHAR(100)
);

INSERT INTO COMUNA VALUES ("ARICA");
INSERT INTO COMUNA VALUES ("CAMARONES");
INSERT INTO COMUNA VALUES ("IQUIQUE");
INSERT INTO COMUNA VALUES ("PICA");
INSERT INTO COMUNA VALUES ("POZO ALMONTE");
INSERT INTO COMUNA VALUES ("HUARA");
INSERT INTO COMUNA VALUES ("CAMINA");
INSERT INTO COMUNA VALUES ("COLCHANE");
INSERT INTO COMUNA VALUES ("ALTO HOSPICIO");
INSERT INTO COMUNA VALUES ("PUTRE");
INSERT INTO COMUNA VALUES ("GENERAL LAGOS");
INSERT INTO COMUNA VALUES ("TOCOPILLA");
INSERT INTO COMUNA VALUES ("MARIA ELENA");
INSERT INTO COMUNA VALUES ("ANTOFAGASTA");
INSERT INTO COMUNA VALUES ("TALTAL");
INSERT INTO COMUNA VALUES ("MEJILLONES");
INSERT INTO COMUNA VALUES ("SIERRA GORDA");
INSERT INTO COMUNA VALUES ("CALAMA");
INSERT INTO COMUNA VALUES ("OLLAGUE");
INSERT INTO COMUNA VALUES ("SAN PEDRO DE ATACAMA");
INSERT INTO COMUNA VALUES ("CHANARAL");
INSERT INTO COMUNA VALUES ("DIEGO DE ALMAGRO");
INSERT INTO COMUNA VALUES ("COPIAPO");
INSERT INTO COMUNA VALUES ("CALDERA");
INSERT INTO COMUNA VALUES ("TIERRA AMARILLA");
INSERT INTO COMUNA VALUES ("VALLENAR");
INSERT INTO COMUNA VALUES ("FREIRINA");
INSERT INTO COMUNA VALUES ("HUASCO");
INSERT INTO COMUNA VALUES ("ALTO DEL CARMEN");
INSERT INTO COMUNA VALUES ("LA SERENA");
INSERT INTO COMUNA VALUES ("LA HIGUERA");
INSERT INTO COMUNA VALUES ("COQUIMBO");
INSERT INTO COMUNA VALUES ("ANDACOLLO");
INSERT INTO COMUNA VALUES ("VICUNA");
INSERT INTO COMUNA VALUES ("PAIHUANO");
INSERT INTO COMUNA VALUES ("OVALLE");
INSERT INTO COMUNA VALUES ("MONTE PATRIA");
INSERT INTO COMUNA VALUES ("PUNITAQUI");
INSERT INTO COMUNA VALUES ("COMBARBALA");
INSERT INTO COMUNA VALUES ("RIO HURTADO");
INSERT INTO COMUNA VALUES ("ILLAPEL");
INSERT INTO COMUNA VALUES ("SALAMANCA");
INSERT INTO COMUNA VALUES ("LOS VILOS");
INSERT INTO COMUNA VALUES ("CANELA");
INSERT INTO COMUNA VALUES ("ISLA DE PASCUA");
INSERT INTO COMUNA VALUES ("LA LIGUA");
INSERT INTO COMUNA VALUES ("PETORCA");
INSERT INTO COMUNA VALUES ("CABILDO");
INSERT INTO COMUNA VALUES ("ZAPALLAR");
INSERT INTO COMUNA VALUES ("PAPUDO");
INSERT INTO COMUNA VALUES ("VALPARAISO");
INSERT INTO COMUNA VALUES ("VINA DEL MAR");
INSERT INTO COMUNA VALUES ("VILLA ALEMANA");
INSERT INTO COMUNA VALUES ("QUILPUE");
INSERT INTO COMUNA VALUES ("CASABLANCA");
INSERT INTO COMUNA VALUES ("QUINTERO");
INSERT INTO COMUNA VALUES ("PUCHUNCAVI");
INSERT INTO COMUNA VALUES ("JUAN FERNANDEZ");
INSERT INTO COMUNA VALUES ("CONCON");
INSERT INTO COMUNA VALUES ("SAN ANTONIO");
INSERT INTO COMUNA VALUES ("SANTO DOMINGO");
INSERT INTO COMUNA VALUES ("CARTAGENA");
INSERT INTO COMUNA VALUES ("EL TABO");
INSERT INTO COMUNA VALUES ("EL QUISCO");
INSERT INTO COMUNA VALUES ("ALGARROBO");
INSERT INTO COMUNA VALUES ("QUILLOTA");
INSERT INTO COMUNA VALUES ("NOGALES");
INSERT INTO COMUNA VALUES ("HIJUELAS");
INSERT INTO COMUNA VALUES ("LA CALERA");
INSERT INTO COMUNA VALUES ("LA CRUZ");
INSERT INTO COMUNA VALUES ("LIMACHE");
INSERT INTO COMUNA VALUES ("OLMUE");
INSERT INTO COMUNA VALUES ("SAN FELIPE");
INSERT INTO COMUNA VALUES ("PANQUEHUE");
INSERT INTO COMUNA VALUES ("CATEMU");
INSERT INTO COMUNA VALUES ("PUTAENDO");
INSERT INTO COMUNA VALUES ("SANTA MARIA");
INSERT INTO COMUNA VALUES ("LLAY-LLAY");
INSERT INTO COMUNA VALUES ("LOS ANDES");
INSERT INTO COMUNA VALUES ("CALLE LARGA");
INSERT INTO COMUNA VALUES ("SAN ESTEBAN");
INSERT INTO COMUNA VALUES ("RINCONADA");
INSERT INTO COMUNA VALUES ("RANCAGUA");
INSERT INTO COMUNA VALUES ("MACHALI");
INSERT INTO COMUNA VALUES ("GRANEROS");
INSERT INTO COMUNA VALUES ("SAN FRANCISCO DE MOSTAZAL");
INSERT INTO COMUNA VALUES ("DONIHUE");
INSERT INTO COMUNA VALUES ("COLTAUCO");
INSERT INTO COMUNA VALUES ("CODEGUA");
INSERT INTO COMUNA VALUES ("PEUMO");
INSERT INTO COMUNA VALUES ("LAS CABRAS");
INSERT INTO COMUNA VALUES ("SAN VICENTE");
INSERT INTO COMUNA VALUES ("PICHIDEGUA");
INSERT INTO COMUNA VALUES ("RENGO");
INSERT INTO COMUNA VALUES ("REQUINOA");
INSERT INTO COMUNA VALUES ("OLIVAR");
INSERT INTO COMUNA VALUES ("MALLOA");
INSERT INTO COMUNA VALUES ("COINCO");
INSERT INTO COMUNA VALUES ("QUINTA DE TILCOCO");
INSERT INTO COMUNA VALUES ("SAN FERNANDO");
INSERT INTO COMUNA VALUES ("CHIMBARONGO");
INSERT INTO COMUNA VALUES ("NANCAGUA");
INSERT INTO COMUNA VALUES ("PLACILLA");
INSERT INTO COMUNA VALUES ("SANTA CRUZ");
INSERT INTO COMUNA VALUES ("LOLOL");
INSERT INTO COMUNA VALUES ("PALMILLA");
INSERT INTO COMUNA VALUES ("PERALILLO");
INSERT INTO COMUNA VALUES ("CHEPICA");
INSERT INTO COMUNA VALUES ("PUMANQUE");
INSERT INTO COMUNA VALUES ("PICHILEMU");
INSERT INTO COMUNA VALUES ("NAVIDAD");
INSERT INTO COMUNA VALUES ("LITUECHE");
INSERT INTO COMUNA VALUES ("LA ESTRELLA");
INSERT INTO COMUNA VALUES ("MARCHIGUE");
INSERT INTO COMUNA VALUES ("PAREDONES");
INSERT INTO COMUNA VALUES ("CURICO");
INSERT INTO COMUNA VALUES ("TENO");
INSERT INTO COMUNA VALUES ("ROMERAL");
INSERT INTO COMUNA VALUES ("RAUCO");
INSERT INTO COMUNA VALUES ("LICANTEN");
INSERT INTO COMUNA VALUES ("VICHUQUEN");
INSERT INTO COMUNA VALUES ("HUALANE");
INSERT INTO COMUNA VALUES ("MOLINA");
INSERT INTO COMUNA VALUES ("SAGRADA FAMILIA");
INSERT INTO COMUNA VALUES ("TALCA");
INSERT INTO COMUNA VALUES ("SAN CLEMENTE");
INSERT INTO COMUNA VALUES ("PELARCO");
INSERT INTO COMUNA VALUES ("RIO CLARO");
INSERT INTO COMUNA VALUES ("PENCAHUE");
INSERT INTO COMUNA VALUES ("MAULE");
INSERT INTO COMUNA VALUES ("CUREPTO");
INSERT INTO COMUNA VALUES ("CONSTITUCION");
INSERT INTO COMUNA VALUES ("EMPEDRADO");
INSERT INTO COMUNA VALUES ("SAN RAFAEL");
INSERT INTO COMUNA VALUES ("LINARES");
INSERT INTO COMUNA VALUES ("YERBAS BUENAS");
INSERT INTO COMUNA VALUES ("COLBUN");
INSERT INTO COMUNA VALUES ("LONGAVI");
INSERT INTO COMUNA VALUES ("PARRAL");
INSERT INTO COMUNA VALUES ("RETIRO");
INSERT INTO COMUNA VALUES ("VILLA ALEGRE");
INSERT INTO COMUNA VALUES ("SAN JAVIER");
INSERT INTO COMUNA VALUES ("CAUQUENES");
INSERT INTO COMUNA VALUES ("PELLUHUE");
INSERT INTO COMUNA VALUES ("CHANCO");
INSERT INTO COMUNA VALUES ("CHILLAN");
INSERT INTO COMUNA VALUES ("PINTO");
INSERT INTO COMUNA VALUES ("COIHUECO");
INSERT INTO COMUNA VALUES ("QUIRIHUE");
INSERT INTO COMUNA VALUES ("NINHUE");
INSERT INTO COMUNA VALUES ("PORTEZUELO");
INSERT INTO COMUNA VALUES ("COBQUECURA");
INSERT INTO COMUNA VALUES ("TREHUACO");
INSERT INTO COMUNA VALUES ("SAN CARLOS");
INSERT INTO COMUNA VALUES ("NIQUEN");
INSERT INTO COMUNA VALUES ("SAN FABIAN");
INSERT INTO COMUNA VALUES ("SAN NICOLAS");
INSERT INTO COMUNA VALUES ("BULNES");
INSERT INTO COMUNA VALUES ("SAN IGNACIO");
INSERT INTO COMUNA VALUES ("QUILLON");
INSERT INTO COMUNA VALUES ("YUNGAY");
INSERT INTO COMUNA VALUES ("PEMUCO");
INSERT INTO COMUNA VALUES ("EL CARMEN");
INSERT INTO COMUNA VALUES ("RANQUIL");
INSERT INTO COMUNA VALUES ("COELEMU");
INSERT INTO COMUNA VALUES ("CHILLAN VIEJO");
INSERT INTO COMUNA VALUES ("CONCEPCION");
INSERT INTO COMUNA VALUES ("PENCO");
INSERT INTO COMUNA VALUES ("HUALQUI");
INSERT INTO COMUNA VALUES ("FLORIDA");
INSERT INTO COMUNA VALUES ("TOME");
INSERT INTO COMUNA VALUES ("TALCAHUANO");
INSERT INTO COMUNA VALUES ("CORONEL");
INSERT INTO COMUNA VALUES ("LOTA");
INSERT INTO COMUNA VALUES ("SANTA JUANA");
INSERT INTO COMUNA VALUES ("SAN PEDRO DE LA PAZ");
INSERT INTO COMUNA VALUES ("CHIGUAYANTE");
INSERT INTO COMUNA VALUES ("HUALPEN");
INSERT INTO COMUNA VALUES ("ARAUCO");
INSERT INTO COMUNA VALUES ("CURANILAHUE");
INSERT INTO COMUNA VALUES ("LEBU");
INSERT INTO COMUNA VALUES ("LOS ALAMOS");
INSERT INTO COMUNA VALUES ("CANETE");
INSERT INTO COMUNA VALUES ("CONTULMO");
INSERT INTO COMUNA VALUES ("TIRUA");
INSERT INTO COMUNA VALUES ("LOS ANGELES");
INSERT INTO COMUNA VALUES ("SANTA BARBARA");
INSERT INTO COMUNA VALUES ("LAJA");
INSERT INTO COMUNA VALUES ("QUILLECO");
INSERT INTO COMUNA VALUES ("NACIMIENTO");
INSERT INTO COMUNA VALUES ("NEGRETE");
INSERT INTO COMUNA VALUES ("MULCHEN");
INSERT INTO COMUNA VALUES ("QUILACO");
INSERT INTO COMUNA VALUES ("YUMBEL");
INSERT INTO COMUNA VALUES ("CABRERO");
INSERT INTO COMUNA VALUES ("SAN ROSENDO");
INSERT INTO COMUNA VALUES ("TUCAPEL");
INSERT INTO COMUNA VALUES ("ANTUCO");
INSERT INTO COMUNA VALUES ("ALTO BIOBIO");
INSERT INTO COMUNA VALUES ("ANGOL");
INSERT INTO COMUNA VALUES ("PUREN");
INSERT INTO COMUNA VALUES ("LOS SAUCES");
INSERT INTO COMUNA VALUES ("RENAICO");
INSERT INTO COMUNA VALUES ("COLLIPULLI");
INSERT INTO COMUNA VALUES ("ERCILLA");
INSERT INTO COMUNA VALUES ("TRAIGUEN");
INSERT INTO COMUNA VALUES ("LUMACO");
INSERT INTO COMUNA VALUES ("VICTORIA");
INSERT INTO COMUNA VALUES ("CURACAUTIN");
INSERT INTO COMUNA VALUES ("LONQUIMAY");
INSERT INTO COMUNA VALUES ("TEMUCO");
INSERT INTO COMUNA VALUES ("VILCUN");
INSERT INTO COMUNA VALUES ("FREIRE");
INSERT INTO COMUNA VALUES ("CUNCO");
INSERT INTO COMUNA VALUES ("LAUTARO");
INSERT INTO COMUNA VALUES ("PERQUENCO");
INSERT INTO COMUNA VALUES ("GALVARINO");
INSERT INTO COMUNA VALUES ("NUEVA IMPERIAL");
INSERT INTO COMUNA VALUES ("CARAHUE");
INSERT INTO COMUNA VALUES ("SAAVEDRA");
INSERT INTO COMUNA VALUES ("PITRUFQUEN");
INSERT INTO COMUNA VALUES ("GORBEA");
INSERT INTO COMUNA VALUES ("TOLTEN");
INSERT INTO COMUNA VALUES ("LONCOCHE");
INSERT INTO COMUNA VALUES ("VILLARRICA");
INSERT INTO COMUNA VALUES ("PUCON");
INSERT INTO COMUNA VALUES ("MELIPEUCO");
INSERT INTO COMUNA VALUES ("CURARREHUE");
INSERT INTO COMUNA VALUES ("TEODORO SCHMIDT");
INSERT INTO COMUNA VALUES ("PADRE LAS CASAS");
INSERT INTO COMUNA VALUES ("CHOLCHOL");
INSERT INTO COMUNA VALUES ("VALDIVIA");
INSERT INTO COMUNA VALUES ("MARIQUINA");
INSERT INTO COMUNA VALUES ("LANCO");
INSERT INTO COMUNA VALUES ("LOS LAGOS");
INSERT INTO COMUNA VALUES ("FUTRONO");
INSERT INTO COMUNA VALUES ("CORRAL");
INSERT INTO COMUNA VALUES ("MAFIL");
INSERT INTO COMUNA VALUES ("PANGUIPULLI");
INSERT INTO COMUNA VALUES ("LA UNION");
INSERT INTO COMUNA VALUES ("PAILLACO");
INSERT INTO COMUNA VALUES ("RIO BUENO");
INSERT INTO COMUNA VALUES ("LAGO RANCO");
INSERT INTO COMUNA VALUES ("OSORNO");
INSERT INTO COMUNA VALUES ("SAN PABLO");
INSERT INTO COMUNA VALUES ("PUERTO OCTAY");
INSERT INTO COMUNA VALUES ("PUYEHUE");
INSERT INTO COMUNA VALUES ("RIO NEGRO");
INSERT INTO COMUNA VALUES ("PURRANQUE");
INSERT INTO COMUNA VALUES ("SAN JUAN DE LA COSTA");
INSERT INTO COMUNA VALUES ("PUERTO MONTT");
INSERT INTO COMUNA VALUES ("COCHAMO");
INSERT INTO COMUNA VALUES ("PUERTO VARAS");
INSERT INTO COMUNA VALUES ("FRESIA");
INSERT INTO COMUNA VALUES ("FRUTILLAR");
INSERT INTO COMUNA VALUES ("LLANQUIHUE");
INSERT INTO COMUNA VALUES ("MAULLIN");
INSERT INTO COMUNA VALUES ("LOS MUERMOS");
INSERT INTO COMUNA VALUES ("CALBUCO");
INSERT INTO COMUNA VALUES ("CASTRO");
INSERT INTO COMUNA VALUES ("CHONCHI");
INSERT INTO COMUNA VALUES ("QUEILEN");
INSERT INTO COMUNA VALUES ("QUELLON");
INSERT INTO COMUNA VALUES ("PUQUELDON");
INSERT INTO COMUNA VALUES ("ANCUD");
INSERT INTO COMUNA VALUES ("QUEMCHI");
INSERT INTO COMUNA VALUES ("DALCAHUE");
INSERT INTO COMUNA VALUES ("CURACO DE VELEZ");
INSERT INTO COMUNA VALUES ("QUINCHAO");
INSERT INTO COMUNA VALUES ("CHAITEN");
INSERT INTO COMUNA VALUES ("HUALAIHUE");
INSERT INTO COMUNA VALUES ("FUTALEUFU");
INSERT INTO COMUNA VALUES ("PALENA");
INSERT INTO COMUNA VALUES ("AYSEN");
INSERT INTO COMUNA VALUES ("CISNES");
INSERT INTO COMUNA VALUES ("GUAITECAS");
INSERT INTO COMUNA VALUES ("CHILE CHICO");
INSERT INTO COMUNA VALUES ("RIO IBANEZ");
INSERT INTO COMUNA VALUES ("COCHRANE");
INSERT INTO COMUNA VALUES ("OHIGGINS");
INSERT INTO COMUNA VALUES ("TORTEL");
INSERT INTO COMUNA VALUES ("COYHAIQUE");
INSERT INTO COMUNA VALUES ("LAGO VERDE");
INSERT INTO COMUNA VALUES ("NATALES");
INSERT INTO COMUNA VALUES ("TORRES DEL PAINE");
INSERT INTO COMUNA VALUES ("RIO VERDE");
INSERT INTO COMUNA VALUES ("SAN GREGORIO");
INSERT INTO COMUNA VALUES ("PUNTA ARENAS");
INSERT INTO COMUNA VALUES ("LAGUNA BLANCA");
INSERT INTO COMUNA VALUES ("PORVENIR");
INSERT INTO COMUNA VALUES ("PRIMAVERA");
INSERT INTO COMUNA VALUES ("TIMAUKEL");
INSERT INTO COMUNA VALUES ("CABO DE HORNOS");
INSERT INTO COMUNA VALUES ("SANTIAGO");
INSERT INTO COMUNA VALUES ("SANTIAGO OESTE");
INSERT INTO COMUNA VALUES ("SANTIAGO SUR");
INSERT INTO COMUNA VALUES ("RECOLETA");
INSERT INTO COMUNA VALUES ("INDEPENDENCIA");
INSERT INTO COMUNA VALUES ("QUINTA NORMAL");
INSERT INTO COMUNA VALUES ("MAIPU");
INSERT INTO COMUNA VALUES ("PUDAHUEL");
INSERT INTO COMUNA VALUES ("RENCA");
INSERT INTO COMUNA VALUES ("QUILICURA");
INSERT INTO COMUNA VALUES ("CONCHALI");
INSERT INTO COMUNA VALUES ("LO PRADO");
INSERT INTO COMUNA VALUES ("CERRO NAVIA");
INSERT INTO COMUNA VALUES ("ESTACION CENTRAL");
INSERT INTO COMUNA VALUES ("HUECHURABA");
INSERT INTO COMUNA VALUES ("CERRILLOS");
INSERT INTO COMUNA VALUES ("COLINA");
INSERT INTO COMUNA VALUES ("LAMPA");
INSERT INTO COMUNA VALUES ("TIL-TIL");
INSERT INTO COMUNA VALUES ("TALAGANTE");
INSERT INTO COMUNA VALUES ("ISLA DE MAIPO");
INSERT INTO COMUNA VALUES ("EL MONTE");
INSERT INTO COMUNA VALUES ("PENAFLOR");
INSERT INTO COMUNA VALUES ("PADRE HURTADO");
INSERT INTO COMUNA VALUES ("MELIPILLA");
INSERT INTO COMUNA VALUES ("MARIA PINTO");
INSERT INTO COMUNA VALUES ("CURACAVI");
INSERT INTO COMUNA VALUES ("SAN PEDRO");
INSERT INTO COMUNA VALUES ("ALHUE");
INSERT INTO COMUNA VALUES ("PROVIDENCIA");
INSERT INTO COMUNA VALUES ("NUNOA");
INSERT INTO COMUNA VALUES ("LAS CONDES");
INSERT INTO COMUNA VALUES ("LA FLORIDA");
INSERT INTO COMUNA VALUES ("LA REINA");
INSERT INTO COMUNA VALUES ("MACUL");
INSERT INTO COMUNA VALUES ("PENALOLEN");
INSERT INTO COMUNA VALUES ("VITACURA");
INSERT INTO COMUNA VALUES ("LO BARNECHEA");
INSERT INTO COMUNA VALUES ("SAN MIGUEL");
INSERT INTO COMUNA VALUES ("LA CISTERNA");
INSERT INTO COMUNA VALUES ("LA GRANJA");
INSERT INTO COMUNA VALUES ("SAN RAMON");
INSERT INTO COMUNA VALUES ("LA PINTANA");
INSERT INTO COMUNA VALUES ("PEDRO AGUIRRE CERDA");
INSERT INTO COMUNA VALUES ("SAN JOAQUIN");
INSERT INTO COMUNA VALUES ("LO ESPEJO");
INSERT INTO COMUNA VALUES ("EL BOSQUE");
INSERT INTO COMUNA VALUES ("PUENTE ALTO");
INSERT INTO COMUNA VALUES ("PIRQUE");
INSERT INTO COMUNA VALUES ("SAN JOSE DE MAIPO");
INSERT INTO COMUNA VALUES ("SAN BERNARDO")	;
INSERT INTO COMUNA VALUES ("CALERA DE TANGO");
INSERT INTO COMUNA VALUES ("BUIN");
INSERT INTO COMUNA VALUES ("PAINE");

INSERT INTO REGION VALUES ("Región de Tarapacá","I");
INSERT INTO REGION VALUES ("Región de Antofagasta","II");
INSERT INTO REGION VALUES ("Región de Atacama","III");
INSERT INTO REGION VALUES ("Región de Coquimbo","IV");
INSERT INTO REGION VALUES ("Región de Valparaíso","V");
INSERT INTO REGION VALUES ("Región del Libertador General Bernardo O’Higgins","VI");
INSERT INTO REGION VALUES ("Región del Maule","VII");
INSERT INTO REGION VALUES ("Región del Bio-bío","VIII");
INSERT INTO REGION VALUES ("Región de La Araucanía","IX");
INSERT INTO REGION VALUES ("Región de Los Lagos","X");
INSERT INTO REGION VALUES ("Región Aysén del General Carlos Ibáñez del Campo","XI");
INSERT INTO REGION VALUES ("Región de Magallanes y Antártica Chilena","XII");
INSERT INTO REGION VALUES ("Región Metropolitana de Santiago","RM");
INSERT INTO REGION VALUES ("Región de Los Ríos","XIV");
INSERT INTO REGION VALUES ("Región de Arica y Parinacota","XV");
INSERT INTO REGION VALUES ("Región de Ñuble","XVI");

INSERT INTO CANDIDATO VALUES ("Juanito", "Perez");
INSERT INTO CANDIDATO VALUES ("Cosme", "Fulanito");
INSERT INTO CANDIDATO VALUES ("Amiya", "Rhodes");
INSERT INTO CANDIDATO VALUES ("Mengano", "Gonzales");