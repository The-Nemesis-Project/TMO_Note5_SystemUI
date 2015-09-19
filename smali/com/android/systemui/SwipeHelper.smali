.class public Lcom/android/systemui/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SwipeHelper$LongPressListener;,
        Lcom/android/systemui/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field private static final CONSTRAIN_SWIPE:Z = true

.field private static final DEBUG:Z = false

.field private static final DEBUG_INVALIDATE:Z = false

.field private static final DEBUG_SIDES:Z = true

.field private static final DISMISS_IF_SWIPED_FAR_ENOUGH:Z = true

.field private static final FADE_OUT_DURING_SWIPE:Z = true

.field public static final LTR:I = 0x1

.field public static final NONE:I = 0x0

.field public static final RTL:I = -0x1

.field private static final SLOW_ANIMATIONS:Z = false

.field private static final SNAP_ANIM_LEN:I = 0x96

.field static final SWIPE_PROGRESS_FADE_END:F = 0.5f

.field public static SWIPE_PROGRESS_FADE_START:F = 0.0f

.field static final TAG:Ljava/lang/String; = "com.android.systemui.SwipeHelper"

.field private static final TAG_SIDES:Ljava/lang/String; = "SwipeSides"

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field private static final mUseLeftSide:Z = false

.field private static final mUseRightSide:Z = true

.field private static final mUseSides:Z

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mCallback:Lcom/android/systemui/SwipeHelper$Callback;

.field private mCanCurrViewBeBlocked:Z

.field private mCanCurrViewBeDimissed:Z

.field private mCurrAnimView:Landroid/view/View;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDirection:I

.field private mDragging:Z

.field private mFalsingThreshold:I

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mHandler:Landroid/os/Handler;

.field private mInProgressSides:Z

.field private mInitialTouchPos:F

.field private mIsLayoutRtl:Z

.field private mIsMaxSwipeSize:Z

.field private mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

.field private mLongPressSent:Z

.field private mLongPressTimeout:J

.field private mMaxSwipeProgress:F

.field private mMaxSwipeSize:F

.field private mMinSwipeProgress:F

.field private mPagingTouchSlop:F

.field private mPosX:F

.field private mPreviousX:F

.field private mSidesMargin:I

.field private mSidesPadding:I

.field private mSwipeDirection:I

.field private mTargetView:Landroid/view/View;

