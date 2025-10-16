# GhostOS: The Subjunctive Operating System

Welcome to **GhostOS**, a conceptual shell-based operating system designed to manage specialized AI agents and operational sequences within a high-concept, multi-dimensional environment.

GhostOS is a proof-of-concept framework built entirely in Bash, demonstrating agent registration, data persistence, dependency management, and inter-agent communication.

## 🚀 Core Agents Implemented

The system is powered by several interconnected agents registered via the central `RouterAgent`.

| Agent Name | Description | Key Function |
| :--- | :--- | :--- |
| **RouterAgent** | The core service locator, managing the `service_registry.db`. | Registers and lists all operational agents. |
| **ProvisionAgent** | The system's self-diagnostics and dependency manager. | Checks for required system tools (`grep`, `awk`, etc.). |
| **DataAgent** | The central data persistence and archival service. | Archives logs from application agents and cleans the system. |
| **SensorAgent** | The operational health and monitoring unit. | Reports on system file presence and log status (Healthy/Warning). |
| **RitualAgent** | The sequence executor for critical maintenance operations. | Executes maintenance rituals (runs archive + provision checks). |
| **MusicAgent** | An application-level agent for content generation. | Simulates the generation and logging of specialized auditory data (Techno/Drum & Bass). |

## 🛠️ Getting Started

GhostOS currently runs as a collection of executable Bash scripts.

1.  **Clone the Repository:**
    ```bash
    git clone git@github.com:Dublin7/GhostOS.git
    cd GhostOS
    ```
2.  **Check System Health:**
    First, ensure all external dependencies are met:
    ```bash
    ./agents/ProvisionAgent/ProvisionAgent.sh check_dependencies
    ```
3.  **Run an Operational Ritual:**
    Execute the core maintenance sequence to confirm all agents communicate:
    ```bash
    ./agents/RitualAgent/RitualAgent.sh execute_maintenance
    ```
4.  **Generate Some Data:**
    Run the application agent to create a new log entry:
    ```bash
    ./agents/MusicAgent/MusicAgent.sh generate_beat "Subjunctive_Techno" "150"
    ```

## 🗺️ Project StructureGhostOS/
├── agents/             # Core system and application agents
├── deployed_ais/       # Manifests and configurations for deployed AI instances
├── logs/               # Current log files and archive directory
└── modules/            # Shared libraries and configuration (e.g., service_registry.db)
└── README.md
