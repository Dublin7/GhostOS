#!/bin/bash

# Define system file paths
REGISTRY_FILE="modules/service_registry.db"
MUSIC_LOG_FILE="logs/music_agent_history.log"
ARCHIVE_DIR="logs/archive"

# Function to check core system health metrics
check_system_health() {
    echo ""
    echo "--- SensorAgent: System Health Diagnostics ---"
    
    # Check 1: Service Registry File Status
    if [ -f "$REGISTRY_FILE" ]; then
        echo "[SensorAgent] HEALTHY: Service Registry file is present."
    else
        echo "[SensorAgent] CRITICAL: Service Registry file MISSING at $REGISTRY_FILE."
    fi
    
    # Check 2: Archived Data Count
    local ARCHIVE_COUNT=$(find "$ARCHIVE_DIR" -type f -name 'music_agent_history_*.log' 2>/dev/null | wc -l | tr -d '[:space:]')
    echo "[SensorAgent] INFO: Found $ARCHIVE_COUNT archived music logs."
    
    # Check 3: Current Music Log Status (Should be empty if Rituals are running)
    if [ -s "$MUSIC_LOG_FILE" ]; then
        echo "[SensorAgent] WARNING: Current music log is NOT empty. Data processing may be lagging."
    else
        echo "[SensorAgent] HEALTHY: Current music log is clean (0 active entries)."
    fi

    echo "----------------------------------------------"
    echo "[SensorAgent] Diagnostic Complete."
    echo ""
}

# Main command dispatcher
case "$1" in
    check_system_health)
        check_system_health
        ;;
    *)
        echo "Usage: $0 {check_system_health}"
        exit 1
        ;;
esac
