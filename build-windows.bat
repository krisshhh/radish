@echo off
cd client
call npm run build
cd ..
go generate
go build -ldflags "-H windowsgui" -o build/radish.exe
echo OKAY :)
