# Thanks to Jman420 for these volume input functions
# --------------------------------------------------
keytest() 
{
    ui_print "- Vol Key Test -"
    ui_print "   Press Vol Up:"
    (/system/bin/getevent -lc 1 2>&1 | /system/bin/grep VOLUME | /system/bin/grep " DOWN" > "$TMPDIR"/events) || return 1
    return 0
}

choose() 
{
    #note from chainfire @xda-developers: getevent behaves weird when piped, and busybox grep likes that even less than toolbox/toybox grep
    while (true); do
        /system/bin/getevent -lc 1 2>&1 | /system/bin/grep VOLUME | /system/bin/grep " DOWN" > "$TMPDIR"/events
        if (`cat "$TMPDIR"/events 2>/dev/null | /system/bin/grep VOLUME >/dev/null`); then
            break
        fi
    done
    if (`cat "$TMPDIR"/events 2>/dev/null | /system/bin/grep VOLUMEUP >/dev/null`); then
        return 1
    else
        return 0
    fi
}

# Check whether using a legacy device
# -----------------------------------
if keytest; then
    FUNC=choose
else
    FUNC=false
fi


REPLACE="
/system/app/LGDrm
/system/etc/drm
/system/lib/drm
/system/lib64/drm
/system/vendor/lib/mediacas
/system/vendor/lib64/mediacas
/system/vendor/lib/mediadrm
/system/vendor/lib64/mediadrm
/data/drm
/data/mediadrm
/data/vendor/mediadrm
/data/data/.drm
/data/.dcmdrm
/efs/drm
/persist/drm
/persist-lg/lgdrm
/persist-lg/widevine
/persist-lg/data/widevine
"
