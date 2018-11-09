/* Linker script to configure memory regions. */
MEMORY
{
  FLASH  (rx)  : ORIGIN = 0x08000000, LENGTH = 512K
  CCMRAM (rwx) : ORIGIN = 0x10000000, LENGTH = 16K
  RAM    (rwx) : ORIGIN = 0x20000000, LENGTH = 64K
}

