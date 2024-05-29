1. Selezionare tutti gli studenti nati nel 1990
SELECT * 
FROM `students` 
WHERE  YEAR(`date_of_birth`) = 1990 

2. Selezionare tutti i corsi che valgono più di 10 crediti
SELECT * 
FROM `courses` 
WHERE `cfu` > 10

3. Selezionare tutti gli studenti che hanno più di 30 anni 
SELECT * 
FROM `students` 
WHERE `date_of_birth` <= DATE_SUB(CURRENT_DATE(),INTERVAL 30 YEAR)

4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di
   laurea (286)
SELECT * 
FROM `courses` 
WHERE `year` = 1 AND `period` = "I semestre"
 
5. Selezionare tutti gli appelli d esame che avvengono nel pomeriggio (dopo le 14) del
   20/06/2020 (21)  
SELECT * 
FROM `exams` 
WHERE hour > "14:00" 
AND `date` = "2020-06-20"

6. Selezionare tutti i corsi di laurea magistrale (38) 
SELECT * 
FROM `degrees` 
WHERE `level` = "magistrale"  
 
7. Daquanti dipartimenti è composta l università? (12)
SELECT COUNT(`id`) AS `departments_number`
FROM `departments` 

8. Quanti sono gli insegnanti che non hanno un numero di telefono?
SELECT * 
FROM `teachers` 
WHERE `phone` IS NOT NULL

9. Inserire nella tabella degli studenti un nuovo record con i propri dati (per il campo
   degree_id, inserire un valore casuale)
INSERT INTO `students` ( `degree_id`, `name`,  `surname`, `date_of_birth`, `fiscal_code`, `enrolment_date`, `registration_number`, `email`)
VALUES ("75", "Pippo", "Verdi", "1979-1-1", "AEGAYZ78P14C763V", "2020-1-1", "123456789", "pippo@verdi.com")   

10. Cambiare il numero dell ufficio del professor Pietro Rizzo in 126
UPDATE `teachers`
SET `office_number` = 126
WHERE `name` = "Pietro" AND `surname` = "Rizzo"

11. Eliminare dalla tabella studenti il record creato precedentemente al punto 9
DELETE FROM `students`
WHERE `id` = 5001