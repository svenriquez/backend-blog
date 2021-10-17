create database Blog
go

use Blog 
go

create table Post (
	id bigint primary key identity,
	titulo varchar(250) not null,
	descripcion varchar(max) not null,
	imagen varchar(200) not null
)
go

insert into Post (titulo, descripcion, imagen)
values ('Animales Hervívoros', 'La nutrición es una de las funciones vitales de los seres vivos que permite agruparlos en diferentes tipos según sean las estrategias y hábitos nutritivos que estos han ido desarrollando. Así, conocer la alimentación de los animales resulta muy importante para descubrir los roles que juega cada especie dentro del correcto funcionamiento de los ecosistemas en los que habitan. Dentro de estas complejas relaciones entre especies basadas en el tipo de nutrición, los animales herbívoros destacan por su importante papel ecológico.', 'hervivoros.jpg'),
('Animales Omnívoros', 'Los animales omnívoros son aquellos animales que se alimentan tanto de plantas como de carne de otros animales. Por ejemplo: avestruz, oso, ratón. Estos animales pueden, gracias a esta cualidad, cambiar de ambiente más fácilmente, ya que pueden encontrar múltiples fuentes de comida. Encontramos omnívoros entre los mamíferos, las aves e incluso los peces y los reptiles.', 'omnivoros.jpg'),
('Animales Carnívoros', 'Son animales que se alimentan de carne, cazando su presa para luego comerla. Las garras de los animales carnívoros depredadores son importantes para agarrar a su presa y poder comerla con más facilidad.', 'carnivoros.jpg'),
('La Flora', 'A nivel de botánica, el significado de flora son todas las plantas, árboles, arbustos y otros vegetales que encontramos en una zona geográfica concreta, ya sea una montaña, una sierra, una región, una península o un continente entero.', 'flora.jpg'),
('La Fauna', 'La fauna es el conjunto de animales que viven en una zona geográfica concreta, que habitaban o habitan en un periodo concreto o que forman parte de un determinado ecosistema. La ciencia que estudia la distribución geográfica de los animales (la fauna) es la zoogeografía y, dentro de este campo, se estudia como los factores como el agua, la temperatura o la fauna contribuyen a la distribución de los animales, ya que estos tienen una gran sensibilidad a los cambios en su hábitat.', 'fauna.jpg'),
('Evolucón de la humanidad', 'El análisis de la gestión de la información/conocimiento en el contexto de la evolución de la humanidad posibilita obtener una visión más amplia de su significación social. Se estudia el proceso de evolución informacional y del conocimiento, que supone la transformación del Homo sapiensal Homo sapientissimus, el reflejo en la materia inanimada y en los organismos vivos, las relaciones de estos últimos con su entorno, la acumulación de la información, el desarrollo de la conciencia social, así como el futuro de la humanidad. La significación de la gestión del conocimiento no debe limitarse a su concepción como fenómeno social, sino que debe comprenderse de una manera más amplia, vinculada a su esencia ontológica para la humanidad.', 'humanidad.png'),
('Los Reptiles', 'Los reptiles son animales que se caracterizan por su piel, recubiertas con escamas o por un caparazón protector como es el caso de las tortugas, y además por su forma de desplazarse muy particular: arrastrando el vientre por la superficie. A pesar de estas características y de que muchas especies viven largo tiempo dentro del agua, tienen respiración pulmonar.<br><br>Los reptiles son generalmente carnívoros pero los hay también herbívoros y omnívoros. Todos son ovíparos, nacen de un huevo. La única especie que no tiene cuatro patas es la de las serpientes. La mayoría son cazadores y algunos venenosos o constrictores, por lo que son animales exóticos y no son mascotas domésticas. <br>El origen de los reptiles', 'reptiles.jpg')
go