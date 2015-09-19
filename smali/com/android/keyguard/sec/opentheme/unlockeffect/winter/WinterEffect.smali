.class public Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;
.super Landroid/widget/FrameLayout;
.source "WinterEffect.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "WinterEffect"


# instance fields
.field private alpha:Landroid/animation/ValueAnimator;

.field private alphaBack:Landroid/animation/ValueAnimator;

.field private dk:F

.field private dm:F

.field private dx:F

.field private m:I

.field private mContext:Landroid/content/Context;

.field private mHasAddImage:Z

.field private mImageEffect:Landroid/widget/ImageView;

.field private mImageTouch:Landroid/widget/ImageView;

.field private mImageTouch2:Landroid/widget/ImageView;

.field private mScreenAdjust:F

.field private maxRand:F

.field private resId:[I

.field private resIdTouch:[I

.field private rotation:Landroid/animation/ValueAnimator;

.field private scaleX:Landroid/animation/ValueAnimator;

.field private scaleXback:Landroid/animation/ValueAnimator;

.field private scaleXblank:Landroid/animation/ValueAnimator;

.field private scaleY:Landroid/animation/ValueAnimator;

.field private scaleYback:Landroid/animation/ValueAnimator;

.field private scaleYblank:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->maxRand:F

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dm:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    .line 27
    iput v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->m:I

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcom/android/keyguard/R$drawable;->festival_unlock_effect_01:I

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->festival_unlock_effect_02:I

    aput v1, v0, v3

    sget v1, Lcom/android/keyguard/R$drawable;->festival_unlock_effect_03:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->resId:[I

    .line 32
    new-array v0, v4, [I

    sget v1, Lcom/android/keyguard/R$drawable;->festival_unlock_touch_01:I

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->festival_unlock_touch_02:I

    aput v1, v0, v3

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->resIdTouch:[I

    .line 35
    iput-boolean v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mHasAddImage:Z

    .line 41
    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    .line 43
    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->init()V

    .line 44
    return-void
.end method


# virtual methods
.method public add(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x42200000    # 40.0f

    const/high16 v4, 0x41f00000    # 30.0f

    const/4 v3, -0x2

    .line 51
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->resIdTouch:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch2:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->resIdTouch:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->addView(Landroid/view/View;II)V

    .line 57
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch2:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->addView(Landroid/view/View;II)V

    .line 59
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v1, v4

    sub-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v1, v4

    sub-float v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 61
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch2:Landroid/widget/ImageView;

    const/high16 v1, 0x40800000    # 4.0f

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v1, v2

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 62
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch2:Landroid/widget/ImageView;

    const/high16 v1, 0x41100000    # 9.0f

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v1, v2

    add-float/2addr v1, p2

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 64
    iput-boolean v6, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mHasAddImage:Z

    .line 65
    return-void
.end method

.method public clearEffect()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dm:F

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->removeView(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch2:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->removeView(Landroid/view/View;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->removeAllViews()V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mHasAddImage:Z

    .line 212
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public move(FF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 68
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 69
    .local v0, "as":Landroid/animation/AnimatorSet;
    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->maxRand:F

    float-to-double v4, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dx:F

    .line 71
    iget-boolean v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mHasAddImage:Z

    if-nez v3, :cond_0

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->add(FF)V

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch:Landroid/widget/ImageView;

    const/high16 v4, 0x41f00000    # 30.0f

    iget v5, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v4, v5

    sub-float v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 75
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch:Landroid/widget/ImageView;

    const/high16 v4, 0x41f00000    # 30.0f

    iget v5, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v4, v5

    sub-float v4, p2, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 77
    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dm:F

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dm:F

    .line 78
    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dm:F

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 79
    const/high16 v3, 0x41200000    # 10.0f

    iput v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dm:F

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch2:Landroid/widget/ImageView;

    const/high16 v4, 0x40800000    # 4.0f

    iget v5, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v4, v5

    sub-float v4, p1, v4

    const/high16 v5, 0x42200000    # 40.0f

    iget v6, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dm:F

    iget v6, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 82
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch2:Landroid/widget/ImageView;

    const/high16 v4, 0x41100000    # 9.0f

    iget v5, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v4, v5

    add-float/2addr v4, p2

    const/high16 v5, 0x42200000    # 40.0f

    iget v6, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dm:F

    iget v6, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 84
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 85
    .local v2, "rnd2":Ljava/util/Random;
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->m:I

    .line 86
    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->m:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_3

    .line 87
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    .line 88
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->resId:[I

    iget v5, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->m:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->addView(Landroid/view/View;II)V

    .line 91
    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->m:I

    if-nez v3, :cond_4

    .line 92
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 93
    .local v1, "rnd":Ljava/util/Random;
    const-wide v4, 0x3fe3333340000000L    # 0.6000000238418579

    const-wide v6, 0x3fb999999999999aL    # 0.1

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-double v8, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    .line 94
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dx:F

    sub-float v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 95
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dx:F

    add-float/2addr v4, p2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 96
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    .line 98
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleY:Landroid/animation/ValueAnimator;

    .line 100
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x50

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 101
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleY:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x50

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 102
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    .line 104
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYblank:Landroid/animation/ValueAnimator;

    .line 106
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x46

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 107
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYblank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x46

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 108
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXback:Landroid/animation/ValueAnimator;

    .line 110
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYback:Landroid/animation/ValueAnimator;

    .line 112
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXback:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1c2

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 113
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYback:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1c2

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 115
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alpha:Landroid/animation/ValueAnimator;

    .line 117
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alpha:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 118
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alphaBack:Landroid/animation/ValueAnimator;

    .line 120
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alphaBack:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1c2

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 122
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleY:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 123
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYblank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 124
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXback:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYback:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 125
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alphaBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 202
    .end local v1    # "rnd":Ljava/util/Random;
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 204
    :cond_3
    return-void

    .line 126
    :cond_4
    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->m:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 127
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 128
    .restart local v1    # "rnd":Ljava/util/Random;
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide v6, 0x3fb999999999999aL    # 0.1

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-double v8, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    .line 129
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dx:F

    sub-float v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 130
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dx:F

    add-float/2addr v4, p2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 131
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    .line 133
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleY:Landroid/animation/ValueAnimator;

    .line 135
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x82

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 136
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleY:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x82

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 137
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    .line 139
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYblank:Landroid/animation/ValueAnimator;

    .line 141
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x78

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYblank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x78

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 143
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXback:Landroid/animation/ValueAnimator;

    .line 145
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYback:Landroid/animation/ValueAnimator;

    .line 147
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXback:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x2ee

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 148
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYback:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x2ee

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 150
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alpha:Landroid/animation/ValueAnimator;

    .line 152
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alpha:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 153
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alphaBack:Landroid/animation/ValueAnimator;

    .line 155
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alphaBack:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x2ee

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 157
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleY:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 158
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYblank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 159
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXback:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYback:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 160
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alphaBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0

    .line 161
    .end local v1    # "rnd":Ljava/util/Random;
    :cond_5
    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->m:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 162
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 163
    .restart local v1    # "rnd":Ljava/util/Random;
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide v6, 0x3fb999999999999aL    # 0.1

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-double v8, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    .line 164
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dx:F

    sub-float v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 165
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dx:F

    add-float/2addr v4, p2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 166
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    .line 168
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleY:Landroid/animation/ValueAnimator;

    .line 170
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 171
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleY:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 172
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    .line 174
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYblank:Landroid/animation/ValueAnimator;

    .line 176
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 177
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYblank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 178
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXback:Landroid/animation/ValueAnimator;

    .line 180
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYback:Landroid/animation/ValueAnimator;

    .line 182
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXback:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 183
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYback:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 185
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alpha:Landroid/animation/ValueAnimator;

    .line 187
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alpha:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 188
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_5

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alphaBack:Landroid/animation/ValueAnimator;

    .line 190
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alphaBack:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x2ee

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 191
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "rotation"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->rotation:Landroid/animation/ValueAnimator;

    .line 193
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->rotation:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 195
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleY:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 196
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYblank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 197
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXback:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYback:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 198
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alphaBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 199
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->rotation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0

    .line 115
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 118
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 150
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 153
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 185
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 188
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 191
    :array_6
    .array-data 4
        0x0
        0x43aa0000    # 340.0f
    .end array-data
.end method
