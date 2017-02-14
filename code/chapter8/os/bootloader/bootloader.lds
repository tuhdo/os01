OUTPUT(bootloader);

PHDRS
{
  headers PT_NULL;
  text PT_LOAD FILEHDR PHDRS ;
  data PT_LOAD ;
}


SECTIONS
{
  . = SIZEOF_HEADERS;
  .text 0x7c00:  {  *(.text)  } :text
  .data :  {  *(.data)  } :data
}
