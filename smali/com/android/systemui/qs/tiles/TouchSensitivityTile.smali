.class public Lcom/android/systemui/qs/tiles/TouchSensitivityTile;
.super Lcom/android/systemui/qs/QSTile;
.source "TouchSensitivityTile.java"


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
.field private static final TW_TAG:Ljava/lang/String; = "TouchSensitivityTile"


# instance fields
.field private mTouchSensitivitySettings:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 42
    new-instance v1, Lcom/android/systemui/qs/tiles/TouchSensitivityTile$1;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v4, "auto_adjust_touch"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile$1;-><init>(Lcom/android/systemui/qs/tiles/TouchSensitivityTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->mTouchSensitivitySettings:Lcom/android/systemui/qs/SystemSetting;

    .line 50
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->mTouchSensitivitySettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->getTouchSensitivityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->refreshState(Ljava/lang/Object;)V

    .line 52
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/TouchSensitivityTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/TouchSensitivityTile;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->getTouchSensitivityEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/TouchSensitivityTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/TouchSensitivityTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private getTouchSensitivityEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 163
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->mTouchSensitivitySettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v1, 0x7f02081a

    .line 140
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 141
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 155
    :goto_0
    return-void

    .line 143
    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 145
    :pswitch_0
    const v0, 0x7f02081b

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 148
    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 151
    :pswitch_2
    const v0, 0x7f020819

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setTouchSensitivityEnabled(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->mTouchSensitivitySettings:Lcom/android/systemui/qs/SystemSetting;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 168
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 67
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    move v2, v4

    .line 68
    .local v2, "state":Z
    :goto_0
    const-string v3, "TouchSensitivityTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleClick : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-array v1, v4, [Ljava/lang/String;

    const-string v3, "false"

    aput-object v3, v1, v5

    .line 71
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isSettingsChangesAllowed"

    invoke-static {v3, v6, v7, v1}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, "isSettingsChangesAllowed":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 74
    if-nez v0, :cond_1

    .line 75
    const-string v3, "TouchSensitivityTile"

    const-string v4, "onClick(): TouchSensitivity state change is not allowed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_1
    return-void

    .end local v0    # "isSettingsChangesAllowed":I
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    .end local v2    # "state":Z
    :cond_0
    move v2, v5

    .line 67
    goto :goto_0

    .line 81
    .restart local v0    # "isSettingsChangesAllowed":I
    .restart local v1    # "selectionArgs":[Ljava/lang/String;
    .restart local v2    # "state":Z
    :cond_1
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->refreshState(Ljava/lang/Object;)V

    .line 82
    if-eqz v2, :cond_2

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->setTouchSensitivityEnabled(Z)V

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->mTouchSensitivitySettings:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 58
    return-void
.end method

.method protected handleLongClick()V
    .locals 6

    .prologue
    .line 93
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "true"

    aput-object v4, v2, v3

    .line 94
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 96
    .local v1, "isSettingsChangesAllowed":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 97
    if-nez v1, :cond_0

    .line 98
    const-string v3, "TouchSensitivityTile"

    const-string v4, "handleLongClick(): setting access  is not allowed by  EDM"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 104
    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_1

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const v3, 0x10008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->startSettingsActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 109
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v3, "TouchSensitivityTile"

    const-string v4, "handleLongClick(): No action"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->handleLongClick()V

    .line 88
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0d039e

    .line 115
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 118
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 120
    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_1
    return-void

    .line 115
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 122
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f0d0384

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 127
    :pswitch_1
    const v1, 0x7f0d0385

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 132
    :pswitch_2
    const v1, 0x7f0d0386

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 120
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
    .line 29
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 38
    return-void
.end method

.method public userSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/TouchSensitivityTile;->mTouchSensitivitySettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    .line 160
    return-void
.end method
