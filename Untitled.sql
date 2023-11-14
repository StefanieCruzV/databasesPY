SELECT * FROM dojos_ninjas.dojos;

use dojos_ninjas;
SELECT * FROM dojos LEFT JOIN ninjas
 ON ninjas.dojo_id = dojos.id
 Where dojos.id=4;