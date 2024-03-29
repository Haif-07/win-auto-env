$gitInstaller = "C:\Downloads\Git-2.31.1-64-bit.exe"
$mysqlInstaller = "C:\Downloads\mysql-installer-community-8.0.23.0.msi"
$golangInstaller = "C:\Downloads\go1.16.3.windows-amd64.msi"

# Git 安装命令
Write-Host "正在安装 Git..."
Start-Process -FilePath $gitInstaller -ArgumentList "/VERYSILENT /NORESTART" -Wait

# MySQL 安装命令
Write-Host "正在安装 MySQL..."
Start-Process -FilePath $mysqlInstaller -ArgumentList "/quiet /qn INSTALLDIR=C:\MySQL" -Wait

# GoLang 安装命令
Write-Host "正在安装 GoLang..."
Start-Process -FilePath $golangInstaller -ArgumentList "/quiet /qn" -Wait

Write-Host "所有工具安装完成！"