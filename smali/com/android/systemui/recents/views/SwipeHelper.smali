.class public Lcom/android/systemui/recents/views/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field static final ALPHA_FADE_END:F = 0.65f

.field public static ALPHA_FADE_START:F = 0.0f

.field private static final CONSTRAIN_SWIPE:Z = true

.field private static final DISMISS_IF_SWIPED_FAR_ENOUGH:Z = true

.field private static final FADE_OUT_DURING_SWIPE:Z = true

.field private static final SLOW_ANIMATIONS:Z = false

.field private static final SNAP_ANIM_LEN:I = 0xfa

.field static final TAG:Ljava/lang/String; = "SwipeHelper"

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field public mAllowSwipeTowardsEnd:Z

.field public mAllowSwipeTowardsStart:Z

.field mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field public mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDragging:Z

.field private mInitialTouchPos:F

.field private mMinAlpha:F

.field private mPagingTouchSlop:F

.field private mRtl:Z

.field private mSwipeDirection:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 63
    const v0, 0x3e19999a    # 0.15f

    sput v0, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/recents/views/SwipeHelper$Callback;FFLcom/android/systemui/recents/RecentsConfiguration;)V
    .locals 2
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/systemui/recents/views/SwipeHelper$Callback;
    .param p3, "densityScale"    # F
    .param p4, "pagingTouchSlop"    # F
    .param p5, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 59
    const/16 v0, 0x4b

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 60
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mMinAlpha:F

    .line 81
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    .line 91
    iput-object p2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    .line 92
    iput p1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    .line 93
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 94
    iput p3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDensityScale:F

    .line 95
    iput p4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mPagingTouchSlop:F

    .line 96
    iput-object p5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/views/SwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/SwipeHelper;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/views/SwipeHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/SwipeHelper;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/views/SwipeHelper;Landroid/view/View;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/views/SwipeHelper;->isValidMoveDirection(Landroid/view/View;F)Z

    move-result v0

    return v0
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .prologue
    .line 137
    iget v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 139
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 137
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_0
.end method

.method private dismissChild(Landroid/view/View;F)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v6, 0x0

    .line 250
    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 252
    .local v1, "canAnimViewBeDismissed":Z
    cmpg-float v4, p2, v6

    if-ltz v4, :cond_1

    cmpl-float v4, p2, v6

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_1

    :cond_0
    cmpl-float v4, p2, v6

    if-nez v4, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 256
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    neg-float v3, v4

    .line 260
    .local v3, "newPos":F
    :goto_0
    iget v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 261
    .local v2, "duration":I
    cmpl-float v4, p2, v6

    if-eqz v4, :cond_3

    .line 262
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 269
    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 270
    .local v0, "anim":Landroid/animation/ValueAnimator;
    sget-object v4, Lcom/android/systemui/recents/views/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 272
    new-instance v4, Lcom/android/systemui/recents/views/SwipeHelper$1;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/systemui/recents/views/SwipeHelper$1;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 281
    new-instance v4, Lcom/android/systemui/recents/views/SwipeHelper$2;

    invoke-direct {v4, p0, v1, p1}, Lcom/android/systemui/recents/views/SwipeHelper$2;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 289
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 290
    return-void

    .line 258
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    .end local v2    # "duration":I
    .end local v3    # "newPos":F
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .restart local v3    # "newPos":F
    goto :goto_0

    .line 266
    .restart local v2    # "duration":I
    :cond_3
    iget v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_1
.end method

.method private endSwipe(Landroid/view/VelocityTracker;)V
    .locals 14
    .param p1, "velocityTracker"    # Landroid/view/VelocityTracker;

    .prologue
    .line 503
    const/16 v8, 0x3e8

    invoke-virtual {p1, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 504
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v7

    .line 505
    .local v7, "velocity":F
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v5

    .line 506
    .local v5, "perpendicularVelocity":F
    iget v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    iget v9, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDensityScale:F

    mul-float v3, v8, v9

    .line 507
    .local v3, "escapeVelocity":F
    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v8}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v6

    .line 509
    .local v6, "translation":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3fe3333333333333L    # 0.6

    iget-object v12, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v12}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v12

    float-to-double v12, v12

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    const/4 v0, 0x1

    .line 511
    .local v0, "childSwipedFarEnough":Z
    :goto_0
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v3

    if-lez v8, :cond_4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-lez v8, :cond_2

    const/4 v8, 0x1

    move v9, v8

    :goto_1
    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-lez v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    if-ne v9, v8, :cond_4

    const/4 v1, 0x1

    .line 515
    .local v1, "childSwipedFastEnough":Z
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v8, v9}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-direct {p0, v6}, Lcom/android/systemui/recents/views/SwipeHelper;->isValidSwipeDirection(F)Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v1, :cond_0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v2, 0x1

    .line 520
    .local v2, "dismissChild":Z
    :goto_4
    const/4 v4, 0x0

    .line 533
    .local v4, "moveChild":Z
    if-eqz v4, :cond_7

    .line 534
    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v1, :cond_6

    .end local v7    # "velocity":F
    :goto_5
    invoke-direct {p0, v8, v7}, Lcom/android/systemui/recents/views/SwipeHelper;->moveChild(Landroid/view/View;F)V

    .line 544
    :goto_6
    return-void

    .line 509
    .end local v0    # "childSwipedFarEnough":Z
    .end local v1    # "childSwipedFastEnough":Z
    .end local v2    # "dismissChild":Z
    .end local v4    # "moveChild":Z
    .restart local v7    # "velocity":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 511
    .restart local v0    # "childSwipedFarEnough":Z
    :cond_2
    const/4 v8, 0x0

    move v9, v8

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 515
    .restart local v1    # "childSwipedFastEnough":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 534
    .restart local v2    # "dismissChild":Z
    .restart local v4    # "moveChild":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_5

    .line 535
    :cond_7
    if-eqz v2, :cond_9

    .line 538
    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v1, :cond_8

    .end local v7    # "velocity":F
    :goto_7
    invoke-direct {p0, v8, v7}, Lcom/android/systemui/recents/views/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    goto :goto_6

    .restart local v7    # "velocity":F
    :cond_8
    const/4 v7, 0x0

    goto :goto_7

    .line 541
    :cond_9
    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v8, v9}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 542
    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v8, v7}, Lcom/android/systemui/recents/views/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto :goto_6
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 143
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getSize(Landroid/view/View;)F
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 164
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    goto :goto_0
.end method

