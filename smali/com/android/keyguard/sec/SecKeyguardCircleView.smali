.class public Lcom/android/keyguard/sec/SecKeyguardCircleView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardCircleView.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;,
        Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SecKeyguardCircleView"

.field protected static mLock:Ljava/lang/Object;

.field protected static mWorkingSet:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;


# instance fields
.field private final MSG_SHORTCUT_MESSAGE_RESET:I

.field mAlphaAnim:Landroid/view/animation/Animation;

.field private mAnimatingViews:[Landroid/view/View;

.field protected mArrow:Landroid/widget/ImageView;

.field protected mArrowResId:I

.field private mCameraRotateonTablet:Z

.field protected mContentIcon:Landroid/widget/ImageView;

.field protected mContentResId:I

.field private mCurrentOrientation:F

.field private final mDisableRunnable:Ljava/lang/Runnable;

.field private final mEnableRunnable:Ljava/lang/Runnable;

.field private mHadFocus:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsLandscapeAvailable:Z

.field private mIsScreenOn:Z

.field protected mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field protected mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mOldConfig:Landroid/content/res/Configuration;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field protected mPowerManager:Landroid/os/PowerManager;

.field protected mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mScrollView:Landroid/widget/ScrollView;

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

.field protected mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

.field mShortcutResetCallback:Lcom/android/keyguard/sec/KeyguardPreviewContainer$ShortcutResetCallback;

.field protected mSurveyLogging:Z

.field private mToDegrees:F

.field protected mType:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->NONE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mWorkingSet:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    .line 61
    const/16 v0, 0x8a3

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->MSG_SHORTCUT_MESSAGE_RESET:I

    .line 67
    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScrollView:Landroid/widget/ScrollView;

    .line 70
    iput v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrowResId:I

    .line 71
    iput v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentResId:I

    .line 73
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsScreenOn:Z

    .line 76
    iput v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCurrentOrientation:F

    .line 77
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsLandscapeAvailable:Z

    .line 78
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCameraRotateonTablet:Z

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_arrow_animation_usa:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAlphaAnim:Landroid/view/animation/Animation;

    .line 93
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->OTHERS:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mType:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    .line 97
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 116
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutResetCallback:Lcom/android/keyguard/sec/KeyguardPreviewContainer$ShortcutResetCallback;

    .line 124
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHadFocus:Z

    .line 131
    iput v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mToDegrees:F

    .line 278
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mEnableRunnable:Ljava/lang/Runnable;

    .line 286
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView$5;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mDisableRunnable:Ljava/lang/Runnable;

    .line 359
    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOldConfig:Landroid/content/res/Configuration;

    .line 616
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSurveyLogging:Z

    .line 151
    new-instance v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCircleView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    .line 154
    invoke-static {p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getPreviewContainer()Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    .line 157
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSurveyLogging:Z

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Landroid/view/OrientationEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/SecKeyguardCircleView;Landroid/view/OrientationEventListener;)Landroid/view/OrientationEventListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleView;
    .param p1, "x1"    # Landroid/view/OrientationEventListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleView;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCameraRotateonTablet:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardCircleView;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsLandscapeAvailable:Z

    return v0
.end method

.method private createOrientationListener()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$7;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView$7;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 613
    :cond_0
    return-void
.end method

.method private varargs doTransition(F[Landroid/view/View;)V
    .locals 6
    .param p1, "to"    # F
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 546
    if-nez p2, :cond_1

    .line 569
    :cond_0
    return-void

    .line 550
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 551
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 552
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/keyguard/sec/SecKeyguardCircleView$6;

    invoke-direct {v5, p0, p1, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView$6;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;FLandroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 550
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isLandscapeLayoutAvailable()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 303
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->shouldEnableScreenRotation()Z

    move-result v0

    .line 304
    .local v0, "enableScreenRotation":Z
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "accelerometer_rotation"

    const/4 v7, -0x2

    invoke-static {v3, v6, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v1, v4

    .line 306
    .local v1, "isAutoRotation":Z
    :goto_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->shouldRotateCameraIcon()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 307
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 308
    .local v2, "rotation":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 309
    iput-boolean v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCameraRotateonTablet:Z

    .line 315
    .end local v2    # "rotation":I
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    move v3, v4

    :goto_2
    return v3

    .end local v1    # "isAutoRotation":Z
    :cond_0
    move v1, v5

    .line 304
    goto :goto_0

    .line 311
    .restart local v1    # "isAutoRotation":Z
    .restart local v2    # "rotation":I
    :cond_1
    iput-boolean v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCameraRotateonTablet:Z

    goto :goto_1

    .line 313
    .end local v2    # "rotation":I
    :cond_2
    iput-boolean v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCameraRotateonTablet:Z

    goto :goto_1

    :cond_3
    move v3, v5

    .line 315
    goto :goto_2
.end method

.method private onScreenTurnedOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 393
    const-string v0, "SecKeyguardCircleView"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsScreenOn:Z

    .line 395
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 398
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mDisableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 399
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mDisableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->startStopArrowAnimation(Z)V

    .line 404
    return-void
.end method

.method private onScreenTurnedOn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 379
    const-string v0, "SecKeyguardCircleView"

    const-string v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsScreenOn:Z

    .line 381
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->createOrientationListener()V

    .line 382
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 385
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mDisableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 386
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->startStopArrowAnimation(Z)V

    .line 390
    return-void
.end method

.method private shouldEnableScreenRotation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 298
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/android/keyguard/R$bool;->config_enableLockScreenRotation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private startStopArrowAnimation(Z)V
    .locals 3
    .param p1, "start"    # Z

    .prologue
    .line 420
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isRemoveCircleViewArrow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUSAShortCutVI()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 422
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAlphaAnim:Landroid/view/animation/Animation;

    if-nez v1, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAlphaAnim:Landroid/view/animation/Animation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 425
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAlphaAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 427
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 428
    .local v0, "anim":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 431
    if-eqz p1, :cond_3

    .line 432
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 434
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method


# virtual methods
.method protected checkWorkingSet(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 208
    sget-object v3, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 209
    :try_start_0
    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mWorkingSet:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sget-object v4, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->NONE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    if-ne v1, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mType:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sput-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mWorkingSet:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    .line 211
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mType:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sget-object v4, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->OTHERS:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    if-ne v1, v4, :cond_2

    .line 213
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->resetPreviewView()V

    .line 219
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mWorkingSet:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sget-object v4, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->NONE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    if-eq v1, v4, :cond_1

    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mWorkingSet:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mType:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    if-eq v1, v4, :cond_4

    .line 220
    :cond_1
    monitor-exit v3

    .line 232
    :goto_1
    return v0

    .line 215
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mType:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sget-object v5, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->CAMERA:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->setPreviewView(Z)V

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v1, v0

    .line 215
    goto :goto_2

    .line 222
    :cond_4
    :try_start_1
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mWorkingSet:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->NONE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    if-eq v0, v1, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 224
    :cond_5
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->NONE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mWorkingSet:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    .line 226
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    if-eqz v0, :cond_7

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mType:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->OTHERS:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    if-eq v0, v1, :cond_7

    .line 229
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 232
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected getShortcutReleasedTextResId()I
    .locals 1

    .prologue
    .line 171
    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_empty:I

    return v0
.end method

.method protected getShortcutTextResId()I
    .locals 1

    .prologue
    .line 167
    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_empty:I

    return v0
.end method

.method protected insertLog(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "shortcut"    # Ljava/lang/String;
    .param p2, "isSecure"    # Z

    .prologue
    const/4 v1, 0x1

    .line 618
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSurveyLogging:Z

    if-eqz v0, :cond_0

    .line 619
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 620
    .local v7, "contentValues":Landroid/content/ContentValues;
    const-string v0, "app_id"

    const-string v2, "com.android.systemui"

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v0, "feature"

    const-string v2, "LockscreenShortcut"

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v0, "extra"

    invoke-virtual {v7, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 625
    .local v8, "i":Landroid/content/Intent;
    const-string v0, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    const-string v0, "data"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 627
    const-string v0, "com.samsung.android.providers.context"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 632
    .end local v7    # "contentValues":Landroid/content/ContentValues;
    .end local v8    # "i":Landroid/content/Intent;
    :cond_0
    if-eqz p2, :cond_1

    .line 633
    const/4 v0, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start activity "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " started"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 640
    :cond_1
    return-void
.end method

.method protected isSecure()Z
    .locals 4

    .prologue
    .line 576
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 577
    .local v2, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    .line 578
    .local v0, "currentUserHasTrust":Z
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 580
    .local v1, "isSecure":Z
    :goto_0
    return v1

    .line 578
    .end local v1    # "isSecure":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 238
    const-string v0, "SecKeyguardCircleView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 242
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->isLandscapeLayoutAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsLandscapeAvailable:Z

    .line 244
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->createOrientationListener()V

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsScreenOn:Z

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mDisableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 362
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 363
    const-string v1, "SecKeyguardCircleView"

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/16 v0, 0x80

    .line 366
    .local v0, "diff":I
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOldConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 369
    :cond_0
    const-string v1, "SecKeyguardCircleView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newConfig diff : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOldConfig:Landroid/content/res/Configuration;

    .line 371
    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 376
    :goto_0
    return-void

    .line 375
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->startStopArrowAnimation(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mDisableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mDisableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->setShortcutResetCallback(Lcom/android/keyguard/sec/KeyguardPreviewContainer$ShortcutResetCallback;)V

    .line 268
    :cond_1
    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 269
    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    .line 270
    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAnimatingViews:[Landroid/view/View;

    .line 272
    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    .line 273
    iput-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 178
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    .line 180
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrowResId:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    .line 181
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentResId:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPowerManager:Landroid/os/PowerManager;

    .line 184
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 205
    return-void
.end method

.method public onUnlockExecuted()V
    .locals 4

    .prologue
    const/16 v3, 0x8a3

    .line 449
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->DEFAULT:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    .line 450
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    const-string v1, " "

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea$Helper;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    if-eqz v0, :cond_3

    .line 461
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mPreviewContainer:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutResetCallback:Lcom/android/keyguard/sec/KeyguardPreviewContainer$ShortcutResetCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->setShortcutResetCallback(Lcom/android/keyguard/sec/KeyguardPreviewContainer$ShortcutResetCallback;)V

    .line 462
    :cond_3
    return-void
.end method

.method public onUnlockViewPressed()V
    .locals 3

    .prologue
    const/16 v2, 0x8a3

    .line 466
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUSAShortCutVI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 467
    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->PRESSED:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    .line 468
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setArrowVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getShortcutTextResId()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingCMAS()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-nez v0, :cond_2

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getShortcutTextResId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea$Helper;->setShortcutMessage(I)V

    .line 473
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingCMAS()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-nez v0, :cond_4

    .line 474
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 477
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 478
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 481
    :cond_5
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAnimatingViews:[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->doTransition(F[Landroid/view/View;)V

    .line 482
    return-void
.end method

.method public onUnlockViewReleased()V
    .locals 3

    .prologue
    .line 486
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->DEFAULT:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    .line 487
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setArrowVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingCMAS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getShortcutReleasedTextResId()I

    move-result v0

    if-eqz v0, :cond_3

    .line 492
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getShortcutReleasedTextResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->removeShortcutReleaseMessage()V

    .line 497
    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;->setShortcutMessageLayout()V

    .line 503
    :cond_1
    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAnimatingViews:[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->doTransition(F[Landroid/view/View;)V

    .line 504
    return-void

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->getShortcutReleasedTextResId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea$Helper;->setMessage(IZ)V

    goto :goto_0

    .line 500
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;->removeShortcutMessage()V

    goto :goto_1
.end method

.method public onUnlockViewSwiped(Z)V
    .locals 1
    .param p1, "swiped"    # Z

    .prologue
    .line 508
    if-eqz p1, :cond_0

    .line 509
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->SWIPE:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    .line 513
    :goto_0
    return-void

    .line 511
    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->PRESSED:Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V

    goto :goto_0
.end method

.method public removeShortcutReleaseMessage()V
    .locals 4

    .prologue
    const/16 v1, 0x8a3

    .line 520
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 526
    :cond_1
    return-void
.end method

.method protected rotateIcon(I)V
    .locals 10
    .param p1, "currentOrientation"    # I

    .prologue
    const/high16 v9, 0x43870000    # 270.0f

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/high16 v7, 0x42b40000    # 90.0f

    .line 319
    iget v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCurrentOrientation:F

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    .line 323
    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCurrentOrientation:F

    .line 324
    .local v0, "fromDegrees":F
    int-to-float v3, p1

    .line 325
    .local v3, "toDegrees":F
    cmpl-float v5, v0, v8

    if-nez v5, :cond_4

    cmpl-float v5, v3, v9

    if-nez v5, :cond_4

    .line 326
    iget v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mToDegrees:F

    sub-float v3, v5, v7

    .line 334
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 335
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "cocktail_bar_enabled_180_rotate"

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v4, :cond_6

    move v2, v4

    .line 338
    .local v2, "rotate180Enabled":Z
    :goto_1
    if-ne v2, v4, :cond_1

    .line 340
    const/high16 v4, 0x43340000    # 180.0f

    div-float v4, v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    rem-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 341
    const/4 v3, 0x0

    .line 346
    .end local v2    # "rotate180Enabled":Z
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 347
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 352
    iput v3, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mToDegrees:F

    .line 355
    :cond_2
    int-to-float v4, p1

    iput v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCurrentOrientation:F

    .line 357
    .end local v0    # "fromDegrees":F
    .end local v3    # "toDegrees":F
    :cond_3
    return-void

    .line 327
    .restart local v0    # "fromDegrees":F
    .restart local v3    # "toDegrees":F
    :cond_4
    cmpl-float v5, v0, v9

    if-nez v5, :cond_5

    cmpl-float v5, v3, v8

    if-nez v5, :cond_5

    .line 328
    iget v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mToDegrees:F

    add-float v3, v5, v7

    goto :goto_0

    .line 329
    :cond_5
    cmpl-float v5, v0, v3

    if-eqz v5, :cond_0

    .line 330
    sub-float v5, v0, v3

    div-float/2addr v5, v7

    float-to-int v1, v5

    .line 331
    .local v1, "multiplier":I
    iget v5, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mToDegrees:F

    mul-int/lit8 v6, v1, 0x5a

    int-to-float v6, v6

    sub-float v3, v5, v6

    goto :goto_0

    .line 335
    .end local v1    # "multiplier":I
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public varargs setAnimatingViews([Landroid/view/View;)V
    .locals 0
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mAnimatingViews:[Landroid/view/View;

    .line 543
    return-void
.end method

.method protected setArrowVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 408
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isRemoveCircleViewArrow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    if-eqz p1, :cond_2

    .line 412
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->startStopArrowAnimation(Z)V

    .line 414
    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUSAShortCutVI()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHelpText()V
    .locals 0

    .prologue
    .line 517
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 539
    return-void
.end method

.method public setMessageHelper(Lcom/android/keyguard/KeyguardMessageArea$Helper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/keyguard/KeyguardMessageArea$Helper;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea$Helper;

    .line 573
    return-void
.end method

.method public setScrollView(Landroid/widget/ScrollView;)V
    .locals 0
    .param p1, "v"    # Landroid/widget/ScrollView;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mScrollView:Landroid/widget/ScrollView;

    .line 164
    return-void
.end method

.method public setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V
    .locals 0
    .param p1, "state"    # Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;

    .prologue
    .line 535
    return-void
.end method

.method public setShortcutReleaseMessage(Landroid/widget/TextView;Landroid/os/Handler;)V
    .locals 0
    .param p1, "message"    # Landroid/widget/TextView;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mShortcutReleaseMessageDisplay:Landroid/widget/TextView;

    .line 530
    iput-object p2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mHandler:Landroid/os/Handler;

    .line 531
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 445
    :cond_0
    return-void
.end method
