MACHINE
    ACCES_CARD
    
OPERATIONS
    ok <-- is_valid(tab) =
        PRE
            tab : 0..15 --> 0..9
        THEN
            ok :=  bool(
                ( SIGMA(xx).( xx : dom(tab) & xx mod 2 /= 0 | tab(xx)) +
		        SIGMA(xx).( xx : dom(tab) & xx mod 2 = 0 & (tab(xx) * 2) < 9 | (tab(xx) * 2) ) +
		        SIGMA(xx).( xx : dom(tab) & xx mod 2 = 0 & (tab(xx) * 2) > 9 | ( (tab(xx) * 2)/10 ) + ( (tab(xx) * 2) mod 10 ) )
		        ) mod 10 = 0
		    )
		   

        END

END