.method private getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 132
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 194
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 192
    goto :goto_0

    :cond_1
    move v0, v1

    .line 194
    goto :goto_0
.end method

.method private isValidMoveDirection(Landroid/view/View;F)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 481
    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->rotation:I

    if-ne v1, v0, :cond_5

    .line 482
    cmpl-float v1, p2, v2

    if-gtz v1, :cond_0

    cmpl-float v1, p2, v2

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_2

    .line 498
    :cond_1
    :goto_0
    return v0

    .line 485
    :cond_2
    cmpg-float v1, p2, v2

    if-ltz v1, :cond_3

    cmpl-float v1, p2, v2

    if-nez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getDisplayId()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 498
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 490
    :cond_5
    cmpg-float v1, p2, v2

    if-ltz v1, :cond_6

    cmpl-float v1, p2, v2

    if-nez v1, :cond_7

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    :cond_7
    cmpl-float v1, p2, v2

    if-gtz v1, :cond_8

    cmpl-float v1, p2, v2

    if-nez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getDisplayId()I

    move-result v1

    if-ne v1, v0, :cond_4

    goto :goto_0
.end method

.method private isValidSwipeDirection(F)Z
    .locals 2
    .param p1, "amount"    # F

    .prologue
    const/4 v1, 0x0

    .line 467
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_3

    .line 468
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mRtl:Z

    if-eqz v0, :cond_1

    .line 469
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    .line 476
    :goto_0
    return v0

    .line 469
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    goto :goto_0

    .line 471
    :cond_1
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    goto :goto_0

    .line 476
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private moveChild(Landroid/view/View;F)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 342
    iget-object v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 345
    .local v1, "canAnimViewBeDismissed":Z
    iget v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v5, :cond_2

    .line 346
    iget-object v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 350
    .local v2, "distance":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->rotation:I

    if-ne v5, v7, :cond_4

    .line 351
    cmpl-float v5, p2, v6

    if-gtz v5, :cond_1

    cmpl-float v5, p2, v6

    if-nez v5, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_1

    :cond_0
    cmpl-float v5, p2, v6

    if-nez v5, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpl-float v5, v5, v6

    if-nez v5, :cond_3

    iget v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-ne v5, v7, :cond_3

    .line 355
    :cond_1
    int-to-float v4, v2

    .line 369
    .local v4, "newPos":F
    :goto_1
    iget v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 370
    .local v3, "duration":I
    cmpl-float v5, p2, v6

    if-eqz v5, :cond_8

    .line 371
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 378
    :goto_2
    invoke-direct {p0, p1, v4}, Lcom/android/systemui/recents/views/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 379
    .local v0, "anim":Landroid/animation/ValueAnimator;
    sget-object v5, Lcom/android/systemui/recents/views/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 380
    int-to-long v6, v3

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 381
    new-instance v5, Lcom/android/systemui/recents/views/SwipeHelper$5;

    invoke-direct {v5, p0, p1, v1}, Lcom/android/systemui/recents/views/SwipeHelper$5;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 404
    new-instance v5, Lcom/android/systemui/recents/views/SwipeHelper$6;

    invoke-direct {v5, p0, v1, p1}, Lcom/android/systemui/recents/views/SwipeHelper$6;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 414
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 415
    return-void

    .line 348
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    .end local v2    # "distance":I
    .end local v3    # "duration":I
    .end local v4    # "newPos":F
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .restart local v2    # "distance":I
    goto :goto_0

    .line 357
    :cond_3
    neg-int v5, v2

    int-to-float v4, v5

    .restart local v4    # "newPos":F
    goto :goto_1

    .line 360
    .end local v4    # "newPos":F
    :cond_4
    cmpg-float v5, p2, v6

    if-ltz v5, :cond_6

    cmpl-float v5, p2, v6

    if-nez v5, :cond_5

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_6

    :cond_5
    cmpl-float v5, p2, v6

    if-nez v5, :cond_7

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpl-float v5, v5, v6

    if-nez v5, :cond_7

    iget v5, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-ne v5, v7, :cond_7

    .line 364
    :cond_6
    neg-int v5, v2

    int-to-float v4, v5

    .restart local v4    # "newPos":F
    goto :goto_1

    .line 366
    .end local v4    # "newPos":F
    :cond_7
    int-to-float v4, v2

    .restart local v4    # "newPos":F
    goto :goto_1

    .line 375
    .restart local v3    # "duration":I
    :cond_8
    iget v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_2
