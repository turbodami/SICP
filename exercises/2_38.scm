(fold-right / 1 (list 1 2 3))
1 1/2
 
(fold-left / 1 (list 1 2 3))
1/6
 
(display (fold-right list nil (list 1 2 3)))
(1 (2 (3 ())))
 
(display (fold-left list nil (list 1 2 3)))
(((() 1) 2) 3)