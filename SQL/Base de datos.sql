/* Inicialización de la base de datos */

/* Borrar la base si ya ha existido previamente */
DROP DATABASE SISTEMA_VOTACION;

/* Crear la base */
CREATE DATABASE SISTEMA_VOTACION;
USE SISTEMA_VOTACION;


/* Creación de tablas */
CREATE TABLE REGION (
ID_REGION INT PRIMARY KEY,
NOMBRE_REGION VARCHAR(50) NOT NULL,
NUMERO_REGION VARCHAR(4) NOT NULL
);

CREATE TABLE COMUNA (
ID_COMUNA INT AUTO_INCREMENT PRIMARY KEY,
NOMBRE_COMUNA VARCHAR(30),
REGION_ID INT
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

/* Crear la relacion entre region y comuna */

ALTER TABLE COMUNA ADD FOREIGN KEY (REGION_ID) REFERENCES REGION (ID_REGION);

/* Insertar regiones */
INSERT INTO REGION VALUES (1,"Región de Tarapacá","I");
INSERT INTO REGION VALUES (2,"Región de Antofagasta","II");
INSERT INTO REGION VALUES (3,"Región de Atacama","III");
INSERT INTO REGION VALUES (4,"Región de Coquimbo","IV");
INSERT INTO REGION VALUES (5,"Región de Valparaíso","V");
INSERT INTO REGION VALUES (6,"Región del Libertador General Bernardo O’Higgins","VI");
INSERT INTO REGION VALUES (7,"Región del Maule","VII");
INSERT INTO REGION VALUES (8,"Región del Bio-bío","VIII");
INSERT INTO REGION VALUES (9,"Región de La Araucanía","IX");
INSERT INTO REGION VALUES (10,"Región de Los Lagos","X");
INSERT INTO REGION VALUES (11,"Región Aysén del General Carlos Ibáñez del Campo","XI");
INSERT INTO REGION VALUES (12,"Región de Magallanes y Antártica Chilena","XII");
INSERT INTO REGION VALUES (13,"Región Metropolitana de Santiago","RM");
INSERT INTO REGION VALUES (14,"Región de Los Ríos","XIV");
INSERT INTO REGION VALUES (15,"Región de Arica y Parinacota","XV");
INSERT INTO REGION VALUES (16,"Región de Ñuble","XVI");


/* Insertar comunas */

/* Arica y parinacota - Region 15 */
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ARICA",15);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PUTRE",15);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("GENERAL LAGOS",15);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CAMARONES",15);

/* Tarapacá - Region 1 */
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("IQUIQUE",1);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PICA",1);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("POZO ALMONTE",1);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("HUARA",1);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CAMINA",1);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("COLCHANE",1);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ALTO HOSPICIO",1);

/* Antofagasta - Region 2*/
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TOCOPILLA",2);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("MARIA ELENA",2);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ANTOFAGASTA",2);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TALTAL",2);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("MEJILLONES",2);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SIERRA GORDA",2);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CALAMA",2);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("OLLAGUE",2);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN PEDRO DE ATACAMA",2);

/* Atacama - Region 3 */
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CHANARAL",3);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("DIEGO DE ALMAGRO",3);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("COPIAPO",3);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CALDERA",3);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TIERRA AMARILLA",3);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("VALLENAR",3);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("FREIRINA",3);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("HUASCO",3);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ALTO DEL CARMEN",3);

/* Coquimbo - Region 4 */
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ANDACOLLO",4);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CANELA",4);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("COQUIMBO",4);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("COMBARBALA",4);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ILLAPEL",4);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LA HIGUERA",4);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LA SERENA",4);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LOS VILOS",4);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("MONTE PATRIA",4);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("OVALLE",4);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PAIHUANO",4);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PUNITAQUI",4);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("RIO HURTADO",4);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SALAMANCA",4);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("VICUNA",4);

