.class public Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
.super Ljava/lang/Object;
.source "CoverUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;,
        Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;
    }
.end annotation


# static fields
.field private static final MSG_BATTERY_LOW:I = 0x132

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field private static final MSG_CHANGE_COVER_BACKGROUND:I = 0x13a

.field private static final MSG_CONFIGURATION_CHANGED:I = 0x135

.field private static final MSG_CONTENT_CHANGED:I = 0x141

.field private static final MSG_COVER_APP_COVERED:I = 0x14b

.field private static final MSG_COVER_DELAYED_TIMEOUT:I = 0x149

.field private static final MSG_COVER_STATE_CHANGED:I = 0x13f

.field private static final MSG_DATE_FORMAT_CHANGED:I = 0x142

.field private static final MSG_DISASTER_VIEW_UPDATE:I = 0x137

.field private static final MSG_EMERGENCY_STATE_CHANGED:I = 0x140

.field private static final MSG_FLOATING_MSG_HIDED:I = 0x13c

.field private static final MSG_FLOATING_MSG_SHOWED:I = 0x13b

.field private static final MSG_FONT_THEME_CHANGED:I = 0x148

.field private static final MSG_HOME_CITY_CHANGED:I = 0x12f

.field private static final MSG_INSERT_SPEN:I = 0x139

.field private static final MSG_LOCALE_CHANGED:I = 0x134

.field private static final MSG_OPEN_THEME_CHANGED:I = 0x14a

.field private static final MSG_PACKAGE_ADDED:I = 0x146

.field private static final MSG_PACKAGE_CHANGED:I = 0x147

.field private static final MSG_PACKAGE_REMOVED:I = 0x145

.field private static final MSG_PICKUP_COMMON_DAY:I = 0x144

.field private static final MSG_PICKUP_FESTIVAL_DAY:I = 0x143

.field private static final MSG_POWERSAVING_MODE_CHANGED:I = 0x138

.field private static final MSG_POWER_CONNECTION_UPDATE:I = 0x133

.field private static final MSG_REMOTE_VIEW_UPDATED:I = 0x136

.field private static final MSG_SCREEN_TURNED_OFF:I = 0x131

.field private static final MSG_SCREEN_TURNED_ON:I = 0x130

.field private static final MSG_SERVICE_STATE_CHANGED:I = 0x14c

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field private static final MSG_USER_SWITCHED:I = 0x13e

.field private static final MSG_VOLUME_CHANGED:I = 0x13d

.field private static final TAG:Ljava/lang/String; = "CoverUpdateMonitor"

.field private static sInstance:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;


# instance fields
.field private mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCoverStateClone:Lcom/samsung/android/cover/CoverState;

