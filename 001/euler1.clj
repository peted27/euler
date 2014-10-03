#_(defdeps
    [[org.clojure/clojure "1.6.0"]])

(ns euler1)

(defn sum-mul-3-5 
  [n]
  (apply + 
         (filter (fn [x] (or (= (mod x 3) 0) 
                             (= (mod x 5) 0))) 
                 (range 1 n))))
(defn euler1 
  []
  (println (sum-mul-3-5 1000)))

(euler1)
