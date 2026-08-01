#!/bin/bash

# ----------------------------------------------------------------
# కాన్సెప్ట్ 1 & 2: Arguments & Variables
# యూజర్ టెర్మినల్ నుండి ఫైల్ పేర్లు లేదా సర్వీసెస్ ఇస్తాడు
# ----------------------------------------------------------------
SERVICE_NAME="$1"
BACKUP_LIST="app.log error.log database.log"
REPORT_FILE="system_health_report.txt"

echo "=========================================="
echo " Starting System Health Monitoring Script "
echo "=========================================="

# ----------------------------------------------------------------
# కాన్సెప్ట్ 3: If-Else & Exit Codes ($?)
# యూజర్ ఆర్గ్యుమెంట్ ఇచ్చాడో లేదో చెక్ చేయడం
# ----------------------------------------------------------------
if [ -z "$SERVICE_NAME" ]; then
    echo "[ERROR]: Please provide a service or component name as an argument!"
    echo "Usage Example: ./server_monitor.sh Nginx"
    exit 1
fi

echo "[INFO]: Checking status for service: $SERVICE_NAME..."
# ఇక్కడ ఉదాహరణకి ఒక కమాండ్ రన్ చేసి ఎగ్జిట్ కోడ్ చెక్ చేద్దాం
which ls

if [ $? -ne 0 ]; then
    echo "[WARNING]: The service/tool '$SERVICE_NAME' is NOT installed on this system."
else
    echo "[SUCCESS]: The service/tool '$SERVICE_NAME' is available."
fi

echo "------------------------------------------"

# ----------------------------------------------------------------
# కాన్సెప్ట్ 4: For Loop
# లాగ్ ఫైల్స్ లిస్ట్‌ని లూప్ ద్వారా చెక్ చేసి బ్యాకప్ ఫోల్డర్‌కి మూవ్ చేయడం
# ----------------------------------------------------------------
echo "[INFO]: Starting log files verification..."
LOG_DIR="logs_backup"

if [ ! -d "$LOG_DIR" ]; then
    mkdir "$LOG_DIR"
fi

for LOG_FILE in $BACKUP_LIST
do
    # ఒకవేళ లాగ్ ఫైల్ ఉంటేనే దాన్ని కాపీ చేద్దాం
    if [ -f "$LOG_FILE" ]; then
        cp "$LOG_FILE" "$LOG_DIR/"
        echo "[SUCCESS]: Backed up $LOG_FILE"
    else
        echo "[INFO]: Log file $LOG_FILE not found, skipping..."
    fi
done

echo "------------------------------------------"

# ----------------------------------------------------------------
# కాన్సెప్ట్ 5: While Loop
# సర్వర్ చెకింగ్ కౌంటర్ (ఉదాహరణకు 3 సార్లు కనెక్షన్ టెస్ట్ చేయడం)
# ----------------------------------------------------------------
echo "[INFO]: Running server connection ping test..."
COUNTER=1

while [ $COUNTER -le 3 ]
do
    echo "Ping attempt $COUNTER: Server is responding normally."
    COUNTER=$((COUNTER + 1))
    sleep 1 # ఒక సెకను ఆగుతుంది
done

echo "=========================================="
echo " All monitoring tasks completed successfully!"
echo "=========================================="
