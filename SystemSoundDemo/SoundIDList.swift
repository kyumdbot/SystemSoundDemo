//
//  SoundIDList.swift
//  SystemSoundDemo
//
//  Created by Wei-Cheng Ling on 2020/11/23.
//

import Foundation

class SoundIDList {
    
    class func idArray() -> Array<UInt32> {
        return infoDictionary().keys.sorted()
    }
    
    class func infoDictionary() -> Dictionary<UInt32, String> {
        return [
            1000 : "new-mail.caf - MailReceived",
            1001 : "mail-sent.caf - MailSent",
            1002 : "Voicemail.caf - VoicemailReceived",
            1003 : "ReceivedMessage.caf - SMSReceived",
            1004 : "SentMessage.caf - SMSSent",
            1005 : "alarm.caf - CalendarAlert",
            1006 : "low_power.caf - LowPower",
            1007 : "sms-received1.caf - SMSReceived_Alert",
            1008 : "sms-received2.caf - SMSReceived_Alert",
            1009 : "sms-received3.caf - SMSReceived_Alert",
            1010 : "sms-received4.caf - SMSReceived_Alert",
            1011 : " - SMSReceivedVibrate",
            1012 : "sms-received1.caf - SMSReceived_Alert",
            1013 : "sms-received5.caf - SMSReceived_Alert",
            1014 : "sms-received6.caf - SMSReceived_Alert",
            1015 : "Voicemail.caf - ",
            1016 : "tweet_sent.caf - SMSSent",
            1020 : "Anticipate.caf - SMSReceived_Alert",
            1021 : "Bloom.caf - SMSReceived_Alert",
            1022 : "Calypso.caf - SMSReceived_Alert",
            1023 : "Choo_Choo.caf - SMSReceived_Alert",
            1024 : "Descent.caf - SMSReceived_Alert",
            1025 : "Fanfare.caf - SMSReceived_Alert",
            1026 : "Ladder.caf - SMSReceived_Alert",
            1027 : "Minuet.caf - SMSReceived_Alert",
            1028 : "News_Flash.caf - SMSReceived_Alert",
            1029 : "Noir.caf - SMSReceived_Alert",
            1030 : "Sherwood_Forest.caf - SMSReceived_Alert",
            1031 : "Spell.caf - SMSReceived_Alert",
            1032 : "Suspense.caf - SMSReceived_Alert",
            1033 : "Telegraph.caf - SMSReceived_Alert",
            1034 : "Tiptoes.caf - SMSReceived_Alert",
            1035 : "Typewriters.caf - SMSReceived_Alert",
            1036 : "Update.caf - SMSReceived_Alert",
            1050 : "ussd.caf - USSDAlert",
            1051 : "SIMToolkitCallDropped.caf - SIMToolkitTone",
            1052 : "SIMToolkitGeneralBeep.caf - SIMToolkitTone",
            1053 : "SIMToolkitNegativeACK.caf - SIMToolkitTone",
            1054 : "SIMToolkitPositiveACK.caf - SIMToolkitTone",
            1055 : "SIMToolkitSMS.caf - SIMToolkitTone",
            1057 : "Tink.caf - PINKeyPressed",
            1070 : "ct-busy.caf - AudioToneBusy",
            1071 : "ct-congestion.caf - AudioToneCongestion",
            1072 : "ct-path-ack.caf - AudioTonePathAcknowledge",
            1073 : "ct-error.caf - AudioToneError",
            1074 : "ct-call-waiting.caf - AudioToneCallWaiting",
            1075 : "ct-keytone2.caf - AudioToneKey2",
            1100 : "lock.caf - ScreenLocked",
            1101 : "unlock.caf - ScreenUnlocked",
            1102 : " - FailedUnlock",
            1103 : "Tink.caf - KeyPressed",
            1104 : "Tock.caf - KeyPressed",
            1105 : "Tock.caf - KeyPressed",
            1106 : "beep-beep.caf - ConnectedToPower",
            1107 : "RingerChanged.caf - RingerSwitchIndication",
            1108 : "photoShutter.caf - CameraShutter",
            1109 : "shake.caf - ShakeToShuffle",
            1110 : "jbl_begin.caf - JBL_Begin",
            1111 : "jbl_confirm.caf - JBL_Confirm",
            1112 : "jbl_cancel.caf - JBL_Cancel",
            1113 : "begin_record.caf - BeginRecording",
            1114 : "end_record.caf - EndRecording",
            1115 : "jbl_ambiguous.caf - JBL_Ambiguous",
            1116 : "jbl_no_match.caf - JBL_NoMatch",
            1117 : "begin_video_record.caf - BeginVideoRecording",
            1118 : "end_video_record.caf - EndVideoRecording",
            1150 : "vc~invitation-accepted.caf - VCInvitationAccepted",
            1151 : "vc~ringing.caf - VCRinging",
            1152 : "vc~ended.caf - VCEnded",
            1153 : "ct-call-waiting.caf - VCCallWaiting",
            1154 : "vc~ringing.caf - VCCallUpgrade",
            1200 : "dtmf-0.caf - TouchTone",
            1201 : "dtmf-1.caf - TouchTone",
            1202 : "dtmf-2.caf - TouchTone",
            1203 : "dtmf-3.caf - TouchTone",
            1204 : "dtmf-4.caf - TouchTone",
            1205 : "dtmf-5.caf - TouchTone",
            1206 : "dtmf-6.caf - TouchTone",
            1207 : "dtmf-7.caf - TouchTone",
            1208 : "dtmf-8.caf - TouchTone",
            1209 : "dtmf-9.caf - TouchTone",
            1210 : "dtmf-star.caf - TouchTone",
            1211 : "dtmf-pound.caf - TouchTone",
            1254 : "long_low_short_high.caf - Headset_StartCall",
            1255 : "short_double_high.caf - Headset_Redial",
            1256 : "short_low_high.caf - Headset_AnswerCall",
            1257 : "short_double_low.caf - Headset_EndCall",
            1258 : "short_double_low.caf - Headset_CallWaitingActions",
            1259 : "middle_9_short_double_low.caf - Headset_TransitionEnd",
            1300 : "Voicemail.caf - SystemSoundPreview",
            1301 : "ReceivedMessage.caf - SystemSoundPreview",
            1302 : "new-mail.caf - SystemSoundPreview",
            1303 : "mail-sent.caf - SystemSoundPreview",
            1304 : "alarm.caf - SystemSoundPreview",
            1305 : "lock.caf - SystemSoundPreview",
            1306 : "Tock.caf - KeyPressClickPreview",
            1307 : "sms-received1.caf - SMSReceived_Selection",
            1308 : "sms-received2.caf - SMSReceived_Selection",
            1309 : "sms-received3.caf - SMSReceived_Selection",
            1310 : "sms-received4.caf - SMSReceived_Selection",
            1311 : " - SMSReceived_Vibrate",
            1312 : "sms-received1.caf - SMSReceived_Selection",
            1313 : "sms-received5.caf - SMSReceived_Selection",
            1314 : "sms-received6.caf - SMSReceived_Selection",
            1315 : "Voicemail.caf - SystemSoundPreview",
            1320 : "Anticipate.caf - SMSReceived_Selection",
            1321 : "Bloom.caf - SMSReceived_Selection",
            1322 : "Calypso.caf - SMSReceived_Selection",
            1323 : "Choo_Choo.caf - SMSReceived_Selection",
            1324 : "Descent.caf - SMSReceived_Selection",
            1325 : "Fanfare.caf - SMSReceived_Selection",
            1326 : "Ladder.caf - SMSReceived_Selection",
            1327 : "Minuet.caf - SMSReceived_Selection",
            1328 : "News_Flash.caf - SMSReceived_Selection",
            1329 : "Noir.caf - SMSReceived_Selection",
            1330 : "Sherwood_Forest.caf - SMSReceived_Selection",
            1331 : "Spell.caf - SMSReceived_Selection",
            1332 : "Suspense.caf - SMSReceived_Selection",
            1333 : "Telegraph.caf - SMSReceived_Selection",
            1334 : "Tiptoes.caf - SMSReceived_Selection",
            1335 : "Typewriters.caf - SMSReceived_Selection",
            1336 : "Update.caf - SMSReceived_Selection",
            1350 : " - RingerVibeChanged",
            1351 : " - SilentVibeChanged",
            4095 : " - Vibrate"
        ]
    }
    
