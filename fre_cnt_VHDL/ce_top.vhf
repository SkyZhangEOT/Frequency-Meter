--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ce_top.vhf
-- /___/   /\     Timestamp : 10/27/2019 23:55:23
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/PC/Desktop/measure_f/ce_top.vhf -w C:/Users/PC/Desktop/measure_f/ce_top.sch
--Design Name: ce_top
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ce_top is
   port ( clockin : in    std_logic; 
          csignal : in    std_logic; 
          dig     : out   std_logic_vector (6 downto 0); 
          dpout   : out   std_logic; 
          gate    : out   std_logic; 
          high    : out   std_logic_vector (3 downto 0); 
          lch     : out   std_logic; 
          low     : out   std_logic_vector (3 downto 0); 
          qout    : out   std_logic; 
          reset   : out   std_logic; 
          seg     : out   std_logic_vector (5 downto 0));
end ce_top;

architecture BEHAVIORAL of ce_top is
   signal XLXN_2      : std_logic;
   signal XLXN_3      : std_logic;
   signal XLXN_4      : std_logic;
   signal XLXN_6      : std_logic_vector (2 downto 0);
   signal XLXN_7      : std_logic;
   signal XLXN_13     : std_logic;
   signal XLXN_16     : std_logic_vector (3 downto 0);
   signal XLXN_17     : std_logic_vector (3 downto 0);
   signal XLXN_22     : std_logic_vector (3 downto 0);
   signal XLXN_23     : std_logic_vector (3 downto 0);
   signal XLXN_24     : std_logic_vector (3 downto 0);
   signal XLXN_25     : std_logic_vector (3 downto 0);
   signal XLXN_26     : std_logic_vector (3 downto 0);
   signal XLXN_27     : std_logic_vector (3 downto 0);
   signal XLXN_48     : std_logic;
   signal XLXN_49     : std_logic_vector (3 downto 0);
   signal XLXN_50     : std_logic_vector (3 downto 0);
   signal lch_DUMMY   : std_logic;
   signal low_DUMMY   : std_logic_vector (3 downto 0);
   signal gate_DUMMY  : std_logic;
   signal reset_DUMMY : std_logic;
   signal high_DUMMY  : std_logic_vector (3 downto 0);
   component fdiv3
      port ( Clockin     : in    std_logic; 
             ClockOut1k  : out   std_logic; 
             ClockOut100 : out   std_logic; 
             ClockOut10  : out   std_logic);
   end component;
   
   component control
      port ( inputsignal : in    std_logic; 
             gate        : out   std_logic; 
             reset       : out   std_logic; 
             latch       : out   std_logic);
   end component;
   
   component counter6
      port ( csignal  : in    std_logic; 
             clear    : in    std_logic; 
             count_en : in    std_logic; 
             over     : out   std_logic; 
             result1  : out   std_logic_vector (3 downto 0); 
             result2  : out   std_logic_vector (3 downto 0); 
             result3  : out   std_logic_vector (3 downto 0); 
             result4  : out   std_logic_vector (3 downto 0); 
             result5  : out   std_logic_vector (3 downto 0); 
             result6  : out   std_logic_vector (3 downto 0); 
             clockin  : in    std_logic);
   end component;
   
   component multi
      port ( f1k    : in    std_logic; 
             qover  : in    std_logic; 
             dpin   : in    std_logic_vector (2 downto 0); 
             value1 : in    std_logic_vector (3 downto 0); 
             value2 : in    std_logic_vector (3 downto 0); 
             value3 : in    std_logic_vector (3 downto 0); 
             value4 : in    std_logic_vector (3 downto 0); 
             value5 : in    std_logic_vector (3 downto 0); 
             value6 : in    std_logic_vector (3 downto 0); 
             qout   : out   std_logic; 
             dpout  : out   std_logic; 
             seg    : out   std_logic_vector (5 downto 0); 
             dig    : out   std_logic_vector (6 downto 0));
   end component;
   
   component latch
      port ( latch_in : in    std_logic; 
             overin   : in    std_logic; 
             num1     : in    std_logic_vector (3 downto 0); 
             num2     : in    std_logic_vector (3 downto 0); 
             num3     : in    std_logic_vector (3 downto 0); 
             num4     : in    std_logic_vector (3 downto 0); 
             num5     : in    std_logic_vector (3 downto 0); 
             num6     : in    std_logic_vector (3 downto 0); 
             overout  : out   std_logic; 
             num_out1 : out   std_logic_vector (3 downto 0); 
             num_out2 : out   std_logic_vector (3 downto 0); 
             num_out3 : out   std_logic_vector (3 downto 0); 
             num_out4 : out   std_logic_vector (3 downto 0); 
             num_out5 : out   std_logic_vector (3 downto 0); 
             num_out6 : out   std_logic_vector (3 downto 0));
   end component;
   
   component sele
      port ( f1k  : in    std_logic; 
             f100 : in    std_logic; 
             f10  : in    std_logic; 
             fref : out   std_logic; 
             dp   : out   std_logic_vector (2 downto 0));
   end component;
   
