.class public Lcom/android/systemui/statusbar/DragDownHelper;
.super Ljava/lang/Object;
.source "DragDownHelper.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
    }
.end annotation


# static fields
.field private static final RUBBERBAND_FACTOR_EXPANDABLE:F = 0.5f

.field private static final RUBBERBAND_FACTOR_STATIC:F = 0.15f

.field private static final SPRING_BACK_ANIMATION_LENGTH_MS:I = 0x177


# instance fields
.field private mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

.field private mDraggedFarEnough:Z

.field private mDraggingDown:Z

.field private mHost:Landroid/view/View;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastHeight:F

.field private mMinDragDistance:I

.field private mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

.field private final mTemp2:[I

.field private mTouchSlop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/ExpandHelper$Callback;Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "callback"    # Lcom/android/systemui/ExpandHelper$Callback;
    .param p4, "dragDownCallback"    # Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0382

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mMinDragDistance:I

    .line 62
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 64
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTouchSlop:F

    .line 65
    iput-object p3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 66
    iput-object p4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    .line 67
    iput-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mHost:Landroid/view/View;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/DragDownHelper;)Lcom/android/systemui/ExpandHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/DragDownHelper;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/DragDownHelper;)Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/DragDownHelper;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    return-object v0
.end method

.method private cancelExpansion()V
    .locals 4

    .prologue
    .line 198
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 199
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 200
    const-wide/16 v2, 0x177

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 201
    new-instance v1, Lcom/android/systemui/statusbar/DragDownHelper$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/DragDownHelper$2;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 207
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 208
    return-void
.end method

.method private cancelExpansion(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 5
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 180
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getMinHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 195
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v2, "actualHeight"

    const/4 v1, 0x2

    new-array v3, v1, [I

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v4

    aput v4, v3, v1

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->shouldExpand()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxHeight()I

    move-result v1

    :goto_1
    aput v1, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 186
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 187
    const-wide/16 v2, 0x177

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 188
    new-instance v1, Lcom/android/systemui/statusbar/DragDownHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/DragDownHelper$1;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 194
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 183
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getMinHeight()I

    move-result v1

    goto :goto_1
.end method

.method private captureStartingChild(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v0, :cond_0

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/DragDownHelper;->findView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 159
    :cond_0
    return-void
.end method

.method private findView(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mHost:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method private handleExpansion(FLcom/android/systemui/statusbar/ExpandableView;)V
    .locals 6
    .param p1, "heightDelta"    # F
    .param p2, "child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 162
    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 163
    const/4 p1, 0x0

    .line 165
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->isContentExpandable()Z

    move-result v0

    .line 166
    .local v0, "expandable":Z
    if-eqz v0, :cond_2

    const/high16 v3, 0x3f000000    # 0.5f

    .line 169
    .local v3, "rubberbandFactor":F
    :goto_0
    mul-float v2, p1, v3

    .line 170
    .local v2, "rubberband":F
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getMinHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 171
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getMinHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v1, v4, v5

    .line 172
    .local v1, "overshoot":F
    const v4, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v4

    .line 173
    sub-float/2addr v2, v1

    .line 175
    .end local v1    # "overshoot":F
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->shouldExpand()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxHeight()I

    move-result v4

    :goto_1
    int-to-float v4, v4

    add-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(I)V

    .line 177
    return-void

    .line 166
    .end local v2    # "rubberband":F
    .end local v3    # "rubberbandFactor":F
    :cond_2
    const v3, 0x3e19999a    # 0.15f

    goto :goto_0

    .line 175
    .restart local v2    # "rubberband":F
    .restart local v3    # "rubberbandFactor":F
    :cond_3
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getMinHeight()I

    move-result v4

    goto :goto_1
.end method

.method private stopDragging()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/DragDownHelper;->cancelExpansion(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 216
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onDragDownReset()V

    .line 218
    return-void

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->cancelExpansion()V

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 73
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 75
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v3, v4

    .line 101
    :cond_1
    :goto_1
    return v3

    .line 77
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    .line 78
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    .line 79
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    .line 80
    iput v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    .line 81
    iput v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    goto :goto_0

    .line 85
    :pswitch_2
    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    sub-float v0, v2, v5

    .line 86
    .local v0, "h":F
    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTouchSlop:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    .line 87
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    .line 88
    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    iget v6, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/DragDownHelper;->captureStartingChild(FF)V

    .line 89
    iput v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    .line 90
    iput v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    .line 91
    iget-object v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onTouchSlopExceeded()V

    .line 93
    iget-object v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v5, :cond_1

    move v3, v4

    .line 96
    goto :goto_1

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    if-nez v4, :cond_0

    .line 149
    :goto_0
    return v2

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 110
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 112
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 134
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    sub-float v5, v1, v5

    float-to-int v5, v5

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onDraggedDown(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 136
    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v3, :cond_1

    .line 137
    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->setEmptyDragAmount(F)V

    .line 139
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    goto :goto_0

    .line 114
    :pswitch_1
    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    sub-float v4, v1, v4

    iput v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    .line 115
    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/DragDownHelper;->captureStartingChild(FF)V

    .line 116
    iget-object v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v4, :cond_3

    .line 117
    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/DragDownHelper;->handleExpansion(FLcom/android/systemui/statusbar/ExpandableView;)V

    .line 121
    :goto_1
    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mMinDragDistance:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 122
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    if-nez v2, :cond_2

    .line 123
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    .line 124
    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onThresholdReached()V

    :cond_2
    :goto_2
    move v2, v3

    .line 132
    goto :goto_0

    .line 119
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->setEmptyDragAmount(F)V

    goto :goto_1

    .line 127
    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    if-eqz v4, :cond_2

    .line 128
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    .line 129
    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onDragDownReset()V

    goto :goto_2

    .line 141
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    goto :goto_0

    .line 146
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
