.class public Lcom/android/keyguard/sec/KeyguardUnlockView;
.super Landroid/widget/FrameLayout;
.source "KeyguardUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;
    }
.end annotation


# static fields
.field private static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final BOUNCER_FRAME_BACKGROUND_COLOR:I

.field private static final DEBUG:Z

.field private static final MAX_AWAKE_TIME:I = 0x7530

.field private static final MSG_CHANGE_TOUCH_EXPLORATION:I = 0x12f0

.field private static final MSG_SHOW_UNLOCK_INSTRUCTIONS:I = 0x12ef

.field private static final TAG:Ljava/lang/String; = "KeyguardUnlockView"


# instance fields
.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private mAttributionView:Landroid/view/View;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mBouncerFrameView:Landroid/view/View;

.field private mBouncerHelpText:Landroid/widget/TextView;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mEcaView:Landroid/view/View;

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

.field private mIsBouncing:Z

.field private mIsHelpTextEnabled:Z

.field private mIsKeyguardDismissing:Z

.field private mIsMultiTouch:Z

.field private mIsTouchExplorationEnabled:Z

.field private mIsWirelessCharging:Z

.field private mIsWirelessChargingAnimationEnabled:Z

.field private mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

.field private mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

.field private mLatestHelpText:Landroid/widget/TextView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResumedTimeMillis:J

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mSecurityMessageDisplayHelpText:Ljava/lang/String;

.field private mShortcutMessageDisplayHelpText:Ljava/lang/String;

.field private mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

.field private mTextChageHandler:Landroid/os/Handler;

