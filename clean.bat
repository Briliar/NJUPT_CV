@echo off
chcp 65001 >nul
:: 切换到脚本所在的目录，防止在错误路径下运行
cd /d "%~dp0"

echo ==========================================
echo 正在清理 LaTeX 编译中间文件...
echo ==========================================

:: 删除常见的中间文件
:: /s 表示包含子目录
:: /q 表示静默删除（不询问）
:: /f 表示强制删除只读文件

del /s /q /f *.aux 2>nul
del /s /q /f *.log 2>nul
del /s /q /f *.out 2>nul
del /s /q /f *.toc 2>nul
del /s /q /f *.bbl 2>nul
del /s /q /f *.blg 2>nul
del /s /q /f *.idx 2>nul
del /s /q /f *.ind 2>nul
del /s /q /f *.ilg 2>nul
del /s /q /f *.thm 2>nul
del /s /q /f *.nav 2>nul
del /s /q /f *.snm 2>nul
del /s /q /f *.synctex 2>nul
del /s /q /f *.fls 2>nul
del /s /q /f *.fdb_latexmk 2>nul
del /s /q /f *.xdv 2>nul
del /s /q /f *.dvi 2>nul

echo.
echo ==========================================
echo 清理完成! (PDF 文件已保留)
echo ==========================================
pause