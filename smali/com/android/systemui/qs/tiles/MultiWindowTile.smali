.class public Lcom/android/systemui/qs/tiles/MultiWindowTile;
.super Lcom/android/systemui/qs/QSTile;
.source "MultiWindowTile.java"


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
.field private static final DB_EASY_MODE_OFF:Ljava/lang/String; = "easy_mode_switch"

.field private static final DB_MULTI_WINDOW_MODE_ON:Ljava/lang/String; = "multi_window_enabled"

.field private static final TAG:Ljava/lang/String; = "MultiWindowTile"


# instance fields
.field private final MAX_TASKS:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingEM:Lcom/android/systemui/qs/SystemSetting;

.field private final mSettingMW:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 54
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->MAX_TASKS:I

    .line 157
    new-instance v0, Lcom/android/systemui/qs/tiles/MultiWindowTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/MultiWindowTile$3;-><init>(Lcom/android/systemui/qs/tiles/MultiWindowTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    new-instance v0, Lcom/android/systemui/qs/tiles/MultiWindowTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "multi_window_enabled"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/MultiWindowTile$1;-><init>(Lcom/android/systemui/qs/tiles/MultiWindowTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mSettingMW:Lcom/android/systemui/qs/SystemSetting;

    .line 82
    new-instance v0, Lcom/android/systemui/qs/tiles/MultiWindowTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "easy_mode_switch"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/MultiWindowTile$2;-><init>(Lcom/android/systemui/qs/tiles/MultiWindowTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mSettingEM:Lcom/android/systemui/qs/SystemSetting;

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->init()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/MultiWindowTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MultiWindowTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/MultiWindowTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MultiWindowTile;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->changeStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/MultiWindowTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MultiWindowTile;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/MultiWindowTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MultiWindowTile;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mSettingMW:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method private changeStatus()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 232
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mSettingEM:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 233
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->refreshState(Ljava/lang/Object;)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mSettingMW:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v1, 0x7f0207cd

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
    const v0, 0x7f0207ce

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 148
    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 151
    :pswitch_2
    const v0, 0x7f0207cc

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

.method private isPopupWindowActive()Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 240
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 241
    .local v1, "mgr":Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 242
    .local v2, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v2, :cond_0

    .line 243
    const-string v4, "MultiWindowTile"

    const-string v5, "runningTasks is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 251
    :goto_0
    return-object v4

    .line 246
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 247
    .local v3, "ti":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 248
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 251
    .end local v3    # "ti":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method private showConfirmPopup()V
    .locals 7

    .prologue
    const/16 v6, 0x7d8

    .line 255
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0399

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d04b4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/qs/tiles/MultiWindowTile$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/MultiWindowTile$5;-><init>(Lcom/android/systemui/qs/tiles/MultiWindowTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/systemui/qs/tiles/MultiWindowTile$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/MultiWindowTile$4;-><init>(Lcom/android/systemui/qs/tiles/MultiWindowTile;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 269
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 271
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    .line 272
    .local v2, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    .line 274
    .local v0, "mIsKeyguardOn":Z
    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 276
    .local v1, "mIsKeyguardSecure":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 277
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 278
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    .line 288
    .end local v0    # "mIsKeyguardOn":Z
    .end local v1    # "mIsKeyguardSecure":Z
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 289
    return-void

    .line 274
    .restart local v0    # "mIsKeyguardOn":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 281
    .restart local v1    # "mIsKeyguardSecure":Z
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    .line 285
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method


# virtual methods
.method public doNext()V
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->removeEnabledScreenReaderValue()V

    .line 223
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->refreshState(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mSettingMW:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 225
    return-void
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public handleClick()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 173
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    move v3, v5

    .line 174
    .local v3, "state":Z
    :goto_0
    const-string v7, "MultiWindowTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleClick : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-array v2, v5, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v2, v6

    .line 177
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v8, "isSettingsChangesAllowed"

    invoke-static {v4, v7, v8, v2}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 179
    .local v1, "isSettingsChangesAllowed":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider2/KioskMode"

    const-string v8, "isMultiWindowModeAllowed"

    invoke-static {v4, v7, v8, v2}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, "isMultiWindowModeAllowed":I
    if-eq v1, v9, :cond_3

    if-eq v0, v9, :cond_3

    .line 182
    if-eqz v1, :cond_0

    if-nez v0, :cond_3

    .line 183
    :cond_0
    const-string v4, "MultiWindowTile"

    const-string v5, "handleClick : Can\'t change the state of MW. Isn\'t allowed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    :goto_1
    return-void

    .end local v0    # "isMultiWindowModeAllowed":I
    .end local v1    # "isSettingsChangesAllowed":I
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .end local v3    # "state":Z
    :cond_2
    move v3, v6

    .line 173
    goto :goto_0

    .line 188
    .restart local v0    # "isMultiWindowModeAllowed":I
    .restart local v1    # "isSettingsChangesAllowed":I
    .restart local v2    # "selectionArgs":[Ljava/lang/String;
    .restart local v3    # "state":Z
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mSettingEM:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v4

    if-nez v4, :cond_4

    .line 189
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0d04b5

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 194
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v4, v10, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->isPopupWindowActive()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->showConfirmPopup()V

    goto :goto_1

    .line 202
    :cond_5
    if-eqz v3, :cond_6

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->isEnabledScreenReaderService()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 204
    const v4, 0x7f0d04c3

    const v5, 0x7f0d04c4

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->showTalkBackDisablePopup(II)V

    goto :goto_1

    .line 210
    :cond_6
    if-nez v3, :cond_7

    .line 211
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "multi_window_expanded"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 214
    :cond_7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->refreshState(Ljava/lang/Object;)V

    .line 215
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mSettingMW:Lcom/android/systemui/qs/SystemSetting;

    if-eqz v3, :cond_8

    :goto_2
    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 217
    if-eqz v3, :cond_1

    .line 218
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    goto :goto_1

    :cond_8
    move v5, v6

    .line 215
    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mSettingMW:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mSettingEM:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 106
    return-void
.end method

.method public handleLongClick()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 298
    const-string v4, "MultiWindowTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleLongClick : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "true"

    aput-object v3, v2, v7

    .line 302
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 304
    .local v1, "isSettingsChangesAllowed":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider2/KioskMode"

    const-string v5, "isMultiWindowModeAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 306
    .local v0, "isMultiWindowModeAllowed":I
    if-eq v1, v6, :cond_1

    if-eq v0, v6, :cond_1

    .line 307
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 308
    :cond_0
    const-string v3, "MultiWindowTile"

    const-string v4, "handleLongClick : Setting access Isn\'t allowed  by EDM"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_2013_SETTINGS_UI"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "settings_listui"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_3

    :cond_2
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->CHAGALL:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->KLIMT:Z

    if-eqz v3, :cond_4

    .line 315
    :cond_3
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$MultiWindowSettingsActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_4
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$DisplaySettingsActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->handleLongClick()V

    .line 294
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0d0399

    .line 115
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 117
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 119
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 122
    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_1
    return-void

    .line 115
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 124
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f0d0384

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 129
    :pswitch_1
    const v1, 0x7f0d0385

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 134
    :pswitch_2
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 122
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
    .line 50
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mContentResolver:Landroid/content/ContentResolver;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mSettingMW:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mSettingEM:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->changeStatus()V

    .line 99
    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MultiWindowTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 169
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
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
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mSettingMW:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile;->mSettingEM:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    .line 332
    return-void
.end method
