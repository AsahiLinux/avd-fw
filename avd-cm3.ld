SECTIONS {
    . = 0x00000000;
    .vectors : { *(.vectors) }
    . = 0x00000400;
    .config : { *(.config)   }
    .text    : { *(.text*)   }
    .data    : { *(.data*)   }
    .rodata  : { *(.rodata*) }
}
