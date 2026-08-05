@echo off
chcp 65001 >nul
:: 切换至博客目录
cd /d D:\my-blog\myblog

::检测文件改动
git status
echo.
echo --------------------------
echo 如果下方没有红色修改文件，代表文件没有保存改动，请先保存md文档！
echo --------------------------
echo.

::提交上传全套流程
git add .
git commit -m "更新博客文章 %date% %time%"
git push origin master

echo.
echo 推送执行完毕，按下任意键关闭窗口
pause
exit