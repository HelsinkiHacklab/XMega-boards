XMega-boards
============

Breakouts for various XMegas with required supporting hardware

## Boards

  - XmegaA4U_v1: XMEGA A4U, TSSOP-8 regulator (TO-92 as an option), mini USB, 30 i/o pins.
    The first test board, works fine but the regulator used
    is no longer stocked by digikey/mouser. You can still use a TO-92 
    regulator though.
  - XmegaA4U_v2.0: XMEGA A4U, SOT-89 regulator, mini USB, 30 i/o pins.
    A slightly revised edition of v1. USB resistors removed, one LED added and regulator changed.
  - XmegaA4U_v2.1: XMEGA A4U, TSSOP-8 regulator, micro USB, 20 i/o pins.
    A smaller version with fewer pins and a split ground plane. Supports minimal 
    AVCC and AREF filtering. USB connector changed, reset button and 
    separate power connector removed.
  - XmegaA4U_v2.3: XMEGA A4U, SOT-89 regulator, micro USB, 30 i/o pins.
    Version with micro USB, some additional vcc/gnd pins and possibility to 
    add leds to pins E2 and E3.

## Software

For example Arduino IDE (well, XMegaduino) pin definitions for these boards (or at least some of them).

