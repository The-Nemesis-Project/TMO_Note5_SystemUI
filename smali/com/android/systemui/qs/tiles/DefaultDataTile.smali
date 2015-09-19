.class public Lcom/android/systemui/qs/tiles/DefaultDataTile;
.super Lcom/android/systemui/qs/QSTile;
.source "DefaultDataTile.java"


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
.field private static final DB_MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field private static final DELAYREADY:I = 0x2

.field private static final MOBILE_DATA_WARNING_CHECKED:Ljava/lang/String; = "quickpanel_mobiledata_checked"

.field private static final NOTREADY:I = 0x1

.field private static final READY:I = 0x0

.field private static final SLOT1:I = 0x0

.field private static final SLOT2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DefaultDataTile"

.field private static final UNKNOWN:I = -0x1

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCurrentDataNW:I

.field private mDelayHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAirPlaneMode:Z

.field private mIsSwitchReady:Z

.field private mMobileData:Z

.field private final mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

.field private final mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 6
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z

    .line 74
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    .line 79
    iput-object v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 229
    new-instance v0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 292
    new-instance v0, Lcom/android/systemui/qs/tiles/DefaultDataTile$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile$5;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    .line 96
    new-instance v0, Lcom/android/systemui/qs/tiles/DefaultDataTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "mobile_data"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile$2;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    .line 104
    new-instance v0, Lcom/android/systemui/qs/tiles/DefaultDataTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "quickpanel_mobiledata_checked"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile$3;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->init()V

    .line 114
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/DefaultDataTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/DefaultDataTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->updateActivateStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getMobileData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    return p1
.end method

