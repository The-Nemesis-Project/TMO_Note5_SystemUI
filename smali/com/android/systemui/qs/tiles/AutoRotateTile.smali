.class public Lcom/android/systemui/qs/tiles/AutoRotateTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AutoRotateTile.java"


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
.field private static final ACCELEROMETER_CURRENT_MODE:Ljava/lang/String; = "accelerometer_current_mode"

.field private static final ACCELEROMETER_MODE_ALL:I = 0x0

.field private static final ACCELEROMETER_MODE_GALLERY_VIDEOD:I = 0x1

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-AutoRotateTile"

.field private static mDiagnosticLogs:Z


# instance fields
.field private mAutoRotation:Z

.field private mCurrentRotateMode:I

.field private mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$MultiState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private mIconOffDim:Lcom/android/systemui/qs/QSTile$Icon;

.field private mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$MultiState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private mIconOnDim:Lcom/android/systemui/qs/QSTile$Icon;

.field private mIsDualLCD:Z

.field private mKeyboardHidden:I

.field private mListening:Z

.field private mMobileKeyboardCovered:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRotateOnOff:Z

.field private final mRotationSecondSetting:Lcom/android/systemui/qs/SystemSetting;

.field private final mRotationSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mSupportFolderType:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mDiagnosticLogs:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 8
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 70
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mSupportFolderType:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIsDualLCD:Z

    .line 82
    new-instance v1, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile$1;-><init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v1, :cond_0

    .line 113
    new-instance v1, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v4, 0x7f0203a1

    sget-object v5, Lcom/android/systemui/qs/QSTile$AnimType;->ALWAYS_ON:Lcom/android/systemui/qs/QSTile$AnimType;

    invoke-direct {v1, p0, v4, v5}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;ILcom/android/systemui/qs/QSTile$AnimType;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 114
    new-instance v1, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v4, 0x7f02039f

    sget-object v5, Lcom/android/systemui/qs/QSTile$AnimType;->ALWAYS_ON:Lcom/android/systemui/qs/QSTile$AnimType;

    invoke-direct {v1, p0, v4, v5}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;ILcom/android/systemui/qs/QSTile$AnimType;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 116
    const v1, 0x7f0203a2

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIconOnDim:Lcom/android/systemui/qs/QSTile$Icon;

    .line 117
    const v1, 0x7f0203a0

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIconOffDim:Lcom/android/systemui/qs/QSTile$Icon;

    .line 120
    :cond_0
    new-instance v1, Lcom/android/systemui/qs/tiles/AutoRotateTile$2;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "accelerometer_rotation"

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/AutoRotateTile$2;-><init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 128
    new-instance v1, Lcom/android/systemui/qs/tiles/AutoRotateTile$3;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "accelerometer_rotation_second"

    invoke-direct {v1, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/AutoRotateTile$3;-><init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSecondSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 136
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "com.sec.feature.folder_type"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mSupportFolderType:Z

    .line 137
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "com.sec.feature.dual_lcd"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIsDualLCD:Z

    .line 139
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSecondSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0, v7, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    .line 148
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 157
    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mDiagnosticLogs:Z

    .line 160
    return-void

    :cond_1
    move v2, v3

    .line 149
    goto :goto_0

    .line 152
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getCurrentMode()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mCurrentRotateMode:I

    .line 153
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotateOnOff:Z

    .line 154
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v4, :cond_4

    :cond_3
    :goto_2
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_1

    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotateOnOff:Z

    if-nez v4, :cond_3

    move v2, v3

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->isMobileKeyboardCovered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/AutoRotateTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/AutoRotateTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mSupportFolderType:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/AutoRotateTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->isFolderOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/AutoRotateTile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/AutoRotateTile;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->handleRotationValueChanged(I)V

    return-void
.end method

.method private getAutoRotation()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 356
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mSupportFolderType:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIsDualLCD:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->isFolderOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotationSecond()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    .line 358
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    .line 363
    :cond_0
    :goto_0
    return v1

    .line 362
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 363
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "accelerometer_rotation"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getAutoRotationSecond()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 391
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 392
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "accelerometer_rotation_second"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getCurrentMode()I
    .locals 4

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 427
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "accelerometer_current_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method private getQsAnimationIcon(Z)Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .locals 1
    .param p1, "mRotate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$MultiState;",
            ">.AnimationIcon;"
        }
    .end annotation

    .prologue
    .line 344
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIconOn:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 351
    .local v0, "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$MultiState;>.AnimationIcon;"
    :goto_0
    return-object v0

    .line 344
    .end local v0    # "icon":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<Lcom/android/systemui/qs/QSTile$MultiState;>.AnimationIcon;"
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIconOff:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    goto :goto_0
.end method

