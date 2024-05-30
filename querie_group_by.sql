1. Contare quanti iscritti ci sono stati ogni anno

SELECT YEAR(enrolment_date) AS `Data_iscrizione`, COUNT(`students`.`id`)
FROM `students`
GROUP BY `data_iscrizione`;





 2. Contare gli insegnanti che hanno l ufficio nello stesso edificio
 
 SELECT `office_address` AS `ufficio`, COUNT(`teachers`.`id`) AS `insegnanti`
 FROM `teachers`
 GROUP BY `ufficio` AND `insegnanti`;

 
 
 
 3. Calcolare la media dei voti di ogni appello d esame


 4. Contare quanti corsi di laurea ci sono per ogni dipartimento

