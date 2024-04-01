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


# # Git 安装命令
# $gitZipPath = "C:\Downloads\git.zip"
# $gitExtractPath = "C:\Git"
# Write-Host "正在解压 Git..."
# Expand-Archive -Path $gitZipPath -DestinationPath $gitExtractPath -Force
# Write-Host "Git 已解压到 $gitExtractPath"

# # 添加 Git 到环境变量
# $env:Path += ";$gitExtractPath\cmd"

# # GoLang 安装命令
# $golangZipPath = "C:\Downloads\go.zip"$golangExtractPath = "C:\Go"
# Write-Host "正在解压 GoLang..."
# Expand-Archive -Path $golangZipPath -DestinationPath$golangExtractPath -Force
# Write-Host "GoLang 已解压到 $golangExtractPath"

# # 添加 GoLang 到环境变量
# $env:Path += ";$golangExtractPath\bin"

# Write-Host "Git 和 GoLang 安装完成！"
