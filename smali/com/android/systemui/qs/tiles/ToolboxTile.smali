.class public Lcom/android/systemui/qs/tiles/ToolboxTile;
.super Lcom/android/systemui/qs/QSTile;
.source "ToolboxTile.java"


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
.field private static final TW_TAG:Ljava/lang/String; = "ToolboxTile"


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsProcessing:Z

.field private mToolboxSettings:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 6
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v1, 0x1

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 36
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mIsProcessing:Z

    .line 40
    new-instance v2, Lcom/android/systemui/qs/tiles/ToolboxTile$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/ToolboxTile$1;-><init>(Lcom/android/systemui/qs/tiles/ToolboxTile;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    new-instance v2, Lcom/android/systemui/qs/tiles/ToolboxTile$2;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v5, "toolbox_onoff"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/systemui/qs/tiles/ToolboxTile$2;-><init>(Lcom/android/systemui/qs/tiles/ToolboxTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mToolboxSettings:Lcom/android/systemui/qs/SystemSetting;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mToolboxSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ToolboxTile;->getToolboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/ToolboxTile;->refreshState(Ljava/lang/Object;)V

    .line 83
    return-void

    .line 82
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/ToolboxTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ToolboxTile;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ToolboxTile;->getToolboxEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/ToolboxTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ToolboxTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/ToolboxTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/ToolboxTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ToolboxTile;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mIsProcessing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/ToolboxTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ToolboxTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/ToolboxTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private getToolboxEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    const-string v3, "ToolboxTile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getToolBoxStatus() : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mToolboxSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mToolboxSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 221
    goto :goto_0

    :cond_1
    move v1, v2

    .line 222
    goto :goto_1
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v1, 0x7f020817

    .line 198
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 199
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 213
    :goto_0
    return-void

    .line 201
    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 203
    :pswitch_0
    const v0, 0x7f020818

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 206
    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 209
    :pswitch_2
    const v0, 0x7f020816

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setToolboxEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 226
    const-string v0, "ToolboxTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setToolBoxEnabled : set to  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mToolboxSettings:Lcom/android/systemui/qs/SystemSetting;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 228
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doNext()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ToolboxTile;->removeEnabledScreenReaderValue()V

    .line 136
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/ToolboxTile;->refreshState(Ljava/lang/Object;)V

    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/ToolboxTile;->setToolboxEnabled(Z)V

    .line 138
    return-void
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method protected handleClick()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v5, 0x1

    .line 100
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    move v3, v5

    .line 101
    .local v3, "state":Z
    :goto_0
    const-string v4, "ToolboxTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleClick : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-array v2, v5, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v2, v6

    .line 104
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isSettingsChangesAllowed"

    invoke-static {v4, v6, v7, v2}, Lcom/android/systemui/qs/tiles/ToolboxTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 106
    .local v1, "isSettingsChangesAllowed":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider2/KioskMode"

    const-string v7, "isKioskModeEnabled"

    invoke-static {v4, v6, v7}, Lcom/android/systemui/qs/tiles/ToolboxTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, "isKioskModeEnabled":I
    if-eq v1, v9, :cond_2

    if-eq v0, v9, :cond_2

    .line 109
    if-eqz v1, :cond_0

    if-ne v0, v5, :cond_2

    .line 132
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isKioskModeEnabled":I
    .end local v1    # "isSettingsChangesAllowed":I
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .end local v3    # "state":Z
    :cond_1
    move v3, v6

    .line 100
    goto :goto_0

    .line 114
    .restart local v0    # "isKioskModeEnabled":I
    .restart local v1    # "isSettingsChangesAllowed":I
    .restart local v2    # "selectionArgs":[Ljava/lang/String;
    .restart local v3    # "state":Z
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mIsProcessing:Z

    if-eqz v4, :cond_3

    .line 115
    const-string v4, "ToolboxTile"

    const-string v5, "handleClick(): Processing..."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 119
    :cond_3
    if-eqz v3, :cond_5

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ToolboxTile;->isEnabledScreenReaderService()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 121
    const v4, 0x7f0d04d1

    const v5, 0x7f0d04d2

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/qs/tiles/ToolboxTile;->showTalkBackDisablePopup(II)V

    goto :goto_1

    .line 125
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->dismissKeyguard()V

    .line 126
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 129
    :cond_5
    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mIsProcessing:Z

    .line 130
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/ToolboxTile;->refreshState(Ljava/lang/Object;)V

    .line 131
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/ToolboxTile;->setToolboxEnabled(Z)V

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mToolboxSettings:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 91
    return-void
.end method

.method protected handleLongClick()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 151
    const-string v3, "ToolboxTile"

    const-string v4, "handleLongClick()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "true"

    aput-object v4, v2, v3

    .line 154
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/ToolboxTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, "isSettingsChangesAllowed":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider2/KioskMode"

    const-string v5, "isKioskModeEnabled"

    invoke-static {v3, v4, v5}, Lcom/android/systemui/qs/tiles/ToolboxTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 159
    .local v0, "isKioskModeEnabled":I
    if-eq v1, v6, :cond_1

    if-eq v0, v6, :cond_1

    .line 160
    if-eqz v1, :cond_0

    if-ne v0, v7, :cond_1

    .line 161
    :cond_0
    const-string v3, "ToolboxTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " handleLongClick: isSettingsChangesAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  isKioskModeEnabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_1
    const-string v3, "com.samsung.TOOLBOX_MENU"

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/ToolboxTile;->startSettingsActivity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ToolboxTile;->handleLongClick()V

    .line 147
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v4, 0x7f0d0384

    const v3, 0x7f0d03a3

    .line 173
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 174
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 175
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 176
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 177
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/ToolboxTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 178
    packed-switch v0, :pswitch_data_0

    .line 195
    :goto_1
    return-void

    .line 173
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 180
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/ToolboxTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 185
    :pswitch_1
    const v1, 0x7f0d0385

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/ToolboxTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 190
    :pswitch_2
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/ToolboxTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 178
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
    .line 32
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ToolboxTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ToolboxTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 65
    return-void
.end method

.method public userSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ToolboxTile;->mToolboxSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    .line 218
    return-void
.end method