/* Valparaíso - Region 5 */
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ALGARROBO",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ISLA DE PASCUA",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LA LIGUA",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PETORCA",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CABILDO",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PAPUDO",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("QUILPUE",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CASABLANCA",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("QUINTERO",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PUCHUNCAVI",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("JUAN FERNANDEZ",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CONCON",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN ANTONIO",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CARTAGENA",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("EL TABO",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("EL QUISCO",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("QUILLOTA",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("NOGALES",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("HIJUELAS",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LA CALERA",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LA CRUZ",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LIMACHE",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("OLMUE",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN FELIPE",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PANQUEHUE",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CATEMU",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PUTAENDO",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SANTA MARIA",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LLAY-LLAY",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LOS ANDES",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CALLE LARGA",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN ESTEBAN",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("RINCONADA",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SANTO DOMINGO",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("VALPARAISO",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("VILLA ALEMANA",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("VINA DEL MAR",5);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ZAPALLAR",5);

/* Libertador O'higgins - Region 6 */
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("RANCAGUA",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("MACHALI",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("GRANEROS",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN FRANCISCO DE MOSTAZAL",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("DONIHUE",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("COLTAUCO",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CODEGUA",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PEUMO",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LAS CABRAS",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN VICENTE",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PICHIDEGUA",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("RENGO",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("REQUINOA",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("OLIVAR",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("MALLOA",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("COINCO",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("QUINTA DE TILCOCO",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN FERNANDO",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CHIMBARONGO",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("NANCAGUA",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PLACILLA",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SANTA CRUZ",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LOLOL",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PALMILLA",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PERALILLO",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CHEPICA",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PUMANQUE",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PICHILEMU",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("NAVIDAD",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LITUECHE",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LA ESTRELLA",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("MARCHIGUE",6);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PAREDONES",6);

/* Maule - Región 7*/
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CURICO",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TENO",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ROMERAL",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("RAUCO",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LICANTEN",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("VICHUQUEN",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("HUALANE",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("MOLINA",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAGRADA FAMILIA",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TALCA",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN CLEMENTE",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PELARCO",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("RIO CLARO",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PENCAHUE",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("MAULE",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CUREPTO",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CONSTITUCION",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("EMPEDRADO",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN RAFAEL",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LINARES",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("YERBAS BUENAS",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("COLBUN",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LONGAVI",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PARRAL",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("RETIRO",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("VILLA ALEGRE",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN JAVIER",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CAUQUENES",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PELLUHUE",7);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CHANCO",7);

/* Ñuble - Región 16 */
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CHILLAN",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PINTO",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("COIHUECO",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("QUIRIHUE",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("NINHUE",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PORTEZUELO",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("COBQUECURA",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TREHUACO",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN CARLOS",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("NIQUEN",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN FABIAN",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN NICOLAS",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("BULNES",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN IGNACIO",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("QUILLON",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("YUNGAY",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PEMUCO",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("EL CARMEN",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("RANQUIL",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("COELEMU",16);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CHILLAN VIEJO",16);

/* Bio bio - Region 8 */
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CONCEPCION",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PENCO",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("HUALQUI",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("FLORIDA",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TOME",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TALCAHUANO",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CORONEL",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LOTA",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SANTA JUANA",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN PEDRO DE LA PAZ",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CHIGUAYANTE",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("HUALPEN",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ARAUCO",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CURANILAHUE",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LEBU",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LOS ALAMOS",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CANETE",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CONTULMO",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TIRUA",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LOS ANGELES",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SANTA BARBARA",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LAJA",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("QUILLECO",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("NACIMIENTO",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("NEGRETE",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("MULCHEN",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("QUILACO",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("YUMBEL",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CABRERO",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN ROSENDO",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TUCAPEL",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ANTUCO",8);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ALTO BIOBIO",8);

/* Araucanía - Región 9 */
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ANGOL",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PUREN",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LOS SAUCES",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("RENAICO",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("COLLIPULLI",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ERCILLA",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TRAIGUEN",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LUMACO",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("VICTORIA",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CURACAUTIN",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LONQUIMAY",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TEMUCO",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("VILCUN",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("FREIRE",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CUNCO",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LAUTARO",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PERQUENCO",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("GALVARINO",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("NUEVA IMPERIAL",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CARAHUE",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAAVEDRA",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PITRUFQUEN",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("GORBEA",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TOLTEN",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LONCOCHE",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("VILLARRICA",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PUCON",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("MELIPEUCO",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CURARREHUE",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TEODORO SCHMIDT",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PADRE LAS CASAS",9);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CHOLCHOL",9);

/* Los Ríos - Region 14 */
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("VALDIVIA",14);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("MARIQUINA",14);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LANCO",14);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LOS LAGOS",14);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("FUTRONO",14);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CORRAL",14);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("MAFIL",14);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PANGUIPULLI",14);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LA UNION",14);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PAILLACO",14);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("RIO BUENO",14);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LAGO RANCO",14);

/* Los Lagos - Region 10 */
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("OSORNO",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN PABLO",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PUERTO OCTAY",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PUYEHUE",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("RIO NEGRO",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PURRANQUE",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN JUAN DE LA COSTA",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PUERTO MONTT",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("COCHAMO",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PUERTO VARAS",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("FRESIA",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("FRUTILLAR",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LLANQUIHUE",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("MAULLIN",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LOS MUERMOS",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CALBUCO",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CASTRO",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CHONCHI",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("QUEILEN",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("QUELLON",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PUQUELDON",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ANCUD",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("QUEMCHI",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("DALCAHUE",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CURACO DE VELEZ",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("QUINCHAO",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CHAITEN",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("HUALAIHUE",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("FUTALEUFU",10);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PALENA",10);

/* Aysen - Region 11 */
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("AYSEN",11);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CISNES",11);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("GUAITECAS",11);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CHILE CHICO",11);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("RIO IBANEZ",11);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("COCHRANE",11);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("OHIGGINS",11);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TORTEL",11);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("COYHAIQUE",11);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LAGO VERDE",11);

/* Magallanes - Región 12 */
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ANTARTICA",12);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("NATALES",12);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TORRES DEL PAINE",12);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("RIO VERDE",12);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN GREGORIO",12);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PUNTA ARENAS",12);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LAGUNA BLANCA",12);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PORVENIR",12);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PRIMAVERA",12);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TIMAUKEL",12);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CABO DE HORNOS",12);

/*Metropolitana - Región RM (13) */
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SANTIAGO",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("RECOLETA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("INDEPENDENCIA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("QUINTA NORMAL",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("MAIPU",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PUDAHUEL",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("RENCA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("QUILICURA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CONCHALI",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LO PRADO",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CERRO NAVIA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ESTACION CENTRAL",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("HUECHURABA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CERRILLOS",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("COLINA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LAMPA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TIL-TIL",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("TALAGANTE",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ISLA DE MAIPO",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("EL MONTE",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PENAFLOR",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PADRE HURTADO",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("MELIPILLA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("MARIA PINTO",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CURACAVI",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN PEDRO",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("ALHUE",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PROVIDENCIA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("NUNOA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LAS CONDES",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LA FLORIDA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LA REINA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("MACUL",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PENALOLEN",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("VITACURA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LO BARNECHEA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN MIGUEL",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LA CISTERNA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LA GRANJA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN RAMON",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LA PINTANA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PEDRO AGUIRRE CERDA",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN JOAQUIN",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("LO ESPEJO",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("EL BOSQUE",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PUENTE ALTO",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PIRQUE",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN JOSE DE MAIPO",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("SAN BERNARDO",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("CALERA DE TANGO",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("BUIN",13);
INSERT INTO COMUNA (NOMBRE_COMUNA, REGION_ID) VALUES ("PAINE",13);

/* Insertar candidatos a votar */

INSERT INTO CANDIDATO VALUES ("Juanito", "Perez");
INSERT INTO CANDIDATO VALUES ("Cosme", "Fulanito");
INSERT INTO CANDIDATO VALUES ("Amiya", "Rhodes");
INSERT INTO CANDIDATO VALUES ("Mengano", "Gonzales");