; Start of script
; Access the battery band of a bluetooth device via injection
; Bluetooth format types (from: https://www.bluetooth.com/specifications/assigned-numbers/format-types/)
; 0x00 	rfu 	Reserved for future use 	No
; 0x01 	boolean 	unsigned 1-bit; 0=false, 1=true 	No
; 0x02 	2bit 	unsigned 2-bit integer 	No
;0x03 	nibble 	unsigned 4-bit integer 	No
;0x04 	uint8 	unsigned 8-bit integer 	Yes
;​0x05 	uint12 	unsigned 12-bit integer 	Yes
;​0x06 	uint16 	unsigned 16-bit integer 	Yes
;0x07 	uint24 	unsigned 24-bit integer 	Yes
;​0x08 	uint32 	unsigned 32-bit integer 	Yes
;​0x09 	uint48 	unsigned 48-bit integer 	Yes
;​0x0A 	uint64 	unsigned 64-bit integer 	Yes
;​0x0B 	uint128 	unsigned 128-bit integer 	Yes
;​0x0C 	sint8 	signed 8-bit integer 	Yes
;​0x0D 	sint12 	signed 12-bit integer 	Yes
;​0x0E 	sint16 	signed 16-bit integer 	Yes
;​0x0F 	sint24 	signed 24-bit integer 	Yes
;​0x10 	sint32 	signed 32-bit integer 	Yes
;​0x11 	sint48 	signed 48-bit integer 	Yes
;​0x12 	sint64 	signed 64-bit integer 	Yes
;​0x13 	sint128 	signed 128-bit integer 	Yes
;​0x14 	float32 	IEEE-754 32-bit floating point 	No
; ​0x15 	float64 	IEEE-754 64-bit floating point 	No
; ​0x16 	SFLOAT 	IEEE-11073 16-bit SFLOAT 	No
; ​​0x17 	FLOAT 	IEEE-11073 32-bit FLOAT 	No
; ​​0x18 	duint16 	IEEE-20601 format 	No
; ​​0x19 	utf8s 	UTF-8 string 	No
; ​0x1A 	utf16s 	UTF-16 string 	No
; ​​0x1B 	struct 	Opaque structure 	No
; ​​0x1C-0xFF 	rfu 	Reserved for Future Use 	No
DEF DEV16 {
  ACCESS 0x0E
  MOV 0x0E, 0x19, 0010 1010 0010 0100 0001 0010 0101 1100 1101 1001 1000 1001 0110 0101 0000 001F
}
DEF DEV32 {
  ACCESS 0x10 ; 32 bit integer
  MOV B32, 0x19, 1234
}
DEF DEV64 {
  ACCESS 0x12 ; 64 bit integer
  MOV B64, 0x19, 5678
}
; I do not know how to write in assembly very well. This is just a demo script and doesn't work yet
; File info
; File version: 1 (Saturday, March 20th 2021 at 8:28 pm)
; File type: ASSEMBLY CODE (*.asm)
; Line count (including blank lines and compiler line): 51
; End of script
