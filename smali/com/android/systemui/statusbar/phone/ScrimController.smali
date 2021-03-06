.class public Lcom/android/systemui/statusbar/phone/ScrimController;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# static fields
.field public static final ANIMATION_DURATION:J = 0xdcL

.field private static final DEBUG:Z = false

.field private static final SCRIM_BEHIND_ALPHA:F = 0.76f

.field private static final SCRIM_BEHIND_ALPHA_KEYGUARD:F = 0.0f

.field private static final SCRIM_BEHIND_ALPHA_KEYGUARD_BOUNCER:F = 0.25f

.field private static final SCRIM_BEHIND_ALPHA_KEYGUARD_SECURE:F = 0.25f

.field private static final SCRIM_BEHIND_ALPHA_LOCK_SHADE:F = 0.76f

.field private static final SCRIM_BEHIND_ALPHA_LOCK_SHADE_TAB:F = 0.76f

.field private static final SCRIM_BEHIND_ALPHA_OPENTHEME:F = 0.5f

.field private static final SCRIM_BEHIND_ALPHA_TABLET:F = 0.7f

.field private static final SCRIM_BEHIND_ALPHA_TABLET_MR:F = 0.6f

.field private static final SCRIM_BEHIND_ALPHA_UNLOCKING:F = 0.2f

.field private static final SCRIM_IN_FRONT_ALPHA:F = 0.75f

.field private static final TAG_KEY_ANIM:I = 0x7f0e009e


# instance fields
.field private mAnimateChange:Z

.field private mAnimateKeyguardFadingOut:Z

.field private mAnimationDelay:J

.field private mAnimationStarted:Z

.field private mBackDropView:Lcom/android/systemui/statusbar/BackDropView;

.field private mBouncerShowing:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentBehindAlpha:F

.field private mCurrentInFrontAlpha:F

.field private mDarkenWhileDragging:Z

.field private mDozeBehindAlpha:F

.field private mDozeInFrontAlpha:F

.field private mDozing:Z

.field private mDurationOverride:J

.field private mEffectBehind:Lcom/android/keyguard/sec/effect/EffectBehindView;

.field private mExpanding:Z

.field private mFraction:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mKeyguardShowing:Z

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mLockShadeShowing:Z

.field private mOnAnimationFinished:Ljava/lang/Runnable;

.field private mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

.field private final mPulseIn:Ljava/lang/Runnable;

.field private final mPulseInFinished:Ljava/lang/Runnable;

.field private final mPulseOut:Ljava/lang/Runnable;

.field private final mPulseOutFinished:Ljava/lang/Runnable;

.field private final mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

.field private final mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

.field private mScrimSrcEnabled:Z

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdatePending:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Z)V
    .locals 2
    .param p1, "scrimBehind"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p2, "scrimInFront"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p3, "scrimSrcEnabled"    # Z

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 83
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 488
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$6;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseIn:Ljava/lang/Runnable;

    .line 505
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimController$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$7;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseInFinished:Ljava/lang/Runnable;

    .line 514
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimController$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$8;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseOut:Ljava/lang/Runnable;

    .line 527
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimController$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$9;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    .line 99
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    .line 100
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 115
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimSrcEnabled:Z

    .line 116
    return-void
.end method

.method private IsOpenthemeApplied()Z
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/ScrimController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/ScrimView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/ScrimView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p2, "x2"    # F

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimColor(Lcom/android/systemui/statusbar/ScrimView;F)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->pulseStarted()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->pulseFinished()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimBehindDrawingMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimEffectBehindDrawingMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/ScrimController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/ScrimController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p1, "x1"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/ScrimController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p1, "x1"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/ScrimController;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseInFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method private cancelPulsing()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ScrimView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ScrimView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->pulseFinished()V

    .line 225
    :cond_0
    return-void
.end method

.method private getCurrentScrimAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    goto :goto_0
.end method

.method private getDozeAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeBehindAlpha:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeInFrontAlpha:F

    goto :goto_0
.end method

.method private getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method private pulseFinished()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 238
    :cond_0
    return-void
.end method

.method private pulseStarted()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    .line 231
    :cond_0
    return-void
.end method

.method private scheduleUpdate()V
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-eqz v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    goto :goto_0
.end method

.method private setCurrentScrimAlpha(Landroid/view/View;F)V
    .locals 1
    .param p1, "scrim"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_0

    .line 382
    iput p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    goto :goto_0
.end method

