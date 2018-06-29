
SET GameDirectory=S:\Steam\steamapps\common\Arma 2 Operation Arrowhead
SET ConfigDirectory=S:\Steam\steamapps\common\Arma 2 Operation Arrowhead\TADST\default
set Port=2302
set mods=@inidbi;@AntumRP;
set pause=false;


Start ""  "%GameDirectory%\arma2oaserver.exe"  -port=%Port% "-config=%ConfigDirectory%\TADST_config.cfg" "-cfg=%ConfigDirectory%\TADST_basic.cfg" "  "-mod=%mods%"

if %pause% == true (
    pause
)