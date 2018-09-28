;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 31|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/batch-io)
(define (letter fst lst signature-name)
  (string-append
   (opening fst)
   
   (body fst lst)
   
   (closing signature-name)))

(define (opening fst)
  (string-append "Dear " fst ",

"))

(define (body fst lst)
  (string-append
   "We have discovered that all people with the
"
   "last name " lst " have won our lottery. So,
"
   fst ", " "hurry and pick up your prize.

"))

(define (closing signature-name)
  (string-append
   "Sincerely,
"
   
   signature-name
   "
"))
(write-file
 'stdout
 (letter "Matthew" "Fisler" "Felleisen"))