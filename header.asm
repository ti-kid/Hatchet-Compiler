.db $80,$0F ,0,0,0,0
.db $80,$12 ,$01,$04
.db $80,$48 ,"Hatchet "
.db $80,$81 ,1          ;change last number to number of pages in the app 
.db $80,$90
.db $03,$22,$09,$00
.db $02,$00
.db $80,$7F, 0,0,0,0
.db $80,$21, 1
.db $80,$31, 1
.db $80,$21, 1         ;Field: Program Revision, Revision=1
.db $80,$C2, 1,13
.db $80,$70
;app boots up here
  jp Start