.field private mCurrentThemePkgName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mInitiallyRegistContentUriList:[Landroid/net/Uri;

.field private mIsNetworkRoaming:Z

.field private final mRegisteredContentUriSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mStrIntentActionList:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 52
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mRegisteredContentUriSet:Ljava/util/HashSet;

    .line 53
    new-instance v7, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$1;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$1;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 68
    const/16 v7, 0x20

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "android.intent.action.TIME_TICK"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "android.intent.action.TIME_SET"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "android.intent.action.TIMEZONE_CHANGED"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "android.intent.action.DATE_CHANGED"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "android.intent.action.SCREEN_ON"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "android.intent.action.SCREEN_OFF"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string v9, "android.intent.action.BATTERY_LOW"

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "android.intent.action.ACTION_POWER_CONNECTED"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    const-string v9, "android.intent.action.ACTION_POWER_DISCONNECTED"

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string v9, "android.intent.action.LOCALE_CHANGED"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string v9, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    aput-object v9, v7, v8

    const/16 v8, 0xd

    const-string v9, "com.samsung.accessory.intent.action.DISASTER_SVIEW_COVER"

    aput-object v9, v7, v8

    const/16 v8, 0xe

    const-string v9, "android.settings.POWERSAVINGMODE_CHANGED"

    aput-object v9, v7, v8

    const/16 v8, 0xf

    const-string v9, "android.settings.POWERSAVING_MODE_SWITCH_CHANGED"

    aput-object v9, v7, v8

    const/16 v8, 0x10

    const-string v9, "com.samsung.pen.INSERT"

    aput-object v9, v7, v8

    const/16 v8, 0x11

    const-string v9, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    aput-object v9, v7, v8

    const/16 v8, 0x12

    const-string v9, "com.sec.android.sviewcover.CHANGE_MINI_COVER_BACKGROUND"

    aput-object v9, v7, v8

    const/16 v8, 0x13

    const-string v9, "com.bst.floatingmsg.quicktalkshow"

    aput-object v9, v7, v8

    const/16 v8, 0x14

    const-string v9, "com.bst.floatingmsg.quicktalkhide"

    aput-object v9, v7, v8

    const/16 v8, 0x15

    const-string v9, "android.media.VOLUME_CHANGED_ACTION"

    aput-object v9, v7, v8

    const/16 v8, 0x16

    const-string v9, "android.intent.action.USER_SWITCHED"

    aput-object v9, v7, v8

    const/16 v8, 0x17

    const-string v9, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    aput-object v9, v7, v8

    const/16 v8, 0x18

    const-string v9, "clock.date_format_changed"

    aput-object v9, v7, v8

    const/16 v8, 0x19

    const-string v9, "com.bst.action.PICKUP_FESTIVAL"

    aput-object v9, v7, v8

    const/16 v8, 0x1a

    const-string v9, "com.bst.action.PICKUP_COMMON"

    aput-object v9, v7, v8

    const/16 v8, 0x1b

    const-string v9, "dualclock.homecity_timezone"

    aput-object v9, v7, v8

    const/16 v8, 0x1c

    const-string v9, "com.samsung.cover.DELAYED_TIMEOUT"

    aput-object v9, v7, v8

    const/16 v8, 0x1d

    const-string v9, "FONT_THEME_CHANGED"

    aput-object v9, v7, v8

    const/16 v8, 0x1e

    const-string v9, "com.samsung.android.theme.themecenter.THEME_APPLY"

    aput-object v9, v7, v8

    const/16 v8, 0x1f

    const-string v9, "android.intent.action.SERVICE_STATE"

    aput-object v9, v7, v8

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mStrIntentActionList:[Ljava/lang/String;

    .line 88
    const/4 v7, 0x7

    new-array v7, v7, [Landroid/net/Uri;

    const/4 v8, 0x0

    const-string v9, "time_12_24"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "content://settings/system/date_format"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "dualclock_menu_settings"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "com.sec.android.cover.sviewcover.stylizedclock.STYLIZED_CLOCK_STYLE"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "torch_light"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "festival_effect_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "homecity_timezone"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mInitiallyRegistContentUriList:[Landroid/net/Uri;

    .line 132
    new-instance v7, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;

    invoke-direct {v7, p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$2;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 270
    new-instance v7, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;

    invoke-direct {v7, p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 505
    const-string v7, "CoverUI"

    const-string v8, "create CoverUpdateMonitor"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    .line 509
    new-instance v7, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/content/Intent;)V

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .line 510
    new-instance v7, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v7}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverStateClone:Lcom/samsung/android/cover/CoverState;

    .line 512
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 513
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mStrIntentActionList:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 514
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 517
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 519
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 520
    .local v5, "packageChangeFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    const-string v7, "package"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 525
    iget-object v7, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 527
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mInitiallyRegistContentUriList:[Landroid/net/Uri;

    .local v1, "arr$":[Landroid/net/Uri;
    array-length v4, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v6, v1, v2

    .line 528
    .local v6, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerContentObserver(Landroid/net/Uri;Z)V

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 530
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleDisasterViewUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePowerSavingModeChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleInsertSPen(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleChangeCoverBackground()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleFloatingMsgShowed()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleFloatingMsgHided()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleVolumeChanged()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleUserSwitched(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleEmergencyStateChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleBatteryUpdate(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleContentChanged(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleDateFormatChanged()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePickupFestivalDay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePickupCommonDay()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleHomeCityChanged()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePackageRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleThemeFontUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleCoverDelayedTimout(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleOpenThemeUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleCoverAppCovered(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleServiceStateChanged()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCurrentThemePkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCurrentThemePkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleBatteryLow()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handlePowerConnectionUpdate(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleLocaleChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleConfigurationChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .param p1, "x1"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->handleRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 498
    sget-object v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .line 501
    :cond_0
    sget-object v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    return-object v0
.end method

.method private handleBatteryLow()V
    .locals 5

    .prologue
    .line 752
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 753
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 754
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 755
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 756
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onBatteryLow()V

    .line 754
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 760
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 761
    return-void

    .line 760
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleBatteryUpdate(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 6
    .param p1, "status"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .prologue
    .line 654
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    invoke-static {v4, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->isBatteryUpdateInteresting(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 655
    .local v0, "batteryUpdateInteresting":Z
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .line 656
    if-eqz v0, :cond_2

    .line 657
    iget-object v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v5

    .line 658
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 659
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 660
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 661
    .local v1, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 662
    invoke-virtual {v1, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V

    .line 659
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 665
    .end local v1    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v5

    .line 667
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2
    return-void

    .line 665
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private handleChangeCoverBackground()V
    .locals 5

    .prologue
    .line 872
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 873
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 874
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 875
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 876
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onChangeCoverBackground()V

    .line 874
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 880
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 881
    return-void

    .line 880
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleConfigurationChanged()V
    .locals 5

    .prologue
    .line 797
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 798
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 799
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 800
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 801
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onConfigurationChanged()V

    .line 799
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 805
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 806
    return-void

    .line 805
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleContentChanged(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 977
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 978
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 979
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 980
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 981
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onContentChanged(Landroid/net/Uri;)V

    .line 979
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 985
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 986
    return-void

    .line 985
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleCoverAppCovered(Z)V
    .locals 5
    .param p1, "covered"    # Z

    .prologue
    .line 1054
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1055
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1056
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1057
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 1058
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1059
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onCoverAppCovered(Z)V

    .line 1056
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1062
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 1063
    return-void

    .line 1062
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleCoverDelayedTimout(I)V
    .locals 4
    .param p1, "seq"    # I

    .prologue
    .line 611
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 612
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 613
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 614
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onCoverDelayedTimout(I)V

    .line 612
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 618
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 5
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 947
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 948
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 949
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 950
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 951
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 952
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V

    .line 949
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 955
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 956
    return-void

    .line 955
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleDateFormatChanged()V
    .locals 5

    .prologue
    .line 992
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 993
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 994
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 995
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 996
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onDateFormatChanged()V

    .line 994
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1000
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 1001
    return-void

    .line 1000
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleDisasterViewUpdate(Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 827
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 828
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 829
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 830
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 831
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onDisasterViewUpdated(Ljava/lang/String;)V

    .line 829
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 835
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 836
    return-void

    .line 835
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleEmergencyStateChanged()V
    .locals 5

    .prologue
    .line 962
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 963
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 964
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 965
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 966
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onEmergencyStateChanged()V

    .line 964
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 970
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 971
    return-void

    .line 970
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleFloatingMsgHided()V
    .locals 5

    .prologue
    .line 902
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 903
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 904
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 905
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 906
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onFloatingMsgHided()V

    .line 904
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 910
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 911
    return-void

    .line 910
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleFloatingMsgShowed()V
    .locals 5

    .prologue
    .line 887
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 888
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 889
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 890
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 891
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onFloatingMsgShowed()V

    .line 889
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 895
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 896
    return-void

    .line 895
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleHomeCityChanged()V
    .locals 5

    .prologue
    .line 1039
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1040
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1041
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1042
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 1043
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onHomeCityChanged()V

    .line 1041
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1047
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 1048
    return-void

    .line 1047
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleInsertSPen(Z)V
    .locals 5
    .param p1, "penInserted"    # Z

    .prologue
    .line 857
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 858
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 859
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 860
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 861
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onInsertSPen(Z)V

    .line 859
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 865
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 866
    return-void

    .line 865
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleLocaleChanged()V
    .locals 5

    .prologue
    .line 782
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 783
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 784
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 785
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 786
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onLocaleChanged()V

    .line 784
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 790
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 791
    return-void

    .line 790
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleOpenThemeUpdate(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 640
    const-string v3, "CoverUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleOpenThemeUpdate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCurrentThemePkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 642
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 643
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 644
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onOpenThemeChanged(Ljava/lang/String;)V

    .line 642
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 648
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handlePackageAdded(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 690
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sec/android/cover/custom/MontblancCoverController;->onPackageUpdated(Landroid/content/Context;Ljava/lang/String;)V

    .line 692
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 693
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 694
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 695
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 696
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPackageAdded(Ljava/lang/String;)V

    .line 694
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 700
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 701
    return-void

    .line 700
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePackageChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 707
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 708
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 709
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 710
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 711
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPackageChanged(Ljava/lang/String;)V

    .line 709
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 715
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 716
    return-void

    .line 715
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePackageRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 673
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sec/android/cover/custom/MontblancCoverController;->onPackageUpdated(Landroid/content/Context;Ljava/lang/String;)V

    .line 675
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 676
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 677
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 678
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 679
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPackageRemoved(Ljava/lang/String;)V

    .line 677
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 683
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 684
    return-void

    .line 683
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePickupCommonDay()V
    .locals 5

    .prologue
    .line 1024
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1025
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1026
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1027
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 1028
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1029
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPickupCommonDay()V

    .line 1026
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1032
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 1033
    return-void

    .line 1032
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePickupFestivalDay(Ljava/lang/String;)V
    .locals 5
    .param p1, "festivalString"    # Ljava/lang/String;

    .prologue
    .line 1009
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1010
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1011
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1012
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 1013
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPickupFestivalDay(Ljava/lang/String;)V

    .line 1011
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1017
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 1018
    return-void

    .line 1017
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePowerConnectionUpdate(Z)V
    .locals 5
    .param p1, "connected"    # Z

    .prologue
    .line 767
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 768
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 769
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 770
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 771
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPowerConnectionUpdate(Z)V

    .line 769
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 775
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 776
    return-void

    .line 775
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handlePowerSavingModeChanged()V
    .locals 5

    .prologue
    .line 842
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 843
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 844
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 845
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 846
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 847
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onPowerSavingModeChanged()V

    .line 844
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 850
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 851
    return-void

    .line 850
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 5
    .param p1, "remoteViewInfo"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 812
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 813
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 814
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 815
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 816
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    .line 814
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 820
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 821
    return-void

    .line 820
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleScreenTurnedOff()V
    .locals 5

    .prologue
    .line 737
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 738
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 739
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 740
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 741
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onScreenTurnedOff()V

    .line 739
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 745
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 746
    return-void

    .line 745
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleScreenTurnedOn()V
    .locals 5

    .prologue
    .line 722
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 723
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 724
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 725
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 726
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 724
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 730
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 731
    return-void

    .line 730
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleServiceStateChanged()V
    .locals 6

    .prologue
    .line 1069
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v3

    .line 1071
    .local v3, "isNetworkRoaming":Z
    iget-boolean v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mIsNetworkRoaming:Z

    if-eq v4, v3, :cond_2

    .line 1072
    iput-boolean v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mIsNetworkRoaming:Z

    .line 1073
    iget-object v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1074
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1075
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1076
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 1077
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1078
    iget-boolean v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mIsNetworkRoaming:Z

    invoke-virtual {v0, v4}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onRoamingStateChanged(Z)V

    .line 1075
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1081
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v5

    .line 1083
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2
    return-void

    .line 1081
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private handleThemeFontUpdate(Ljava/lang/String;)V
    .locals 4
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 598
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 599
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 600
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 601
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onThemeFontChanged(Ljava/lang/String;)V

    .line 599
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 605
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleTimeUpdate()V
    .locals 5

    .prologue
    .line 624
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 625
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 626
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 627
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 628
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onTimeChanged()V

    .line 626
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 632
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 633
    return-void

    .line 632
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleUserSwitched(II)V
    .locals 5
    .param p1, "newUserId"    # I
    .param p2, "oldUserId"    # I

    .prologue
    .line 932
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 933
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 934
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 935
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 936
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 937
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onUserSwitched(II)V

    .line 934
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 940
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 941
    return-void

    .line 940
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleVolumeChanged()V
    .locals 5

    .prologue
    .line 917
    iget-object v4, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 918
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 919
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 920
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 921
    .local v0, "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onVolumeChanged()V

    .line 919
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 925
    .end local v0    # "cb":Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
    :cond_1
    monitor-exit v4

    .line 926
    return-void

    .line 925
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static isBatteryUpdateInteresting(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)Z
    .locals 7
    .param p0, "old"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;
    .param p1, "current"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1111
    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    .line 1112
    .local v0, "nowPluggedIn":Z
    invoke-virtual {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    .line 1113
    .local v2, "wasPluggedIn":Z
    if-ne v2, v3, :cond_1

    if-ne v0, v3, :cond_1

    iget v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

    iget v6, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

    if-eq v5, v6, :cond_1

    move v1, v3

    .line 1117
    .local v1, "stateChangedWhilePluggedIn":Z
    :goto_0
    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_2

    .line 1141
    :cond_0
    :goto_1
    return v3

    .end local v1    # "stateChangedWhilePluggedIn":Z
    :cond_1
    move v1, v4

    .line 1113
    goto :goto_0

    .line 1122
    .restart local v1    # "stateChangedWhilePluggedIn":Z
    :cond_2
    if-eqz v0, :cond_3

    iget v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    iget v6, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    .line 1127
    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    iget v6, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    .line 1132
    :cond_4
    iget v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    if-nez v5, :cond_5

    iget v5, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    if-nez v5, :cond_0

    .line 1137
    :cond_5
    iget v5, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->batteryOnline:I

    iget v6, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->batteryOnline:I

    if-ne v5, v6, :cond_0

    move v3, v4

    .line 1141
    goto :goto_1
.end method

.method private sendUpdates(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .prologue
    .line 579
    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onTimeChanged()V

    .line 580
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBatteryStatus:Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    invoke-virtual {p1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V

    .line 581
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverStateClone:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V

    .line 582
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCurrentThemePkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onOpenThemeChanged(Ljava/lang/String;)V

    .line 583
    iget-boolean v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mIsNetworkRoaming:Z

    invoke-virtual {p1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;->onRoamingStateChanged(Z)V

    .line 584
    return-void
.end method


# virtual methods
.method public notifyCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 9
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 1102
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, p1, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, p1, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v7, p1, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/cover/CoverState;-><init>(ZIIIIZI)V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverStateClone:Lcom/samsung/android/cover/CoverState;

    .line 1106
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13f

    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCoverStateClone:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1107
    .local v8, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1108
    return-void
.end method

.method public onCoverAppCovered(Z)V
    .locals 4
    .param p1, "covered"    # Z

    .prologue
    .line 587
    const-string v1, "CoverUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCoverAppCovered() covered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 589
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 590
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 591
    return-void

    .line 589
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onDestroy()V
    .locals 2

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 534
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 536
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mRegisteredContentUriSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    monitor-exit p0

    return-void

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .prologue
    .line 562
    const-string v1, "CoverUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** register callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 565
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 566
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 567
    const-string v1, "CoverUpdateMonitor"

    const-string v3, "Object tried to add another callback"

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Called by"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 568
    monitor-exit v2

    .line 575
    :goto_1
    return-void

    .line 565
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 574
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendUpdates(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    goto :goto_1

    .line 572
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized registerContentObserver(Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendents"    # Z

    .prologue
    .line 1092
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mRegisteredContentUriSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1099
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1096
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mRegisteredContentUriSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1097
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1092
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .prologue
    .line 545
    const-string v1, "CoverUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** unregister callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 547
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 548
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 547
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 552
    :cond_1
    monitor-exit v2

    .line 553
    return-void

    .line 552
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
