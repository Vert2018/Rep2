;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 27|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define base-attendance 120)
(define base-price 5.0)
(define attend-inc 15)
(define price-inc 0.1)
(define base-cost 180)
(define cost-per-attend 0.04)

;Price of the tickets
(define (attendees ticket-price)
  (- base-attendance
     (* (- ticket-price base-price)
        (/ attend-inc price-inc))))

;Revenue
(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

;Fixed cost
(define (cost ticket-price)
  (+ base-cost (* cost-per-attend (attendees ticket-price))))

;Profit
(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(exact->inexact (profit 3.0))
(exact->inexact (profit 4.0))
(exact->inexact (profit 5.0))