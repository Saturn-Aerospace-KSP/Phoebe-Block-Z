// Saturn Aerospace 2024
// 
// Made By Quasy & EVE
// Phoebe Block Z
// 
// ------------------------
//     Mission Settings
// ------------------------

GLOBAL _MISSIONSETTINGS IS LEXICON( // Only change this 
    "MISSION NAME", "Abplaadadagfewerf Sat Alpha", // Mission name (vessel name)
    "LAUNCH MOUNT",  "CCSFS 40", // [KSC 39a] [CCSFS 40] 
    "PAYLOAD TYPE", "Phoebe", // [Phoebe] [Phoebe Heavy] [Calypso Dock] [Calypso Tour]
    "TARGET VESSEL", false, // [false] or you can set this to the name of a vessel in quotations "Bob" for example
    "PAYLOAD COUNT", 1, // How many payloads are required to be separated
    "ROLL", 0, // Phoebe orientation on ascent (recommended not to touch)
    "G FORCE LIMIT", 2.5, // Force limit for ascent [2.5 For Calypso with crew]

    "APOGEE", 400, // Highest point of orbit
    "PERIGEE", 245, // Lowest point of orbit
    "INCLINE", 67 // Targeted inclination
).

GLOBAL _COUNTDOWNEVENTS IS LEXICON(
    "Begin Countdown (NS)", LEXICON("H", 0, "M", 0, "S", 20), // Countdown Initiate (NS - Non Specific)
    "Begin Countdown (UNIX)", LEXICON("UNIX", 0), // Countdown Initiate With UNIX Time (0 to ignore)

    "Crew Arm Retract", LEXICON("H", 0, "M", 45, "S", 0), // Crew Arm Retraction
    "Calypso Startup", LEXICON("H", 0, "M", 40, "S", 0), // Calypso Capsule Power Up - after this point it will abort with thrusters
    "Phoebe Heavy Fueling Start", LEXICON("H", 0, "M", 35, "S", 0), // Phoebe Heavy Fuel Start Time (Slightly longer for Phoebe Heavy 3 cores)
    "Phoebe Fueling Start", LEXICON("H", 0, "M", 26, "S", 0), // Phoebe Fuel Start Time (Minimum 21 minutes above Fueling Closeout)
    "Internal Power", LEXICON("H", 0, "M", 5, "S", 0), // When The Power Generators Shut Down - battery power
    "Fueling Closeout", LEXICON("H", 0, "M", 4, "S", 20), // Complete Fueling By This Point (Fueling takes around 21 Minutes when using SA config)
    "Strongback Retract", LEXICON("H", 0, "M", 4, "S", 15), // When Strongback Retracts
    "Phoebe Startup", LEXICON("H", 0, "M", 1, "S", 0), // Startup Of Phoebe - when the vehicle switches out of ground mode
    "Last Abort Time", LEXICON("H", 0, "M", 0, "S", 30), // Last point of abort before scrub
    "Side Booster Ignition", LEXICON("H", 0, "M", 0, "S", 5), // Side Boosters Ignition Time
    "Core Ignition", LEXICON("H", 0, "M", 0, "S", 3) // Main Engine Ignition Time
).

GLOBAL _ASCENTSETTINGS IS LEXICON(
    "FIRST STAGE", LEXICON(
        "Gravity Turn Start Speed", 50, // Start Speed for Gravity Turn
        "Gravity Turn End Angle", 10, // End angle for Gravity Turn
        "Gravity Turn End Altitude", 55000 // End altitude for Gravity Turn
    ),
    "SECOND STAGE", LEXICON(
        "Payload Fairings", LEXICON(
            "Max Dynamic Pressure", 0, // Max pressure of deployment if req are met
            "Min Altitude", 65000 // Minimum altitude of deployment if req are met
        )
    )
).