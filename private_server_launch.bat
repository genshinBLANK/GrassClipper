@echo off

echo Starting Private Server

SET ip=%1
SET gamePath=%2
SET gamePath=%gamePath:"=%

start "Proxy Server" ./ext/mitmdump.exe -s "./proxy/proxy.py"

echo Opening %gamePath%/Genshin Impact Game/GenshinImpact.exe

start "" /b "%gamePath%/Genshin Impact Game/GenshinImpact.exe"