-------------------------------------------------------------------------------
--
-- Title       : HalfAdder
-- Design      : TanhJoao
-- Author      : GCEM
-- Company     : nenhuma
--
-------------------------------------------------------------------------------
--
-- File        : HalfAdder.vhd
-- Generated   : Wed Apr 27 11:20:50 2016
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
--{entity {HalfAdder} architecture {HalfAdder}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity HalfAdder is
	 port(
		 INPUTA   : in STD_LOGIC;
		 INPUTB   : in STD_LOGIC;
		 CARRYIn  : in STD_LOGIC;
		 OUTPUT   : out STD_LOGIC;
		 CARRYOut : out STD_LOGIC);
end HalfAdder;

--}} End of automatically maintained section

architecture HalfAdder of HalfAdder is
begin
	 
	  OUTPUT <= INPUTA XOR INPUTB XOR CARRYIn;
	  CARRYOut <= ( INPUTA AND INPUTB ) OR (( INPUTA XOR INPUTB ) AND CARRYIn );



end HalfAdder;
