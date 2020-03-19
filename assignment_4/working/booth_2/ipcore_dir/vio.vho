-------------------------------------------------------------------------------
-- Copyright (c) 2014 Xilinx, Inc.
-- All Rights Reserved
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor     : Xilinx
-- \   \   \/     Version    : 1.0
--  \   \         Application: Xilinx CORE Generator
--  /   /         Filename   : vio.vho
-- /___/   /\     Timestamp  : Mon Mar 03 04:20:19 IST 2014
-- \   \  /  \
--  \___\/\___\
--
-- Design Name: ISE Instantiation template
-------------------------------------------------------------------------------
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component vio
  PORT (
    CONTROL : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0);
    ASYNC_IN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ASYNC_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));

end component;

-- Synplicity black box declaration
attribute syn_black_box : boolean;
attribute syn_black_box of vio: component is true;

-- COMP_TAG_END ------ End COMPONENT Declaration ------------
-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.
------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG

your_instance_name : vio
  port map (
    CONTROL => CONTROL,
    ASYNC_IN => ASYNC_IN,
    ASYNC_OUT => ASYNC_OUT);

-- INST_TAG_END ------ End INSTANTIATION Template ------------