.end method

.method private setSwipeAmount(F)V
    .locals 8
    .param p1, "amount"    # F

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->isValidSwipeDirection(F)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 451
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    .line 452
    .local v2, "size":F
    const v3, 0x3e19999a    # 0.15f

    mul-float v1, v3, v2

    .line 453
    .local v1, "maxScrollDistance":F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_4

    .line 454
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_3

    move p1, v1

    .line 459
    .end local v1    # "maxScrollDistance":F
    .end local v2    # "size":F
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v3, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 460
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    if-eqz v3, :cond_2

    .line 461
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v0

    .line 462
    .local v0, "alpha":F
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 464
    .end local v0    # "alpha":F
    :cond_2
    return-void

    .line 454
    .restart local v1    # "maxScrollDistance":F
    .restart local v2    # "size":F
    :cond_3
    neg-float p1, v1

    goto :goto_0

    .line 456
    :cond_4
    div-float v3, p1, v2

    float-to-double v4, v3

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float p1, v1, v3

    goto :goto_0
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    .line 148
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 160
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private snapChild(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    .line 293
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    invoke-interface {v3, p1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 294
    .local v1, "canAnimViewBeDismissed":Z
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 295
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const/16 v2, 0xfa

    .line 296
    .local v2, "duration":I
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 302
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 304
    new-instance v3, Lcom/android/systemui/recents/views/SwipeHelper$3;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/systemui/recents/views/SwipeHelper$3;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 320
    new-instance v3, Lcom/android/systemui/recents/views/SwipeHelper$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/systemui/recents/views/SwipeHelper$4;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 337
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 338
    return-void
.end method


# virtual methods
.method public cancelOngoingDrag()V
    .locals 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->onSnapBackCompleted(Landroid/view/View;)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 115
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    .line 117
    :cond_1
    return-void
.end method

.method getAlphaForOffset(Landroid/view/View;)F
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 172
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 173
    .local v3, "viewSize":F
    const v4, 0x3f266666    # 0.65f

    mul-float v0, v4, v3

    .line 174
    .local v0, "fadeSize":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 175
    .local v2, "result":F
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 176
    .local v1, "pos":F
    sget v4, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 177
    sget v4, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    .line 181
    :cond_0
    :goto_0
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 182
    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 183
    iget v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mMinAlpha:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    .line 178
    :cond_1
    sget v4, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 179
    sget v4, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float v2, v5, v4

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 201
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 242
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    return v3

    .line 203
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsConfiguration;->performanceAcquire()V

    .line 204
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    .line 205
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    invoke-interface {v3, p1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 206
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 207
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 208
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-static {v3}, Lcom/android/systemui/recents/views/SwipeHelper;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mRtl:Z

    .line 209
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 210
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    goto :goto_0

    .line 220
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 225
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 226
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    .line 227
    .local v2, "pos":F
    iget v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v2, v3

    .line 228
    .local v1, "delta":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 230
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    .line 231
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v3

    sub-float v3, v2, v3

    iput v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    goto :goto_0

    .line 237
    .end local v1    # "delta":F
    .end local v2    # "pos":F
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    .line 238
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 239
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsConfiguration;->performanceRelease()V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 419
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    if-nez v2, :cond_0

    .line 420
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 421
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 443
    :goto_0
    return v2

    .line 425
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 427
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 443
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 430
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 431
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v2, v3

    .line 432
    .local v1, "delta":F
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/SwipeHelper;->setSwipeAmount(F)V

    .line 433
    iget-object v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->onSwipeChanged(Landroid/view/View;F)V

    goto :goto_1

    .line 438
    .end local v1    # "delta":F
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 439
    iget-object v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/views/SwipeHelper;->endSwipe(Landroid/view/VelocityTracker;)V

    goto :goto_1

    .line 427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resetTranslation(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 121
    return-void
.end method

.method public setDensityScale(F)V
    .locals 0
    .param p1, "densityScale"    # F

    .prologue
    .line 100
    iput p1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDensityScale:F

    .line 101
    return-void
.end method

.method public setMinAlpha(F)V
    .locals 0
    .param p1, "minAlpha"    # F

    .prologue
    .line 168
    iput p1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mMinAlpha:F

    .line 169
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0
    .param p1, "pagingTouchSlop"    # F

    .prologue
    .line 104
    iput p1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mPagingTouchSlop:F

    .line 105
    return-void
.end method
