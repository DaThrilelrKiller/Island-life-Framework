
SET GameDirectory=S:\Steam\steamapps\common\Arma 2 Operation Arrowhead
SET ConfigDirectory=S:\Steam\steamapps\common\Arma 2 Operation Arrowhead\TADST\@ILRP
set Port=2302
set mods=@inidbi;@AntumRP;
set pause=false;


Start ""  "%GameDirectory%\arma2oaserver.exe"  -port=%Port% "-config=%ConfigDirectory%\TADST_config.cfg" "-cfg=%ConfigDirectory%\TADST_basic.cfg" "-profiles=%ConfigDirectory% -name=@ILRP -filePatching "-mod=%mods%"

if %pause% == true (
    pause
)