.class public Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
.super Lcom/android/systemui/qs/QSTile;
.source "NetworkBoosterTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DB_NETWORK_BOOSTER_DIALOG_CHECKED:Ljava/lang/String; = "smart_bonding_notification_do_not_show"

.field private static final DB_NETWORK_BOOSTER_ON:Ljava/lang/String; = "smart_bonding"

.field private static final TAG:Ljava/lang/String; = "NetworkBoosterTile"

.field private static mRoamingState:Z

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAirpalneOn:Z

.field private mIsProcessing:Z

.field private mIsWfcRegistered:Z

.field private mNetWorkBoosterState:Z

.field private mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mNofiticationDialog:Landroid/app/AlertDialog;

.field private mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

.field private mWfcObserver:Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 8
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 79
    new-instance v0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mWfcObserver:Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;

    .line 87
    iput-object v7, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 91
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsWfcRegistered:Z

    .line 93
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    .line 97
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsProcessing:Z

    .line 278
    new-instance v0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$3;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContentResolver:Landroid/content/ContentResolver;

    .line 114
    new-instance v0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "airplane_mode_on"

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$1;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 136
    new-instance v0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "smart_bonding"

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$2;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 158
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lcom/android/systemui/qs/ToddlerModeSetting;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, v4, v5}, Lcom/android/systemui/qs/ToddlerModeSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    .line 160
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/ToddlerModeSetting;->setListening(Z)V

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->init()V

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z

    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    .line 170
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsWfcRegistered:Z

    if-eqz v0, :cond_1

    .line 173
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    if-eqz v0, :cond_4

    .line 174
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    .line 181
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    .line 182
    return-void

    :cond_2
    move v0, v2

    .line 165
    goto :goto_0

    :cond_3
    move v0, v2

    .line 166
    goto :goto_1

    .line 175
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isSimReady()Z

    move-result v0

    if-nez v0, :cond_5

    .line 176
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_2

    .line 178
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z

    if-eqz v0, :cond_6

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsProcessing:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getWfcMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsWfcRegistered:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsWfcRegistered:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->setMode(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isSimReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/NetworkBoosterTile;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getMode()I

    move-result v0

    return v0
.end method

.method private getBtnIdUnderNetworkStatus()I
    .locals 2

    .prologue
    .line 509
    const v0, 0x7f0d0411

    .line 510
    .local v0, "popupBtnId":I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 511
    const v0, 0x7f0d0408

    .line 518
    :cond_0
    :goto_0
    return v0

    .line 512
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 513
    const v0, 0x7f0d0407

    goto :goto_0

    .line 514
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 515
    const v0, 0x7f0d0406

    goto :goto_0
.end method

.method private getMode()I
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    return v0
.end method

.method private getTextIdUnderNetworkStatus()I
    .locals 2

    .prologue
    .line 494
    const v0, 0x7f0d040c

    .line 495
    .local v0, "popupMsgId":I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    const v0, 0x7f0d0405

    .line 505
    :cond_0
    :goto_0
    return v0

    .line 497
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 498
    const v0, 0x7f0d040b

    goto :goto_0

    .line 499
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 500
    const v0, 0x7f0d040a

    goto :goto_0

    .line 501
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    const v0, 0x7f0d0409

    goto :goto_0
.end method

.method private getWfcMode()Z
    .locals 2

    .prologue
    .line 610
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegister(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    move-result-object v0

    .line 611
    .local v0, "registerStatus":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;
    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v1, 0x7f0207b1

    .line 236
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 237
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 251
    :goto_0
    return-void

    .line 239
    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 241
    :pswitch_0
    const v0, 0x7f0207b2

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 244
    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 247
    :pswitch_2
    const v0, 0x7f0207b0

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 185
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 186
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mWfcObserver:Lcom/android/systemui/qs/tiles/NetworkBoosterTile$WfcObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 195
    :cond_0
    return-void
.end method

.method private static isMobileNetworkEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isRoaming(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 582
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 584
    .local v0, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mRoamingState:Z

    .line 585
    sget-boolean v1, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mRoamingState:Z

    return v1
.end method

.method private isSimReady()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 599
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 601
    .local v0, "SimState":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isMSim()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isMSim()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getReadySimCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 604
    :cond_1
    const/4 v1, 0x0

    .line 606
    :cond_2
    return v1
.end method

.method private static isWifiEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 573
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 574
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 575
    const-string v1, "SmartBonding"

    const-string v2, "Can\'t get WifiManager."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v1, 0x0

    .line 578
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsProcessing:Z

    .line 565
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 566
    return-void
.end method

.method private showNotificationDialog()V
    .locals 13

    .prologue
    const v11, 0x104000a

    const/16 v12, 0x7d8

    const/4 v4, 0x1

    .line 378
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 491
    :goto_0
    return-void

    .line 383
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isRoaming(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 386
    const v10, 0x7f0d0405

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 387
    const v10, 0x7f0d040d

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 389
    new-instance v10, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$4;

    invoke-direct {v10, p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$4;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V

    invoke-virtual {v0, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 450
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v10}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 452
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 454
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    new-instance v11, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$8;

    invoke-direct {v11, p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$8;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 473
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v10}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v5

    .line 474
    .local v5, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v5, :cond_1

    .line 475
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v3

    .line 476
    .local v3, "mIsKeyguardOn":Z
    if-eqz v3, :cond_6

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 478
    .local v4, "mIsKeyguardSecure":Z
    :goto_2
    if-eqz v3, :cond_8

    .line 479
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v10, :cond_7

    if-eqz v4, :cond_7

    .line 480
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/view/Window;->setType(I)V

    .line 490
    .end local v3    # "mIsKeyguardOn":Z
    .end local v4    # "mIsKeyguardSecure":Z
    :cond_1
    :goto_3
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 394
    .end local v5    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isSimReady()Z

    move-result v10

    if-nez v10, :cond_4

    .line 395
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->mUseUimCard:Z

    if-eqz v10, :cond_3

    .line 396
    const v10, 0x7f0d03da

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 400
    :goto_4
    const v10, 0x7f0d040f

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 402
    new-instance v10, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$5;

    invoke-direct {v10, p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$5;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;)V

    invoke-virtual {v0, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 398
    :cond_3
    const v10, 0x7f0d040e

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 408
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 409
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f0400de

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 411
    .local v6, "mNetworkBoosterAlertLayout":Landroid/view/View;
    const v10, 0x7f0e0431

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 412
    .local v7, "mNetworkBoosterAlertView":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getTextIdUnderNetworkStatus()I

    move-result v8

    .line 413
    .local v8, "msgResId":I
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 414
    .local v9, "msgResText":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v10

    if-ne v10, v4, :cond_5

    .line 415
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u200f"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 417
    :cond_5
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    const v10, 0x7f0e0432

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 421
    .local v2, "mDisableAlertCheckBox":Landroid/widget/CheckBox;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 423
    const v10, 0x7f0d0410

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getBtnIdUnderNetworkStatus()I

    move-result v10

    new-instance v11, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$6;

    invoke-direct {v11, p0, v2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$6;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 434
    const/high16 v10, 0x1040000

    new-instance v11, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$7;

    invoke-direct {v11, p0, v2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile$7;-><init>(Lcom/android/systemui/qs/tiles/NetworkBoosterTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 476
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "mDisableAlertCheckBox":Landroid/widget/CheckBox;
    .end local v6    # "mNetworkBoosterAlertLayout":Landroid/view/View;
    .end local v7    # "mNetworkBoosterAlertView":Landroid/widget/TextView;
    .end local v8    # "msgResId":I
    .end local v9    # "msgResText":Ljava/lang/String;
    .restart local v3    # "mIsKeyguardOn":Z
    .restart local v5    # "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 483
    .restart local v4    # "mIsKeyguardSecure":Z
    :cond_7
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7d9

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_3

    .line 487
    :cond_8
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_3
.end method


# virtual methods
.method protected handleClick()V
    .locals 13

    .prologue
    .line 311
    const-string v9, "NetworkBoosterTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleClick : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "false"

    aput-object v9, v4, v8

    .line 314
    .local v4, "selectionArgsFalse":[Ljava/lang/String;
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "true"

    aput-object v9, v5, v8

    .line 315
    .local v5, "selectionArgsTrue":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const-string v9, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v10, "isSettingsChangesAllowed"

    invoke-static {v8, v9, v10, v4}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 317
    .local v2, "isSettingsChangesAllowed":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const-string v9, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v10, "isWifiEnabled"

    invoke-static {v8, v9, v10, v5}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 319
    .local v3, "isWifiAllowed":I
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const-string v9, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v10, "isCellularDataAllowed"

    invoke-static {v8, v9, v10, v4}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 321
    .local v1, "isCellularDataAllowed":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    const/4 v8, -0x1

    if-eq v3, v8, :cond_2

    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    .line 322
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-nez v1, :cond_2

    .line 323
    :cond_0
    const-string v8, "NetworkBoosterTile"

    const-string v9, "onClick(): NetworkBooster state change is not allowed"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    :goto_0
    return-void

    .line 328
    :cond_2
    iget-boolean v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsProcessing:Z

    if-eqz v8, :cond_3

    .line 329
    const-string v8, "NetworkBoosterTile"

    const-string v9, "onClick(): Processing..."

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d03e5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0383

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0383

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 335
    .local v6, "toastAirplaneText":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    if-eqz v8, :cond_4

    .line 336
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    sput-object v8, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    .line 337
    sget-object v8, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v8, v6}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 339
    sget-object v8, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 343
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->isSimReady()Z

    move-result v8

    if-nez v8, :cond_5

    .line 344
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->showNotificationDialog()V

    goto :goto_0

    .line 348
    :cond_5
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v8, :cond_6

    .line 349
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v8}, Lcom/android/systemui/qs/ToddlerModeSetting;->isActivated()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 350
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d03e5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d03a9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d03a9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 351
    .local v7, "toastToddlerText":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v8, v7}, Lcom/android/systemui/qs/ToddlerModeSetting;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    .end local v7    # "toastToddlerText":Ljava/lang/String;
    :cond_6
    iget-boolean v9, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_7

    const/4 v8, 0x1

    :goto_1
    if-eq v9, v8, :cond_1

    .line 357
    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->refreshState(Ljava/lang/Object;)V

    .line 358
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "smart_bonding_notification_do_not_show"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_8

    const/4 v0, 0x1

    .line 359
    .local v0, "do_not_show_again_checked":Z
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    if-nez v0, :cond_9

    .line 360
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->showNotificationDialog()V

    goto/16 :goto_0

    .line 356
    .end local v0    # "do_not_show_again_checked":Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    .line 358
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 362
    .restart local v0    # "do_not_show_again_checked":Z
    :cond_9
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v8, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v8, v8, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_a

    const/4 v8, 0x1

    :goto_3
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->setMode(I)V

    goto/16 :goto_0

    :cond_a
    const/4 v8, 0x0

    goto :goto_3
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 202
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/ToddlerModeSetting;->setListening(Z)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    return-void
.end method

.method public handleLongClick()V
    .locals 9

    .prologue
    const v8, 0x7f0d03a9

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 528
    const-string v4, "NetworkBoosterTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleLongClick : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    new-array v1, v7, [Ljava/lang/String;

    const-string v3, "true"

    aput-object v3, v1, v6

    .line 531
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 533
    .local v0, "isSettingsChangesAllowed":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 534
    if-nez v0, :cond_0

    .line 535
    const-string v3, "NetworkBoosterTile"

    const-string v4, "handleLongClick(): Setting Access is not allowed by EDM"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :goto_0
    return-void

    .line 541
    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportToddlerMode:Z

    if-eqz v3, :cond_1

    .line 542
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/ToddlerModeSetting;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 543
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, "toastToddlerText":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mSettingToddlerMode:Lcom/android/systemui/qs/ToddlerModeSetting;

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/ToddlerModeSetting;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 549
    .end local v2    # "toastToddlerText":Ljava/lang/String;
    :cond_1
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$SmartBondingSettingsActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->handleLongClick()V

    .line 524
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0d03a8

    .line 210
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 211
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 212
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 213
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 214
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 215
    packed-switch v0, :pswitch_data_0

    .line 233
    :goto_1
    return-void

    .line 210
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 217
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f0d0384

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 222
    :pswitch_1
    const v1, 0x7f0d0385

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 227
    :pswitch_2
    const v1, 0x7f0d0386

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 215
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
    .line 69
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 595
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public onDimClick()V
    .locals 7

    .prologue
    const v6, 0x7f0d03a2

    const/4 v5, 0x0

    .line 369
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "toastWfcText":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    .line 371
    sget-object v1, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 372
    sget-object v1, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 373
    return-void
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 307
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 590
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

    const-string v1, ",S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetWorkBoosterState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",A:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mIsAirpalneOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userSwitch(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    .line 555
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NetworkBoosterTile;->mNetworkBoosterSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    .line 556
    return-void
.end method
