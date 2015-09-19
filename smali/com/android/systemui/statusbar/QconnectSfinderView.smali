.class public Lcom/android/systemui/statusbar/QconnectSfinderView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "QconnectSfinderView.java"


# instance fields
.field private mAnimating:Z

.field private final mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mContent:Landroid/view/View;

.field private final mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mHeight:I

.field private mIsVisible:Z

.field private mWillBeGone:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v2, v1, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 43
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/QconnectSfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c043f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mHeight:I

    .line 48
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/QconnectSfinderView;->setNotification(Z)V

    .line 49
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/QconnectSfinderView;->setShouldSidePaddingAdded(Z)V

    .line 54
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/QconnectSfinderView;->setFocusable(Z)V

    .line 55
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/QconnectSfinderView;->setDescendantFocusability(I)V

    .line 56
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/QconnectSfinderView;->setShouldSidePaddingAdded(Z)V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/QconnectSfinderView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/QconnectSfinderView;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mAnimating:Z

    return p1
.end method

.method private animateText(ZLjava/lang/Runnable;)V
    .locals 6
    .param p1, "nowVisible"    # Z
    .param p2, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 118
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mIsVisible:Z

    if-eq p1, v2, :cond_3

    .line 120
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 122
    .local v0, "endValue":F
    :goto_0
    if-eqz p1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 127
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mAnimating:Z

    .line 128
    iget-object v2, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x104

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/QconnectSfinderView$1;

    invoke-direct {v3, p0, p2}, Lcom/android/systemui/statusbar/QconnectSfinderView$1;-><init>(Lcom/android/systemui/statusbar/QconnectSfinderView;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 142
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mIsVisible:Z

    .line 148
    .end local v0    # "endValue":F
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_0
    :goto_2
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    .restart local v0    # "endValue":F
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .restart local v1    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_1

    .line 144
    .end local v0    # "endValue":F
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_3
    if-eqz p2, :cond_0

    .line 145
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 172
    return-void
.end method

.method protected getInitialHeight()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mHeight:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mHeight:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mIsVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableView;->onFinishInflate()V

    .line 65
    const v0, 0x7f0e0286

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/QconnectSfinderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mContent:Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/QconnectSfinderView;->setInvisible()V

    .line 67
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 89
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ExpandableView;->onLayout(ZIIII)V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/QconnectSfinderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 91
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/QconnectSfinderView;->measureChildren(II)V

    .line 82
    iget v0, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mHeight:I

    .line 83
    .local v0, "height":I
    iget v1, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mHeight:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/QconnectSfinderView;->setActualHeight(I)V

    .line 84
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/QconnectSfinderView;->setMeasuredDimension(II)V

    .line 85
    return-void
.end method

.method public performAddAnimation(JJ)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/QconnectSfinderView;->performVisibilityAnimation(Z)V

    .line 163
    return-void
.end method

.method public performRemoveAnimation(JFLjava/lang/Runnable;)V
    .locals 1
    .param p1, "duration"    # J
    .param p3, "translationDirection"    # F
    .param p4, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/QconnectSfinderView;->performVisibilityAnimation(Z)V

    .line 158
    return-void
.end method

.method public performVisibilityAnimation(Z)V
    .locals 1
    .param p1, "nowVisible"    # Z

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/QconnectSfinderView;->animateText(ZLjava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public performVisibilityAnimation(ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "nowVisible"    # Z
    .param p2, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/QconnectSfinderView;->animateText(ZLjava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public setInvisible()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mIsVisible:Z

    .line 153
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mContent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public setWillBeGone(Z)V
    .locals 0
    .param p1, "willBeGone"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mWillBeGone:Z

    .line 180
    return-void
.end method

.method public willBeGone()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/QconnectSfinderView;->mWillBeGone:Z

    return v0
.end method
