.class public Lcom/android/systemui/qs/tiles/PowerSavingTile;
.super Lcom/android/systemui/qs/QSTile;
.source "PowerSavingTile.java"


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
.field private static final DB_PSM_CHANGE_INTENT:Ljava/lang/String; = "com.samsung.settings.POWERSAVING_CHANGED"

.field private static final DB_PSM_SWITCH:Ljava/lang/String; = "psm_switch"

.field private static final PSM_ACTIVITY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PowerSavingTile"


# instance fields
.field private isRegistered:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIsPowerSavingOn:Z

.field private mIsWaitingForEcmExit:Z

.field private final mPowersavingObserver:Landroid/database/ContentObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mSupportBrowser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mZeroSettingConcept:Z

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings.Settings$GenericPowerSavingModeActivity"

    :goto_0
    sput-object v0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->PSM_ACTIVITY:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "com.android.settings.Settings$PowerSavingModeSettingsActivity"

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 81
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->isRegistered:Z

    .line 82
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mIsPowerSavingOn:Z

    .line 252
    new-instance v0, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/PowerSavingTile$2;-><init>(Lcom/android/systemui/qs/tiles/PowerSavingTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 392
    new-instance v0, Lcom/android/systemui/qs/tiles/PowerSavingTile$5;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/PowerSavingTile$5;-><init>(Lcom/android/systemui/qs/tiles/PowerSavingTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mPowersavingObserver:Landroid/database/ContentObserver;

    .line 89
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mZeroSettingConcept:Z

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContentResolver:Landroid/content/ContentResolver;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mPowersavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 106
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->init()V

    .line 108
    return-void

    .line 95
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tiles/PowerSavingTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "psm_switch"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/PowerSavingTile$1;-><init>(Lcom/android/systemui/qs/tiles/PowerSavingTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/PowerSavingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/PowerSavingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/PowerSavingTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/PowerSavingTile;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->PSM_ACTIVITY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/PowerSavingTile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/PowerSavingTile;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/PowerSavingTile;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/PowerSavingTile;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/PowerSavingTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/PowerSavingTile;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mIsPowerSavingOn:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/tiles/PowerSavingTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/PowerSavingTile;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mIsPowerSavingOn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/PowerSavingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/PowerSavingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private canEnablePowerSaving()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v9, -0x2

    const/4 v7, 0x0

    .line 350
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_cpu_clock"

    invoke-static {v5, v8, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 351
    .local v1, "cpu":I
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_display"

    invoke-static {v5, v8, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 353
    .local v2, "display":I
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_background_colour"

    invoke-static {v5, v8, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 355
    .local v0, "back":I
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_haptic_feedback"

    invoke-static {v5, v8, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 359
    .local v3, "haptic":I
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    move v4, v6

    .line 361
    .local v4, "retVal":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    const-string v8, "vibrator"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_VIBRATION_INTENSITY"

    invoke-virtual {v5, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 363
    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    move v4, v6

    .line 365
    :cond_0
    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mSupportBrowser:Z

    if-eqz v5, :cond_1

    .line 366
    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    move v4, v6

    .line 380
    :cond_1
    :goto_2
    return v4

    .end local v4    # "retVal":Z
    :cond_2
    move v4, v7

    .line 359
    goto :goto_0

    .restart local v4    # "retVal":Z
    :cond_3
    move v4, v7

    .line 363
    goto :goto_1

    :cond_4
    move v4, v7

    .line 366
    goto :goto_2
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v1, 0x7f0207e0

    .line 218
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 219
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 233
    :goto_0
    return-void

    .line 221
    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 223
    :pswitch_0
    const v0, 0x7f0207e1

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 226
    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 229
    :pswitch_2
    const v0, 0x7f0207df

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 281
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 283
    .local v1, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    return v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 265
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mZeroSettingConcept:Z

    if-eqz v4, :cond_2

    .line 266
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "low_power"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 268
    .local v0, "powerSaving":I
    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mIsPowerSavingOn:Z

    .line 269
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mIsPowerSavingOn:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 277
    .end local v0    # "powerSaving":I
    :goto_1
    return-void

    .restart local v0    # "powerSaving":I
    :cond_1
    move v2, v3

    .line 269
    goto :goto_0

    .line 271
    .end local v0    # "powerSaving":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    const-string v4, "com.android.browser"

    invoke-static {v1, v4}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mSupportBrowser:Z

    .line 273
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->setListening(Z)V

    .line 274
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 275
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method private setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 176
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 178
    .local v1, "mode":I
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mZeroSettingConcept:Z

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "low_power"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    :goto_1
    return-void

    .line 176
    .end local v1    # "mode":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 182
    .restart local v1    # "mode":I
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "from"

    const-string v3, "quickpanel"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1
.end method

.method private showConfirmPopup()V
    .locals 8

    .prologue
    const/16 v7, 0x7d8

    .line 301
    const/4 v3, 0x0

    .line 305
    .local v3, "theme":I
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x1040014

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d03d3

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/qs/tiles/PowerSavingTile$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/PowerSavingTile$4;-><init>(Lcom/android/systemui/qs/tiles/PowerSavingTile;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/systemui/qs/tiles/PowerSavingTile$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/PowerSavingTile$3;-><init>(Lcom/android/systemui/qs/tiles/PowerSavingTile;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 324
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 326
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v2

    .line 327
    .local v2, "mKeyguard":Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    .line 329
    .local v0, "mIsKeyguardOn":Z
    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 331
    .local v1, "mIsKeyguardSecure":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 332
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    .line 333
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->setType(I)V

    .line 343
    .end local v0    # "mIsKeyguardOn":Z
    .end local v1    # "mIsKeyguardSecure":Z
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 344
    return-void

    .line 329
    .restart local v0    # "mIsKeyguardOn":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 336
    .restart local v1    # "mIsKeyguardSecure":Z
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    .line 340
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method


# virtual methods
.method public handleClick()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 123
    const-string v5, "PowerSavingTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleClick : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v2, v7, :cond_0

    .line 151
    :goto_0
    return-void

    .line 128
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "false"

    aput-object v2, v1, v4

    .line 129
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isSettingsChangesAllowed"

    invoke-static {v2, v5, v6, v1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, "isSettingsChangesAllowed":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 132
    if-nez v0, :cond_1

    .line 133
    const-string v2, "PowerSavingTile"

    const-string v3, "onClick(): PowerSaving state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mZeroSettingConcept:Z

    if-eqz v2, :cond_3

    .line 140
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->refreshState(Ljava/lang/Object;)V

    .line 141
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mIsPowerSavingOn:Z

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    .line 143
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->canEnablePowerSaving()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->showConfirmPopup()V

    goto :goto_0

    .line 146
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->refreshState(Ljava/lang/Object;)V

    .line 147
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-nez v2, :cond_5

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 294
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->setListening(Z)V

    .line 295
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mZeroSettingConcept:Z

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 298
    :cond_0
    return-void
.end method

.method public handleLongClick()V
    .locals 5

    .prologue
    .line 160
    const-string v3, "PowerSavingTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleLongClick : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "true"

    aput-object v3, v1, v2

    .line 163
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 165
    .local v0, "isSettingsChangesAllowed":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 166
    if-nez v0, :cond_0

    .line 167
    const-string v2, "PowerSavingTile"

    const-string v3, "handleLongClick(): setting access is not allowed by EDM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string v2, "com.android.settings"

    sget-object v3, Lcom/android/systemui/qs/tiles/PowerSavingTile;->PSM_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->handleLongClick()V

    .line 156
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0d0395

    .line 192
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 193
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 195
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 196
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 198
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 199
    packed-switch v0, :pswitch_data_0

    .line 215
    :goto_1
    return-void

    .line 192
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 201
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f0d0384

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 206
    :pswitch_1
    const v1, 0x7f0d0385

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 211
    :pswitch_2
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 199
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
    .line 63
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/PowerSavingTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 236
    if-eqz p1, :cond_1

    .line 237
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 242
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->isRegistered:Z

    .line 250
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->isRegistered:Z

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->isRegistered:Z

    goto :goto_0
.end method

.method public userSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 386
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mZeroSettingConcept:Z

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerSavingTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    .line 389
    :cond_0
    return-void
.end method
