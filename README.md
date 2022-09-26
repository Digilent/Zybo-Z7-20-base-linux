# Zybo Z7-20 Base Linux Design

**Note:** The demo contained in this repository has been moved and this repository is no longer being actively maintained. Check out the [Zybo Z7 Petalinux Demo](https://digilent.com/reference/programmable-logic/zybo-z7/demos/petalinux) page on Digilent Reference for more information.

Created for Vivado 2017.4

This project is an internal project used by Digilent for the Zybo Z7-20 
Petalinux Project. You are free to use it as you please, but it isn't 
documented on our Wiki.

## Known Issues

1. Typically the processing system IP core will infer a BUFG on the FCLK signals. For some reason, this is occuring for FCLK 0 only.
   FCLK2 seems to be getting a BUFG added during implementation, so it doesn't cause any issues for that net, but FCLK 1 was being
   routed as a normal signal (not on the global clock network). This caused insanely long build times and failure to meet timing. The
   current work around is to manually insert a BUFG on FCLK1 using a util_ds_buf IP core.

