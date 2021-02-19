(define (problem linehaul_example)
    (:domain tour_planner)

    (:objects
        TourTravelsBus - transport
        Home Teknaf SaintMartin CoxBazar  - location
        spot0 spot1 spot2 spot3 spot4 spot5 spot6 spot7 spot8 spot9 spot10  - spot
    )

    (:init
        (= (already_visited) 0)
        (at TourTravelsBus Home)
        ; (visited_spots TourTravelsBus spot10)
        (spot_visiting Teknaf spot3)
        (spot_visiting SaintMartin spot5)
        (spot_visiting CoxBazar spot2)
        (rating_order spot0 spot1)
        (rating_order spot1 spot2)
        (rating_order spot2 spot3)
        (rating_order spot3 spot4)
        (rating_order spot4 spot5)
        (rating_order spot5 spot6)
        (rating_order spot6 spot7)
        (rating_order spot7 spot8)
        (rating_order spot8 spot9)
        (rating_order spot9 spot10)
        ; (rating_order n10 n11)
        ; (rating_order n11 n12)
        ; (rating_order n12 n13)
        ; (rating_order n13 n14)
        ; (rating_order n14 n15)
        ; (rating_order n15 n16)
        ; (rating_order n16 n17)
        ; (rating_order n17 n18)
        ; (rating_order n18 n19)
        ; (rating_order n19 n20)
        ; (rating_order n20 n21)
        ; (rating_order n21 n22)
        ; (rating_order n22 n23)
        ; (rating_order n23 n24)
        ; (rating_order n24 n25)
        ; (rating_order n25 n26)
        ; (rating_order n26 n27)
        ; (rating_order n27 n28)
        ; (rating_order n28 n29)
        ; (rating_order n29 n30)
        ; (rating_order n30 n31)
        ; (rating_order n31 n32)
        ; (rating_order n32 n33)
        ; (rating_order n33 n34)
        ; (rating_order n34 n35)
        ; (rating_order n35 n36)
        ; (rating_order n36 n37)
        ; (rating_order n37 n38)
        ; (rating_order n38 n39)
        ; (rating_order n39 n40)
        (= (distance Home Home) 0)
        (= (distance Home Teknaf) 573)
        (= (distance Home SaintMartin) 896)
        (= (distance Home CoxBazar) 876)
        (= (distance Teknaf Home) 573)
        (= (distance Teknaf Teknaf) 0)
        (= (distance Teknaf SaintMartin) 372)
        (= (distance Teknaf CoxBazar) 296)
        (= (distance SaintMartin Home) 896)
        (= (distance SaintMartin Teknaf) 372)
        (= (distance SaintMartin SaintMartin) 0)
        (= (distance SaintMartin CoxBazar) 79)
        (= (distance CoxBazar Home) 876)
        (= (distance CoxBazar Teknaf) 296)
        (= (distance CoxBazar SaintMartin) 79)
        (= (distance CoxBazar CoxBazar) 0)
        (= (per_km_cost TourTravelsBus) 2.59)
        (= (total-cost) 0)
        (= (food-cost) 10)
        (= (transport-cost) 10)
    )

    (:goal (and 
            (= (already_visited) 10)
            (spot_visiting Teknaf spot0)
            (spot_visiting SaintMartin spot0)
            (spot_visiting CoxBazar spot0)
            (at TourTravelsBus Home)
            (tour_ending_spot Home)
           )
	)

    (:metric minimize (total-cost))
)