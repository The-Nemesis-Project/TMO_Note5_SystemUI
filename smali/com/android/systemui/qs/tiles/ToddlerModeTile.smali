.class public Lcom/android/systemui/qs/tiles/ToddlerModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ToddlerModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DB_TODDLER_MODE:Ljava/lang/String; = "toddler_mode_switch"

.field private static final TAG:Ljava/lang/String; = "ToddlerModeTile"


# instance fields
.field private isAirPlaneMode:Z

.field private final mAirplaneModeSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mStateLocal:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 8
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 42
    iput-object v4, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 43
    iput-object v4, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 46
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mStateLocal:Z

    .line 84
    new-instance v0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/ToddlerModeTile$3;-><init>(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    new-instance v0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$1;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v7, "toddler_mode_switch"

    invoke-direct {v0, p0, v5, v6, v7}, Lcom/android/systemui/qs/tiles/ToddlerModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/ToddlerModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 59
    new-instance v0, Lcom/android/systemui/qs/tiles/ToddlerModeTile$2;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v7, "airplane_mode_on"

    invoke-direct {v0, p0, v5, v6, v7}, Lcom/android/systemui/qs/tiles/ToddlerModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/ToddlerModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mAirplaneModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mAirplaneModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->isAirPlaneMode:Z

    .line 72
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mStateLocal:Z

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->isAirPlaneMode:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x3

    :cond_1
    :goto_1
    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 78
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 82
    return-void

    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_2
    move v0, v2

    .line 71
    goto :goto_0

    .line 73
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mStateLocal:Z

    if-nez v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mStateLocal:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/ToddlerModeTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ToddlerModeTile;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mStateLocal:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/ToddlerModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ToddlerModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ToddlerModeTile;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->isAirPlaneMode:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/ToddlerModeTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ToddlerModeTile;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->isAirPlaneMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/ToddlerModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ToddlerModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/ToddlerModeTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ToddlerModeTile;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->setMode(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/ToddlerModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ToddlerModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private setMode(Z)V
    .locals 7
    .param p1, "mode"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 182
    const-string v5, "ToddlerModeTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setConnectivity : set to\t= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_0

    .line 188
    if-eqz p1, :cond_5

    .line 189
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 190
    .local v0, "mPreviousMobileDataState":Z
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "toddler_mode_data_state"

    if-eqz v0, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 199
    .end local v0    # "mPreviousMobileDataState":Z
    :cond_0
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_1

    .line 200
    if-eqz p1, :cond_9

    .line 201
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 202
    .local v1, "mPreviousWifiState":Z
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "toddler_mode_wifi_state"

    if-eqz v1, :cond_7

    move v2, v3

    :goto_4
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez p1, :cond_8

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 210
    .end local v1    # "mPreviousWifiState":Z
    :cond_1
    :goto_6
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    if-eqz p1, :cond_b

    :goto_7
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 211
    return-void

    :cond_2
    move v2, v4

    .line 182
    goto :goto_0

    .restart local v0    # "mPreviousMobileDataState":Z
    :cond_3
    move v2, v4

    .line 190
    goto :goto_1

    :cond_4
    move v2, v4

    .line 191
    goto :goto_2

    .line 194
    .end local v0    # "mPreviousMobileDataState":Z
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "toddler_mode_data_state"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_8
    invoke-virtual {v5, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_3

    :cond_6
    move v2, v4

    goto :goto_8

    .restart local v1    # "mPreviousWifiState":Z
    :cond_7
    move v2, v4

    .line 202
    goto :goto_4

    :cond_8
    move v2, v4

    .line 203
    goto :goto_5

    .line 206
    .end local v1    # "mPreviousWifiState":Z
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "toddler_mode_wifi_state"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_a

    move v2, v3

    :goto_9
    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_6

    :cond_a
    move v2, v4

    goto :goto_9

    :cond_b
    move v3, v4

    .line 210
    goto :goto_7
.end method

.method private showConfirmPopup(Z)V
    .locals 9
    .param p1, "state"    # Z

    .prologue
    const/16 v8, 0x7d8

    .line 214
    const/4 v3, 0x0

    .line 215
    .local v3, "theme":I
    const v4, 0x7f0d03a9

    .line 227
    .local v4, "titleText":I
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    if-eqz p1, :cond_1

    const v5, 0x7f0d03d5

    :goto_0
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/systemui/qs/tiles/ToddlerModeTile$5;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tiles/ToddlerModeTile$5;-><init>(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    new-instance v7, Lcom/android/systemui/qs/tiles/ToddlerModeTile$4;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tiles/ToddlerModeTile$4;-><init>(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 249
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/systemui/qs/tiles/ToddlerModeTile$6;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/ToddlerModeTile$6;-><init>(Lcom/android/systemui/qs/tiles/ToddlerModeTile;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 257
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v5}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 259
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v5}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    .line 260
    .local v2, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    .line 262
    .local v0, "mIsKeyguardOn":Z
    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    .line 264
    .local v1, "mIsKeyguardSecure":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 265
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v5, :cond_3

    if-eqz v1, :cond_3

    .line 266
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/Window;->setType(I)V

    .line 276
    .end local v0    # "mIsKeyguardOn":Z
    .end local v1    # "mIsKeyguardSecure":Z
    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 277
    return-void

    .line 227
    .end local v2    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_1
    const v5, 0x7f0d03d6

    goto :goto_0

    .line 262
    .restart local v0    # "mIsKeyguardOn":Z
    .restart local v2    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 269
    .restart local v1    # "mIsKeyguardSecure":Z
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_2

    .line 273
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method


# virtual methods
.method protected handleClick()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 107
    const-string v2, "ToddlerModeTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleClick : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$Host;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    const-string v0, "ToddlerModeTile"

    const-string v1, "Device is NOT Provisioned "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v0, v4, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->refreshState(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->showConfirmPopup(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 178
    return-void
.end method

.method public handleLongClick()V
    .locals 3

    .prologue
    .line 128
    const-string v1, "ToddlerModeTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLongClick : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$ToddlerModeSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0d03a9

    .line 134
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 135
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 136
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 137
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 140
    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_1
    return-void

    .line 134
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 142
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f0207d6

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 143
    const v1, 0x7f0d0384

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 148
    :pswitch_1
    const v1, 0x7f0207d5

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 149
    const v1, 0x7f0d0385

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 154
    :pswitch_2
    const v1, 0x7f0207d4

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 155
    const v1, 0x7f0d0386

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ToddlerModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 171
    :cond_0
    return-void
.end method
