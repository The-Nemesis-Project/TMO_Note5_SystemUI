.class public Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardBottomAreaView.java"


# static fields
.field static final MODE_CAMERA_SHORTCUT:I = 0x1

.field static final MODE_MULTIPLE_SHORTCUT:I = 0x2

.field static final TAG:Ljava/lang/String; = "SecKeyguardBottomAreaView"

.field private static final USE_CIRCLE_EM_CALL:Z = true

.field private static final USE_DUMMY_CIRCLE_EM_CALL:Z


# instance fields
.field private final MSG_SHORTCUT_MESSAGE_RESET:I

.field private currentUserContext:Landroid/content/Context;

.field private mBouncerFrame:Landroid/view/View;

.field private mCMASTextView:Landroid/widget/TextView;

.field private mCameraImageView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIsHelpTextEnabled:Z

.field private mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mKidsModeEnabled:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMessageAreaMinWidth:I

.field private mMessageAreaStartMargin:I

.field private mPhoneImageView:Landroid/view/View;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

.field private mShortcutMode:I

.field private mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUseBackUp:Z

.field private mUseCenteredMessageArea:Z

.field private userInfo:Landroid/content/pm/UserInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v7, -0x2

    const/4 v3, 0x0

    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    iput v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    .line 66
    iput v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaStartMargin:I

    .line 68
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseBackUp:Z

    .line 69
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseCenteredMessageArea:Z

    .line 70
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mKidsModeEnabled:Z

    .line 76
    iput-boolean v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mIsHelpTextEnabled:Z

    .line 77
    iput-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->userInfo:Landroid/content/pm/UserInfo;

    .line 78
    iput-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->currentUserContext:Landroid/content/Context;

    .line 85
    const/16 v4, 0x8a3

    iput v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->MSG_SHORTCUT_MESSAGE_RESET:I

    .line 89
    new-instance v4, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v4, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView$2;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 126
    sget-object v4, Lcom/android/keyguard/R$styleable;->SecKeyguardBottomAreaView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v4, Lcom/android/keyguard/R$styleable;->SecKeyguardBottomAreaView_useBackUp:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseBackUp:Z

    .line 129
    sget v4, Lcom/android/keyguard/R$styleable;->SecKeyguardBottomAreaView_useCenteredMessageArea:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseCenteredMessageArea:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    const-string v4, "SecKeyguardBottomAreaView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUseBackUp= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseBackUp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mUseCenteredMessageArea= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseCenteredMessageArea:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "set_shortcuts_mode"

    invoke-static {v4, v5, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutMode:I

    .line 142
    const-string v4, "SecKeyguardBottomAreaView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shortcut value[0-off / 1-camera] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "kids_home_mode"

    invoke-static {v4, v5, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mKidsModeEnabled:Z

    .line 146
    const-string v2, "SecKeyguardBottomAreaView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mKidsModeEnabled= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mKidsModeEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->userInfo:Landroid/content/pm/UserInfo;

    .line 149
    const-string v2, "android"

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->userInfo:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->currentUserContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    :goto_1
    return-void

    .line 132
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    :cond_0
    move v2, v3

    .line 144
    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->currentUserContext:Landroid/content/Context;

    .line 153
    const-string v2, "SecKeyguardBottomAreaView"

    const-string v3, "Couldn\'t create user context"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 155
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 156
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SecKeyguardBottomAreaView"

    const-string v3, "Couldn\'t get user info"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    return-object v0
.end method

.method private initCMASText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 467
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 471
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    const-string v0, "SecKeyguardBottomAreaView"

    const-string v1, "[SPR] Presidential Alert!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_spr:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$drawable;->ic_lockscreen_cmas:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 479
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->updateCMASText()V

    goto :goto_0

    .line 475
    :cond_2
    const-string v0, "SecKeyguardBottomAreaView"

    const-string v1, "[No SPR] Emergency Alert!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_vzw:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 481
    :cond_3
    const-string v0, "SecKeyguardBottomAreaView"

    const-string v1, "[No USA model] disable CMAS Text!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private isCallStateDisabled()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDataOnlyDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCameraAppExist(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 453
    const/4 v2, 0x0

    .line 454
    .local v2, "result":Z
    const/4 v1, 0x0

    .line 456
    .local v1, "existPkg":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.camera"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 460
    :goto_0
    if-eqz v1, :cond_0

    .line 461
    const/4 v2, 0x1

    .line 463
    :cond_0
    return v2

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private isCameraDisabledByDpm()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 434
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 436
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_1

    .line 438
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    iget v4, v7, Landroid/content/pm/UserInfo;->id:I

    .line 439
    .local v4, "userId":I
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 440
    .local v1, "disabledFlags":I
    and-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v6

    .line 443
    .local v0, "disabledBecauseKeyguardSecure":Z
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v5, v6

    .line 448
    .end local v0    # "disabledBecauseKeyguardSecure":Z
    .end local v1    # "disabledFlags":I
    .end local v4    # "userId":I
    :cond_1
    :goto_1
    return v5

    .restart local v1    # "disabledFlags":I
    .restart local v4    # "userId":I
    :cond_2
    move v0, v5

    .line 440
    goto :goto_0

    .line 444
    .end local v1    # "disabledFlags":I
    .end local v4    # "userId":I
    :catch_0
    move-exception v3

    .line 445
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "SecKeyguardBottomAreaView"

    const-string v7, "Can\'t get userId"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isLeftCallShortCutButton()Z
    .locals 1

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecure()Z
    .locals 3

    .prologue
    .line 414
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 415
    .local v0, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v1

    .line 416
    .local v1, "userHasTrust":Z
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isVerticalCenteredMessageArea()Z
    .locals 2

    .prologue
    .line 421
    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseCenteredMessageArea:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 422
    .local v0, "isAmericanoPINorPatternViewUSA":Z
    :goto_0
    return v0

    .line 421
    .end local v0    # "isAmericanoPINorPatternViewUSA":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCameraView()Landroid/view/View;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCameraImageView:Landroid/view/View;

    return-object v0
.end method

.method public getPhoneView()Landroid/view/View;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mPhoneImageView:Landroid/view/View;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 334
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 335
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getRootView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mBouncerFrame:Landroid/view/View;

    .line 341
    sget v3, Lcom/android/keyguard/R$id;->sec_keyguard_camera_circle:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    .line 342
    .local v0, "camera":Lcom/android/keyguard/sec/SecKeyguardCircleView;
    sget v3, Lcom/android/keyguard/R$id;->sec_keyguard_emergency_circle:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    .line 343
    .local v1, "emcall":Lcom/android/keyguard/sec/SecKeyguardCircleView;
    sget v3, Lcom/android/keyguard/R$id;->sec_gms_smart_lock_circle:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    .line 344
    .local v2, "trusted":Lcom/android/keyguard/sec/SecKeyguardCircleView;
    if-eqz v0, :cond_0

    .line 347
    new-array v4, v9, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mBouncerFrame:Landroid/view/View;

    aput-object v3, v4, v5

    aput-object v1, v4, v6

    if-eqz v2, :cond_4

    move-object v3, v2

    :goto_0
    aput-object v3, v4, v7

    sget v3, Lcom/android/keyguard/R$id;->sec_keyguard_unlock_view_help_text:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-virtual {v0, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setAnimatingViews([Landroid/view/View;)V

    .line 350
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setMessageHelper(Lcom/android/keyguard/KeyguardMessageArea$Helper;)V

    .line 351
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isVerticalCenteredMessageArea()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 352
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortcutReleaseMessage(Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 354
    :cond_0
    if-eqz v1, :cond_2

    .line 355
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isSecure()Z

    move-result v3

    if-nez v3, :cond_6

    .line 356
    :cond_1
    new-array v4, v9, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mBouncerFrame:Landroid/view/View;

    aput-object v3, v4, v5

    aput-object v0, v4, v6

    if-eqz v2, :cond_5

    move-object v3, v2

    :goto_1
    aput-object v3, v4, v7

    sget v3, Lcom/android/keyguard/R$id;->sec_keyguard_unlock_view_help_text:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-virtual {v1, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setAnimatingViews([Landroid/view/View;)V

    .line 363
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setMessageHelper(Lcom/android/keyguard/KeyguardMessageArea$Helper;)V

    .line 364
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isVerticalCenteredMessageArea()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 365
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortcutReleaseMessage(Landroid/widget/TextView;Landroid/os/Handler;)V

    .line 367
    :cond_2
    if-eqz v2, :cond_3

    .line 368
    new-array v3, v8, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mBouncerFrame:Landroid/view/View;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setAnimatingViews([Landroid/view/View;)V

    .line 369
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setMessageHelper(Lcom/android/keyguard/KeyguardMessageArea$Helper;)V

    .line 372
    :cond_3
    return-void

    .line 347
    :cond_4
    sget v3, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_0

    .line 356
    :cond_5
    sget v3, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 361
    :cond_6
    new-array v3, v8, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mBouncerFrame:Landroid/view/View;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    aput-object v2, v3, v7

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setAnimatingViews([Landroid/view/View;)V

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 391
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 392
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 393
    return-void
.end method

.method protected onFinishInflate()V
    .locals 14

    .prologue
    const v13, 0x800003

    const/4 v12, -0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 163
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 164
    const/4 v1, 0x0

    .line 166
    .local v1, "disableSIM":Z
    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "unlock_text"

    invoke-static {v8, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v9, :cond_c

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "lock_show_info"

    invoke-static {v8, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v9, :cond_c

    move v2, v9

    .line 168
    .local v2, "getSettingOptionHelpTextEnabled":Z
    :goto_0
    if-eqz v2, :cond_d

    if-nez v1, :cond_d

    move v8, v9

    :goto_1
    iput-boolean v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mIsHelpTextEnabled:Z

    .line 169
    const-string v8, "SecKeyguardBottomAreaView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mIsHelpTextEnabled= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mIsHelpTextEnabled:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isSecure()Z

    move-result v3

    .line 172
    .local v3, "isSecure":Z
    sget v8, Lcom/android/keyguard/R$id;->textview_keyguard_cmas_message:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextView:Landroid/widget/TextView;

    .line 175
    const/4 v6, 0x0

    .line 177
    .local v6, "vStub":Landroid/view/ViewStub;
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isLeftCallShortCutButton()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 178
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isCallStateDisabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 179
    sget v8, Lcom/android/keyguard/R$id;->stub_emergency_circle:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "vStub":Landroid/view/ViewStub;
    check-cast v6, Landroid/view/ViewStub;

    .line 180
    .restart local v6    # "vStub":Landroid/view/ViewStub;
    if-eqz v6, :cond_0

    .line 181
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isVerticalCenteredMessageArea()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 185
    sget v8, Lcom/android/keyguard/R$id;->stub_secure_message_area_usa:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "vStub":Landroid/view/ViewStub;
    check-cast v6, Landroid/view/ViewStub;

    .line 186
    .restart local v6    # "vStub":Landroid/view/ViewStub;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 187
    sget v8, Lcom/android/keyguard/R$id;->textview_keyguard_release_message:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    .line 191
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 192
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 193
    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 194
    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    :cond_2
    :goto_3
    if-nez v3, :cond_4

    .line 212
    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 213
    sget v8, Lcom/android/keyguard/R$id;->stub_gms_smart_lock_circle:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "vStub":Landroid/view/ViewStub;
    check-cast v6, Landroid/view/ViewStub;

    .line 214
    .restart local v6    # "vStub":Landroid/view/ViewStub;
    if-eqz v6, :cond_4

    .line 215
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 218
    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isCallStateDisabled()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v8

    if-nez v8, :cond_4

    .line 219
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v10, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_trusted_shortcut_margin_left_without_phone_shortcut:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    .line 221
    .local v5, "startMarginNoPhoneShortcut":I
    invoke-virtual {v6}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 222
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 223
    invoke-virtual {v6, v4}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "startMarginNoPhoneShortcut":I
    :cond_4
    sget v8, Lcom/android/keyguard/R$id;->stub_carrier_text:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "vStub":Landroid/view/ViewStub;
    check-cast v6, Landroid/view/ViewStub;

    .line 232
    .restart local v6    # "vStub":Landroid/view/ViewStub;
    if-eqz v6, :cond_5

    .line 242
    :cond_5
    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v8, :cond_6

    .line 243
    iget v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutMode:I

    if-ne v8, v9, :cond_11

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 244
    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    const/16 v10, 0x11

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 251
    :cond_6
    :goto_4
    iget v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutMode:I

    if-ne v8, v9, :cond_12

    iget-boolean v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mKidsModeEnabled:Z

    if-nez v8, :cond_12

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v8

    if-nez v8, :cond_12

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isCameraDisabledByDpm()Z

    move-result v8

    if-nez v8, :cond_12

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->hideCameraShortCutonLegacyModel()Z

    move-result v8

    if-nez v8, :cond_12

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_12

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->currentUserContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isCameraAppExist(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 257
    sget v8, Lcom/android/keyguard/R$id;->stub_camera_circle:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "vStub":Landroid/view/ViewStub;
    check-cast v6, Landroid/view/ViewStub;

    .line 258
    .restart local v6    # "vStub":Landroid/view/ViewStub;
    if-eqz v6, :cond_7

    .line 259
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 262
    :cond_7
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isCallStateDisabled()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportPhoneShortcutOnLDU()Z

    move-result v8

    if-nez v8, :cond_8

    .line 263
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/keyguard/R$dimen;->securityview_overlay_message_area_min_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    .line 265
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/keyguard/R$dimen;->keyguard_simpin_start_margin:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaStartMargin:I

    .line 267
    iget v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    if-eqz v8, :cond_8

    .line 268
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isVerticalCenteredMessageArea()Z

    move-result v8

    if-nez v8, :cond_8

    .line 269
    sget v8, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 270
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_8

    .line 271
    iget v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setMinimumWidth(I)V

    .line 272
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v0, v8, Landroid/util/DisplayMetrics;->density:F

    .line 273
    .local v0, "density":F
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 274
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const v8, 0x800005

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 275
    iget v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaStartMargin:I

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 276
    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    .end local v0    # "density":F
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "view":Landroid/view/View;
    :cond_8
    :goto_5
    iget-boolean v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mUseBackUp:Z

    if-eqz v8, :cond_9

    .line 311
    sget v8, Lcom/android/keyguard/R$id;->stub_keyguard_emergency_carrier_area:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "vStub":Landroid/view/ViewStub;
    check-cast v6, Landroid/view/ViewStub;

    .line 312
    .restart local v6    # "vStub":Landroid/view/ViewStub;
    if-eqz v6, :cond_9

    .line 313
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 317
    :cond_9
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSktModel()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v8

    if-nez v8, :cond_b

    .line 318
    :cond_a
    sget v8, Lcom/android/keyguard/R$id;->stub_skt_carrier_text:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "vStub":Landroid/view/ViewStub;
    check-cast v6, Landroid/view/ViewStub;

    .line 319
    .restart local v6    # "vStub":Landroid/view/ViewStub;
    if-eqz v6, :cond_b

    .line 320
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 324
    :cond_b
    sget v8, Lcom/android/keyguard/R$id;->camera_button:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCameraImageView:Landroid/view/View;

    .line 325
    sget v8, Lcom/android/keyguard/R$id;->emergency_button:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mPhoneImageView:Landroid/view/View;

    .line 327
    new-instance v8, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v8, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    .line 329
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->initCMASText()V

    .line 330
    return-void

    .end local v2    # "getSettingOptionHelpTextEnabled":Z
    .end local v3    # "isSecure":Z
    .end local v6    # "vStub":Landroid/view/ViewStub;
    :cond_c
    move v2, v10

    .line 166
    goto/16 :goto_0

    .restart local v2    # "getSettingOptionHelpTextEnabled":Z
    :cond_d
    move v8, v10

    .line 168
    goto/16 :goto_1

    .line 189
    .restart local v3    # "isSecure":Z
    .restart local v6    # "vStub":Landroid/view/ViewStub;
    :cond_e
    sget v8, Lcom/android/keyguard/R$id;->stub_secure_message_area:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "vStub":Landroid/view/ViewStub;
    check-cast v6, Landroid/view/ViewStub;

    .restart local v6    # "vStub":Landroid/view/ViewStub;
    goto/16 :goto_2

    .line 197
    :cond_f
    sget v8, Lcom/android/keyguard/R$id;->stub_message_area:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "vStub":Landroid/view/ViewStub;
    check-cast v6, Landroid/view/ViewStub;

    .line 198
    .restart local v6    # "vStub":Landroid/view/ViewStub;
    if-eqz v6, :cond_10

    .line 199
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 202
    :cond_10
    iget v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutMode:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 203
    sget v8, Lcom/android/keyguard/R$id;->stub_keyguard_shortcut_view:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "vStub":Landroid/view/ViewStub;
    check-cast v6, Landroid/view/ViewStub;

    .line 204
    .restart local v6    # "vStub":Landroid/view/ViewStub;
    if-eqz v6, :cond_2

    .line 205
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto/16 :goto_3

    .line 246
    :cond_11
    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_4

    .line 282
    :cond_12
    if-nez v3, :cond_13

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_13

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_13
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v8

    if-nez v8, :cond_8

    .line 284
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v10, Lcom/android/keyguard/R$dimen;->securityview_overlay_message_area_min_width:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    .line 286
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v10, Lcom/android/keyguard/R$dimen;->keyguard_simpin_start_margin:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaStartMargin:I

    .line 288
    iget v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    if-eqz v8, :cond_8

    .line 289
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isVerticalCenteredMessageArea()Z

    move-result v8

    if-nez v8, :cond_8

    .line 290
    sget v8, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 291
    .restart local v7    # "view":Landroid/view/View;
    if-eqz v7, :cond_8

    .line 292
    iget v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaMinWidth:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setMinimumWidth(I)V

    .line 293
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v0, v8, Landroid/util/DisplayMetrics;->density:F

    .line 294
    .restart local v0    # "density":F
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 295
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->isCallStateDisabled()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 296
    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 302
    :cond_14
    :goto_6
    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 298
    :cond_15
    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 299
    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 300
    iget v8, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaStartMargin:I

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_6
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 397
    sget v3, Lcom/android/keyguard/R$id;->sec_keyguard_camera_circle:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    .line 398
    .local v0, "camera":Lcom/android/keyguard/sec/SecKeyguardCircleView;
    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 401
    :cond_0
    sget v3, Lcom/android/keyguard/R$id;->sec_keyguard_emergency_circle:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardCircleView;

    .line 402
    .local v1, "emCall":Lcom/android/keyguard/sec/SecKeyguardCircleView;
    if-eqz v1, :cond_1

    .line 403
    invoke-virtual {v1, p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 405
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    sget v3, Lcom/android/keyguard/R$id;->sec_keyguard_shortcut_view:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/sec/KeyguardShortcutView;

    .line 407
    .local v2, "mShortcutView":Lcom/android/keyguard/sec/KeyguardShortcutView;
    if-eqz v2, :cond_2

    .line 408
    invoke-virtual {v2, p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 411
    .end local v2    # "mShortcutView":Lcom/android/keyguard/sec/KeyguardShortcutView;
    :cond_2
    return-void
.end method

.method public updateCMASText()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 487
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    const/4 v1, 0x0

    .line 490
    .local v1, "disableNoti":Z
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "set_shortcuts_phone"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v3, v4

    .line 494
    .local v3, "isPhoneShortcutOn":Z
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_show_notifications"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_3

    move v1, v4

    .line 500
    :goto_2
    const-string v4, "SecKeyguardBottomAreaView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disableNoti = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 502
    const-string v4, "SecKeyguardBottomAreaView"

    const-string v6, "updateCMASText( )"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingCMAS()Z

    move-result v4

    if-nez v4, :cond_4

    .line 504
    const-string v4, "SecKeyguardBottomAreaView"

    const-string v5, "updateCMASText( setVisibility = GONE )"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v3    # "isPhoneShortcutOn":Z
    :cond_2
    move v3, v5

    .line 490
    goto :goto_1

    .restart local v3    # "isPhoneShortcutOn":Z
    :cond_3
    move v1, v5

    .line 494
    goto :goto_2

    .line 496
    :catch_0
    move-exception v2

    .line 497
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "SecKeyguardBottomAreaView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCMASText() can not found setting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v1, 0x0

    goto :goto_2

    .line 507
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_4
    const-string v4, "SecKeyguardBottomAreaView"

    const-string v6, "updateCMASText( setVisibility = VISIBLE )"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 509
    .local v0, "cmasTextLp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 510
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mPhoneImageView:Landroid/view/View;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCameraImageView:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 511
    const/16 v4, 0x11

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 521
    :goto_3
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCMASTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 513
    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mPhoneImageView:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mCameraImageView:Landroid/view/View;

    if-nez v4, :cond_6

    .line 514
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_cmas_start_margin_for_center_align:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaStartMargin:I

    .line 518
    :goto_4
    const v4, 0x800003

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 519
    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaStartMargin:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_3

    .line 516
    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_cmas_start_margin:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/keyguard/sec/SecKeyguardBottomAreaView;->mMessageAreaStartMargin:I

    goto :goto_4
.end method