.method private handleRotationValueChanged(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    .line 369
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v2, :cond_1

    .line 370
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eqz v2, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    .line 382
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 370
    goto :goto_0

    .line 373
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 374
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    .line 379
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotateOnOff:Z

    goto :goto_1

    .line 376
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    .line 377
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v2, :cond_4

    :cond_3
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_3
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v1, 0x7f0207ef

    .line 319
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_3

    .line 320
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v0, :cond_2

    .line 321
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 322
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIconOnDim:Lcom/android/systemui/qs/QSTile$Icon;

    :goto_0
    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 338
    :goto_1
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mIconOffDim:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_0

    .line 324
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getQsAnimationIcon(Z)Lcom/android/systemui/qs/QSTile$AnimationIcon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1

    .line 327
    :cond_2
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 329
    :cond_3
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 331
    :pswitch_0
    const v0, 0x7f0207f0

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 334
    :pswitch_1
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isFolderOpen()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 385
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 386
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mKeyboardHidden:I

    .line 387
    iget v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mKeyboardHidden:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMobileKeyboardCovered()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 437
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 438
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mMobileKeyboardCovered:I

    .line 440
    iget v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mMobileKeyboardCovered:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendLogs()V
    .locals 5

    .prologue
    .line 448
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 449
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v3, "app_id"

    const-string v4, "com.android.systemui.statusbar.policy.quicksetting"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v3, "feature"

    const-string v4, "QS05"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/4 v2, 0x0

    .line 455
    .local v2, "isVideoRotate":Z
    const-string v3, "extra"

    const-string v4, "ALL"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 458
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const-string v3, "data"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 460
    const-string v3, "com.samsung.android.providers.context"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 462
    return-void
.end method

.method private setAutoRotation(Z)V
    .locals 1
    .param p1, "autorotate"    # Z

    .prologue
    .line 396
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    .line 398
    new-instance v0, Lcom/android/systemui/qs/tiles/AutoRotateTile$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile$4;-><init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 423
    return-void
.end method

.method private setCurrentMode(I)V
    .locals 3
    .param p1, "mRotateMode"    # I

    .prologue
    .line 431
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 432
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "accelerometer_current_mode"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 433
    iput p1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mCurrentRotateMode:I

    .line 434
    return-void
.end method


# virtual methods
.method protected handleClick()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 181
    const-string v9, "STATUSBAR-AutoRotateTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleClick : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v6, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v6, v6, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-array v2, v7, [Ljava/lang/String;

    const-string v6, "false"

    aput-object v6, v2, v8

    .line 184
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    const-string v9, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v10, "isSettingsChangesAllowed"

    invoke-static {v6, v9, v10, v2}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 186
    .local v0, "isSettingsChangesAllowed":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    .line 187
    if-nez v0, :cond_1

    .line 188
    const-string v6, "STATUSBAR-AutoRotateTile"

    const-string v7, "onClick(): Rotation state change is not allowed"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mMobileKeyboardCovered:I

    if-ne v6, v7, :cond_3

    .line 195
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v6, :cond_2

    const v6, 0x7f0d03b7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0d0576

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v4, v10, v8

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "msg":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    invoke-static {v6, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 199
    .local v5, "toast":Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 200
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 195
    .end local v1    # "msg":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "toast":Landroid/widget/Toast;
    :cond_2
    const v6, 0x7f0d0391

    goto :goto_1

    .line 204
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v6, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v6, v6, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v9, 0x3

    if-eq v6, v9, :cond_0

    .line 210
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v6, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v6, v6, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_5

    move v3, v7

    .line 211
    .local v3, "state":Z
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    .line 213
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v6, :cond_4

    .line 214
    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-nez v6, :cond_6

    move v6, v7

    :goto_3
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getQsAnimationIcon(Z)Lcom/android/systemui/qs/QSTile$AnimationIcon;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setAllowAnimation(Z)V

    .line 217
    :cond_4
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v6, :cond_7

    .line 218
    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eq v3, v6, :cond_0

    .line 219
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->setAutoRotation(Z)V

    goto :goto_0

    .end local v3    # "state":Z
    :cond_5
    move v3, v8

    .line 210
    goto :goto_2

    .restart local v3    # "state":Z
    :cond_6
    move v6, v8

    .line 214
    goto :goto_3

    .line 222
    :cond_7
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-nez v6, :cond_a

    .line 223
    :cond_8
    iget v6, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mCurrentRotateMode:I

    if-nez v6, :cond_b

    .line 224
    invoke-direct {p0, v7}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->setAutoRotation(Z)V

    .line 225
    const-string v6, "STATUSBAR-AutoRotateTile"

    const-string v8, "setAutoRotation set to true"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_4
    iput-boolean v7, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotateOnOff:Z

    goto/16 :goto_0

    .line 222
    :cond_9
    if-nez v3, :cond_8

    .line 233
    :cond_a
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->setAutoRotation(Z)V

    .line 234
    iput-boolean v8, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotateOnOff:Z

    .line 235
    const-string v6, "STATUSBAR-AutoRotateTile"

    const-string v7, "setGalleryVideoRotation set to false"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 228
    :cond_b
    const-string v6, "STATUSBAR-AutoRotateTile"

    const-string v8, "setGalleryVideoRotation set to true"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method protected handleDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSecondSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 177
    return-void
.end method

.method public handleLongClick()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 248
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->TAG:Ljava/lang/String;

    const-string v4, "handleLongClick "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "true"

    aput-object v4, v2, v3

    .line 252
    .local v2, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 255
    .local v0, "isSettingsChangesAllowed":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 256
    if-nez v0, :cond_1

    .line 257
    const-string v3, "STATUSBAR-AutoRotateTile"

    const-string v4, "handleLongClick: Setting access is not allowed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v3, :cond_4

    .line 263
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->CHAGALL:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->KLIMT:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->RUBENS:Z

    if-eqz v3, :cond_3

    .line 264
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 265
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$SmartScreenSettingsActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v3, "fromAccelerometer"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->startSettingsActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 277
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_3
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$DisplaySettingsActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_4
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSupportLongpressAutoRotate:Z

    if-eqz v3, :cond_0

    .line 282
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$DisplaySettingsActivity"

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0d0391

    .line 289
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 290
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 291
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 293
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v1, :cond_2

    .line 294
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0d03b6

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 298
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 299
    packed-switch v0, :pswitch_data_0

    .line 316
    :goto_3
    return-void

    .line 289
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 294
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :cond_1
    const v1, 0x7f0d03b5

    goto :goto_1

    .line 296
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto :goto_2

    .line 301
    :pswitch_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v1, :cond_4

    .line 302
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0d0392

    :goto_4
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const v1, 0x7f0d0393

    goto :goto_4

    .line 305
    :cond_4
    const v1, 0x7f0d0384

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_3

    .line 311
    :pswitch_1
    const v1, 0x7f0d0385

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_3

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 168
    return-void
.end method

.method public userSwitch(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    const/4 v0, 0x1

    .line 467
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    .line 468
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mRotationSecondSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/SystemSetting;->userSwitched(I)V

    .line 469
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    .line 475
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->getAutoRotation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    .line 473
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQsAnimationIcon:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z

    if-nez v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1
.end method
