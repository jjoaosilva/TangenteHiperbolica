-------------------------------------------------------------------------------
--
-- Title       : Func1Grau
-- Design      : TanhJoao
-- Author      : GCEM
-- Company     : nenhuma
--
-------------------------------------------------------------------------------
--
-- File        : Func1Grau.vhd
-- Generated   : Wed Apr 27 11:17:32 2016
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
--{entity {Func1Grau} architecture {Func1Grau}}

library ieee;
use ieee.numeric_std.all;  
use IEEE.STD_LOGIC_1164.ALL;

entity Func1Grau is
	 port(
		 A      : in  STD_LOGIC_VECTOR(24 downto 0);
		 B      : in  STD_LOGIC_VECTOR(49 downto 0);
		 X      : in  STD_LOGIC_VECTOR(24 downto 0);
		 RESULT : out STD_LOGIC_VECTOR(15 downto 0)
	     );
end Func1Grau;

architecture Func1Grau of Func1Grau is	   

COMPONENT Multiplicador IS
	 port(
		 INPUT1M  : in  STD_LOGIC_VECTOR(24 downto 0);
		 INPUT2M  : in  STD_LOGIC_VECTOR(24 downto 0);
		 RESULTM  : out STD_LOGIC_VECTOR(49 downto 0));	
END COMPONENT; 

COMPONENT Somador IS  
	 port(
		 INPUT1S  : in  STD_LOGIC_VECTOR(49 downto 0);
		 INPUT2S  : in  STD_LOGIC_VECTOR(49 downto 0);
		 RESULTS  : out STD_LOGIC_VECTOR(50 downto 0));
END COMPONENT; 

	SIGNAL ResultMultAux : STD_LOGIC_VECTOR(49 DOWNTO 0);
	SIGNAL RESULTAux     : STD_LOGIC_VECTOR(50 downto 0);
begin

M0: Multiplicador PORT MAP(INPUT1M => A, INPUT2M => X, RESULTM => ResultMultAux);
S0: Somador       PORT MAP(INPUT1S => ResultMultAux, INPUT2S => B, RESULTS => RESULTAux);

RESULT <= RESULTAux(50) & RESULTAux(33 DOWNTO 32) & RESULTAux(31 DOWNTO 19); 

end Func1Grau;
