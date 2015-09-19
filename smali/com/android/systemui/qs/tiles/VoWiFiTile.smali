.class public Lcom/android/systemui/qs/tiles/VoWiFiTile;
.super Lcom/android/systemui/qs/QSTile;
.source "VoWiFiTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/VoWiFiTile$1;,
        Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;,
        Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;,
        Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;
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
.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final TRANSITIONING_TO_OFF:I = 0x2

.field private static final TRANSITIONING_TO_ON:I = 0x3

.field private static final TW_TAG:Ljava/lang/String; = "VoWiFiTile"


# instance fields
.field private mIsProcessing:Z

.field private mIsWfcProvisioned:Z

.field private mWfcStateObserver:Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 38
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsProcessing:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsWfcProvisioned:Z

    .line 47
    new-instance v0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;-><init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mWfcStateObserver:Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->init()V

    .line 139
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/VoWiFiTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsWfcProvisioned:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/VoWiFiTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->enableWifi()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/VoWiFiTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsWfcProvisioned:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/systemui/qs/tiles/VoWiFiTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsProcessing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/VoWiFiTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->isWfcProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/VoWiFiTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->startSettingsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/VoWiFiTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->updateWfcState(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->startSettingsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/VoWiFiTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->queryWfcState()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private enableWifi()V
    .locals 3

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 252
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 257
    :cond_0
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mWfcStateObserver:Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 146
    new-instance v0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;-><init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;Lcom/android/systemui/qs/tiles/VoWiFiTile$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    const-string v0, "VoWiFiTile"

    const-string v1, "VoWiFi Quick Button initial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 246
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isWfcProvisioned()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 105
    .local v7, "isProvisioned":Ljava/lang/Boolean;
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oem.smartwifisupport.provider/wfc_is_provisioned"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 110
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 111
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 113
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private queryWfcState()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 120
    const/4 v7, 0x0

    .line 122
    .local v7, "state":I
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 127
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 130
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_1
    return v7
.end method

.method private updateWfcState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v3, 0x0

    .line 234
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 235
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "state"

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 237
    return-void

    .line 235
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 167
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClick : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v0, v2

    .line 170
    .local v0, "state":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsProcessing:Z

    if-eqz v1, :cond_1

    .line 171
    const-string v1, "VoWiFiTile"

    const-string v2, "onClick(): Processing..."

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_1
    return-void

    .end local v0    # "state":Z
    :cond_0
    move v0, v3

    .line 169
    goto :goto_0

    .line 174
    .restart local v0    # "state":Z
    :cond_1
    if-eqz v0, :cond_3

    .line 175
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsWfcProvisioned:Z

    if-nez v1, :cond_2

    .line 176
    new-instance v1, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;-><init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;Lcom/android/systemui/qs/tiles/VoWiFiTile$1;)V

    new-array v2, v2, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 179
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    const-string v1, "com.oem.smartwifi.WFC_AIR_PLANE_MODE"

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->startSettingsActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mIsProcessing:Z

    .line 185
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->updateWfcState(Z)V

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mWfcStateObserver:Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcStateObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 154
    return-void
.end method

.method protected handleLongClick()V
    .locals 3

    .prologue
    .line 195
    const-string v1, "VoWiFiTile"

    const-string v2, "handleLongClick()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :try_start_0
    const-string v1, "com.oem.smartwifi.WIFI_CALLING_SETTINGS"

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->startSettingsActivity(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "VoWiFiTile"

    const-string v2, "Cannot find WfcSettings!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->handleLongClick()V

    .line 191
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 205
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 206
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 207
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 208
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 211
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_1

    .line 212
    const v1, 0x7f02082f

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 226
    :goto_1
    return-void

    .line 205
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 214
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 216
    :pswitch_0
    const v1, 0x7f02080f

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 219
    :pswitch_1
    const v1, 0x7f02080e

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 222
    :pswitch_2
    const v1, 0x7f02080d

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 214
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
    .line 34
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 158
    return-void
.end method

.method public userSwitch(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 230
    return-void
.end method