    class func cafFileNames() -> Array<String> {
        return [
            "/System/Library/Audio/UISounds/Modern/airdrop_invite.caf",
            "/System/Library/Audio/UISounds/Modern/calendar_alert_chord.caf",
            "/System/Library/Audio/UISounds/Modern/camera_shutter_burst.caf",
            "/System/Library/Audio/UISounds/Modern/camera_shutter_burst_begin.caf",
            "/System/Library/Audio/UISounds/Modern/camera_shutter_burst_end.caf",
            "/System/Library/Audio/UISounds/Modern/sms_alert_aurora.caf",
            "/System/Library/Audio/UISounds/Modern/sms_alert_bamboo.caf",
            "/System/Library/Audio/UISounds/Modern/sms_alert_circles.caf",
            "/System/Library/Audio/UISounds/Modern/sms_alert_complete.caf",
            "/System/Library/Audio/UISounds/Modern/sms_alert_hello.caf",
            "/System/Library/Audio/UISounds/Modern/sms_alert_input.caf",
            "/System/Library/Audio/UISounds/Modern/sms_alert_keys.caf",
            "/System/Library/Audio/UISounds/Modern/sms_alert_note.caf",
            "/System/Library/Audio/UISounds/Modern/sms_alert_popcorn.caf",
            "/System/Library/Audio/UISounds/Modern/sms_alert_synth.caf",
            "/System/Library/Audio/UISounds/New/Anticipate.caf",
            "/System/Library/Audio/UISounds/New/Bloom.caf",
            "/System/Library/Audio/UISounds/New/Calypso.caf",
            "/System/Library/Audio/UISounds/New/Choo_Choo.caf",
            "/System/Library/Audio/UISounds/New/Descent.caf",
            "/System/Library/Audio/UISounds/New/Fanfare.caf",
            "/System/Library/Audio/UISounds/New/Ladder.caf",
            "/System/Library/Audio/UISounds/New/Minuet.caf",
            "/System/Library/Audio/UISounds/New/News_Flash.caf",
            "/System/Library/Audio/UISounds/New/Noir.caf",
            "/System/Library/Audio/UISounds/New/Sherwood_Forest.caf",
            "/System/Library/Audio/UISounds/New/Spell.caf",
            "/System/Library/Audio/UISounds/New/Suspense.caf",
            "/System/Library/Audio/UISounds/New/Telegraph.caf",
            "/System/Library/Audio/UISounds/New/Tiptoes.caf",
            "/System/Library/Audio/UISounds/New/Typewriters.caf",
            "/System/Library/Audio/UISounds/New/Update.caf",
            "/System/Library/Audio/UISounds/ReceivedMessage.caf",
            "/System/Library/Audio/UISounds/RingerChanged.caf",
            "/System/Library/Audio/UISounds/SIMToolkitCallDropped.caf",
            "/System/Library/Audio/UISounds/SIMToolkitGeneralBeep.caf",
            "/System/Library/Audio/UISounds/SIMToolkitNegativeACK.caf",
            "/System/Library/Audio/UISounds/SIMToolkitPositiveACK.caf",
            "/System/Library/Audio/UISounds/SIMToolkitSMS.caf",
            "/System/Library/Audio/UISounds/SentMessage.caf",
            "/System/Library/Audio/UISounds/Swish.caf",
            "/System/Library/Audio/UISounds/Tink.caf",
            "/System/Library/Audio/UISounds/Tock.caf",
            "/System/Library/Audio/UISounds/Voicemail.caf",
            "/System/Library/Audio/UISounds/alarm.caf",
            "/System/Library/Audio/UISounds/beep-beep.caf",
            "/System/Library/Audio/UISounds/begin_record.caf",
            "/System/Library/Audio/UISounds/begin_video_record.caf",
            "/System/Library/Audio/UISounds/ct-busy.caf",
            "/System/Library/Audio/UISounds/ct-call-waiting.caf",
            "/System/Library/Audio/UISounds/ct-congestion.caf",
            "/System/Library/Audio/UISounds/ct-error.caf",
            "/System/Library/Audio/UISounds/ct-keytone2.caf",
            "/System/Library/Audio/UISounds/ct-path-ack.caf",
            "/System/Library/Audio/UISounds/dtmf-0.caf",
            "/System/Library/Audio/UISounds/dtmf-1.caf",
            "/System/Library/Audio/UISounds/dtmf-2.caf",
            "/System/Library/Audio/UISounds/dtmf-3.caf",
            "/System/Library/Audio/UISounds/dtmf-4.caf",
            "/System/Library/Audio/UISounds/dtmf-5.caf",
            "/System/Library/Audio/UISounds/dtmf-6.caf",
            "/System/Library/Audio/UISounds/dtmf-7.caf",
            "/System/Library/Audio/UISounds/dtmf-8.caf",
            "/System/Library/Audio/UISounds/dtmf-9.caf",
            "/System/Library/Audio/UISounds/dtmf-pound.caf",
            "/System/Library/Audio/UISounds/dtmf-star.caf",
            "/System/Library/Audio/UISounds/end_record.caf",
            "/System/Library/Audio/UISounds/end_video_record.caf",
            "/System/Library/Audio/UISounds/jbl_ambiguous.caf",
            "/System/Library/Audio/UISounds/jbl_begin.caf",
            "/System/Library/Audio/UISounds/jbl_cancel.caf",
            "/System/Library/Audio/UISounds/jbl_confirm.caf",
            "/System/Library/Audio/UISounds/jbl_no_match.caf",
            "/System/Library/Audio/UISounds/lock.caf",
            "/System/Library/Audio/UISounds/long_low_short_high.caf",
            "/System/Library/Audio/UISounds/low_power.caf",
            "/System/Library/Audio/UISounds/mail-sent.caf",
            "/System/Library/Audio/UISounds/middle_9_short_double_low.caf",
            "/System/Library/Audio/UISounds/new-mail.caf",
            "/System/Library/Audio/UISounds/photoShutter.caf",
            "/System/Library/Audio/UISounds/shake.caf",
            "/System/Library/Audio/UISounds/short_double_high.caf",
            "/System/Library/Audio/UISounds/short_double_low.caf",
            "/System/Library/Audio/UISounds/short_low_high.caf",
            "/System/Library/Audio/UISounds/sms-received1.caf",
            "/System/Library/Audio/UISounds/sms-received2.caf",
            "/System/Library/Audio/UISounds/sms-received3.caf",
            "/System/Library/Audio/UISounds/sms-received4.caf",
            "/System/Library/Audio/UISounds/sms-received5.caf",
            "/System/Library/Audio/UISounds/sms-received6.caf",
            "/System/Library/Audio/UISounds/sq_alarm.caf",
            "/System/Library/Audio/UISounds/sq_beep-beep.caf",
            "/System/Library/Audio/UISounds/sq_lock.caf",
            "/System/Library/Audio/UISounds/sq_tock.caf",
            "/System/Library/Audio/UISounds/tweet_sent.caf",
            "/System/Library/Audio/UISounds/unlock.caf",
            "/System/Library/Audio/UISounds/ussd.caf",
            "/System/Library/Audio/UISounds/vc~ended.caf",
            "/System/Library/Audio/UISounds/vc~invitation-accepted.caf",
            "/System/Library/Audio/UISounds/vc~ringing.caf"
        ]
    }
    
}

