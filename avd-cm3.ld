SECTIONS {
    . = 0x00000000;
    .vectors : { *(.vectors) }
    . = 0x00000400;
    .config : { *(.config)   }
    . = 0x00000500;
    .license : { *(.license) }
    .text ALIGN(0x100) : { *(.text*)   }
    .data    : { *(.data*)   }
    .rodata  : { *(.rodata*) }
}
