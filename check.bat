@echo off

echo running

if exist C:\Users\administrator\Desktop\end.txt (
    echo Found end.txt, triggering next workflow
    curl -X POST -H "Accept: application/vnd.github.v3+json" -H "Authorization: token %GITHUB_TOKEN%" https://api.github.com/repos/%GITHUB_REPOSITORY%/actions/workflows/next-workflow.yml/dispatches -d "{\"ref\":\"main\"}"
)

ping -n 60 127.0.0.1 >nul