begin
   gate <= gate_DUMMY;
   high(3 downto 0) <= high_DUMMY(3 downto 0);
   lch <= lch_DUMMY;
   low(3 downto 0) <= low_DUMMY(3 downto 0);
   reset <= reset_DUMMY;
   XLXI_2 : fdiv3
      port map (Clockin=>clockin,
                ClockOut1k=>XLXN_2,
                ClockOut10=>XLXN_3,
                ClockOut100=>XLXN_4);
   
   XLXI_4 : control
      port map (inputsignal=>XLXN_7,
                gate=>gate_DUMMY,
                latch=>lch_DUMMY,
                reset=>reset_DUMMY);
   
   XLXI_5 : counter6
      port map (clear=>reset_DUMMY,
                clockin=>clockin,
                count_en=>gate_DUMMY,
                csignal=>csignal,
                over=>XLXN_13,
                result1(3 downto 0)=>low_DUMMY(3 downto 0),
                result2(3 downto 0)=>high_DUMMY(3 downto 0),
                result3(3 downto 0)=>XLXN_16(3 downto 0),
                result4(3 downto 0)=>XLXN_17(3 downto 0),
                result5(3 downto 0)=>XLXN_49(3 downto 0),
                result6(3 downto 0)=>XLXN_50(3 downto 0));
   
   XLXI_6 : multi
      port map (dpin(2 downto 0)=>XLXN_6(2 downto 0),
                f1k=>XLXN_2,
                qover=>XLXN_48,
                value1(3 downto 0)=>XLXN_22(3 downto 0),
                value2(3 downto 0)=>XLXN_23(3 downto 0),
                value3(3 downto 0)=>XLXN_24(3 downto 0),
                value4(3 downto 0)=>XLXN_25(3 downto 0),
                value5(3 downto 0)=>XLXN_26(3 downto 0),
                value6(3 downto 0)=>XLXN_27(3 downto 0),
                dig(6 downto 0)=>dig(6 downto 0),
                dpout=>dpout,
                qout=>qout,
                seg(5 downto 0)=>seg(5 downto 0));
   
   XLXI_7 : latch
      port map (latch_in=>lch_DUMMY,
                num1(3 downto 0)=>low_DUMMY(3 downto 0),
                num2(3 downto 0)=>high_DUMMY(3 downto 0),
                num3(3 downto 0)=>XLXN_16(3 downto 0),
                num4(3 downto 0)=>XLXN_17(3 downto 0),
                num5(3 downto 0)=>XLXN_49(3 downto 0),
                num6(3 downto 0)=>XLXN_50(3 downto 0),
                overin=>XLXN_13,
                num_out1(3 downto 0)=>XLXN_22(3 downto 0),
                num_out2(3 downto 0)=>XLXN_23(3 downto 0),
                num_out3(3 downto 0)=>XLXN_24(3 downto 0),
                num_out4(3 downto 0)=>XLXN_25(3 downto 0),
                num_out5(3 downto 0)=>XLXN_26(3 downto 0),
                num_out6(3 downto 0)=>XLXN_27(3 downto 0),
                overout=>XLXN_48);
   
   XLXI_9 : sele
      port map (f1k=>XLXN_2,
                f10=>XLXN_3,
                f100=>XLXN_4,
                dp(2 downto 0)=>XLXN_6(2 downto 0),
                fref=>XLXN_7);
   
end BEHAVIORAL;