.field private mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    .line 86
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x66ffffff

    :goto_0
    sput v0, Lcom/android/keyguard/sec/KeyguardUnlockView;->BOUNCER_FRAME_BACKGROUND_COLOR:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsBouncing:Z

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mResumedTimeMillis:J

    .line 89
    const/16 v2, 0x12c

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->FADE_IN_OUT_ANIMATION_DURATION:I

    .line 90
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 91
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 96
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mTextChageHandler:Landroid/os/Handler;

    .line 98
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    .line 102
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    .line 114
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsKeyguardDismissing:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsMultiTouch:Z

    .line 120
    new-instance v2, Lcom/android/keyguard/sec/KeyguardUnlockView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$1;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    .line 604
    new-instance v2, Lcom/android/keyguard/sec/KeyguardUnlockView$8;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$8;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    .line 633
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsWirelessCharging:Z

    .line 634
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isWirelessChargingAnimationEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsWirelessChargingAnimationEnabled:Z

    .line 636
    new-instance v2, Lcom/android/keyguard/sec/KeyguardUnlockView$9;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$9;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 148
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->setFocusable(Z)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->setFocusableInTouchMode(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->requestFocus()Z

    .line 154
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 155
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 157
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 158
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 160
    new-instance v2, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-static {p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    .line 163
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    .line 165
    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    if-nez v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "touch_exploration_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    .line 170
    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/KeyguardUnlockView$2;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/keyguard/sec/KeyguardUnlockView$2;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContentObserver:Landroid/database/ContentObserver;

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "touch_exploration_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 186
    return-void

    :cond_1
    move v0, v1

    .line 166
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardUnlockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->handleShowUnlockInstruction()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardUnlockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->handleChangeTouchExploration()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardUnlockView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardUnlockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsWirelessChargingAnimationEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardUnlockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsWirelessCharging:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/keyguard/sec/KeyguardUnlockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsWirelessCharging:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardUnlockView;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAttributionView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardUnlockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardUnlockView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardUnlockView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutMessageDisplayHelpText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mTextChageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dismissKeyguard()V
    .locals 2

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsKeyguardDismissing:Z

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsKeyguardDismissing:Z

    .line 317
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 319
    :cond_0
    return-void
.end method

.method private handleChangeTouchExploration()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x12ef

    const/4 v1, 0x1

    .line 469
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "touch_exploration_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    .line 472
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    if-eqz v0, :cond_5

    .line 473
    const-string v0, "KeyguardUnlockView"

    const-string v2, "[handleChangeTouchExploration]explore by touch mode on"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->checkWakeUpCommandCondition()Z

    .line 481
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->refreshDefaultHelpText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    .line 484
    :cond_1
    const-string v0, "KeyguardUnlockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleChangeTouchExploration] mKeyguardVoiceWrapper.refreshDefaultHelpText() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-nez v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 488
    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 489
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 490
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 491
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 493
    :cond_4
    return-void

    .line 475
    :cond_5
    const-string v0, "KeyguardUnlockView"

    const-string v2, "[handleChangeTouchExploration]explore by touch mode off"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleShowUnlockInstruction()V
    .locals 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    if-nez v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_unlock_guide_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    .line 464
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 466
    :cond_0
    return-void

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_unlock_guide_text_touch_exploration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    goto :goto_0
.end method

.method private pokeWakelockWithTimeCheck()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x4e20

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 386
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mResumedTimeMillis:J

    sub-long v0, v2, v4

    .line 388
    .local v0, "diff":J
    cmp-long v4, v0, v6

    if-gtz v4, :cond_1

    .line 389
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    const-wide/16 v4, 0x7530

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 391
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    goto :goto_0
.end method


# virtual methods
.method varargs doTransition(F[Landroid/view/View;)V
    .locals 5
    .param p1, "to"    # F
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 404
    if-nez p2, :cond_1

    .line 413
    :cond_0
    return-void

    .line 408
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

    .line 409
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 410
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 408
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 5
    .param p1, "duration"    # I

    .prologue
    const/4 v4, 0x0

    .line 444
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 445
    const-string v1, "KeyguardUnlockView"

    const-string v2, "hideBouncer mBouncerHelpText != null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "set_shortcuts_mode"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 451
    .local v0, "shortcutSetting":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setVisibility(I)V

    .line 454
    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mEcaView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v3, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 455
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsBouncing:Z

    .line 456
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 263
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->onDetachedFromWindow()V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->cleanUp()V

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 281
    return-void
.end method

.method protected onFinishInflate()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, "disableSIM":Z
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "unlock_text"

    invoke-static {v4, v7, v5, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lock_show_info"

    invoke-static {v4, v7, v5, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_7

    move v1, v5

    .line 194
    .local v1, "getSettingOptionHelpTextEnabled":Z
    :goto_0
    if-eqz v1, :cond_8

    if-nez v0, :cond_8

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    .line 195
    const-string v4, "KeyguardUnlockView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsHelpTextEnabled= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    .line 199
    sget v4, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    .line 200
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 201
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    sget v7, Lcom/android/keyguard/sec/KeyguardUnlockView;->BOUNCER_FRAME_BACKGROUND_COLOR:I

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 202
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 204
    :cond_0
    sget v4, Lcom/android/keyguard/R$id;->keyguard_unlock_bouncer_help_text:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    .line 205
    sget v4, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mEcaView:Landroid/view/View;

    .line 206
    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    if-eqz v4, :cond_1

    .line 207
    new-instance v4, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 210
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 211
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "easy_mode_switch"

    invoke-static {v4, v7, v5, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_9

    move v2, v6

    .line 215
    .local v2, "isEasyUxOn":Z
    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "wake_up_lock_screen"

    invoke-static {v4, v7, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_a

    move v3, v5

    .line 216
    .local v3, "isWakeUpOn":Z
    :goto_3
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 217
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    if-nez v4, :cond_3

    .line 218
    new-instance v4, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-direct {v4, v6, v7, v8}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;-><init>(Landroid/content/Context;Landroid/widget/TextView;Lcom/android/keyguard/KeyguardSecurityCallback;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    .line 222
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    if-eqz v4, :cond_b

    .line 223
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->onFinishInflate()V

    .line 224
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->checkWakeUpCommandCondition()Z

    .line 225
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->refreshDefaultHelpText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    .line 232
    :goto_4
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v4

    if-nez v4, :cond_4

    .line 233
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    invoke-interface {v4, v6, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 235
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->lockscreen_short_cut_guide_text:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutMessageDisplayHelpText:Ljava/lang/String;

    .line 236
    sget v4, Lcom/android/keyguard/R$id;->sec_keyguard_shortcut_view:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/sec/KeyguardShortcutView;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    .line 237
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    if-eqz v4, :cond_5

    .line 238
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 239
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    invoke-virtual {v4, v5}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setHelpTextCallback(Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;)V

    .line 241
    :cond_5
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 243
    sget v4, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mLatestHelpText:Landroid/widget/TextView;

    .line 244
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mLatestHelpText:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    .line 245
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mLatestHelpText:Landroid/widget/TextView;

    new-instance v5, Lcom/android/keyguard/sec/KeyguardUnlockView$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$3;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 250
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mLatestHelpText:Landroid/widget/TextView;

    new-instance v5, Lcom/android/keyguard/sec/KeyguardUnlockView$4;

    invoke-direct {v5, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$4;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 257
    :cond_6
    return-void

    .end local v1    # "getSettingOptionHelpTextEnabled":Z
    .end local v2    # "isEasyUxOn":Z
    .end local v3    # "isWakeUpOn":Z
    :cond_7
    move v1, v6

    .line 192
    goto/16 :goto_0

    .restart local v1    # "getSettingOptionHelpTextEnabled":Z
    :cond_8
    move v4, v6

    .line 194
    goto/16 :goto_1

    :cond_9
    move v2, v5

    .line 214
    goto/16 :goto_2

    .restart local v2    # "isEasyUxOn":Z
    :cond_a
    move v3, v6

    .line 215
    goto/16 :goto_3

    .line 227
    .restart local v3    # "isWakeUpOn":Z
    :cond_b
    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    if-nez v4, :cond_c

    .line 228
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/keyguard/R$string;->lockscreen_unlock_guide_text:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    goto/16 :goto_4

    .line 230
    :cond_c
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/keyguard/R$string;->lockscreen_unlock_guide_text_touch_exploration:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    goto/16 :goto_4
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public onResume(I)V
    .locals 5
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0x12ef

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->onResume()V

    .line 355
    :cond_0
    if-ne p1, v2, :cond_3

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mResumedTimeMillis:J

    .line 358
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 361
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 367
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUnlockExecuted()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 574
    :cond_0
    return-void
.end method

.method public onUnlockViewPressed()V
    .locals 4

    .prologue
    .line 578
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAttributionView:Landroid/view/View;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->doTransition(F[Landroid/view/View;)V

    .line 580
    return-void
.end method

.method public onUnlockViewReleased()V
    .locals 4

    .prologue
    .line 584
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAttributionView:Landroid/view/View;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->doTransition(F[Landroid/view/View;)V

    .line 586
    return-void
.end method

.method public onUnlockViewSwiped(Z)V
    .locals 0
    .param p1, "swiped"    # Z

    .prologue
    .line 592
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 372
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 373
    const-string v1, "KeyguardUnlockView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    const-string v0, "focused"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->onWindowFocusChanged(Z)V

    .line 378
    :cond_1
    if-nez p1, :cond_2

    .line 379
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->reset()V

    .line 381
    :cond_2
    return-void

    .line 373
    :cond_3
    const-string v0, "unfocused"

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public setAttributionInfoView(Landroid/view/View;)V
    .locals 0
    .param p1, "attributionView"    # Landroid/view/View;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAttributionView:Landroid/view/View;

    .line 514
    return-void
.end method

.method public setCarrierArea(Landroid/view/View;)V
    .locals 2
    .param p1, "carrierArea"    # Landroid/view/View;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    .line 498
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$5;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 504
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$6;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 510
    :cond_0
    return-void
.end method

.method public setHelpText()V
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplayHelpText:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 599
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 306
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mKeyguardVoiceWrapper:Lcom/android/keyguard/sec/KeyguardVoiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 312
    :cond_1
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 323
    return-void
.end method

.method public showBouncer(I)V
    .locals 7
    .param p1, "duration"    # I

    .prologue
    const/4 v6, 0x0

    .line 417
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mEcaView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3, v4, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 418
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsBouncing:Z

    .line 420
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 421
    .local v0, "outRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 422
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v4, v5, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 424
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 425
    const-string v2, "KeyguardUnlockView"

    const-string v3, "showBouncer mBouncerHelpText != null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    if-nez v2, :cond_2

    .line 427
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    sget v3, Lcom/android/keyguard/R$string;->kg_swipe_bouncer_instructions:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 432
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 435
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "set_shortcuts_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 437
    .local v1, "shortcutSetting":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    if-eqz v2, :cond_1

    .line 438
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setVisibility(I)V

    .line 440
    :cond_1
    return-void

    .line 429
    .end local v1    # "shortcutSetting":I
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    sget v3, Lcom/android/keyguard/R$string;->lockscreen_unlock_guide_text_touch_exploration:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 430
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showUnlockAffordance()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 522
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 523
    .local v1, "outRect":Landroid/graphics/Rect;
    const/4 v0, 0x1

    .line 524
    .local v0, "isValidRect":Z
    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 526
    const-string v2, "KeyguardUnlockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v2, "KeyguardUnlockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    if-eqz v0, :cond_0

    .line 530
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    const-wide/16 v4, 0x1f4

    invoke-interface {v2, v4, v5, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 549
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/keyguard/sec/KeyguardUnlockView$7;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$7;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 555
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 565
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->pokeWakelockWithTimeCheck()V

    .line 567
    :cond_0
    return-void
.end method
