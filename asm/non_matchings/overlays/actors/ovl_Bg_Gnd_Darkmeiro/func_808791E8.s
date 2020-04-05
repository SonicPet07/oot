glabel func_808791E8
/* 005B8 808791E8 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 005BC 808791EC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 005C0 808791F0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 005C4 808791F4 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 005C8 808791F8 84830166 */  lh      $v1, 0x0166($a0)           ## 00000166
/* 005CC 808791FC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005D0 80879200 00031400 */  sll     $v0, $v1, 16               
/* 005D4 80879204 00021403 */  sra     $v0, $v0, 16               
/* 005D8 80879208 10400045 */  beq     $v0, $zero, .L80879320     
/* 005DC 8087920C 28410041 */  slti    $at, $v0, 0x0041           
/* 005E0 80879210 5420000B */  bnel    $at, $zero, .L80879240     
/* 005E4 80879214 28410011 */  slti    $at, $v0, 0x0011           
/* 005E8 80879218 84820168 */  lh      $v0, 0x0168($a0)           ## 00000168
/* 005EC 8087921C 240F007F */  addiu   $t7, $zero, 0x007F         ## $t7 = 0000007F
/* 005F0 80879220 28410078 */  slti    $at, $v0, 0x0078           
/* 005F4 80879224 10200003 */  beq     $at, $zero, .L80879234     
/* 005F8 80879228 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 005FC 8087922C 1000001D */  beq     $zero, $zero, .L808792A4   
/* 00600 80879230 A48E0168 */  sh      $t6, 0x0168($a0)           ## 00000168
.L80879234:
/* 00604 80879234 1000001B */  beq     $zero, $zero, .L808792A4   
/* 00608 80879238 A60F0168 */  sh      $t7, 0x0168($s0)           ## 00000168
/* 0060C 8087923C 28410011 */  slti    $at, $v0, 0x0011           
.L80879240:
/* 00610 80879240 14200017 */  bne     $at, $zero, .L808792A0     
/* 00614 80879244 000258C0 */  sll     $t3, $v0,  3               
/* 00618 80879248 00602025 */  or      $a0, $v1, $zero            ## $a0 = 00000000
/* 0061C 8087924C 00042300 */  sll     $a0, $a0, 12               
/* 00620 80879250 00042400 */  sll     $a0, $a0, 16               
/* 00624 80879254 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00628 80879258 00042403 */  sra     $a0, $a0, 16               
/* 0062C 8087925C 3C014280 */  lui     $at, 0x4280                ## $at = 42800000
/* 00630 80879260 44812000 */  mtc1    $at, $f4                   ## $f4 = 64.00
/* 00634 80879264 3C0142FE */  lui     $at, 0x42FE                ## $at = 42FE0000
/* 00638 80879268 44814000 */  mtc1    $at, $f8                   ## $f8 = 127.00
/* 0063C 8087926C 46040182 */  mul.s   $f6, $f0, $f4              
/* 00640 80879270 240A007F */  addiu   $t2, $zero, 0x007F         ## $t2 = 0000007F
/* 00644 80879274 46083280 */  add.s   $f10, $f6, $f8             
/* 00648 80879278 4600540D */  trunc.w.s $f16, $f10                 
/* 0064C 8087927C 44198000 */  mfc1    $t9, $f16                  
/* 00650 80879280 00000000 */  nop
/* 00654 80879284 A6190168 */  sh      $t9, 0x0168($s0)           ## 00000168
/* 00658 80879288 86090168 */  lh      $t1, 0x0168($s0)           ## 00000168
/* 0065C 8087928C 29210080 */  slti    $at, $t1, 0x0080           
/* 00660 80879290 54200005 */  bnel    $at, $zero, .L808792A8     
/* 00664 80879294 8FAC004C */  lw      $t4, 0x004C($sp)           
/* 00668 80879298 10000002 */  beq     $zero, $zero, .L808792A4   
/* 0066C 8087929C A60A0168 */  sh      $t2, 0x0168($s0)           ## 00000168
.L808792A0:
/* 00670 808792A0 A60B0168 */  sh      $t3, 0x0168($s0)           ## 00000168
.L808792A4:
/* 00674 808792A4 8FAC004C */  lw      $t4, 0x004C($sp)           
.L808792A8:
/* 00678 808792A8 3C068088 */  lui     $a2, %hi(D_808793E0)       ## $a2 = 80880000
/* 0067C 808792AC 24C693E0 */  addiu   $a2, $a2, %lo(D_808793E0)  ## $a2 = 808793E0
/* 00680 808792B0 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 00684 808792B4 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFE4
/* 00688 808792B8 2407017A */  addiu   $a3, $zero, 0x017A         ## $a3 = 0000017A
/* 0068C 808792BC 0C031AB1 */  jal     Graph_OpenDisps              
/* 00690 808792C0 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00694 808792C4 8FA8003C */  lw      $t0, 0x003C($sp)           
/* 00698 808792C8 3C0EFA00 */  lui     $t6, 0xFA00                ## $t6 = FA000000
/* 0069C 808792CC 3C01C6CA */  lui     $at, 0xC6CA                ## $at = C6CA0000
/* 006A0 808792D0 8D0302D0 */  lw      $v1, 0x02D0($t0)           ## 000002D0
/* 006A4 808792D4 3421D000 */  ori     $at, $at, 0xD000           ## $at = C6CAD000
/* 006A8 808792D8 3C068088 */  lui     $a2, %hi(D_808793F8)       ## $a2 = 80880000
/* 006AC 808792DC 246D0008 */  addiu   $t5, $v1, 0x0008           ## $t5 = 00000008
/* 006B0 808792E0 AD0D02D0 */  sw      $t5, 0x02D0($t0)           ## 000002D0
/* 006B4 808792E4 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 006B8 808792E8 860F0168 */  lh      $t7, 0x0168($s0)           ## 00000168
/* 006BC 808792EC 24C693F8 */  addiu   $a2, $a2, %lo(D_808793F8)  ## $a2 = 808793F8
/* 006C0 808792F0 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFE4
/* 006C4 808792F4 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000000
/* 006C8 808792F8 0301C825 */  or      $t9, $t8, $at              ## $t9 = C6CAD000
/* 006CC 808792FC AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
/* 006D0 80879300 8FA9004C */  lw      $t1, 0x004C($sp)           
/* 006D4 80879304 2407017C */  addiu   $a3, $zero, 0x017C         ## $a3 = 0000017C
/* 006D8 80879308 0C031AD5 */  jal     Graph_CloseDisps              
/* 006DC 8087930C 8D250000 */  lw      $a1, 0x0000($t1)           ## 00000000
/* 006E0 80879310 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 006E4 80879314 24A5BEC0 */  addiu   $a1, $a1, 0xBEC0           ## $a1 = 0600BEC0
/* 006E8 80879318 0C00D4C9 */  jal     Gfx_DrawDListXlu
              
/* 006EC 8087931C 8FA4004C */  lw      $a0, 0x004C($sp)           
.L80879320:
/* 006F0 80879320 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 006F4 80879324 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 006F8 80879328 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 006FC 8087932C 03E00008 */  jr      $ra                        
/* 00700 80879330 00000000 */  nop


