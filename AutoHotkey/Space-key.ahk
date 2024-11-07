; Initialize variables to manage state and timers
spaceHoldMode := false
spaceRepeatActive := false
delayThreshold := 80 ; Delay threshold in milliseconds to avoid accidental triggers

; Space down event
$*Space::
    ; Start a timer to check for a 0.5-second hold
    spaceHoldMode := false
    SetTimer, CheckSpaceHold, -500
return

; Space up event
$*Space Up::
    ; If no keys were pressed within 0.5 seconds, send a single space
    if (!spaceHoldMode) {
        Send, {Space}
    }
    ; Stop the repeat space mode if it was running
    SetTimer, SpaceRepeat, Off
    spaceRepeatActive := false
return

; Timer for checking if space is held longer than 0.5 seconds without h/j press
CheckSpaceHold:
    ; If neither h nor j is pressed in the first 0.5s, start auto-repeat space
    if (!spaceHoldMode && !spaceRepeatActive) {
        spaceRepeatActive := true
        SetTimer, SpaceRepeat, 100 ; Repeat space every 100ms while space is held
    }
return

; Timer for repeating space every 100ms
SpaceRepeat:
    ; Ensure the repeat only runs while space is held down
    if GetKeyState("Space", "P") {
        SendInput, {Space} ; Use SendInput to ensure space is visible and recognized
    } else {
        ; Stop the repeat if space is released
        SetTimer, SpaceRepeat, Off
        spaceRepeatActive := false
    }
return

; Detect if "h" is pressed while holding space with a delay to prevent accidental triggers
$*h::
    if GetKeyState("Space", "P") {
        ; Add a small delay to prevent accidental backspace
        Sleep, delayThreshold
        if GetKeyState("Space", "P") { ; Re-check if space is still held after the delay
            spaceHoldMode := true
            SetTimer, SpaceRepeat, Off  ; Stop repeating spaces if active
            spaceRepeatActive := false
            Send, {Backspace}
            return
        }
    }
    ; If Space is not held, allow normal "h" functionality
    Send, h
return

; Detect if "j" is pressed while holding space with a delay to prevent accidental triggers
$*j::
    if GetKeyState("Space", "P") {
        ; Add a small delay to prevent accidental enter
        Sleep, delayThreshold
        if GetKeyState("Space", "P") { ; Re-check if space is still held after the delay
            spaceHoldMode := true
            SetTimer, SpaceRepeat, Off  ; Stop repeating spaces if active
            spaceRepeatActive := false
            Send, {Enter}
            return
        }
    }
    ; If Space is not held, allow normal "j" functionality
    Send, j
return

; Detect if "b" is pressed while holding space with a delay to prevent accidental triggers
$*b::
    if GetKeyState("Space", "P") {
        ; Add a small delay to prevent accidental backspace
        Sleep, delayThreshold
        if GetKeyState("Space", "P") { ; Re-check if space is still held after the delay
            spaceHoldMode := true
            SetTimer, SpaceRepeat, Off  ; Stop repeating spaces if active
            spaceRepeatActive := false
            Send, ^{Backspace}
            return
        }
    }
    ; If Space is not held, allow normal "b" functionality
    Send, b
return