.method private setScrimBehindColor(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimColor(Lcom/android/systemui/statusbar/ScrimView;F)V

    .line 333
    return-void
.end method

.method private setScrimColor(Lcom/android/systemui/statusbar/ScrimView;F)V
    .locals 9
    .param p1, "scrim"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p2, "alpha"    # F

    .prologue
    const v8, 0x7f0e009e

    .line 347
    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/ScrimView;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    .line 348
    .local v6, "runningAnim":Ljava/lang/Object;
    instance-of v7, v6, Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_0

    .line 349
    check-cast v6, Landroid/animation/ValueAnimator;

    .end local v6    # "runningAnim":Ljava/lang/Object;
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    .line 350
    const/4 v7, 0x0

    invoke-virtual {p1, v8, v7}, Lcom/android/systemui/statusbar/ScrimView;->setTag(ILjava/lang/Object;)V

    .line 353
    :cond_0
    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v7, p2

    float-to-int v3, v7

    .line 354
    .local v3, "opacity":I
    const/4 v4, 0x0

    .local v4, "red":I
    const/4 v2, 0x0

    .local v2, "green":I
    const/4 v0, 0x0

    .line 356
    .local v0, "blue":I
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v7, :cond_1

    .line 358
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0089

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 359
    .local v5, "rgb":I
    shr-int/lit8 v7, v5, 0x10

    and-int/lit16 v4, v7, 0xff

    .line 360
    shr-int/lit8 v7, v5, 0x8

    and-int/lit16 v2, v7, 0xff

    .line 361
    shr-int/lit8 v7, v5, 0x0

    and-int/lit16 v0, v7, 0xff

    .line 364
    .end local v5    # "rgb":I
    :cond_1
    invoke-static {v3, v4, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 365
    .local v1, "color":I
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    if-eqz v7, :cond_2

    .line 366
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Lcom/android/systemui/statusbar/ScrimView;I)V

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ScrimView;->setScrimColor(I)V

    goto :goto_0
.end method

.method private setScrimInFrontColor(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    const/4 v0, 0x0

    .line 336
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimColor(Lcom/android/systemui/statusbar/ScrimView;F)V

    .line 337
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setClickable(Z)V

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setClickable(Z)V

    goto :goto_0
.end method

.method private startScrimAnimation(Lcom/android/systemui/statusbar/ScrimView;I)V
    .locals 12
    .param p1, "scrim"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p2, "targetColor"    # I

    .prologue
    const/4 v9, 0x1

    .line 396
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getScrimColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    .line 397
    .local v7, "current":I
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 399
    .local v8, "target":I
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 400
    .local v3, "red":I
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 401
    .local v4, "green":I
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 403
    .local v5, "blue":I
    if-ne v7, p2, :cond_0

    .line 430
    :goto_0
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v7, v0, v1

    aput v8, v0, v9

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 407
    .local v6, "anim":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimController$2;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/ScrimView;III)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 414
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 415
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 416
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    const-wide/16 v10, -0x1

    cmp-long v0, v0, v10

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    :goto_1
    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 417
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimController$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$3;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/ScrimView;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 427
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 428
    const v0, 0x7f0e009e

    invoke-virtual {p1, v0, v6}, Lcom/android/systemui/statusbar/ScrimView;->setTag(ILjava/lang/Object;)V

    .line 429
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationStarted:Z

    goto :goto_0

    .line 416
    :cond_1
    const-wide/16 v0, 0xdc

    goto :goto_1
.end method

.method private updateScrimBehindDrawingMode()V
    .locals 2

    .prologue
    .line 466
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBackDropView:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BackDropView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimSrcEnabled:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 467
    .local v0, "asSrc":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setDrawAsSrc(Z)V

    .line 468
    return-void

    .line 466
    .end local v0    # "asSrc":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;)V
    .locals 7
    .param p1, "scrim"    # Lcom/android/systemui/statusbar/ScrimView;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 389
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v1

    .line 390
    .local v1, "alpha1":F
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getDozeAlpha(Landroid/view/View;)F

    move-result v2

    .line 391
    .local v2, "alpha2":F
    sub-float v3, v5, v1

    sub-float v4, v5, v2

    mul-float/2addr v3, v4

    sub-float v0, v5, v3

    .line 392
    .local v0, "alpha":F
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-static {v3, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/ScrimView;->setScrimColor(I)V

    .line 393
    return-void
.end method

.method private updateScrimEffectBehindDrawingMode()V
    .locals 2

    .prologue
    .line 484
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mEffectBehind:Lcom/android/keyguard/sec/effect/EffectBehindView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/EffectBehindView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimSrcEnabled:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 485
    .local v0, "asSrc":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setDrawAsSrc(Z)V

    .line 486
    return-void

    .line 484
    .end local v0    # "asSrc":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateScrimKeyguard()V
    .locals 3

    .prologue
    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    .line 300
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    if-eqz v0, :cond_0

    .line 301
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 314
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    if-eqz v0, :cond_1

    .line 303
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 304
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodInsecure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 308
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    goto :goto_0

    .line 310
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 311
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    goto :goto_0
.end method

.method private updateScrimLocked()V
    .locals 2

    .prologue
    const v0, 0x3f428f5c    # 0.76f

    .line 266
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 268
    return-void

    .line 266
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->IsOpenthemeApplied()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method private updateScrimNormal()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 317
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    .line 319
    .local v0, "frac":F
    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v0

    const v3, 0x3e4ccccd    # 0.2f

    sub-float v0, v2, v3

    .line 320
    cmpg-float v2, v0, v4

    if-gtz v2, :cond_0

    .line 321
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 329
    :goto_0
    return-void

    .line 324
    :cond_0
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide v4, 0x400921fa00000000L    # 3.141590118408203

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v0

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double v4, v10, v4

    mul-double/2addr v2, v4

    sub-double v2, v10, v2

    double-to-float v1, v2

    .line 325
    .local v1, "k":F
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v2, :cond_1

    const v2, 0x3f19999a    # 0.6f

    :goto_1
    mul-float/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    goto :goto_0

    :cond_1
    const v2, 0x3f333333    # 0.7f

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->IsOpenthemeApplied()Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_3
    const v2, 0x3f428f5c    # 0.76f

    goto :goto_1
.end method

.method private updateScrims()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    .line 252
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindColor(F)V

    .line 261
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 262
    return-void

    .line 253
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    if-nez v0, :cond_1

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimNormal()V

    .line 255
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontColor(F)V

    goto :goto_0

    .line 256
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLockShadeShowing:Z

    if-eqz v0, :cond_2

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimLocked()V

    goto :goto_0

    .line 259
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimKeyguard()V

    goto :goto_0
.end method


# virtual methods
.method public animateGoingToFullShade(JJ)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    .line 160
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 161
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 164
    return-void
.end method

.method public animateKeyguardFadingOut(JJLjava/lang/Runnable;)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "duration"    # J
    .param p5, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    .line 152
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 153
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 154
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 155
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 157
    return-void
.end method

.method public getDozeBehindAlpha()F
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeBehindAlpha:F

    return v0
.end method

.method public getDozeInFrontAlpha()F
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeInFrontAlpha:F

    return v0
.end method

.method public isPulsing()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onExpandingFinished()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    .line 135
    return-void
.end method

.method public onPreDraw()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 439
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    .line 440
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 441
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateKeyguardFadingOut:Z

    .line 442
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDurationOverride:J

    .line 443
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 446
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    .line 450
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationStarted:Z

    .line 451
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackingStarted()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    .line 131
    return-void
.end method

.method public pulse(Lcom/android/systemui/doze/DozeHost$PulseCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_2

    .line 195
    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ScrimView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setBackDropView(Lcom/android/systemui/statusbar/BackDropView;)V
    .locals 2
    .param p1, "backDropView"    # Lcom/android/systemui/statusbar/BackDropView;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBackDropView:Lcom/android/systemui/statusbar/BackDropView;

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBackDropView:Lcom/android/systemui/statusbar/BackDropView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$4;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BackDropView;->setOnVisibilityChangedRunnable(Ljava/lang/Runnable;)V

    .line 462
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimBehindDrawingMode()V

    .line 463
    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerShowing:Z

    .line 146
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpanding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 148
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDozeBehindAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 183
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeBehindAlpha:F

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;)V

    .line 185
    return-void
.end method

.method public setDozeInFrontAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 178
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeInFrontAlpha:F

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;)V

    .line 180
    return-void
.end method

.method public setDozing(Z)V
    .locals 1
    .param p1, "dozing"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    .line 168
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->cancelPulsing()V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 174
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 175
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    goto :goto_0
.end method

.method public setEffectBehindView(Lcom/android/keyguard/sec/effect/EffectBehindView;)V
    .locals 2
    .param p1, "effectBehind"    # Lcom/android/keyguard/sec/effect/EffectBehindView;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mEffectBehind:Lcom/android/keyguard/sec/effect/EffectBehindView;

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mEffectBehind:Lcom/android/keyguard/sec/effect/EffectBehindView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$5;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/EffectBehindView;->setOnVisibilityChangedRunnable(Ljava/lang/Runnable;)V

    .line 480
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimEffectBehindDrawingMode()V

    .line 481
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 121
    return-void
.end method

.method public setLockShadeShowing(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLockShadeShowing:Z

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 126
    return-void
.end method

.method public setPanelExpansion(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 138
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 139
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mFraction:F

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 142
    :cond_0
    return-void
.end method
