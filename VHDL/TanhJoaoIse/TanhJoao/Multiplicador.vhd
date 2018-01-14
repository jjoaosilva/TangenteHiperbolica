-------------------------------------------------------------------------------
--
-- Title       : Multiplicador
-- Design      : TanhJoao
-- Author      : GCEM
-- Company     : nenhuma
--
-------------------------------------------------------------------------------
--
-- File        : Multiplicador.vhd
-- Generated   : Wed Apr 27 11:21:47 2016
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {Multiplicador} architecture {Multiplicador}}

library ieee;
use ieee.numeric_std.all;  
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplicador is
	 port(
		 INPUT1M : in STD_LOGIC_VECTOR(24 downto 0);
		 INPUT2M : in STD_LOGIC_VECTOR(24 downto 0);
		 RESULTM : out STD_LOGIC_VECTOR(49 downto 0)
	     );
end Multiplicador;

--}} End of automatically maintained section

architecture Multiplicador of Multiplicador is	

begin
	RESULTM <= STD_LOGIC_VECTOR(SIGNED(INPUT1M) * SIGNED(INPUT2M));

end Multiplicador;
