with addr_i select
    y_o <= a_i when "000",  -- If addr_i = "000" then y_o = a_i
           b_i when "001",
           c_i when "010",
           d_i when "011"; -- All other combinations
           
y_o <= a_i when (addr_i = "000" and en_i = '1') else
       b_i when (addr_i = "001" and en_i = '1') else
       c_i when (addr_i = "010" and en_i = '1') else
       d_i when (addr_i = "011" and en_i = '1');                 -- All other combinations