.method static synthetic access$508(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getDefaultDataReady()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getDefaultDataReady()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 395
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 396
    .local v0, "phoneId":I
    const-string v2, "DefaultDataTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultDataReady:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    if-nez v0, :cond_1

    .line 399
    const/4 v1, 0x0

    .line 403
    :cond_0
    :goto_0
    return v1

    .line 400
    :cond_1
    if-eq v0, v1, :cond_0

    .line 403
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getMobileData()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 369
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 370
    .local v0, "SimState":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isMSim()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 371
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_0

    .line 374
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v2

    .line 375
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 376
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    .line 381
    .local v1, "ret":Z
    :goto_0
    const-string v3, "DefaultDataTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMSim getMobileData() ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .end local v1    # "ret":Z
    .end local v2    # "subId":I
    :cond_0
    :goto_1
    return v1

    .line 378
    .restart local v2    # "subId":I
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v2

    .line 379
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v1

    .restart local v1    # "ret":Z
    goto :goto_0

    .line 385
    .end local v1    # "ret":Z
    .end local v2    # "subId":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SIM_CHECK"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 388
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    goto :goto_1
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f020802

    const v1, 0x7f020801

    .line 186
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 187
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    .line 227
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 192
    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 195
    :pswitch_2
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 196
    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_0

    .line 199
    :pswitch_3
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 200
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    .line 203
    :pswitch_4
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 204
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_0

    .line 208
    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 210
    :pswitch_5
    const v0, 0x7f0207a8

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 213
    :pswitch_6
    const v0, 0x7f0207a7

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 216
    :pswitch_7
    const v0, 0x7f0207a6

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 217
    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_0

    .line 220
    :pswitch_8
    const v0, 0x7f0207ab

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 223
    :pswitch_9
    const v0, 0x7f0207aa

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 208
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private isCallStatus()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 558
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_1

    .line 559
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    .line 560
    .local v0, "mCallState":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v1

    .line 561
    .local v1, "mCallState2":I
    const-string v4, "DefaultDataTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCallStatus slot1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " slot2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 569
    .end local v0    # "mCallState":I
    .end local v1    # "mCallState2":I
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private isSimReady()Z
    .locals 11

    .prologue
    const/16 v10, 0x7d8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 407
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 409
    .local v0, "SimState":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isMSim()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 410
    const-string v7, "DefaultDataTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isSimReady(): MSIM enabledsim # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getReadySimCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isMSim()Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v0, :cond_2

    if-eq v0, v5, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isMSim()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getReadySimCount()I

    move-result v7

    if-nez v7, :cond_6

    .line 416
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_5

    .line 417
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 418
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseUimCard:Z

    if-eqz v7, :cond_7

    .line 419
    const v7, 0x7f0d03d9

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 420
    const v7, 0x7f0d03da

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 425
    :goto_0
    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/qs/tiles/DefaultDataTile$6;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile$6;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 432
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 433
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 436
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/systemui/qs/tiles/DefaultDataTile$7;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile$7;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 444
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v4

    .line 445
    .local v4, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v4, :cond_4

    .line 446
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    .line 447
    .local v2, "mIsKeyguardOn":Z
    if-eqz v2, :cond_8

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_8

    move v3, v5

    .line 449
    .local v3, "mIsKeyguardSecure":Z
    :goto_1
    if-eqz v2, :cond_a

    .line 450
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v5, :cond_9

    if-eqz v3, :cond_9

    .line 451
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->setType(I)V

    .line 461
    .end local v2    # "mIsKeyguardOn":Z
    .end local v3    # "mIsKeyguardSecure":Z
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_5
    move v5, v6

    .line 465
    :cond_6
    return v5

    .line 422
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_7
    const v7, 0x7f0d03d7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 423
    const v7, 0x7f0d03d8

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .restart local v2    # "mIsKeyguardOn":Z
    .restart local v4    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_8
    move v3, v6

    .line 447
    goto :goto_1

    .line 454
    .restart local v3    # "mIsKeyguardSecure":Z
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v7, 0x7d9

    invoke-virtual {v5, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_2

    .line 458
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method

.method private setDataSlot(I)V
    .locals 3
    .param p1, "phoneIndex"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 497
    if-nez p1, :cond_1

    .line 498
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    if-ne p1, v1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    goto :goto_0
.end method

.method private updateActivateStatus()V
    .locals 6

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v0, 0x2

    .line 469
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getReadySimCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 470
    const-string v1, "DefaultDataTile"

    const-string v2, "No Sim is available"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    .line 494
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 476
    :cond_1
    iget v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    if-nez v2, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 481
    :cond_3
    const-string v3, "DefaultDataTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateActivateStatus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsDCGSCTC:Z

    if-eqz v3, :cond_4

    .line 483
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->hasSlotSwiching()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    if-ne v3, v2, :cond_4

    .line 484
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    .line 487
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    if-eqz v3, :cond_6

    .line 488
    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    if-nez v0, :cond_5

    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    .line 491
    :cond_6
    iget v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    if-nez v2, :cond_7

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_3
.end method


# virtual methods
.method public handleClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 315
    const-string v1, "DefaultDataTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleClick : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / mCurrentDataNW : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / current mMobileData : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v0, v5, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    .line 329
    sget-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    const v1, 0x7f0d03f8

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 330
    sget-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 335
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isSimReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getReadySimCount()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 337
    const-string v0, "DefaultDataTile"

    const-string v1, "Ready SIM # is only one!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isCallStatus()Z

    move-result v0

    if-nez v0, :cond_4

    .line 342
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    .line 343
    sget-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    const v1, 0x7f0d0209

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 344
    sget-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 348
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    .line 357
    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    .line 358
    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    if-le v0, v4, :cond_5

    .line 359
    iput v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    .line 361
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->updateActivateStatus()V

    .line 362
    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->setDataSlot(I)V

    .line 363
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_data"

    iget v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z

    goto/16 :goto_0
.end method

.method protected handleDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 507
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 511
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 512
    return-void
.end method

.method public handleLongClick()V
    .locals 4

    .prologue
    .line 522
    const-string v1, "DefaultDataTile"

    const-string v2, "handleLongClick "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v3, "isSettingsChangesAllowed"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 525
    .local v0, "isSettingsChangesAllowed":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 526
    if-nez v0, :cond_1

    .line 527
    const-string v1, "DefaultDataTile"

    const-string v2, "handleLongClick: Setting access is not allowed  by EDM"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 533
    const-string v1, "DefaultDataTile"

    const-string v2, "MobileData Long - disabled in Airplanemode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    .line 536
    sget-object v1, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    const v2, 0x7f0d03f8

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 537
    sget-object v1, Lcom/android/systemui/qs/tiles/DefaultDataTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 541
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isSimReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_3

    .line 543
    const-string v1, "com.samsung.settings.DATA_SLOT"

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->startSettingsActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_3
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.DataSlotChoice"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->handleLongClick()V

    .line 518
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 8
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v7, 0x7f0d0284

    const v6, 0x7f0d0283

    const v5, 0x7f0d0203

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 151
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 152
    .local v0, "value":I
    :goto_0
    const/4 v1, -0x1

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    .line 153
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 154
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 155
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0202

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 158
    packed-switch v0, :pswitch_data_0

    .line 183
    :goto_1
    return-void

    .line 151
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 160
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 165
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 170
    :pswitch_2
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 173
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 178
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 117
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getMobileData()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    .line 121
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 122
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "com.samsung.net.conn.SwitchDataNetworkDuringVoiceCall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "com.samsung.net.conn.SwitchDataNetworkDuringMMS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 139
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 142
    return-void

    .line 121
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 122
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 311
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userSwitch(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    const/4 v1, 0x0

    .line 574
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    .line 575
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobile:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    .line 576
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingMobileDataWarningCheck:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->userSwitched(I)V

    .line 577
    return-void
.end method
