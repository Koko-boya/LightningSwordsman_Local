@echo off
set "URL=http://localhost:8000"

echo Opening default browser to %URL%...
start %URL%

echo Starting local server on port 8000...
echo Press Ctrl+C to stop the server.
python server.py
pause
