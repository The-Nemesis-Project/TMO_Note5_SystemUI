.class public Lcom/android/systemui/volume/SecVolumePanel;
.super Landroid/os/Handler;
.source "SecVolumePanel.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/SecVolumePanel$Callback;,
        Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;,
        Lcom/android/systemui/volume/SecVolumePanel$StreamControl;,
        Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final ACTION_LOGGING:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field public static final ACTION_VOLUMEPANEL_CLICK_BUTTON1:Ljava/lang/String; = "android.view.volumepanel.CLICK_BUTTON1"

.field public static final ACTION_VOLUMEPANEL_CLICK_BUTTON2:Ljava/lang/String; = "android.view.volumepanel.CLICK_BUTTON2"

.field public static final ACTION_VOLUMEPANEL_TOUCH_POPUP:Ljava/lang/String; = "android.view.volumepanel.TOUCH_POPUP"

.field private static final BEEP_DURATION:I = 0x96

.field private static final EXTRA_DATA:Ljava/lang/String; = "data"

.field private static final EXTRA_MEDIA:Ljava/lang/String; = "Media"

.field private static final EXTRA_NOTIFICATION:Ljava/lang/String; = "Notification"

.field private static final EXTRA_RINGTONE:Ljava/lang/String; = "Ringtone"

.field private static final EXTRA_SYSTEM:Ljava/lang/String; = "System"

.field private static final FEATURE_UNIQUE_VALUE:Ljava/lang/String; = "FWVP"

.field private static final FINEVOLUME_MAX_INDEX:I = 0x96

.field private static final FINEVOLUME_PARAM_PREFIX:Ljava/lang/String; = "audioParam;fine_volume="

.field private static final FREE_DELAY:I = 0x2710

.field private static final HW_USE_VALUE:J = 0x3e8L

.field private static final IC_AUDIO_VOL:I = 0x7f0201a3

.field private static final IC_AUDIO_VOL_MUTE:I = 0x7f0201a4

.field private static LOGD:Z = false

.field private static final LOGGER_PACKAGE:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final L_AMERICANO:Z

.field private static final L_CAPUCCINO:Z

.field private static final L_MOCHA:Z

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_DISPLAY_SAFE_VOLUME_WARNING:I = 0xb

.field private static final MSG_DISSMISS_SAFE_VOLUME_WARNING:I = 0x10

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_LAYOUT_DIRECTION:I = 0xc

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_NOTIFICATION_EFFECTS_SUPPRESSOR_CHANGED:I = 0xf

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_THEME_APPLY:I = 0x11

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_USER_ACTIVITY:I = 0xe

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final MSG_ZEN_MODE_AVAILABLE_CHANGED:I = 0xd

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui.volume"

.field private static final PLAY_SOUND_DELAY:I = 0x0

.field private static final SOUND_EFFECT_PATH:Ljava/lang/String; = "system/media/audio/ui/TW_Volume_control.ogg"

.field private static final STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

.field private static final STREAM_MASTER:I = -0x64

.field private static final STREAM_REMOTE_MUSIC:I = -0xc8

.field private static final SUPPORT_DEFAULTSTREAM_NOTIFICATION:Z = false

.field private static final SUPPORT_FINEVOLUME:Z = true

.field private static final SUPPORT_OPENTHEME:Z = true

.field private static final SUPPORT_WEARABLE_HMT:Z = false

.field private static final SVIEWCOVER_FEATURE_LEVEL:Ljava/lang/String; = "com.sec.feature.cover.sviewcover"

.field private static final SW_USE_VALUE:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "SecVolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field private static final TIMEOUT_DELAY_COLLAPSED:I = 0x1194

.field private static final TIMEOUT_DELAY_EXPANDED:I = 0x2710

.field private static final TIMEOUT_DELAY_FOR_VZW:I = 0xfa0

.field private static final TIMEOUT_DELAY_SAFETY_WARNING:I = 0x1388

.field private static final TIMEOUT_DELAY_SHORT:I = 0x5dc

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static sSafetyWarning:Landroid/app/AlertDialog;

.field private static sSafetyWarningLock:Ljava/lang/Object;


# instance fields
.field private final DENSITY_XXHDPI:D

.field private kidsModeSafetyToast:Landroid/widget/Toast;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveStreamType:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBottomMarginView:Landroid/view/View;

.field private mCallback:Lcom/android/systemui/volume/SecVolumePanel$Callback;

.field private final mCollapseMarginView:Landroid/view/View;

.field protected final mContext:Landroid/content/Context;

.field private mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverLevel:I

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mCoverType:I

.field private mDemoIcon:I

.field private final mDialog:Landroid/app/Dialog;

.field private mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

.field private final mDialogLayout:Landroid/view/View;

.field private mDisabledAlpha:F

.field private final mDivider:Landroid/view/View;

.field private mEmergencyManager:Lcom/sec/android/emergencymode/EmergencyManager;

.field private mExpandButtonDividerColor:Landroid/content/res/ColorStateList;

.field private mExpandButtonDividerDefaultColor:Landroid/content/res/ColorStateList;

.field private mExtraForRingerMode:Ljava/lang/String;

.field private mHasVibrator:Z

.field private mIconActiveColor:Landroid/content/res/ColorStateList;

.field private mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconButtonActiveColor:Landroid/content/res/ColorStateList;

.field private mIconButtonActiveDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconButtonDisableColor:Landroid/content/res/ColorStateList;

.field private mIconButtonDisableDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconDisableColor:Landroid/content/res/ColorStateList;

.field private mIconDisableDefaultColor:Landroid/content/res/ColorStateList;

.field private mIconSettingColor:Landroid/content/res/ColorStateList;

.field private mIconSettingDefaultColor:Landroid/content/res/ColorStateList;

.field private mIsShowingSCoverWarning:Z

.field private mKnoxCustomVolumePanelDisabled:Z

.field private mLastRingerMode:I

.field private mLastRingerProgress:I

.field private final mMediaControllerCb:Landroid/media/session/MediaController$Callback;

.field private mMediaSlider:Landroid/widget/SeekBar;

.field private mMediaVolumeIcon:Landroid/widget/ImageView;

.field private mMediaVolumePanel:Landroid/view/ViewGroup;

.field private mMediaVolumeTitle:Landroid/widget/TextView;

.field private final mMoreButton:Landroid/view/View;

.field private mMoreButtonRipple:Landroid/graphics/drawable/RippleDrawable;

.field private final mPanel:Landroid/view/ViewGroup;

.field private final mPlayMasterStreamTones:Z

.field private mProgressBgColor:Landroid/content/res/ColorStateList;

.field private mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

.field private mProgressColor:Landroid/content/res/ColorStateList;

.field private mProgressDefaultColor:Landroid/content/res/ColorStateList;

.field private mRingIsSilent:Z

.field private mSafetyValue:I

.field private final mSamsungAudioManager:Landroid/media/SamsungAudioManager;

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSeekListenerForBottomMedia:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSliderPanel:Landroid/view/ViewGroup;

.field private mSoundID:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamControls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/volume/SecVolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbDefaultColor:Landroid/content/res/ColorStateList;

.field private mThumbDisabledColor:Landroid/content/res/ColorStateList;

.field private mThumbDisabledDefaultColor:Landroid/content/res/ColorStateList;

.field private mTimeoutDelay:I

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mTopOffset:I

.field private mUseCocktailFeature:Z

.field private mValueForHwSwKey:J

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field private mVolumePanelBgColor:Landroid/content/res/ColorStateList;

.field private mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

.field private mVolumeTitleColor:Landroid/content/res/ColorStateList;

.field private mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private final mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mZenModeAvailable:Z

.field private mZenPanelExpanded:Z

.field private mZenPanelTop:I

