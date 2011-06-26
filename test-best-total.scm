(load "load-simply")
(load "best-total")
(load "assert")

(assert = (best-total '()) 0 "empty hand -> 0")
(assert = (best-total '(1s)) 1 "1s -> 1")
(assert = (best-total '(2s)) 2 "2s -> 2")
(assert = (best-total '(10s)) 10 "10c -> 10")
(assert = (best-total '(js)) 10 "js -> 10")
(assert = (best-total '(qs)) 10 "qs -> 10")
(assert = (best-total '(ks)) 10 "ks -> 10")
(assert = (best-total '(as)) 11 "as -> 11")
(assert = (best-total '(1s 2s)) 3 "1s 2s -> 3")
(assert = (best-total '(10s 10s)) 20 "10s 10s -> 20")
(assert = (best-total '(5s 7s 3s)) 15 "5s 7s 3s -> 15")
(assert = (best-total '(7s 3s 5s)) 15 "7s 3s 5s -> 15")
(assert = (best-total '(5s 7s 10s)) 22 "5s 7s 10s -> 22")
(assert = (best-total '(10s 5s 7s)) 22 "10s 5s 7s -> 22")
(assert = (best-total '(10s 9s as)) 20 "10s 9s as -> 20")
(assert = (best-total '(as 10s 9s)) 20 "as 10s 9s -> 20")
(assert = (best-total '(as as 10s 9s)) 21 "as as 10s 9s -> 21")
(assert = (best-total '(as as as as)) 14 "as as as as -> 14")
(assert = (best-total '(10s as as)) 12 "10s as as -> 12")
(assert = (best-total '(as as as as as as as as as as as as)) 12 "as as as as as as as as as as as as-> 12")
(assert = (best-total '(10s 10s as as)) 22 "10s 10s as as -> 22")

; book examples
(assert = (best-total '(ad 8s)) 19 "ad 8s -> 19")
(assert = (best-total '(ad 8s 5h)) 14 "ad 8s 5h -> 14")
(assert = (best-total '(ad as 9h)) 21 "ad as 9h -> 21")


(display "done.\n")
(quit)