.field private final mTmpPos:[I

.field private mTouchAboveFalsingThreshold:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    .line 763
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSwipeBlockNotification:Z

    sput-boolean v0, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V
    .locals 2
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/systemui/SwipeHelper$Callback;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 61
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 62
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    .line 95
    iput-object p2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    .line 97
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    .line 98
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 99
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 100
    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 102
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    .line 103
    const v0, 0x10c000f

    invoke-static {p3, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 105
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0380

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    .line 109
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0376

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mSidesMargin:I

    .line 111
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c04f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mSidesPadding:I

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/SwipeHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/SwipeHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/SwipeHelper;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/SwipeHelper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->updateSidesSwipeProgressFromOffset(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/SwipeHelper;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->setSidesVisibility(Landroid/view/View;I)V

    return-void
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .prologue
    .line 142
    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    const-string v1, "translationX"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 144
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 142
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    const-string v1, "translationY"

    goto :goto_0
.end method

.method private doSnap(ZF)V
    .locals 2
    .param p1, "childSwipedFastEnough"    # Z
    .param p2, "velocity"    # F

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 1005
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mIsMaxSwipeSize:Z

    if-nez v0, :cond_0

    .line 1006
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mInProgressSides:Z

    if-eqz v0, :cond_2

    .line 1007
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz p1, :cond_1

    .end local p2    # "velocity":F
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/SwipeHelper;->snapContentView(Landroid/view/View;F)V

    .line 1018
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 1020
    return-void

    .line 1007
    .restart local p2    # "velocity":F
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 1009
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto :goto_1
.end method

.method private getContentView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 832
    const v1, 0x7f0e03f3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 833
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 844
    :goto_0
    return-object v1

    .line 836
    :cond_0
    const v1, 0x7f0e03f4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 837
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    .line 838
    goto :goto_0

    .line 840
    :cond_1
    const v1, 0x7f0e03f5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 841
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    .line 842
    goto :goto_0

    .line 844
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDBgView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 894
    const v1, 0x7f0e03e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 895
    .local v0, "dbgView":Landroid/view/View;
    return-object v0
.end method

.method private getFalsingThreshold()I
    .locals 2

    .prologue
    .line 696
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/SwipeHelper$Callback;->getFalsingThresholdFactor()F

    move-result v0

    .line 697
    .local v0, "factor":F
    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getNBgView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 889
    const v1, 0x7f0e03e5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 890
    .local v0, "nbgView":Landroid/view/View;
    return-object v0
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 148
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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
    .line 129
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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
    .line 249
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mSidesMargin:I

    add-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1
.end method

.method private getSwipeProgressForOffset(Landroid/view/View;)F
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 263
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 264
    .local v3, "viewSize":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v0, v4, v3

    .line 265
    .local v0, "fadeSize":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 266
    .local v2, "result":F
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 267
    .local v1, "pos":F
    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 268
    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    .line 272
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4

    .line 269
    :cond_1
    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 270
    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float v2, v5, v4

    goto :goto_0
.end method

.method private getTargetView(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 852
    sget-boolean v2, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v2, :cond_3

    .line 853
    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeBlocked:Z

    if-eqz v2, :cond_3

    .line 854
    const v2, 0x7f0e025d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 855
    .local v1, "gutsView":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 885
    .end local v1    # "gutsView":Landroid/view/View;
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 859
    .restart local v1    # "gutsView":Landroid/view/View;
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 861
    const-string v2, "SwipeSides"

    const-string v3, "getTargetView():TV"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTargetView:Landroid/view/View;

    goto :goto_0

    .line 866
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 867
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 868
    iget v2, p0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 872
    :cond_2
    const-string v2, "SwipeSides"

    const-string v3, "getTargetView():CV"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mInProgressSides:Z

    .line 875
    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTargetView:Landroid/view/View;

    move-object p1, v0

    .line 876
    goto :goto_0

    .line 882
    .end local v0    # "contentView":Landroid/view/View;
    .end local v1    # "gutsView":Landroid/view/View;
    :cond_3
    const-string v2, "SwipeSides"

    const-string v3, "getTargetView():V"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTargetView:Landroid/view/View;

    goto :goto_0
.end method

.method private getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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
    .line 137
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 307
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v0}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 310
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "childBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 318
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .line 320
    .restart local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 321
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 332
    :cond_0
    return-void
.end method

.method private moveContentView(Landroid/view/View;F)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 949
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 950
    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 952
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v9

    if-ne v9, v7, :cond_4

    move v4, v7

    .line 954
    .local v4, "isLayoutRtl":Z
    :goto_0
    cmpg-float v9, p2, v10

    if-ltz v9, :cond_2

    cmpl-float v9, p2, v10

    if-nez v9, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_2

    :cond_0
    cmpl-float v9, p2, v10

    if-nez v9, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1

    iget v9, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-eq v9, v7, :cond_2

    :cond_1
    cmpl-float v9, p2, v10

    if-nez v9, :cond_5

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    cmpl-float v9, v9, v10

    if-nez v9, :cond_5

    if-eqz v4, :cond_5

    .line 960
    :cond_2
    iget v9, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v6, v9

    .line 964
    .local v6, "newPos":F
    :goto_1
    iget v9, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v2, v9

    .line 965
    .local v2, "duration":J
    cmpl-float v9, p2, v10

    if-eqz v9, :cond_6

    .line 966
    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float/2addr v9, v10

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    div-float/2addr v9, v10

    float-to-int v9, v9

    int-to-long v10, v9

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 974
    :goto_2
    const/4 v9, 0x0

    invoke-virtual {v1, v12, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 975
    invoke-direct {p0, v1, v6}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 976
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-object v9, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 977
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 978
    new-instance v9, Lcom/android/systemui/SwipeHelper$8;

    invoke-direct {v9, p0, p1, v1}, Lcom/android/systemui/SwipeHelper$8;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 984
    new-instance v9, Lcom/android/systemui/SwipeHelper$9;

    invoke-direct {v9, p0, p1}, Lcom/android/systemui/SwipeHelper$9;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 990
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 991
    .local v5, "moveContentAnimatorSet":Landroid/animation/AnimatorSet;
    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v0, v9, v8

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getNBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8, v6}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v9, v7

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getDBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v9, v12

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 994
    sget-object v7, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 995
    invoke-virtual {v5, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 996
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 998
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "duration":J
    .end local v4    # "isLayoutRtl":Z
    .end local v5    # "moveContentAnimatorSet":Landroid/animation/AnimatorSet;
    .end local v6    # "newPos":F
    :cond_3
    return-void

    :cond_4
    move v4, v8

    .line 952
    goto/16 :goto_0

    .line 962
    .restart local v4    # "isLayoutRtl":Z
    :cond_5
    iget v6, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    .restart local v6    # "newPos":F
    goto :goto_1

    .line 971
    .restart local v2    # "duration":J
    :cond_6
    iget v9, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    int-to-long v2, v9

    goto :goto_2
.end method

.method private setSidesVisibility(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 907
    const v1, 0x7f0e03ef

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 908
    .local v0, "rViewGroup":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 912
    :cond_0
    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 154
    const/4 v2, 0x0

    .line 155
    .local v2, "nbgView":Landroid/view/View;
    const/4 v0, 0x0

    .line 156
    .local v0, "dbgView":Landroid/view/View;
    move-object v3, p1

    .line 157
    .local v3, "targetView":Landroid/view/View;
    sget-boolean v7, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v7, :cond_4

    .line 158
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 160
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mInProgressSides:Z

    if-eqz v7, :cond_4

    .line 161
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getNBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 162
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getDBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 164
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    .line 178
    .local v4, "x":F
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    add-float/2addr v7, p2

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    .line 180
    const-string v6, "SwipeSides"

    const-string v7, "setTranslation():2"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iput-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mIsMaxSwipeSize:Z

    .line 183
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 184
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 185
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 186
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v5, v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 245
    .end local v4    # "x":F
    :cond_0
    :goto_0
    return-void

    .line 194
    .restart local v4    # "x":F
    :cond_1
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    if-ne v7, v5, :cond_2

    .line 195
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mIsLayoutRtl:Z

    if-eqz v7, :cond_5

    .line 196
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    cmpl-float v7, v4, v7

    if-nez v7, :cond_2

    .line 197
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    .line 216
    :cond_2
    :goto_1
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    add-float/2addr v7, p2

    cmpl-float v7, v7, v9

    if-lez v7, :cond_6

    move v1, v5

    .line 217
    .local v1, "isGreaterThanZero":Z
    :goto_2
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mIsLayoutRtl:Z

    if-eqz v7, :cond_3

    .line 218
    if-nez v1, :cond_7

    move v1, v5

    .line 220
    :cond_3
    :goto_3
    if-nez v1, :cond_8

    .line 235
    .end local v1    # "isGreaterThanZero":Z
    .end local v4    # "x":F
    :cond_4
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v5, :cond_9

    .line 236
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    add-float/2addr v5, p2

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 237
    sget-boolean v5, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 238
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    add-float/2addr v5, p2

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 239
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    add-float/2addr v5, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 200
    .restart local v4    # "x":F
    :cond_5
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v7, v7

    cmpl-float v7, v4, v7

    if-nez v7, :cond_2

    .line 201
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v7, v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    goto :goto_1

    :cond_6
    move v1, v6

    .line 216
    goto :goto_2

    .restart local v1    # "isGreaterThanZero":Z
    :cond_7
    move v1, v6

    .line 218
    goto :goto_3

    .line 223
    :cond_8
    const-string v5, "SwipeSides"

    const-string v6, "setTranslation():3"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v3, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 226
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 228
    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 242
    .end local v1    # "isGreaterThanZero":Z
    .end local v4    # "x":F
    :cond_9
    invoke-virtual {v3, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private snapContentView(Landroid/view/View;F)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 799
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 801
    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 802
    const/4 v4, 0x0

    invoke-virtual {v1, v8, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 803
    invoke-direct {p0, v1, v7}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 804
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const/16 v2, 0x96

    .line 805
    .local v2, "duration":I
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 806
    new-instance v4, Lcom/android/systemui/SwipeHelper$6;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/systemui/SwipeHelper$6;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 813
    new-instance v4, Lcom/android/systemui/SwipeHelper$7;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/SwipeHelper$7;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 819
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 820
    .local v3, "snapAnimatorSet":Landroid/animation/AnimatorSet;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getNBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getDBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 823
    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 824
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 826
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "duration":I
    .end local v3    # "snapAnimatorSet":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method private updateSidesSwipeProgressFromOffset(Landroid/view/View;)V
    .locals 9
    .param p1, "animView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 915
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 916
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 917
    invoke-direct {p0, v0}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v3

    .line 918
    .local v3, "position":F
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    if-ne v7, v5, :cond_3

    move v2, v5

    .line 919
    .local v2, "isLayoutRtl":Z
    :goto_0
    cmpl-float v7, v3, v8

    if-lez v7, :cond_4

    move v1, v5

    .line 920
    .local v1, "isGreaterThanZero":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 921
    if-nez v1, :cond_5

    move v1, v5

    .line 935
    :cond_0
    :goto_2
    const v5, 0x7f0e03ef

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 936
    .local v4, "rViewGroup":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 937
    if-nez v1, :cond_2

    .line 938
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1

    .line 939
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 941
    :cond_1
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    div-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 946
    .end local v1    # "isGreaterThanZero":Z
    .end local v2    # "isLayoutRtl":Z
    .end local v3    # "position":F
    .end local v4    # "rViewGroup":Landroid/view/View;
    :cond_2
    return-void

    .restart local v3    # "position":F
    :cond_3
    move v2, v6

    .line 918
    goto :goto_0

    .restart local v2    # "isLayoutRtl":Z
    :cond_4
    move v1, v6

    .line 919
    goto :goto_1

    .restart local v1    # "isGreaterThanZero":Z
    :cond_5
    move v1, v6

    .line 921
    goto :goto_2
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .locals 5
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 276
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;)F

    move-result v1

    .line 277
    .local v1, "swipeProgress":F
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v2, p1, p2, v1}, Lcom/android/systemui/SwipeHelper$Callback;->updateSwipeProgress(Landroid/view/View;ZF)Z

    move-result v2

    if-nez v2, :cond_2

    .line 278
    if-eqz p2, :cond_1

    .line 279
    move v0, v1

    .line 280
    .local v0, "alpha":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3

    .line 281
    invoke-virtual {p1, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 290
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 294
    .end local v0    # "alpha":F
    :cond_1
    sget-boolean v2, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v2, :cond_2

    .line 295
    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeBlocked:Z

    if-eqz v2, :cond_2

    .line 296
    invoke-virtual {p1, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 297
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->updateSidesSwipeProgressFromOffset(Landroid/view/View;)V

    .line 302
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 303
    return-void

    .line 284
    .restart local v0    # "alpha":F
    :cond_3
    sget-boolean v2, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-nez v2, :cond_0

    .line 285
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public clickNotificationLeftButton(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 776
    return-void
.end method

.method public clickNotificationRightButton(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 779
    return-void
.end method

.method public dismissChild(Landroid/view/View;F)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const-wide/16 v4, 0x0

    .line 449
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v7, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJ)V

    .line 450
    return-void
.end method

.method public dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJ)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F
    .param p3, "endAction"    # Ljava/lang/Runnable;
    .param p4, "delay"    # J
    .param p6, "useAccelerateInterpolator"    # Z
    .param p7, "fixedDuration"    # J

    .prologue
    .line 462
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    .line 463
    .local v7, "animView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v9

    .line 465
    .local v9, "canAnimViewBeDismissed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v11, 0x1

    .line 468
    .local v11, "isLayoutRtl":Z
    :goto_0
    const/4 v10, 0x0

    .line 470
    .local v10, "direction":I
    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_2

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1

    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_6

    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6

    if-eqz v11, :cond_6

    .line 477
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    neg-float v14, v2

    .line 481
    .local v14, "newPos":F
    if-eqz v11, :cond_5

    const/4 v10, 0x1

    .line 493
    :goto_1
    move v5, v10

    .line 496
    .local v5, "dismissDirection":I
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-nez v2, :cond_9

    .line 497
    iget v2, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v12, v2

    .line 498
    .local v12, "duration":J
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_8

    .line 499
    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    sub-float v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 510
    :goto_2
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 511
    invoke-direct {p0, v7, v14}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 512
    .local v8, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p6, :cond_a

    .line 513
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 517
    :goto_3
    invoke-virtual {v8, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 518
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_3

    .line 519
    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 521
    :cond_3
    new-instance v2, Lcom/android/systemui/SwipeHelper$2;

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/SwipeHelper$2;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 538
    new-instance v2, Lcom/android/systemui/SwipeHelper$3;

    invoke-direct {v2, p0, v7, v9}, Lcom/android/systemui/SwipeHelper$3;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 543
    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->start()V

    .line 544
    return-void

    .line 465
    .end local v5    # "dismissDirection":I
    .end local v8    # "anim":Landroid/animation/ObjectAnimator;
    .end local v10    # "direction":I
    .end local v11    # "isLayoutRtl":Z
    .end local v12    # "duration":J
    .end local v14    # "newPos":F
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 481
    .restart local v10    # "direction":I
    .restart local v11    # "isLayoutRtl":Z
    .restart local v14    # "newPos":F
    :cond_5
    const/4 v10, -0x1

    goto :goto_1

    .line 485
    .end local v14    # "newPos":F
    :cond_6
    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v14

    .line 489
    .restart local v14    # "newPos":F
    if-eqz v11, :cond_7

    const/4 v10, -0x1

    :goto_4
    goto :goto_1

    :cond_7
    const/4 v10, 0x1

    goto :goto_4

    .line 504
    .restart local v5    # "dismissDirection":I
    .restart local v12    # "duration":J
    :cond_8
    iget v2, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    int-to-long v12, v2

    goto :goto_2

    .line 507
    .end local v12    # "duration":J
    :cond_9
    move-wide/from16 v12, p7

    .restart local v12    # "duration":J
    goto :goto_2

    .line 515
    .restart local v8    # "anim":Landroid/animation/ObjectAnimator;
    :cond_a
    sget-object v2, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3
.end method

.method public getSwipingView()Landroid/view/View;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 344
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 441
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-eqz v5, :cond_2

    :cond_1
    move v7, v6

    :cond_2
    move v6, v7

    :goto_1
    return v6

    .line 346
    :pswitch_0
    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 347
    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 348
    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 349
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 350
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 351
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 352
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v5, v8}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 353
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v5, v8}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 356
    sget-boolean v5, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v5, :cond_4

    .line 357
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    instance-of v5, v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_3

    .line 358
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v5, v8}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeBlocked(Landroid/view/View;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeBlocked:Z

    .line 360
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    if-ne v5, v6, :cond_8

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mIsLayoutRtl:Z

    .line 361
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mSidesPadding:I

    sub-int/2addr v5, v8

    int-to-float v5, v5

    iput v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    .line 365
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 366
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v5

    iput v5, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 369
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/android/systemui/SwipeHelper;->getTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v4

    .line 370
    .local v4, "x":F
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v5, v5

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_6

    .line 372
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v5, :cond_5

    .line 373
    new-instance v5, Lcom/android/systemui/SwipeHelper$1;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/SwipeHelper$1;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/MotionEvent;)V

    iput-object v5, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 388
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v10, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 393
    .end local v4    # "x":F
    :cond_6
    sget-boolean v5, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v5, :cond_0

    .line 394
    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    .line 395
    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mInProgressSides:Z

    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mIsMaxSwipeSize:Z

    .line 396
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    .line 397
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v5, :cond_7

    .line 398
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v5

    iput v5, p0, Lcom/android/systemui/SwipeHelper;->mPreviousX:F

    .line 400
    :cond_7
    iput-object v9, p0, Lcom/android/systemui/SwipeHelper;->mTargetView:Landroid/view/View;

    goto/16 :goto_0

    :cond_8
    move v5, v7

    .line 360
    goto :goto_2

    .line 406
    :pswitch_1
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez v5, :cond_0

    .line 407
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 408
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    .line 409
    .local v3, "pos":F
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v2, v3, v5

    .line 410
    .local v2, "delta":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_9

    .line 411
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v5, v8}, Lcom/android/systemui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 412
    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 413
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v5

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v8}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v8

    sub-float/2addr v5, v8

    iput v5, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 415
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    .line 419
    :cond_9
    sget-boolean v5, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v5, :cond_0

    .line 420
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mPreviousX:F

    cmpg-float v5, v5, v3

    if-gez v5, :cond_b

    move v5, v6

    :goto_3
    iput v5, p0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    .line 421
    iget-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mIsLayoutRtl:Z

    if-eqz v5, :cond_a

    .line 422
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    mul-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    .line 424
    :cond_a
    iput v3, p0, Lcom/android/systemui/SwipeHelper;->mPreviousX:F

    goto/16 :goto_0

    .line 420
    :cond_b
    const/4 v5, -0x1

    goto :goto_3

    .line 432
    .end local v2    # "delta":F
    .end local v3    # "pos":F
    :pswitch_2
    iget-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v5, :cond_c

    iget-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-eqz v5, :cond_d

    :cond_c
    move v1, v6

    .line 433
    .local v1, "captured":Z
    :goto_4
    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 434
    iput-object v9, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 435
    iput-object v9, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 436
    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 437
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    .line 438
    if-eqz v1, :cond_0

    goto/16 :goto_1

    .end local v1    # "captured":Z
    :cond_d
    move v1, v7

    .line 432
    goto :goto_4

    .line 344
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
    .locals 24
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 567
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 569
    .local v5, "action":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_0

    .line 570
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 573
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 574
    const/16 v18, 0x1

    .line 692
    :goto_0
    return v18

    .line 577
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 582
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 583
    const/16 v18, 0x1

    goto :goto_0

    .line 588
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    .line 589
    const/16 v18, 0x0

    goto :goto_0

    .line 593
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 594
    packed-switch v5, :pswitch_data_0

    .line 692
    :cond_4
    :goto_1
    const/16 v18, 0x1

    goto :goto_0

    .line 597
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 599
    sget-boolean v18, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 600
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v15

    .line 601
    .local v15, "pos":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mPreviousX:F

    move/from16 v18, v0

    cmpg-float v18, v18, v15

    if-gez v18, :cond_9

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/SwipeHelper;->mDirection:I

    .line 602
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mIsLayoutRtl:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 603
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/SwipeHelper;->mDirection:I

    .line 605
    :cond_5
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/SwipeHelper;->mPreviousX:F

    .line 609
    .end local v15    # "pos":F
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    move/from16 v19, v0

    sub-float v8, v18, v19

    .line 610
    .local v8, "delta":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 611
    .local v4, "absDelta":F
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/SwipeHelper;->getFalsingThreshold()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v4, v18

    if-ltz v18, :cond_7

    .line 612
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 616
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v18

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mInProgressSides:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v16

    .line 621
    .local v16, "size":F
    const v18, 0x3e19999a    # 0.15f

    mul-float v12, v18, v16

    .line 622
    .local v12, "maxScrollDistance":F
    cmpl-float v18, v4, v16

    if-ltz v18, :cond_b

    .line 623
    const/16 v18, 0x0

    cmpl-float v18, v8, v18

    if-lez v18, :cond_a

    move v8, v12

    .line 634
    .end local v12    # "maxScrollDistance":F
    .end local v16    # "size":F
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mIsMaxSwipeSize:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    goto/16 :goto_1

    .line 601
    .end local v4    # "absDelta":F
    .end local v8    # "delta":F
    .restart local v15    # "pos":F
    :cond_9
    const/16 v18, -0x1

    goto/16 :goto_2

    .line 623
    .end local v15    # "pos":F
    .restart local v4    # "absDelta":F
    .restart local v8    # "delta":F
    .restart local v12    # "maxScrollDistance":F
    .restart local v16    # "size":F
    :cond_a
    neg-float v8, v12

    goto :goto_3

    .line 625
    :cond_b
    div-float v18, v8, v16

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    mul-float v8, v12, v18

    goto :goto_3

    .line 643
    .end local v4    # "absDelta":F
    .end local v8    # "delta":F
    .end local v12    # "maxScrollDistance":F
    .end local v16    # "size":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 644
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    move/from16 v19, v0

    mul-float v13, v18, v19

    .line 645
    .local v13, "maxVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x3e8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 646
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    move/from16 v19, v0

    mul-float v9, v18, v19

    .line 647
    .local v9, "escapeVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v17

    .line 648
    .local v17, "velocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v14

    .line 652
    .local v14, "perpendicularVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd999999999999aL    # 0.4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    cmpl-double v18, v18, v20

    if-lez v18, :cond_d

    const/4 v6, 0x1

    .line 654
    .local v6, "childSwipedFarEnough":Z
    :goto_4
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpl-float v18, v18, v9

    if-lez v18, :cond_10

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v18

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v19

    cmpl-float v18, v18, v19

    if-lez v18, :cond_10

    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-lez v18, :cond_e

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v19

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_f

    const/16 v19, 0x1

    :goto_6
    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    const/4 v7, 0x1

    .line 658
    .local v7, "childSwipedFastEnough":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/systemui/SwipeHelper$Callback;->isAntiFalsingNeeded()Z

    move-result v18

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    move/from16 v18, v0

    if-nez v18, :cond_11

    const/4 v10, 0x1

    .line 664
    .local v10, "falsingDetected":Z
    :goto_8
    if-nez v10, :cond_12

    if-nez v7, :cond_c

    if-eqz v6, :cond_12

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    const/4 v11, 0x1

    .line 667
    .local v11, "isEnough":Z
    :goto_9
    if-eqz v11, :cond_19

    .line 668
    sget-boolean v18, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mInProgressSides:Z

    move/from16 v18, v0

    if-eqz v18, :cond_16

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 671
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v7, :cond_13

    .end local v17    # "velocity":F
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->moveContentView(Landroid/view/View;F)V

    .line 676
    :goto_b
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    goto/16 :goto_1

    .line 652
    .end local v6    # "childSwipedFarEnough":Z
    .end local v7    # "childSwipedFastEnough":Z
    .end local v10    # "falsingDetected":Z
    .end local v11    # "isEnough":Z
    .restart local v17    # "velocity":F
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 654
    .restart local v6    # "childSwipedFarEnough":Z
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_5

    :cond_f
    const/16 v19, 0x0

    goto :goto_6

    :cond_10
    const/4 v7, 0x0

    goto :goto_7

    .line 658
    .restart local v7    # "childSwipedFastEnough":Z
    :cond_11
    const/4 v10, 0x0

    goto :goto_8

    .line 664
    .restart local v10    # "falsingDetected":Z
    :cond_12
    const/4 v11, 0x0

    goto :goto_9

    .line 672
    .restart local v11    # "isEnough":Z
    :cond_13
    const/16 v17, 0x0

    goto :goto_a

    .line 674
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v7, :cond_15

    .end local v17    # "velocity":F
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->snapContentView(Landroid/view/View;F)V

    goto :goto_b

    .restart local v17    # "velocity":F
    :cond_15
    const/16 v17, 0x0

    goto :goto_c

    .line 678
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v7, :cond_17

    .end local v17    # "velocity":F
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    goto/16 :goto_1

    .restart local v17    # "velocity":F
    :cond_17
    const/16 v17, 0x0

    goto :goto_d

    .line 682
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/android/systemui/SwipeHelper;->doSnap(ZF)V

    goto/16 :goto_1

    .line 686
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/android/systemui/SwipeHelper;->doSnap(ZF)V

    goto/16 :goto_1

    .line 594
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeLongPressCallback()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 339
    :cond_0
    return-void
.end method

.method public setDensityScale(F)V
    .locals 0
    .param p1, "densityScale"    # F

    .prologue
    .line 121
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 122
    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/SwipeHelper$LongPressListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    .line 118
    return-void
.end method

.method public setMaxSwipeProgress(F)V
    .locals 0
    .param p1, "maxSwipeProgress"    # F

    .prologue
    .line 259
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    .line 260
    return-void
.end method

.method public setMinSwipeProgress(F)V
    .locals 0
    .param p1, "minSwipeProgress"    # F

    .prologue
    .line 255
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    .line 256
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0
    .param p1, "pagingTouchSlop"    # F

    .prologue
    .line 125
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 126
    return-void
.end method

.method public snapChild(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    .line 547
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 548
    .local v1, "animView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, v1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 549
    .local v2, "canAnimViewBeDismissed":Z
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 550
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const/16 v3, 0x96

    .line 551
    .local v3, "duration":I
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 552
    new-instance v4, Lcom/android/systemui/SwipeHelper$4;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/SwipeHelper$4;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 557
    new-instance v4, Lcom/android/systemui/SwipeHelper$5;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/SwipeHelper$5;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 563
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 564
    return-void
.end method

.method public snapContentView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 782
    if-eqz p2, :cond_1

    .line 783
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/SwipeHelper;->snapContentView(Landroid/view/View;F)V

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 786
    .local v0, "contentView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getNBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 787
    .local v2, "nbgView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getDBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 789
    .local v1, "dbgView":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 790
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 791
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 792
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 793
    const/16 v3, 0x8

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/SwipeHelper;->setSidesVisibility(Landroid/view/View;I)V

    goto :goto_0
.end method