.field private sCoverTopOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 151
    sput-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    .line 213
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/SecVolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 354
    const-string v0, "americano"

    const-string v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->L_AMERICANO:Z

    .line 355
    const-string v0, "mocha"

    const-string v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->L_MOCHA:Z

    .line 356
    const-string v0, "capuccino"

    const-string v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->L_CAPUCCINO:Z

    .line 471
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->MasterStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->FMStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->VideoCallStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->SystemStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->TTSStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    .line 575
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zenController"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    .line 770
    invoke-direct/range {p0 .. p0}, Landroid/os/Handler;-><init>()V

    .line 230
    const/16 v17, 0xbb8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mTimeoutDelay:I

    .line 232
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mLastRingerMode:I

    .line 233
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mLastRingerProgress:I

    .line 237
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mKnoxCustomVolumePanelDisabled:Z

    .line 275
    const/16 v17, 0x9

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mSafetyValue:I

    .line 278
    new-instance v17, Lcom/android/systemui/volume/SecVolumePanel$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$1;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 326
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    .line 333
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mSoundID:I

    .line 339
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 340
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 341
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 342
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mCoverType:I

    .line 343
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mIsShowingSCoverWarning:Z

    .line 345
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mCoverLevel:I

    .line 346
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mTopOffset:I

    .line 347
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->sCoverTopOffset:I

    .line 350
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mZenPanelTop:I

    .line 352
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 357
    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/volume/SecVolumePanel;->DENSITY_XXHDPI:D

    .line 372
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mUseCocktailFeature:Z

    .line 681
    new-instance v17, Lcom/android/systemui/volume/SecVolumePanel$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$2;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 743
    const-string v17, "Ringtone"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    .line 744
    const-wide/16 v18, 0x3e8

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/volume/SecVolumePanel;->mValueForHwSwKey:J

    .line 2973
    new-instance v17, Lcom/android/systemui/volume/SecVolumePanel$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$10;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 3039
    new-instance v17, Lcom/android/systemui/volume/SecVolumePanel$11;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$11;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mSeekListenerForBottomMedia:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 3078
    new-instance v17, Lcom/android/systemui/volume/SecVolumePanel$12;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$12;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 3090
    new-instance v17, Lcom/android/systemui/volume/SecVolumePanel$13;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$13;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    .line 771
    const-string v17, "%s.%08x"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "SecVolumePanel"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    .line 772
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    .line 773
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 774
    const-string v17, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/media/AudioManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 775
    new-instance v17, Landroid/media/SamsungAudioManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    .line 776
    const-string v17, "accessibility"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string v18, "com.sec.feature.cocktailbar"

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mUseCocktailFeature:Z

    .line 780
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateTintColor()V

    .line 781
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateDefaultTintColor()V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 785
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v17, 0x7f0400ec

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mDialogLayout:Landroid/view/View;

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mSafetyValue:I

    .line 794
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 795
    .local v13, "res":Landroid/content/res/Resources;
    const v17, 0x1120014

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    .line 796
    .local v15, "useMasterVolume":Z
    if-eqz v15, :cond_2

    .line 797
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget-object v17, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_2

    .line 798
    sget-object v17, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v14, v17, v6

    .line 799
    .local v14, "streamRes":Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    iget v0, v14, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    move/from16 v17, v0

    const/16 v18, -0x64

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    iput-boolean v0, v14, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->show:Z

    .line 797
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 799
    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    .line 802
    .end local v6    # "i":I
    .end local v14    # "streamRes":Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    :cond_2
    sget-boolean v17, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "new SecVolumePanel"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_3
    const v17, 0x3ecccccd    # 0.4f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mDisabledAlpha:F

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const v20, 0x1010033

    aput v20, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 808
    .local v4, "arr":Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDisabledAlpha:F

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mDisabledAlpha:F

    .line 809
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 812
    .end local v4    # "arr":Landroid/content/res/TypedArray;
    :cond_4
    new-instance v17, Lcom/android/systemui/volume/SecVolumePanel$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/SecVolumePanel$3;-><init>(Lcom/android/systemui/volume/SecVolumePanel;Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    .line 825
    .local v16, "window":Landroid/view/Window;
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->requestFeature(I)Z

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 828
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 829
    .local v5, "fp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0377

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c038f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c0377

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0390

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogLayout:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/systemui/volume/SecVolumePanel$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$4;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->create()V

    .line 850
    invoke-virtual/range {v16 .. v16}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 851
    .local v8, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 852
    const v17, 0x7f0c038b

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 853
    const/16 v17, 0x7e4

    move/from16 v0, v17

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 854
    const/16 v17, -0x3

    move/from16 v0, v17

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 855
    const v17, 0x7f100047

    move/from16 v0, v17

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 856
    const-string v17, "SecVolumePanel"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 857
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 859
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateLayout()V

    .line 861
    new-instance v17, Landroid/graphics/drawable/ColorDrawable;

    const/16 v18, 0x0

    invoke-direct/range {v17 .. v18}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 862
    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->clearFlags(I)V

    .line 863
    const v17, 0x1040028

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->addFlags(I)V

    .line 867
    const v17, 0x1020002

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/systemui/volume/SecVolumePanel$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$5;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0e0449

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0e044a

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f020269

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/RippleDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0e0060

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/systemui/volume/SecVolumePanel$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$6;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0e0062

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mDivider:Landroid/view/View;

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0e0065

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mBottomMarginView:Landroid/view/View;

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0e044b

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mCollapseMarginView:Landroid/view/View;

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDivider:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 900
    .local v11, "param":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v11, :cond_5

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    cmpg-double v17, v18, v20

    if-gez v17, :cond_7

    .line 902
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 906
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDivider:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 910
    :cond_5
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Landroid/media/ToneGenerator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 911
    const-string v17, "vibrator"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Vibrator;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v17

    if-eqz v17, :cond_8

    const/16 v17, 0x1

    :goto_3
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mHasVibrator:Z

    .line 915
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->makeSound()V

    .line 918
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1120053

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mVoiceCapable:Z

    .line 920
    const v17, 0x1120014

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 921
    .local v10, "masterVolumeOnly":Z
    const v17, 0x1120015

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 922
    .local v9, "masterVolumeKeySounds":Z
    if-eqz v10, :cond_9

    if-eqz v9, :cond_9

    const/16 v17, 0x1

    :goto_4
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mPlayMasterStreamTones:Z

    .line 924
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->registerReceiver()V

    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->registerCoverReceiver()V

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 931
    new-instance v17, Lcom/android/systemui/volume/SecVolumePanel$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel$7;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 970
    .local v12, "pm":Landroid/content/pm/PackageManager;
    if-eqz v12, :cond_6

    .line 971
    const-string v17, "com.sec.feature.cover.sviewcover"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mCoverLevel:I

    .line 973
    :cond_6
    const v17, 0x10501db

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mTopOffset:I

    .line 974
    const v17, 0x10501dc

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->sCoverTopOffset:I

    .line 976
    return-void

    .line 904
    .end local v9    # "masterVolumeKeySounds":Z
    .end local v10    # "masterVolumeOnly":Z
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    :cond_7
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2

    .line 912
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 922
    .restart local v9    # "masterVolumeKeySounds":Z
    .restart local v10    # "masterVolumeOnly":Z
    :cond_9
    const/16 v17, 0x0

    goto :goto_4
.end method

.method private IsTenDigitSame(II)Z
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "currentIndex"    # I

    .prologue
    .line 1288
    const-string v4, "SecVolumePanel"

    const-string v5, "IsTenDigitSame"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const/4 v3, 0x0

    .line 1291
    .local v3, "tenDigitIsSame":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v2

    .line 1292
    .local v2, "preQuotient":I
    const-string v4, "SecVolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsTenDigitSame : preQuotient = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const-string v4, "SecVolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsTenDigitSame : currentIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    div-int/lit8 v0, p2, 0xa

    .line 1302
    .local v0, "curQuotient":I
    const-string v4, "SecVolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsTenDigitSame : preQuotient = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const-string v4, "SecVolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsTenDigitSame : curQuotient = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    sub-int v1, v2, v0

    .line 1306
    .local v1, "diff":I
    const-string v4, "SecVolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsTenDigitSame : diff = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    if-nez v1, :cond_0

    .line 1309
    const/4 v3, 0x1

    .line 1312
    :cond_0
    return v3
.end method

.method private IsUnitDigitZero(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 1276
    const-string v2, "SecVolumePanel"

    const-string v3, "IsUnitDigitZero"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const/4 v1, 0x0

    .line 1278
    .local v1, "unitNumIsZero":Z
    rem-int/lit8 v0, p1, 0xa

    .line 1279
    .local v0, "remainder":I
    const-string v2, "SecVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsUnitDigitZero : remainder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    if-nez v0, :cond_0

    .line 1281
    const/4 v1, 0x1

    .line 1283
    :cond_0
    const-string v2, "SecVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsUnitDigitZero : unitNumIsZero = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    return v1
.end method

.method static synthetic access$000()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 149
    sput-object p0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/SecVolumePanel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/SecVolumePanel;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mValueForHwSwKey:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/volume/SecVolumePanel;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;
    .param p1, "x1"    # J

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mValueForHwSwKey:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/SecVolumePanel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J

    .prologue
    .line 149
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/volume/SecVolumePanel;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/SecVolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/SecVolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->expand()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/SecVolumePanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->sendCoverWarningMsgIntent(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/SecVolumePanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mUseCocktailFeature:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/SecVolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->closeCocktail()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/SecVolumePanel;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/SecVolumePanel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->setStreamTypeForLogging(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/SecVolumePanel;Lcom/android/systemui/volume/SecVolumePanel$StreamControl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;
    .param p1, "x1"    # Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/SecVolumePanel;->setStreamVolume(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/SecVolumePanel;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->setMusicIcon(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/volume/SecVolumePanel;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->IsUnitDigitZero(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/volume/SecVolumePanel;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/SecVolumePanel;->setTenDigitMediaVolume(III)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/volume/SecVolumePanel;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->IsTenDigitSame(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/volume/SecVolumePanel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->setUnitDigtMediaVolume(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaVolumeIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/volume/SecVolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/SecVolumePanel;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;
    .param p1, "x1"    # J

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->forceTimeout(J)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/SecVolumePanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIsShowingSCoverWarning:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/SecVolumePanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;

    .prologue
    .line 149
    iget v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/volume/SecVolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/systemui/volume/SecVolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDemoIcon:I

    return p1
.end method

.method private addOtherVolumes()V
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    .line 1436
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1438
    .local v1, "res":Landroid/content/res/Resources;
    iget v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    if-eq v4, v5, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVoiceCapable:Z

    if-eqz v4, :cond_1

    .line 1439
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 1440
    .local v2, "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    iget v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    .line 1443
    const v4, 0x108091a

    iput v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    .line 1444
    const v4, 0x108091c

    iput v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    .line 1445
    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    const v5, 0x104098f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1446
    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1447
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v5, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1448
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumePanel;->updateSlider(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    .line 1449
    sget-boolean v4, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "SecVolumePanel"

    const-string v5, "addOtherVolumes stream : STREAM_RING"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1451
    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1457
    .end local v2    # "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 1459
    sget-object v4, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v3, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    .line 1460
    .local v3, "streamType":I
    sget-object v4, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->show:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    if-ne v3, v4, :cond_3

    .line 1457
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1464
    :cond_3
    iget v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 1469
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 1470
    .restart local v2    # "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    sget-object v4, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->iconRes:I

    iput v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    .line 1471
    sget-object v4, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->iconMuteRes:I

    iput v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    .line 1472
    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    sget-object v5, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->descRes:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1474
    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1475
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v5, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1476
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumePanel;->updateSlider(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    .line 1477
    sget-boolean v4, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v4, :cond_5

    const-string v4, "SecVolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOtherVolumes stream : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1479
    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1481
    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1485
    .end local v2    # "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    .end local v3    # "streamType":I
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    const/16 v5, 0x168

    invoke-static {v4, v5}, Landroid/util/GeneralUtil;->isBiggerThanSW(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    if-eq v4, v8, :cond_8

    .line 1486
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 1487
    .restart local v2    # "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    const v4, 0x1080924

    iput v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    .line 1488
    const v4, 0x1080926

    iput v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    .line 1489
    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    const v5, 0x1040992

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1490
    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1491
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v5, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1492
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumePanel;->updateSlider(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    .line 1493
    sget-boolean v4, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v4, :cond_7

    const-string v4, "SecVolumePanel"

    const-string v5, "addOtherVolumes stream : STREAM_SYSTEM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1495
    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1497
    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1500
    .end local v2    # "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    :cond_8
    return-void
.end method

.method private announceDialogShown()V
    .locals 2

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2400
    return-void
.end method

.method private clearRemoteStreamController()V
    .locals 3

    .prologue
    .line 2523
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 2524
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/16 v2, -0xc8

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 2525
    .local v0, "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 2526
    iget-object v1, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    .line 2527
    iget-object v1, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2528
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 2532
    .end local v0    # "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    :cond_0
    return-void
.end method

.method private closeCocktail()V
    .locals 6

    .prologue
    .line 3138
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v1

    .line 3139
    .local v1, "cocktailManager":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanelProvider;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 3141
    .local v0, "cocktailIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 3142
    aget v3, v0, v2

    const v4, 0x10004

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->closeCocktail(II)V

    .line 3141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3145
    :cond_0
    return-void
.end method

.method private collapse()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1784
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v5, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 1785
    sget-object v5, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v5, v5, v1

    iget v4, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    .line 1786
    .local v4, "streamType":I
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 1787
    .local v3, "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    iget-object v5, v3, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1807
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, v3, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1810
    iget-object v5, v3, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1784
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1813
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    .end local v4    # "streamType":I
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1814
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1815
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mBottomMarginView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1816
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCollapseMarginView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1818
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1819
    .local v0, "count":I
    const/4 v1, 0x1

    :goto_1
    if-ge v1, v0, :cond_1

    .line 1820
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1819
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1822
    :cond_1
    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3148
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 3149
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private createCoverMsgRemoteView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 657
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 658
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverType:I

    .line 661
    :cond_0
    iget v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 662
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400e9

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 666
    .local v0, "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    :goto_0
    return-object v0

    .line 664
    .end local v0    # "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    :cond_1
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400e8

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v0    # "coverMsgRemoteViews":Landroid/widget/RemoteViews;
    goto :goto_0
.end method

.method private createKnoxCPUriCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "queryMethod"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1826
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1827
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1829
    .local v6, "cr":Landroid/database/Cursor;
    return-object v6
.end method

.method private createSliders()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x6

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1331
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1332
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1335
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v7, Landroid/util/SparseArray;

    sget-object v10, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    array-length v10, v10

    invoke-direct {v7, v10}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    .line 1337
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v7, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_6

    .line 1338
    sget-object v7, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v5, v7, v0

    .line 1340
    .local v5, "streamRes":Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    iget v6, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    .line 1342
    .local v6, "streamType":I
    new-instance v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    invoke-direct {v4, v12}, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;-><init>(Lcom/android/systemui/volume/SecVolumePanel$1;)V

    .line 1343
    .local v4, "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    iput v6, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    .line 1344
    const v7, 0x7f0400f1

    invoke-virtual {v1, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 1346
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1347
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v10, 0x7f0e044c

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 1348
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1349
    iget v7, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    .line 1350
    iget v7, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    .line 1351
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v10, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1353
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v10, 0x7f0e0061

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    .line 1354
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    iget v10, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1355
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1356
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v10, 0x7f0e0063

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    .line 1357
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1359
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumePanel;->isNotificationOrRing(I)Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1360
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->isClickable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1361
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 1365
    :cond_0
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v10, 0x7f0e044e

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 1366
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 1367
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->registerReceiver()V

    .line 1372
    if-eq v6, v11, :cond_1

    if-nez v6, :cond_4

    :cond_1
    move v2, v9

    .line 1375
    .local v2, "plusOne":I
    :goto_1
    const-string v7, "SecVolumePanel"

    const-string v10, "createSliders : SUPPORT_FINEVOLUME = true"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 1378
    const-string v7, "SecVolumePanel"

    const-string v10, "createSliders : streamType is MUSIC.. set max to 150.."

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    add-int/lit16 v10, v2, 0x96

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1384
    :goto_2
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v10, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1385
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 1386
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v9}, Landroid/widget/SeekBar;->setMuteAnimation(Z)V

    .line 1387
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1389
    if-eq v6, v11, :cond_2

    if-nez v6, :cond_3

    .line 1390
    :cond_2
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v9}, Landroid/widget/SeekBar;->setMin(I)V

    .line 1337
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .end local v2    # "plusOne":I
    :cond_4
    move v2, v8

    .line 1372
    goto :goto_1

    .line 1381
    .restart local v2    # "plusOne":I
    :cond_5
    iget-object v7, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-direct {p0, v6}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamMaxVolume(I)I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v7, v10}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_2

    .line 1394
    .end local v2    # "plusOne":I
    .end local v4    # "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    .end local v5    # "streamRes":Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    .end local v6    # "streamType":I
    :cond_6
    return-void
.end method

.method private expand()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/16 v11, 0x8

    .line 1736
    iget v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    const/4 v2, 0x1

    .line 1737
    .local v2, "isActiveStreamMusic":Z
    :goto_0
    const-string v8, "SecVolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "expand : isActiveStreamMusic = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1739
    .local v0, "count":I
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    iget v9, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 1740
    .local v3, "last_sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1741
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1740
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "isActiveStreamMusic":Z
    .end local v3    # "last_sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    :cond_0
    move v2, v7

    .line 1736
    goto :goto_0

    .line 1743
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "isActiveStreamMusic":Z
    .restart local v3    # "last_sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    sget-object v8, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    array-length v8, v8

    if-ge v1, v8, :cond_2

    .line 1744
    sget-object v8, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v8, v8, v1

    iget v6, v8, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    .line 1745
    .local v6, "streamType":I
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 1746
    .local v5, "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    move-object v3, v5

    .line 1747
    iget-object v8, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1748
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0, v6, v5}, Lcom/android/systemui/volume/SecVolumePanel;->setDualColorSeekbar(ILcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    .line 1768
    iget-object v8, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8, v4}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1771
    iget-object v8, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1773
    iget-object v8, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1743
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1775
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    .end local v6    # "streamType":I
    :cond_2
    iget-object v8, v3, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1777
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1778
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1779
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCollapseMarginView:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1780
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mBottomMarginView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1781
    return-void
.end method

.method private forceTimeout(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/4 v3, 0x5

    .line 2948
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceTimeout delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    .line 2950
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->sendEmptyMessageDelayed(IJ)Z

    .line 2951
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    .line 2720
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    .line 2724
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mPlayMasterStreamTones:Z

    if-eqz v1, :cond_2

    .line 2725
    const/4 p1, 0x1

    .line 2730
    :cond_0
    monitor-enter p0

    .line 2731
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 2733
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2741
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    :goto_1
    return-object v1

    .line 2727
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 2734
    :catch_0
    move-exception v0

    .line 2735
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-boolean v1, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    .line 2736
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2742
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getPixelFromDP(I)I
    .locals 3
    .param p1, "nDP"    # I

    .prologue
    .line 3240
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 3242
    .local v0, "d":F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    float-to-int v1, v2

    .line 3243
    .local v1, "nPX":I
    return v1
.end method

.method private getStreamMaxVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 1195
    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    .line 1196
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v2

    .line 1207
    :goto_0
    return v2

    .line 1197
    :cond_0
    const/16 v2, -0xc8

    if-ne p1, v2, :cond_2

    .line 1198
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 1199
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 1200
    .local v1, "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    .line 1201
    iget-object v2, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 1202
    .local v0, "ai":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v2

    goto :goto_0

    .line 1205
    .end local v0    # "ai":Landroid/media/session/MediaController$PlaybackInfo;
    .end local v1    # "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 1207
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 5
    .param p1, "streamType"    # I

    .prologue
    .line 1212
    const/16 v4, -0x64

    if-ne p1, v4, :cond_0

    .line 1213
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v2

    .line 1230
    :goto_0
    return v2

    .line 1214
    :cond_0
    const/16 v4, -0xc8

    if-ne p1, v4, :cond_2

    .line 1215
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    .line 1216
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 1217
    .local v3, "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v4, :cond_1

    .line 1218
    iget-object v4, v3, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 1219
    .local v0, "ai":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v2

    goto :goto_0

    .line 1222
    .end local v0    # "ai":Landroid/media/session/MediaController$PlaybackInfo;
    .end local v3    # "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 1224
    :cond_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    .line 1225
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 1226
    .local v2, "musicVolume":I
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v4}, Landroid/media/SamsungAudioManager;->getFineMediaVolume()I

    move-result v1

    .line 1227
    .local v1, "fineVolumeIndex":I
    mul-int/lit8 v4, v2, 0xa

    add-int v2, v4, v1

    .line 1228
    goto :goto_0

    .line 1230
    .end local v1    # "fineVolumeIndex":I
    .end local v2    # "musicVolume":I
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    goto :goto_0
.end method

.method private getStringQueryFromKnoxCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cr"    # Landroid/database/Cursor;
    .param p2, "queryMethod"    # Ljava/lang/String;

    .prologue
    .line 1833
    const/4 v0, 0x0

    .line 1835
    .local v0, "queryResult":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1837
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1838
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1840
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1844
    :cond_0
    return-object v0

    .line 1840
    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 1620
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1622
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 1623
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 1624
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1625
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 1626
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1627
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 1635
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1632
    :catch_0
    move-exception v0

    .line 1633
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "SecVolumePanel"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1635
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getUnitDigitNumber(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1327
    rem-int/lit8 v0, p1, 0xa

    return v0
.end method

.method private initBottomMediaPanel()V
    .locals 3

    .prologue
    .line 1127
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1129
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    const v2, 0x7f0e0076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaVolumePanel:Landroid/view/ViewGroup;

    .line 1130
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    const v2, 0x7f0e0073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaVolumeTitle:Landroid/widget/TextView;

    .line 1131
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    const v2, 0x7f0e0074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaVolumeIcon:Landroid/widget/ImageView;

    .line 1132
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mView:Landroid/view/View;

    const v2, 0x7f0e0075

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    .line 1134
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaVolumeTitle:Landroid/widget/TextView;

    const v2, 0x1040990

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaVolumeIcon:Landroid/widget/ImageView;

    const v2, 0x108092b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1138
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1142
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSeekListenerForBottomMedia:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1143
    return-void
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-nez v0, :cond_0

    .line 1002
    new-instance v0, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v0}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 1004
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    :goto_0
    const-string v0, "SecVolumePanel"

    const-string v1, "initCoverManager: initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 1012
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1013
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 1014
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverType:I

    .line 1018
    :cond_0
    :goto_1
    return-void

    .line 1016
    :cond_1
    const-string v0, "SecVolumePanel"

    const-string v1, "initCoverManager fail NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1007
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1005
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 747
    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "SecVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog : appId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_0
    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v2, :cond_1

    const-string v2, "SecVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog : feature = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v2, :cond_2

    const-string v2, "SecVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog : extra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_2
    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v2, :cond_3

    const-string v2, "SecVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog : value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 753
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 754
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v2, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 759
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 761
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 763
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 765
    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v2, :cond_4

    const-string v2, "SecVolumePanel"

    const-string v3, "insertLog : Call sendBoradcast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 768
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_5
    return-void
.end method

.method private isEmergencyModeEnabled()Z
    .locals 2

    .prologue
    .line 1122
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mEmergencyManager:Lcom/sec/android/emergencymode/EmergencyManager;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    .line 1123
    .local v0, "isEmergencyMode":Z
    return v0
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 1181
    const/16 v2, -0x64

    if-ne p1, v2, :cond_1

    .line 1182
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v1

    .line 1190
    :cond_0
    :goto_0
    return v1

    .line 1183
    :cond_1
    const/16 v2, -0xc8

    if-eq p1, v2, :cond_0

    .line 1186
    if-ne p1, v3, :cond_2

    .line 1187
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1188
    .local v0, "progress":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 1190
    .end local v0    # "progress":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    goto :goto_0
.end method

.method private static isNotificationOrRing(I)Z
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 1856
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowing()Z
    .locals 1

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method private makeFineVolumeParam(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1320
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->getUnitDigitNumber(I)I

    move-result v0

    .line 1321
    .local v0, "unitDigit":I
    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeFineVolumeParam : index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeFineVolumeParam : unitDigit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    return v0
.end method

.method private makeSound()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 2408
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 2423
    :goto_0
    return-void

    .line 2410
    :cond_0
    const-string v0, "SecVolumePanel"

    const-string v1, "sound : new SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    .line 2421
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    .line 2422
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    const-string v1, "system/media/audio/ui/TW_Volume_control.ogg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundID:I

    goto :goto_0
.end method

.method private makeTenDigitVolumeParam(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1316
    div-int/lit8 v0, p1, 0xa

    return v0
.end method

.method private phoneIsOffhook()Z
    .locals 4

    .prologue
    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, "phoneOffhook":Z
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_2

    .line 513
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 527
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneIsOffhook : phoneOffhook = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_1
    return v0

    .line 515
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 516
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private playSound(I)V
    .locals 7
    .param p1, "streamType"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2426
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 2427
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->setStreamType(I)V

    .line 2428
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundID:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2430
    :cond_0
    return-void
.end method

.method private refreshMorebuttonTintColor()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 3189
    iget v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isSviewCoverOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3190
    const-string v0, "SecVolumePanel"

    const-string v1, "refreshMorebuttonTintColor() clear cover closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    .line 3192
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 3193
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumePanel;->getPixelFromDP(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 3194
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3203
    :goto_0
    return-void

    .line 3196
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIconSettingColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 3197
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDivider:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mExpandButtonDividerColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 3198
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    .line 3199
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVolumePanelBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 3200
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumePanel;->getPixelFromDP(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 3201
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialogBgDrawable:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V
    .locals 4
    .param p1, "sc"    # Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 3153
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v0, :cond_0

    .line 3154
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->initCoverManager(Landroid/content/Context;)V

    .line 3155
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "SecVolumePanel"

    const-string v1, "refreshResourceTintColor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isSviewCoverOpened()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3159
    const-string v0, "SecVolumePanel"

    const-string v1, "refreshResourceTintColor() clear cover closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setDefaultColorForVolumePanel(Z)V

    .line 3161
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 3162
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3164
    iget v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->isMuted(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVoiceCapable:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-eq v0, v3, :cond_2

    :cond_1
    iget v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-ne v0, v2, :cond_3

    .line 3166
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbDisabledDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 3170
    :goto_0
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 3171
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3186
    :goto_1
    return-void

    .line 3168
    :cond_3
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3173
    :cond_4
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setDefaultColorForVolumePanel(Z)V

    .line 3174
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 3175
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVolumeTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 3177
    iget v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->isMuted(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVoiceCapable:Z

    if-eqz v0, :cond_5

    iget v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-eq v0, v3, :cond_6

    :cond_5
    iget v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-ne v0, v2, :cond_7

    .line 3179
    :cond_6
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 3183
    :goto_2
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 3184
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mProgressBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 3181
    :cond_7
    iget-object v0, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 1151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1152
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1153
    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1155
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/volume/SecVolumePanel$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumePanel$8;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1178
    return-void
.end method

.method private releaseSound()V
    .locals 2

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 2434
    const-string v0, "SecVolumePanel"

    const-string v1, "sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 2436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSoundPool:Landroid/media/SoundPool;

    .line 2438
    :cond_0
    return-void
.end method

.method private reorderSliders(I)V
    .locals 6
    .param p1, "activeStreamType"    # I

    .prologue
    .line 1397
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1399
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1401
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 1402
    .local v0, "active":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 1403
    const-string v3, "SecVolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing stream type! - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    .line 1427
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->addOtherVolumes()V

    .line 1430
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->refreshMorebuttonTintColor()V

    .line 1431
    return-void

    .line 1406
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1407
    iput p1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    .line 1408
    iget-object v3, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1410
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1411
    sget-object v3, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    if-ne p1, v3, :cond_2

    .line 1412
    iget-object v3, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    sget-object v4, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->descRes:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    iget-object v3, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1414
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1416
    iget-object v3, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1422
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->updateSlider(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    .line 1423
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateTimeoutDelay()V

    goto :goto_0

    .line 1410
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private resetTimeout()V
    .locals 8

    .prologue
    const/16 v7, 0xe

    const/4 v6, 0x5

    .line 2925
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 2926
    .local v0, "touchExploration":Z
    sget-boolean v1, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetTimeout at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTimeoutDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " touchExploration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    :cond_0
    sget-object v1, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 2929
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    .line 2931
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mKnoxCustomVolumePanelDisabled:Z

    if-eqz v1, :cond_3

    .line 2933
    const-string v1, "SecVolumePanel"

    const-string v2, "resetTimeout : call sendEmptyMessageDelayed : MSG_TIMEOUT 300"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->sendEmptyMessageDelayed(IJ)Z

    .line 2942
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    .line 2943
    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/SecVolumePanel;->sendEmptyMessage(I)Z

    .line 2945
    :cond_2
    return-void

    .line 2937
    :cond_3
    const-string v1, "SecVolumePanel"

    const-string v2, "resetTimeout : call sendEmptyMessageDelayed : MSG_TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    iget v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTimeoutDelay:I

    int-to-long v2, v1

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private sendCoverWarningMsgIntent(Z)V
    .locals 4
    .param p1, "coverMessageEnabled"    # Z

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->createCoverMsgRemoteView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 673
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    .local v0, "coverIntent":Landroid/content/Intent;
    const-string v2, "visibility"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 675
    const-string v2, "type"

    const-string v3, "volume"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    const-string v2, "remote"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 677
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 678
    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIsShowingSCoverWarning:Z

    .line 679
    return-void
.end method

.method private sendSafetyVolumeWarningToCocktailBar()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 2900
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 2902
    .local v5, "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2903
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "package"

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2904
    const-string v6, "content"

    const-class v7, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    if-eqz v5, :cond_0

    .line 2907
    const-string v6, "progress"

    invoke-direct {p0, v8}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2908
    const-string v6, "max"

    iget-object v7, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2909
    const-string v6, "streamtype"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2912
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v2

    .line 2913
    .local v2, "cocktailManager":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    new-instance v6, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    invoke-direct {v6, v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;-><init>(Landroid/os/Bundle;)V

    const v7, 0x10004

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->build()Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    move-result-object v4

    .line 2916
    .local v4, "info":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanelProvider;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 2918
    .local v1, "cocktailIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_1

    .line 2919
    aget v6, v1, v3

    invoke-virtual {v2, v6, v4}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->updateCocktail(ILcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)V

    .line 2920
    aget v6, v1, v3

    invoke-virtual {v2, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->showCocktail(I)V

    .line 2918
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2922
    :cond_1
    return-void
.end method

.method private sendUpdateCocktailVolumePanel(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V
    .locals 8
    .param p1, "sc"    # Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .prologue
    .line 2353
    if-eqz p1, :cond_1

    .line 2354
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2355
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "package"

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    const-string v5, "content"

    const-class v6, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    if-eqz p1, :cond_0

    .line 2359
    const-string v5, "progress"

    iget v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v6}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2360
    const-string v5, "max"

    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2361
    const-string v5, "streamtype"

    iget v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2364
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v2

    .line 2365
    .local v2, "cocktailManager":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    new-instance v5, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    invoke-direct {v5, v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;-><init>(Landroid/os/Bundle;)V

    const v6, 0x10004

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->build()Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    move-result-object v4

    .line 2368
    .local v4, "info":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanelProvider;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 2370
    .local v1, "cocktailIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 2371
    aget v5, v1, v3

    invoke-virtual {v2, v5, v4}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->updateCocktail(ILcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)V

    .line 2372
    aget v5, v1, v3

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->showCocktail(I)V

    .line 2370
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2375
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cocktailIds":[I
    .end local v2    # "cocktailManager":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    .end local v3    # "i":I
    .end local v4    # "info":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;
    :cond_1
    return-void
.end method

.method private setDualColorMediaSlider()V
    .locals 2

    .prologue
    .line 3121
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v0}, Landroid/media/SamsungAudioManager;->isSafeMediaVolumeDeviceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3122
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMode(I)V

    .line 3125
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSafetyValue:I

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    .line 3133
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    .line 3134
    return-void

    .line 3130
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaSlider:Landroid/widget/SeekBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setDualColorSeekbar(ILcom/android/systemui/volume/SecVolumePanel$StreamControl;)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "sc"    # Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .prologue
    const/4 v2, 0x3

    .line 3104
    if-eq p1, v2, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 3105
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v0}, Landroid/media/SamsungAudioManager;->isSafeMediaVolumeDeviceOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3106
    iget-object v0, p2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMode(I)V

    .line 3108
    iget v0, p2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-ne v0, v2, :cond_2

    .line 3109
    iget-object v0, p2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    .line 3117
    :cond_1
    :goto_0
    iget-object v0, p2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    .line 3118
    return-void

    .line 3111
    :cond_2
    iget-object v0, p2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    goto :goto_0

    .line 3114
    :cond_3
    iget-object v0, p2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 1147
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateStates()V

    .line 1148
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 5
    .param p1, "resId"    # I
    .param p2, "resMuteId"    # I

    .prologue
    const/4 v3, 0x3

    .line 2751
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 2752
    .local v1, "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    if-eqz v1, :cond_0

    .line 2753
    iput p1, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    .line 2754
    iput p2, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    .line 2756
    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 2757
    .local v0, "progress":I
    const-string v2, "SecVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMusicIcon progress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    if-eqz v0, :cond_1

    .line 2759
    iget-object v2, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2763
    .end local v0    # "progress":I
    :cond_0
    :goto_0
    return-void

    .line 2761
    .restart local v0    # "progress":I
    :cond_1
    iget-object v2, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setStreamTypeForLogging(I)V
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 2378
    packed-switch p1, :pswitch_data_0

    .line 2395
    :goto_0
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "SecVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStreamTypeForLogging : mExtraForRingerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    :cond_0
    return-void

    .line 2380
    :pswitch_1
    const-string v0, "System"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 2384
    :pswitch_2
    const-string v0, "Ringtone"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 2388
    :pswitch_3
    const-string v0, "Media"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 2392
    :pswitch_4
    const-string v0, "Notification"

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mExtraForRingerMode:Ljava/lang/String;

    goto :goto_0

    .line 2378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private setStreamVolume(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;II)V
    .locals 4
    .param p1, "sc"    # Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1236
    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStreamVolume : index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    const-string v1, "SecVolumePanel"

    const-string v2, "setStreamVolume : SUPPORT_FINEVOLUME = true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/16 v2, -0xc8

    if-ne v1, v2, :cond_2

    .line 1239
    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1

    .line 1240
    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v1, p2, p3}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    const-string v2, "Adjusting remote volume without a controller!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1244
    :cond_2
    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 1245
    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/16 v2, -0x64

    if-ne v1, v2, :cond_3

    .line 1246
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    goto :goto_0

    .line 1248
    :cond_3
    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 1249
    rem-int/lit8 v0, p2, 0xa

    .line 1250
    .local v0, "progressRemainder":I
    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStreamVolume : progressRemainder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    div-int/lit8 v3, p2, 0xa

    invoke-virtual {v1, v2, v3, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1253
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v1, v0}, Landroid/media/SamsungAudioManager;->setFineMediaVolume(I)V

    goto :goto_0

    .line 1255
    .end local v0    # "progressRemainder":I
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-virtual {v1, v2, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private setTenDigitMediaVolume(III)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1262
    const-string v1, "SecVolumePanel"

    const-string v2, "setTenDigitMediaVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    invoke-direct {p0, p2}, Lcom/android/systemui/volume/SecVolumePanel;->makeTenDigitVolumeParam(I)I

    move-result v0

    .line 1264
    .local v0, "tenDigitVolume":I
    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTenDigitMediaVolume : tenDigitVolume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1, v0, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1266
    return-void
.end method

.method private setUnitDigtMediaVolume(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1269
    const-string v1, "SecVolumePanel"

    const-string v2, "setUnitDigtMediaVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->makeFineVolumeParam(I)I

    move-result v0

    .line 1271
    .local v0, "fineVolume":I
    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUnitDigtMediaVolume : fineVolume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v1, v0}, Landroid/media/SamsungAudioManager;->setFineMediaVolume(I)V

    .line 1273
    return-void
.end method

.method private showInterruptionToast(I)V
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1851
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    const v1, 0x7f0d052e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1853
    :cond_0
    return-void
.end method

.method private updateDefaultTintColor()V
    .locals 2

    .prologue
    .line 3219
    const-string v0, "SecVolumePanel"

    const-string v1, "updateDefaultTintColor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    const-string v0, "#919799"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIconActiveDefaultColor:Landroid/content/res/ColorStateList;

    .line 3221
    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVolumeTitleDefaultColor:Landroid/content/res/ColorStateList;

    .line 3222
    const-string v0, "#fafafa"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVolumePanelBgDefaultColor:Landroid/content/res/ColorStateList;

    .line 3223
    const-string v0, "#0094b0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIconSettingDefaultColor:Landroid/content/res/ColorStateList;

    .line 3224
    const-string v0, "#ff00a0ce"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbDefaultColor:Landroid/content/res/ColorStateList;

    .line 3225
    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbDisabledDefaultColor:Landroid/content/res/ColorStateList;

    .line 3226
    const-string v0, "#ff00a0ce"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mProgressDefaultColor:Landroid/content/res/ColorStateList;

    .line 3227
    const-string v0, "#ffC9c9c9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mProgressBgDefaultColor:Landroid/content/res/ColorStateList;

    .line 3228
    return-void
.end method

.method private updateLayout()V
    .locals 13

    .prologue
    const v12, 0x7f0c045a

    const v11, 0x7f0c038b

    const/16 v10, 0x31

    .line 1042
    const-string v8, "SecVolumePanel"

    const-string v9, "===== Start updateLayout ====="

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1044
    .local v6, "res":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1046
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 1047
    .local v7, "wm":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1048
    .local v0, "display":Landroid/view/Display;
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v2, v8, Landroid/content/res/Configuration;->orientation:I

    .line 1052
    .local v2, "orientation":I
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1053
    .local v4, "realMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1054
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1055
    .local v5, "realWidth":I
    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1057
    .local v3, "realHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isSviewCoverOpened()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1058
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1059
    sget-boolean v8, Lcom/android/systemui/volume/SecVolumePanel;->L_CAPUCCINO:Z

    if-eqz v8, :cond_1

    .line 1060
    const/4 v8, 0x1

    if-ne v2, v8, :cond_0

    .line 1061
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v5, v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1068
    :goto_0
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1079
    :goto_1
    const-string v8, "SecVolumePanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateLayout : lp.width = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", lp.y = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1081
    return-void

    .line 1063
    :cond_0
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v3, v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 1066
    :cond_1
    const v8, 0x7f0c0456

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 1070
    :cond_2
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1071
    const v8, 0x7f0c0459

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1072
    sget-boolean v8, Lcom/android/systemui/volume/SecVolumePanel;->L_CAPUCCINO:Z

    if-eqz v8, :cond_3

    .line 1073
    const v8, 0x7f0c038c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 1075
    :cond_3
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1
.end method

.method private updateRippleMoreButton()V
    .locals 8

    .prologue
    .line 979
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 980
    .local v0, "cx":I
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 981
    .local v1, "cy":I
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e75c28f    # 0.24f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 983
    .local v2, "rad":I
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    add-int v6, v0, v2

    add-int v7, v1, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 984
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 985
    return-void
.end method

.method private updateSlider(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V
    .locals 5
    .param p1, "sc"    # Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1640
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/SecVolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;I)V

    .line 1641
    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->isMuted(I)Z

    move-result v0

    .line 1643
    .local v0, "muted":Z
    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1644
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/SecVolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;Z)V

    .line 1645
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;ZZ)V

    .line 1646
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->refreshResourceTintColor(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    .line 1649
    if-eqz v0, :cond_2

    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-ne v1, v3, :cond_2

    .line 1650
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1665
    :cond_1
    :goto_0
    return-void

    .line 1651
    :cond_2
    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isEnableAOBLE()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1652
    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1654
    :cond_3
    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-eq v1, v4, :cond_4

    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v1}, Landroid/media/SamsungAudioManager;->isSafeMediaVolumeDeviceOn()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0xa

    if-ge v1, v2, :cond_1

    .line 1659
    :cond_6
    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private updateSliderEnabled(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;ZZ)V
    .locals 8
    .param p1, "sc"    # Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    .param p2, "muted"    # Z
    .param p3, "fixedVolume"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1668
    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    .line 1669
    .local v3, "wasEnabled":Z
    iget v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumePanel;->isNotificationOrRing(I)Z

    move-result v1

    .line 1670
    .local v1, "isRinger":Z
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v0

    .line 1672
    .local v0, "isRecording":Z
    iget v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/16 v7, -0xc8

    if-ne v6, v7, :cond_3

    .line 1675
    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    if-nez p3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {v6, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1708
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1709
    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1710
    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1711
    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1724
    :cond_2
    :goto_1
    return-void

    .line 1676
    :cond_3
    iget v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-nez v6, :cond_4

    .line 1678
    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1679
    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1680
    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1681
    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    .line 1682
    :cond_4
    if-nez p3, :cond_7

    iget v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v7

    if-eq v6, v7, :cond_5

    if-nez p2, :cond_7

    :cond_5
    iget v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x5

    if-ne v6, v7, :cond_6

    if-eqz p2, :cond_6

    if-nez v0, :cond_7

    :cond_6
    sget-object v6, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v6, :cond_9

    .line 1686
    :cond_7
    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1687
    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->onStopDraggingState()V

    .line 1690
    :cond_8
    iget v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    .line 1691
    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1692
    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDisabledAlpha:F

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 1694
    :cond_9
    iget v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    if-ne v6, v5, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isEnableAOBLE()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1695
    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1696
    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->onStopDraggingState()V

    .line 1699
    :cond_a
    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1700
    iget-object v6, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v6, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1701
    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDisabledAlpha:F

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 1703
    :cond_b
    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1704
    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1705
    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 1713
    :cond_c
    new-instance v2, Lcom/android/systemui/volume/SecVolumePanel$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/SecVolumePanel$9;-><init>(Lcom/android/systemui/volume/SecVolumePanel;)V

    .line 1721
    .local v2, "showHintOnTouch":Landroid/view/View$OnTouchListener;
    iget-object v4, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1
.end method

.method private updateSliderIcon(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;Z)V
    .locals 9
    .param p1, "sc"    # Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    .param p2, "muted"    # Z

    .prologue
    const v8, 0x108091c

    const v7, 0x1080911

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1539
    iget-object v3, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1540
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 1541
    .local v1, "ringerMode":I
    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1543
    .local v0, "progress":I
    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-ne v2, v4, :cond_5

    .line 1544
    if-ne v1, v4, :cond_4

    .line 1545
    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->L_AMERICANO:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->L_MOCHA:Z

    if-eqz v2, :cond_3

    .line 1546
    :cond_0
    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080928

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1594
    :cond_1
    :goto_1
    if-nez v1, :cond_f

    .line 1595
    iget v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mLastRingerMode:I

    .line 1601
    :goto_2
    return-void

    .line 1539
    .end local v0    # "progress":I
    .end local v1    # "ringerMode":I
    :cond_2
    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    goto :goto_0

    .line 1548
    .restart local v0    # "progress":I
    .restart local v1    # "ringerMode":I
    :cond_3
    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080926

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1551
    :cond_4
    if-nez v0, :cond_1

    .line 1552
    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080926

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1555
    :cond_5
    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumePanel;->isNotificationOrRing(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1556
    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-ne v2, v5, :cond_6

    .line 1557
    if-ne v1, v4, :cond_1

    .line 1558
    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080920

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1559
    :cond_6
    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 1560
    if-ne v1, v4, :cond_8

    .line 1561
    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->L_AMERICANO:Z

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->L_MOCHA:Z

    if-nez v2, :cond_7

    .line 1562
    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080920

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1564
    :cond_7
    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080917

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1566
    :cond_8
    if-ne v1, v5, :cond_b

    .line 1567
    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->L_AMERICANO:Z

    if-nez v2, :cond_a

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->L_MOCHA:Z

    if-nez v2, :cond_a

    .line 1568
    if-nez v0, :cond_9

    .line 1569
    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1571
    :cond_9
    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x108091a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1573
    :cond_a
    if-nez v0, :cond_1

    .line 1574
    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080915

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1578
    :cond_b
    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->L_AMERICANO:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/volume/SecVolumePanel;->L_MOCHA:Z

    if-nez v2, :cond_1

    .line 1579
    iget-object v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 1583
    :cond_c
    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-ne v2, v6, :cond_d

    .line 1584
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v2

    and-int/lit16 v2, v2, 0x3a0

    if-eqz v2, :cond_1

    .line 1587
    invoke-direct {p0, v7, v7}, Lcom/android/systemui/volume/SecVolumePanel;->setMusicIcon(II)V

    goto/16 :goto_1

    .line 1589
    :cond_d
    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1590
    iget-object v3, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-nez v0, :cond_e

    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_e
    iget v2, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    goto :goto_3

    .line 1597
    :cond_f
    iput v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mLastRingerMode:I

    goto/16 :goto_2
.end method

.method private updateSliderProgress(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;I)V
    .locals 4
    .param p1, "sc"    # Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    .param p2, "progress"    # I

    .prologue
    .line 1504
    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSliderProgress : progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    .line 1506
    .local v0, "isRinger":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1509
    iget p2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mLastRingerProgress:I

    .line 1511
    :cond_0
    if-gez p2, :cond_2

    .line 1512
    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result p2

    .line 1513
    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 1515
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 1519
    :cond_2
    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/volume/SecVolumePanel;->setDualColorSeekbar(ILcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    .line 1521
    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1522
    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSliderProgress : converted mediaVolume index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1526
    :cond_3
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_5

    .line 1527
    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1533
    :goto_0
    if-eqz v0, :cond_4

    .line 1534
    iput p2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mLastRingerProgress:I

    .line 1536
    :cond_4
    return-void

    .line 1530
    :cond_5
    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method private updateSliderSupressor(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .prologue
    .line 1604
    iget v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumePanel;->isNotificationOrRing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 1606
    .local v0, "suppressor":Landroid/content/ComponentName;
    :goto_0
    if-nez v0, :cond_1

    .line 1607
    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1617
    :goto_1
    return-void

    .line 1604
    .end local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1610
    .restart local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateTimeoutDelay()V
    .locals 2

    .prologue
    .line 1865
    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/16 v0, 0x1388

    :goto_0
    iput v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTimeoutDelay:I

    .line 1869
    return-void

    .line 1865
    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_1
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private updateTintColor()V
    .locals 3

    .prologue
    const v2, 0x106013d

    .line 3206
    const-string v0, "SecVolumePanel"

    const-string v1, "updateTintColor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIconActiveColor:Landroid/content/res/ColorStateList;

    .line 3208
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mExpandButtonDividerColor:Landroid/content/res/ColorStateList;

    .line 3209
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVolumeTitleColor:Landroid/content/res/ColorStateList;

    .line 3210
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVolumePanelBgColor:Landroid/content/res/ColorStateList;

    .line 3211
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIconSettingColor:Landroid/content/res/ColorStateList;

    .line 3212
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 3213
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mThumbDisabledColor:Landroid/content/res/ColorStateList;

    .line 3214
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mProgressColor:Landroid/content/res/ColorStateList;

    .line 3215
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mProgressBgColor:Landroid/content/res/ColorStateList;

    .line 3216
    return-void
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2959
    const-string v5, "volume"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2971
    :goto_0
    return-void

    .line 2960
    :cond_0
    const-string v5, "icon"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2961
    .local v1, "icon":Ljava/lang/String;
    const-string v5, "iconmute"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2962
    .local v2, "iconMute":Ljava/lang/String;
    if-eqz v2, :cond_2

    move v3, v6

    .line 2963
    .local v3, "mute":Z
    :goto_1
    if-eqz v3, :cond_1

    move-object v1, v2

    .line 2964
    :cond_1
    const-string v5, "Stream"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2965
    :goto_2
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    move-result-object v4

    .line 2966
    .local v4, "sr":Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    if-eqz v3, :cond_4

    iget v5, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->iconMuteRes:I

    :goto_3
    iput v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDemoIcon:I

    .line 2967
    sget-object v5, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    iget v0, v5, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    .line 2968
    .local v0, "forcedStreamType":I
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 2969
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v0, v7, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .end local v0    # "forcedStreamType":I
    .end local v3    # "mute":Z
    .end local v4    # "sr":Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    :cond_2
    move v3, v7

    .line 2962
    goto :goto_1

    .line 2964
    .restart local v3    # "mute":Z
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "Stream"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 2966
    .restart local v4    # "sr":Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    :cond_4
    iget v5, v4, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->iconRes:I

    goto :goto_3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1084
    const-string v3, "SecVolumePanel state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1085
    const-string v3, "  mTag="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1086
    const-string v3, "  mRingIsSilent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mRingIsSilent:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1087
    const-string v3, "  mVoiceCapable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVoiceCapable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1088
    const-string v3, "  mHasVibrator="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mHasVibrator:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1089
    const-string v3, "  mZenModeAvailable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mZenModeAvailable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1090
    const-string v3, "  mZenPanelExpanded="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mZenPanelExpanded:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1091
    const-string v3, "  mTimeoutDelay="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTimeoutDelay:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1092
    const-string v3, "  mDisabledAlpha="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDisabledAlpha:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 1093
    const-string v3, "  mLastRingerMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mLastRingerMode:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1094
    const-string v3, "  mLastRingerProgress="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mLastRingerProgress:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1095
    const-string v3, "  mPlayMasterStreamTones="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mPlayMasterStreamTones:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1096
    const-string v3, "  isShowing()="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isShowing()Z

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1097
    const-string v3, "  mCallback="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCallback:Lcom/android/systemui/volume/SecVolumePanel$Callback;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1098
    const-string v3, "  sConfirmSafeVolumeDialog="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1099
    sget-object v3, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    const-string v3, "<not null>"

    :goto_0
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1100
    const-string v3, "  mActiveStreamType="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1101
    const-string v3, "  mStreamControls="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1102
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v3, :cond_2

    .line 1103
    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1119
    :cond_0
    return-void

    .line 1099
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1105
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1106
    .local v0, "N":I
    const-string v3, "<size "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x3e

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 1107
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 1108
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 1109
    .local v2, "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    const-string v3, "    stream "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1110
    iget-object v3, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    if-eqz v3, :cond_3

    .line 1111
    const-string v3, " progress="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1112
    const-string v3, " of "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1113
    iget-object v3, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, " (disabled)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1115
    :cond_3
    iget-object v3, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, " (clickable)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1116
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1107
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    .prologue
    .line 2954
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 2784
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2897
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2787
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 2792
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 2797
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->onFreeResources()V

    goto :goto_0

    .line 2802
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->onStopSounds()V

    goto :goto_0

    .line 2807
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 2818
    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mKnoxCustomVolumePanelDisabled:Z

    if-eqz v1, :cond_4

    .line 2820
    :cond_1
    const-string v1, "SecVolumePanel"

    const-string v2, "handleMessage : call mDialog.dismiss()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2822
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mUseCocktailFeature:Z

    if-eqz v1, :cond_2

    .line 2823
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->closeCocktail()V

    .line 2825
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->clearRemoteStreamController()V

    .line 2826
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    .line 2828
    iget-boolean v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mKnoxCustomVolumePanelDisabled:Z

    if-eqz v1, :cond_3

    .line 2829
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 2830
    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mKnoxCustomVolumePanelDisabled:Z

    .line 2833
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCallback:Lcom/android/systemui/volume/SecVolumePanel$Callback;

    if-eqz v1, :cond_4

    .line 2834
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCallback:Lcom/android/systemui/volume/SecVolumePanel$Callback;

    invoke-interface {v1, v0}, Lcom/android/systemui/volume/SecVolumePanel$Callback;->onVisible(Z)V

    .line 2837
    :cond_4
    sget-object v1, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2838
    :try_start_0
    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 2839
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    const-string v2, "SafetyWarning timeout"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    :cond_5
    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2842
    const-string v0, "SecVolumePanel"

    const-string v2, "handleMessage : call sSafetyWarning.dismiss()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2846
    :cond_6
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2852
    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2853
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateStates()V

    goto/16 :goto_0

    .line 2859
    :pswitch_8
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateTintColor()V

    goto/16 :goto_0

    .line 2864
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V

    goto/16 :goto_0

    .line 2869
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto/16 :goto_0

    .line 2873
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->onSliderVisibilityChanged(II)V

    goto/16 :goto_0

    .line 2877
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->onDisplaySafeVolumeWarning(I)V

    .line 2878
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mUseCocktailFeature:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isSviewCoverOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2879
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->sendSafetyVolumeWarningToCocktailBar()V

    goto/16 :goto_0

    .line 2884
    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->setLayoutDirection(I)V

    goto/16 :goto_0

    .line 2888
    :pswitch_e
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mZenModeAvailable:Z

    goto/16 :goto_0

    .line 2892
    :pswitch_f
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCallback:Lcom/android/systemui/volume/SecVolumePanel$Callback;

    if-eqz v0, :cond_0

    .line 2893
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCallback:Lcom/android/systemui/volume/SecVolumePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/SecVolumePanel$Callback;->onInteraction()V

    goto/16 :goto_0

    .line 2784
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public isEnableAOBLE()Z
    .locals 3

    .prologue
    .line 3247
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 3248
    .local v0, "mAdapter":Landroid/bluetooth/BluetoothAdapter;
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isExtraButtonOn()Z
    .locals 6

    .prologue
    .line 532
    const/4 v2, 0x0

    .line 533
    .local v2, "rtvalue":Z
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "extraButtonOn":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "audioParam;extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, "extraButtonOnDevice":Ljava/lang/String;
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    .line 537
    const-string v3, "SecVolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : extraButtonOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v3, "SecVolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : extraButtonOnDevice = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 542
    const/4 v2, 0x1

    .line 547
    :goto_0
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_1

    .line 548
    const-string v3, "SecVolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : rtvalue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_1
    return v2

    .line 544
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSafeVolumeDialogShowing()Z
    .locals 1

    .prologue
    .line 1965
    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSviewCoverOpened()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 554
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v2, :cond_1

    .line 555
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    .line 556
    .local v0, "state":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v0, :cond_0

    .line 557
    const-string v1, "SecVolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCoverManager.getCoverState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    .line 565
    .end local v0    # "state":Lcom/samsung/android/sdk/cover/ScoverState;
    :goto_0
    return v1

    .line 560
    .restart local v0    # "state":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_0
    const-string v2, "SecVolumePanel"

    const-string v3, "state is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 564
    .end local v0    # "state":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_1
    const-string v2, "SecVolumePanel"

    const-string v3, "mCoverManager is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1022
    const-string v5, "SecVolumePanel"

    const-string v6, "===== Start onConfigurationChanged ====="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const-string v5, "SecVolumePanel"

    const-string v6, "onConfigurationChanged : call updateLayout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateLayout()V

    .line 1026
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v5, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 1027
    sget-object v5, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v3, v5, v0

    .line 1029
    .local v3, "streamRes":Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v5, :cond_0

    .line 1030
    iget v4, v3, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    .line 1031
    .local v4, "streamType":I
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 1032
    .local v2, "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1033
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 1034
    iget-object v5, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    sget-object v6, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->descRes:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    iget-object v5, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1026
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    .end local v4    # "streamType":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1039
    .end local v3    # "streamRes":Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    :cond_1
    return-void
.end method

.method protected onDismissSafeVolumeWarning()V
    .locals 3

    .prologue
    .line 2701
    sget-object v1, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2702
    :try_start_0
    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2703
    const-string v0, "SecVolumePanel"

    const-string v2, "onDismissSafeVolumeWarning : call sSafetyWarning.dismiss()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    sget-object v0, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2706
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2708
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mIsShowingSCoverWarning:Z

    if-eqz v0, :cond_2

    .line 2709
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "SecVolumePanel"

    const-string v1, "dismiss warning popup on the s view cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->sendCoverWarningMsgIntent(Z)V

    .line 2713
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 2714
    return-void

    .line 2706
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onDisplaySafeVolumeWarning(I)V
    .locals 24
    .param p1, "flags"    # I

    .prologue
    .line 2558
    const/high16 v19, 0x10000000

    and-int v19, v19, p1

    if-eqz v19, :cond_0

    .line 2559
    const-string v19, "SecVolumePanel"

    const-string v20, "onDisplaySafeVolumeWarning : get FLAG_DISMISS_UI_WARNINGS, call onDismissSafeVolumeWarning"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->onDismissSafeVolumeWarning()V

    .line 2562
    const-string v19, "SecVolumePanel"

    const-string v20, "onDisplaySafeVolumeWarning : return"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    :goto_0
    return-void

    .line 2566
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "kids_home_mode"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/4 v10, 0x1

    .line 2568
    .local v10, "isKidsMode":Z
    :goto_1
    const/4 v9, 0x1

    .line 2569
    .local v9, "isCoverOpen":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->isSviewCoverOpened()Z

    move-result v9

    .line 2573
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v12

    .line 2576
    .local v12, "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    const-string v19, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v20, "getSealedState"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->createKnoxCPUriCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2578
    .local v5, "cr":Landroid/database/Cursor;
    const-string v19, "getSealedState"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v5, v1}, Lcom/android/systemui/volume/SecVolumePanel;->getStringQueryFromKnoxCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2581
    .local v6, "getSealedState":Ljava/lang/String;
    if-eqz v12, :cond_2

    if-eqz v6, :cond_2

    const-string v19, "true"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual {v12}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;->getSealedHideNotificationMessages()I

    move-result v19

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_2

    .line 2588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    .line 2691
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 2692
    const/16 v19, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    goto :goto_0

    .line 2566
    .end local v5    # "cr":Landroid/database/Cursor;
    .end local v6    # "getSealedState":Ljava/lang/String;
    .end local v9    # "isCoverOpen":Z
    .end local v10    # "isKidsMode":Z
    .end local v12    # "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 2590
    .restart local v5    # "cr":Landroid/database/Cursor;
    .restart local v6    # "getSealedState":Ljava/lang/String;
    .restart local v9    # "isCoverOpen":Z
    .restart local v10    # "isKidsMode":Z
    .restart local v12    # "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    :cond_2
    if-eqz v10, :cond_4

    .line 2591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0d04bb

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mSafetyValue:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 2592
    .local v11, "kidsModeSafetyToastText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->kidsModeSafetyToast:Landroid/widget/Toast;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 2593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->kidsModeSafetyToast:Landroid/widget/Toast;

    .line 2597
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->kidsModeSafetyToast:Landroid/widget/Toast;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 2595
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->kidsModeSafetyToast:Landroid/widget/Toast;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2605
    .end local v11    # "kidsModeSafetyToastText":Ljava/lang/String;
    :cond_4
    sget-object v20, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v20

    .line 2606
    :try_start_0
    sget-object v19, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v19, :cond_7

    .line 2607
    if-nez v9, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mIsShowingSCoverWarning:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 2609
    sget-boolean v19, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v19, :cond_5

    .line 2610
    const-string v19, "SecVolumePanel"

    const-string v21, "show warning popup on the s view cover and than return"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    :cond_5
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->sendCoverWarningMsgIntent(Z)V

    .line 2614
    :cond_6
    monitor-exit v20

    goto/16 :goto_0

    .line 2686
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 2616
    :cond_7
    :try_start_1
    new-instance v19, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/SecVolumePanel;Landroid/media/AudioManager;)V

    sput-object v19, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    .line 2618
    const-string v19, "SecVolumePanel"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isCoverOpen = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    if-eqz v9, :cond_e

    .line 2620
    const-string v19, "SecVolumePanel"

    const-string v21, "cover open, warning popup window type is set to TYPE_VOLUME_OVERLAY"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    sget-object v19, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    const/16 v21, 0x7e4

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 2631
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->isShowing()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 2632
    const-string v19, "SecVolumePanel"

    const-string v21, "onDisplaySafeVolumeWarning :  call mDialog.dismiss()"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->dismiss()V

    .line 2634
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    .line 2638
    :cond_8
    sget-object v19, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->show()V

    .line 2640
    sget-object v19, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    const/16 v21, 0x3

    aget-object v17, v19, v21

    .line 2641
    .local v17, "streamRes":Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 2642
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    move/from16 v18, v0

    .line 2643
    .local v18, "streamType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 2644
    .local v16, "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    if-eqz v16, :cond_9

    .line 2645
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 2650
    .end local v16    # "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    .end local v18    # "streamType":I
    :cond_9
    if-nez v9, :cond_d

    .line 2652
    sget-boolean v19, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v19, :cond_a

    .line 2653
    const-string v19, "SecVolumePanel"

    const-string v21, "show warning popup on the s view cover"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v19

    if-eqz v19, :cond_b

    .line 2656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mCoverType:I

    .line 2658
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverType:I

    move/from16 v19, v0

    const/16 v21, 0x6

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverLevel:I

    move/from16 v19, v0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 2659
    :cond_c
    new-instance v15, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const v21, 0x7f0400e9

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2665
    .local v15, "remoteViews":Landroid/widget/RemoteViews;
    :goto_5
    new-instance v4, Landroid/content/Intent;

    const-string v19, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2666
    .local v4, "coverIntent":Landroid/content/Intent;
    const-string v19, "visibility"

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2667
    const-string v19, "type"

    const-string v21, "volume"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2668
    const-string v19, "remote"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2670
    new-instance v7, Landroid/content/Intent;

    const-string v19, "android.view.volumepanel.CLICK_BUTTON1"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2671
    .local v7, "intent1":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    const/high16 v22, 0x8000000

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 2674
    .local v13, "pendingIntent1":Landroid/app/PendingIntent;
    new-instance v8, Landroid/content/Intent;

    const-string v19, "android.view.volumepanel.CLICK_BUTTON2"

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2675
    .local v8, "intent2":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    const/high16 v22, 0x8000000

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 2678
    .local v14, "pendingIntent2":Landroid/app/PendingIntent;
    const v19, 0x7f0e0446

    move/from16 v0, v19

    invoke-virtual {v15, v0, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2680
    const v19, 0x7f0e0447

    move/from16 v0, v19

    invoke-virtual {v15, v0, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2683
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mIsShowingSCoverWarning:Z

    .line 2686
    .end local v4    # "coverIntent":Landroid/content/Intent;
    .end local v7    # "intent1":Landroid/content/Intent;
    .end local v8    # "intent2":Landroid/content/Intent;
    .end local v13    # "pendingIntent1":Landroid/app/PendingIntent;
    .end local v14    # "pendingIntent2":Landroid/app/PendingIntent;
    .end local v15    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_d
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2687
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateStates()V

    goto/16 :goto_2

    .line 2625
    .end local v17    # "streamRes":Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    :cond_e
    :try_start_2
    const-string v19, "SecVolumePanel"

    const-string v21, "cover closed, warning popup window type is set to TYPE_KEYGUARD_DIALOG"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    sget-object v19, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    const/16 v21, 0x7d9

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_4

    .line 2662
    .restart local v17    # "streamRes":Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    :cond_f
    new-instance v15, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const v21, 0x7f0400e8

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v15    # "remoteViews":Landroid/widget/RemoteViews;
    goto/16 :goto_5

    .line 2694
    .end local v15    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v17    # "streamRes":Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateTimeoutDelay()V

    .line 2695
    const-string v19, "SecVolumePanel"

    const-string v20, "onDisplaySafeVolumeWarning : call resetTimeout()"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->resetTimeout()V

    goto/16 :goto_0
.end method

.method protected onFreeResources()V
    .locals 1

    .prologue
    .line 2766
    monitor-enter p0

    .line 2777
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->releaseSound()V

    .line 2779
    monitor-exit p0

    .line 2780
    return-void

    .line 2779
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onMuteChanged(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 2077
    sget-boolean v1, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 2080
    .local v0, "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 2081
    iget v1, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->isMuted(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;Z)V

    .line 2084
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->onVolumeChanged(II)V

    .line 2085
    return-void
.end method

.method protected onPlaySound(II)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 2452
    monitor-enter p0

    .line 2460
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->makeSound()V

    .line 2461
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->playSound(I)V

    .line 2463
    monitor-exit p0

    .line 2464
    return-void

    .line 2463
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V
    .locals 5
    .param p1, "controller"    # Landroid/media/session/MediaController;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v3, -0xc8

    .line 2490
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteVolumeChanged(controller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2494
    :cond_1
    monitor-enter p0

    .line 2495
    :try_start_0
    iget v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    .line 2496
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->reorderSliders(I)V

    .line 2498
    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/systemui/volume/SecVolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 2499
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2504
    :cond_3
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    .line 2505
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2506
    const-string v0, "SecVolumePanel"

    const-string v1, "onRemoteVolumeChanged : call resetTimeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->resetTimeout()V

    .line 2508
    return-void

    .line 2499
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2501
    :cond_4
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 2511
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 2515
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 2517
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(IILandroid/media/session/MediaController;)V
    .locals 20
    .param p1, "streamType"    # I
    .param p2, "flags"    # I
    .param p3, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 2088
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I

    move-result v6

    .line 2091
    .local v6, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->initCoverManager(Landroid/content/Context;)V

    .line 2093
    sget-boolean v16, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v16, :cond_0

    const-string v16, "SecVolumePanel"

    const-string v17, "onShowVolumeChanged():initCoverManager"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :cond_0
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mRingIsSilent:Z

    .line 2099
    sget-boolean v16, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v16, :cond_1

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onShowVolumeChanged(streamType: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", flags: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), index: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/SecVolumePanel;->getStreamMaxVolume(I)I

    move-result v8

    .line 2107
    .local v8, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 2108
    .local v11, "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 2110
    .local v9, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_2

    .line 2111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x1040270

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2112
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateRippleMoreButton()V

    .line 2115
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 2211
    :cond_3
    :goto_0
    if-eqz v11, :cond_7

    .line 2212
    const/16 v16, -0xc8

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_5

    .line 2213
    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 2214
    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2216
    :cond_4
    move-object/from16 v0, p3

    iput-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 2217
    if-eqz p3, :cond_5

    .line 2218
    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2221
    :cond_5
    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/SeekBar;->getMax()I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v8, :cond_6

    .line 2222
    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2224
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6}, Lcom/android/systemui/volume/SecVolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;I)V

    .line 2225
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/SecVolumePanel;->isMuted(I)Z

    move-result v17

    and-int/lit8 v16, p2, 0x20

    if-eqz v16, :cond_12

    const/16 v16, 0x1

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-direct {v0, v11, v1, v2}, Lcom/android/systemui/volume/SecVolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;ZZ)V

    .line 2230
    :cond_7
    if-eqz v11, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->isSviewCoverOpened()Z

    move-result v16

    if-nez v16, :cond_13

    .line 2231
    sget-object v16, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v16, :cond_13

    sget-object v16, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v16

    if-eqz v16, :cond_13

    .line 2232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    .line 2233
    const-string v16, "SecVolumePanel"

    const-string v17, "onShowVolumeChanged :  call mDialog.dismiss()"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->dismiss()V

    .line 2235
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    .line 2236
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mUseCocktailFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->isSviewCoverOpened()Z

    move-result v16

    if-nez v16, :cond_8

    iget v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 2238
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui/volume/SecVolumePanel;->sendUpdateCocktailVolumePanel(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    .line 2350
    :cond_8
    :goto_2
    return-void

    .line 2119
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v10

    .line 2121
    .local v10, "ringuri":Landroid/net/Uri;
    if-nez v10, :cond_3

    .line 2122
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 2129
    .end local v10    # "ringuri":Landroid/net/Uri;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x3a0

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 2136
    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const v17, 0x1080911

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 2139
    :cond_9
    const v16, 0x108092a

    const v17, 0x108092e

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/SecVolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 2150
    :sswitch_2
    add-int/lit8 v6, v6, 0x1

    .line 2151
    add-int/lit8 v8, v8, 0x1

    .line 2152
    goto/16 :goto_0

    .line 2156
    :sswitch_3
    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-nez v6, :cond_a

    iget v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    move/from16 v16, v0

    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_a
    iget v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    move/from16 v16, v0

    goto :goto_3

    .line 2161
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v10

    .line 2163
    .restart local v10    # "ringuri":Landroid/net/Uri;
    if-nez v10, :cond_b

    .line 2164
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mRingIsSilent:Z

    .line 2166
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 2167
    sget-boolean v16, Lcom/android/systemui/volume/SecVolumePanel;->L_AMERICANO:Z

    if-nez v16, :cond_c

    sget-boolean v16, Lcom/android/systemui/volume/SecVolumePanel;->L_MOCHA:Z

    if-nez v16, :cond_c

    .line 2168
    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const v17, 0x1080920

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 2170
    :cond_c
    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const v17, 0x1080917

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 2173
    :cond_d
    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-nez v6, :cond_e

    iget v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    move/from16 v16, v0

    :goto_4
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_e
    iget v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    move/from16 v16, v0

    goto :goto_4

    .line 2184
    .end local v10    # "ringuri":Landroid/net/Uri;
    :sswitch_5
    add-int/lit8 v6, v6, 0x1

    .line 2185
    add-int/lit8 v8, v8, 0x1

    .line 2186
    goto/16 :goto_0

    .line 2190
    :sswitch_6
    if-nez p3, :cond_f

    if-eqz v11, :cond_f

    .line 2192
    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    move-object/from16 p3, v0

    .line 2194
    :cond_f
    if-nez p3, :cond_11

    .line 2196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "sent remote volume change without a controller!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    :cond_10
    :goto_5
    sget-boolean v16, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "showing remote volume "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " over "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2198
    :cond_11
    invoke-virtual/range {p3 .. p3}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v14

    .line 2199
    .local v14, "vi":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v14}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v6

    .line 2200
    invoke-virtual {v14}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v8

    .line 2201
    invoke-virtual {v14}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v16

    if-nez v16, :cond_10

    .line 2203
    or-int/lit8 p2, p2, 0x20

    goto :goto_5

    .line 2225
    .end local v14    # "vi":Landroid/media/session/MediaController$PlaybackInfo;
    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 2246
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->isShowing()Z

    move-result v16

    if-nez v16, :cond_1d

    .line 2247
    const/16 v16, -0xc8

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_15

    const/4 v13, -0x1

    .line 2249
    .local v13, "stream":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 2252
    const/high16 v16, 0x8000000

    and-int v16, v16, p2

    if-eqz v16, :cond_16

    .line 2253
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->expand()V

    .line 2258
    :goto_7
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->setSeekbarSlidingAnimation(Z)V

    .line 2261
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->isSviewCoverOpened()Z

    move-result v16

    if-nez v16, :cond_17

    .line 2262
    const-string v16, "SecVolumePanel"

    const-string v17, "onShowVolumeChanged: Cover is closed"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 2264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDivider:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 2265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mBottomMarginView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 2266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mCollapseMarginView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 2268
    if-eqz v11, :cond_14

    .line 2269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0c0453

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 2270
    .local v4, "cmargin":I
    if-eqz v4, :cond_14

    if-eqz v11, :cond_14

    .line 2271
    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 2272
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v16, v0

    sub-int v16, v16, v4

    move/from16 v0, v16

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2273
    iget-object v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2291
    .end local v4    # "cmargin":I
    .end local v7    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_14
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateLayout()V

    .line 2294
    sget-object v16, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v16, :cond_19

    sget-object v16, Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v16

    if-eqz v16, :cond_19

    .line 2295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    .line 2296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->dismiss()V

    .line 2297
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    goto/16 :goto_2

    .end local v13    # "stream":I
    :cond_15
    move/from16 v13, p1

    .line 2247
    goto/16 :goto_6

    .line 2255
    .restart local v13    # "stream":I
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->collapse()V

    goto/16 :goto_7

    .line 2278
    :cond_17
    const-string v16, "SecVolumePanel"

    const-string v17, "onShowVolumeChanged: Cover is opened"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    const/high16 v16, 0x8000000

    and-int v16, v16, p2

    if-nez v16, :cond_14

    .line 2280
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_18

    .line 2281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 2282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDivider:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 2287
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mBottomMarginView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 2288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mCollapseMarginView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 2284
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 2285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDivider:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 2303
    :cond_19
    const/4 v12, 0x1

    .line 2304
    .local v12, "show":Z
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mKnoxCustomVolumePanelDisabled:Z

    .line 2306
    const-string v16, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v17, "getVolumePanelEnabledState"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->createKnoxCPUriCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2310
    .local v5, "cr":Landroid/database/Cursor;
    const-string v16, "getVolumePanelEnabledState"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lcom/android/systemui/volume/SecVolumePanel;->getStringQueryFromKnoxCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2314
    .local v15, "volumeEnableState":Ljava/lang/String;
    if-eqz v15, :cond_1b

    const-string v16, "false"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 2315
    sget-boolean v16, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v16, :cond_1a

    .line 2316
    const-string v16, "SecVolumePanel"

    const-string v17, "Knox Customization: Not showing volume dialog"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    :cond_1a
    const/4 v12, 0x0

    .line 2318
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/volume/SecVolumePanel;->mKnoxCustomVolumePanelDisabled:Z

    .line 2322
    :cond_1b
    if-eqz v12, :cond_1d

    .line 2324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->show()V

    .line 2325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mCallback:Lcom/android/systemui/volume/SecVolumePanel$Callback;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1c

    .line 2326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mCallback:Lcom/android/systemui/volume/SecVolumePanel$Callback;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Lcom/android/systemui/volume/SecVolumePanel$Callback;->onVisible(Z)V

    .line 2328
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->announceDialogShown()V

    .line 2334
    .end local v5    # "cr":Landroid/database/Cursor;
    .end local v12    # "show":Z
    .end local v13    # "stream":I
    .end local v15    # "volumeEnableState":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mUseCocktailFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/SecVolumePanel;->isSviewCoverOpened()Z

    move-result v16

    if-nez v16, :cond_1e

    if-eqz v11, :cond_1e

    iget v0, v11, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1e

    .line 2336
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui/volume/SecVolumePanel;->sendUpdateCocktailVolumePanel(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    .line 2340
    :cond_1e
    const/16 v16, -0xc8

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_1f

    and-int/lit8 v16, p2, 0x10

    if-eqz v16, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result v16

    if-eqz v16, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1f

    .line 2344
    const/16 v16, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    const-wide/16 v18, 0x12c

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2347
    :cond_1f
    sget-boolean v16, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v16, :cond_20

    const-string v16, "SecVolumePanel"

    const-string v17, "onShowVolumeChanged : call setStreamTypeForLogging"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    :cond_20
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/SecVolumePanel;->setStreamTypeForLogging(I)V

    .line 2349
    const-wide/16 v16, 0x3e8

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/volume/SecVolumePanel;->mValueForHwSwKey:J

    goto/16 :goto_2

    .line 2115
    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "visible"    # I

    .prologue
    const/4 v1, 0x1

    .line 2542
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    :cond_0
    if-ne p2, v1, :cond_2

    .line 2544
    .local v1, "isVisible":Z
    :goto_0
    sget-object v3, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 2545
    sget-object v3, Lcom/android/systemui/volume/SecVolumePanel;->STREAMS:[Lcom/android/systemui/volume/SecVolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 2546
    .local v2, "streamRes":Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    iget v3, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 2547
    iput-boolean v1, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamResources;->show:Z

    .line 2548
    if-nez v1, :cond_1

    iget v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 2549
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2554
    .end local v2    # "streamRes":Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 2543
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2544
    .restart local v0    # "i":I
    .restart local v1    # "isVisible":Z
    .restart local v2    # "streamRes":Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2542
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    .end local v2    # "streamRes":Lcom/android/systemui/volume/SecVolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected onStopSounds()V
    .locals 5

    .prologue
    .line 2467
    monitor-enter p0

    .line 2468
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 2469
    .local v1, "numStreamTypes":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2470
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 2471
    .local v2, "toneGen":Landroid/media/ToneGenerator;
    if-eqz v2, :cond_1

    .line 2472
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "SecVolumePanel"

    const-string v4, "SecVolumePanel onStopSounds"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :cond_0
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2469
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2476
    .end local v2    # "toneGen":Landroid/media/ToneGenerator;
    :cond_2
    monitor-exit p0

    .line 2477
    return-void

    .line 2476
    .end local v0    # "i":I
    .end local v1    # "numStreamTypes":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected onVibrate()V
    .locals 4

    .prologue
    .line 2482
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2487
    :goto_0
    return-void

    .line 2486
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x12c

    sget-object v1, Lcom/android/systemui/volume/SecVolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 9
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1976
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVolumeChanged(streamType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", flags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v3, :cond_1

    .line 1980
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/SecVolumePanel;->initCoverManager(Landroid/content/Context;)V

    .line 1981
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "SecVolumePanel"

    const-string v4, "onVolumeChanged():initCoverManager"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    :cond_1
    const/high16 v3, 0x2000000

    and-int/2addr v3, p2

    if-eqz v3, :cond_4

    .line 1987
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1988
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_2

    const-string v3, "SecVolumePanel"

    const-string v4, "onVolumeChanged updateStates"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateStates()V

    .line 2073
    :cond_3
    :goto_0
    return-void

    .line 1995
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1996
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11200bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1997
    .local v2, "useSlidingAnimation":Z
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_5

    const-string v3, "SecVolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVolumeChanged : useSlidingAnimation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    :cond_5
    if-eqz v2, :cond_7

    .line 1999
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_6

    const-string v3, "SecVolumePanel"

    const-string v4, "onVolumeChanged: Call setSeekbarSlidingAnimation(true)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/SecVolumePanel;->setSeekbarSlidingAnimation(Z)V

    .line 2006
    .end local v2    # "useSlidingAnimation":Z
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 2007
    .local v1, "sc_voice":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    if-eqz v1, :cond_9

    .line 2008
    if-nez p1, :cond_10

    .line 2009
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->phoneIsOffhook()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isExtraButtonOn()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2010
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_8

    const-string v3, "SecVolumePanel"

    const-string v4, "Call setMode(ProgressBar.MODE_WARNING)_#1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    :cond_8
    iget-object v3, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setMode(I)V

    .line 2033
    :cond_9
    :goto_1
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_b

    .line 2034
    monitor-enter p0

    .line 2038
    :try_start_0
    iget v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I

    if-eq v3, p1, :cond_a

    .line 2040
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 2042
    .local v0, "sc_music":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    const-string v3, "SecVolumePanel"

    const-string v4, "call sc_music.seekbarView.setMax(150)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    iget-object v3, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2046
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_14

    .line 2047
    const-string v3, "SecVolumePanel"

    const-string v4, "onVolumeChanged : call reorderSliders"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->reorderSliders(I)V

    .line 2054
    .end local v0    # "sc_music":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    :cond_a
    :goto_2
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 2055
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2058
    :cond_b
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mRingIsSilent:Z

    if-nez v3, :cond_c

    .line 2059
    invoke-virtual {p0, v8}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    .line 2060
    invoke-virtual {p0, v8, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2063
    :cond_c
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_d

    .line 2064
    invoke-virtual {p0, v8}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    .line 2065
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    .line 2066
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->onStopSounds()V

    .line 2069
    :cond_d
    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    .line 2070
    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/volume/SecVolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2071
    const-string v3, "SecVolumePanel"

    const-string v4, "onVolumeChanged : call resetTimeout()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->resetTimeout()V

    goto/16 :goto_0

    .line 2013
    :cond_e
    if-eqz v1, :cond_9

    .line 2014
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_f

    const-string v3, "SecVolumePanel"

    const-string v4, "Call setChangeSeekbarColor(false)_#2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    :cond_f
    iget-object v3, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setMode(I)V

    goto/16 :goto_1

    .line 2021
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->phoneIsOffhook()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->isExtraButtonOn()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2023
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_11

    const-string v3, "SecVolumePanel"

    const-string v4, "Call setMode(ProgressBar.MODE_WARNING)_#3"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    :cond_11
    iget-object v3, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setMode(I)V

    goto/16 :goto_1

    .line 2026
    :cond_12
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_13

    const-string v3, "SecVolumePanel"

    const-string v4, "Call setMode(ProgressBar.MODE_STANDARD)_#4"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_13
    iget-object v3, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v7}, Landroid/widget/SeekBar;->setMode(I)V

    goto/16 :goto_1

    .line 2050
    .restart local v0    # "sc_music":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    :cond_14
    :try_start_1
    const-string v3, "SecVolumePanel"

    const-string v4, "onVolumeChanged : call updateStates #2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumePanel;->updateStates()V

    goto/16 :goto_2

    .line 2055
    .end local v0    # "sc_music":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public postDismiss(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 1955
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->forceTimeout(J)V

    .line 1956
    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/16 v2, 0xb

    .line 1945
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v0, :cond_0

    .line 1946
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->initCoverManager(Landroid/content/Context;)V

    .line 1947
    sget-boolean v0, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "SecVolumePanel"

    const-string v1, "postDisplaySafeVolumeWarning():initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/SecVolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1952
    :goto_0
    return-void

    .line 1951
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 1918
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1922
    :goto_0
    return-void

    .line 1921
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postLayoutDirection(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    const/16 v1, 0xc

    .line 1959
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    .line 1960
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1961
    return-void
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1940
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->postMuteChanged(II)V

    .line 1941
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1925
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->postVolumeChanged(II)V

    .line 1926
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1929
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1937
    :goto_0
    return-void

    .line 1930
    :cond_0
    monitor-enter p0

    .line 1931
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1932
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->createSliders()V

    .line 1934
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1935
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    .line 1936
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1934
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1902
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1904
    return-void

    .line 1902
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(Landroid/media/session/MediaController;I)V
    .locals 2
    .param p1, "controller"    # Landroid/media/session/MediaController;
    .param p2, "flags"    # I

    .prologue
    const/16 v1, 0x8

    .line 1891
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1899
    :goto_0
    return-void

    .line 1892
    :cond_0
    monitor-enter p0

    .line 1893
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1894
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->createSliders()V

    .line 1896
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1897
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    .line 1898
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1896
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1881
    monitor-enter p0

    .line 1882
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 1883
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->createSliders()V

    .line 1885
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1886
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    .line 1887
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1888
    return-void

    .line 1885
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerCoverReceiver()V
    .locals 3

    .prologue
    .line 989
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 992
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 993
    const-string v1, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 994
    const-string v1, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 997
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 998
    return-void
.end method

.method public setCallback(Lcom/android/systemui/volume/SecVolumePanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/volume/SecVolumePanel$Callback;

    .prologue
    .line 1861
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumePanel;->mCallback:Lcom/android/systemui/volume/SecVolumePanel$Callback;

    .line 1862
    return-void
.end method

.method public setSeekbarSlidingAnimation(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 3231
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3232
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3233
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 3234
    .local v2, "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    sget-boolean v3, Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "SecVolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSeekbarSlidingAnimation(): Call sc.seekbarView.setSlidingAnimation: enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    :cond_0
    iget-object v3, v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, p1}, Landroid/widget/SeekBar;->setSlidingAnimation(Z)V

    .line 3232
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3237
    .end local v2    # "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    :cond_1
    return-void
.end method

.method public updateStates()V
    .locals 4

    .prologue
    .line 1872
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1873
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1874
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 1875
    .local v2, "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/SecVolumePanel;->updateSlider(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;)V

    .line 1873
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1877
    .end local v2    # "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel;->refreshMorebuttonTintColor()V

    .line 1878
    return-void
.end method
