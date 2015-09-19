.class public Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;
.super Landroid/widget/FrameLayout;
.source "SummerEffect.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SummerEffect"


# instance fields
.field private alpha:Landroid/animation/ValueAnimator;

.field private alphaBack:Landroid/animation/ValueAnimator;

.field private alphaBlank:Landroid/animation/ValueAnimator;

.field private dk:F

.field private dm:F

.field private dn:F

.field private dx:F

.field private m:I

.field private mContext:Landroid/content/Context;

.field private mHasAddImage:Z

.field private mImageEffect:Landroid/widget/ImageView;

.field private mImageTouch:Landroid/widget/ImageView;

.field private mImageTouch2:Landroid/widget/ImageView;

.field private mImageTouch3:Landroid/widget/ImageView;

.field private mScreenAdjust:F

.field private maxRand:F

.field private resId:[I

.field private resIdTouch:[I

.field private rotation:Landroid/animation/ValueAnimator;

.field private scaleX:Landroid/animation/ValueAnimator;

.field private scaleXBack:Landroid/animation/ValueAnimator;

.field private scaleXBlank:Landroid/animation/ValueAnimator;

.field private scaleY:Landroid/animation/ValueAnimator;

.field private scaleYBack:Landroid/animation/ValueAnimator;

.field private scaleYBlank:Landroid/animation/ValueAnimator;

.field private touchAlpha:Landroid/animation/ValueAnimator;

.field private touchAlpha2:Landroid/animation/ValueAnimator;

.field private touchAlpha3:Landroid/animation/ValueAnimator;

.field private touchScaleX:Landroid/animation/ValueAnimator;

.field private touchScaleY:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->maxRand:F

    .line 28
    iput v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dm:F

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dn:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    .line 29
    iput v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->m:I

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [I

    sget v1, Lcom/android/keyguard/R$drawable;->unlock_summer_particle_01:I

    aput v1, v0, v3

    sget v1, Lcom/android/keyguard/R$drawable;->unlock_summer_particle_02:I

    aput v1, v0, v4

    sget v1, Lcom/android/keyguard/R$drawable;->unlock_summer_particle_03:I

    aput v1, v0, v5

    sget v1, Lcom/android/keyguard/R$drawable;->unlock_summer_particle_04:I

    aput v1, v0, v6

    const/4 v1, 0x4

    sget v2, Lcom/android/keyguard/R$drawable;->unlock_summer_particle_05:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/keyguard/R$drawable;->unlock_summer_particle_06:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->resId:[I

    .line 37
    new-array v0, v6, [I

    sget v1, Lcom/android/keyguard/R$drawable;->unlock_summer_touch_01:I

    aput v1, v0, v3

    sget v1, Lcom/android/keyguard/R$drawable;->unlock_summer_touch_02:I

    aput v1, v0, v4

    sget v1, Lcom/android/keyguard/R$drawable;->unlock_summer_touch_03:I

    aput v1, v0, v5

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->resIdTouch:[I

    .line 41
    iput-boolean v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mHasAddImage:Z

    .line 47
    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mScreenAdjust:F

    .line 49
    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->init()V

    .line 50
    return-void
.end method


# virtual methods
.method public add(FF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const-wide/16 v8, 0x14a

    const/4 v7, 0x1

    const/high16 v6, 0x42b80000    # 92.0f

    const/4 v5, 0x2

    const/4 v4, -0x2

    .line 57
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 58
    .local v0, "as":Landroid/animation/AnimatorSet;
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch:Landroid/widget/ImageView;

    .line 59
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->resIdTouch:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch2:Landroid/widget/ImageView;

    .line 61
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->resIdTouch:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch3:Landroid/widget/ImageView;

    .line 63
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch3:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->resIdTouch:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->addView(Landroid/view/View;II)V

    .line 66
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch2:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->addView(Landroid/view/View;II)V

    .line 68
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch3:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->addView(Landroid/view/View;II)V

    .line 70
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mScreenAdjust:F

    mul-float/2addr v2, v6

    sub-float v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 71
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mScreenAdjust:F

    mul-float/2addr v2, v6

    sub-float v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 72
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch2:Landroid/widget/ImageView;

    const/high16 v2, 0x41600000    # 14.0f

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mScreenAdjust:F

    mul-float/2addr v2, v3

    sub-float v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 73
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch2:Landroid/widget/ImageView;

    const/high16 v2, 0x41500000    # 13.0f

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mScreenAdjust:F

    mul-float/2addr v2, v3

    sub-float v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 74
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch3:Landroid/widget/ImageView;

    const/high16 v2, 0x41e80000    # 29.0f

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mScreenAdjust:F

    mul-float/2addr v2, v3

    sub-float v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 75
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch3:Landroid/widget/ImageView;

    const/high16 v2, 0x41c80000    # 25.0f

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mScreenAdjust:F

    mul-float/2addr v2, v3

    sub-float v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 77
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch:Landroid/widget/ImageView;

    const-string v2, "ScaleX"

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->touchScaleX:Landroid/animation/ValueAnimator;

    .line 79
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch:Landroid/widget/ImageView;

    const-string v2, "ScaleY"

    new-array v3, v5, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->touchScaleY:Landroid/animation/ValueAnimator;

    .line 81
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->touchScaleX:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x852

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->touchScaleY:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x852

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 83
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch:Landroid/widget/ImageView;

    const-string v2, "alpha"

    new-array v3, v5, [F

    fill-array-data v3, :array_2

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->touchAlpha:Landroid/animation/ValueAnimator;

    .line 84
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->touchAlpha:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x708

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 85
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->touchScaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->touchScaleY:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 87
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch2:Landroid/widget/ImageView;

    const-string v2, "alpha"

    new-array v3, v5, [F

    fill-array-data v3, :array_3

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->touchAlpha2:Landroid/animation/ValueAnimator;

    .line 88
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->touchAlpha2:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 89
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->touchAlpha2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 91
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch3:Landroid/widget/ImageView;

    const-string v2, "alpha"

    new-array v3, v5, [F

    fill-array-data v3, :array_4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->touchAlpha3:Landroid/animation/ValueAnimator;

    .line 92
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->touchAlpha3:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 93
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->touchAlpha3:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 95
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 96
    iput-boolean v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mHasAddImage:Z

    .line 97
    return-void

    .line 77
    nop

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f733333    # 0.95f
    .end array-data

    .line 79
    :array_1
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f733333    # 0.95f
    .end array-data

    .line 83
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 87
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 91
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public clearEffect()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 309
    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dm:F

    .line 310
    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dn:F

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->removeView(Landroid/view/View;)V

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch2:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->removeView(Landroid/view/View;)V

    .line 313
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch3:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->removeView(Landroid/view/View;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->removeAllViews()V

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mHasAddImage:Z

    .line 316
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public move(FF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 100
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 101
    .local v0, "asMove":Landroid/animation/AnimatorSet;
    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->maxRand:F

    float-to-double v4, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dx:F

    .line 103
    iget-boolean v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mHasAddImage:Z

    if-nez v3, :cond_0

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->add(FF)V

    .line 106
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch:Landroid/widget/ImageView;

    const/high16 v4, 0x42b80000    # 92.0f

    iget v5, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mScreenAdjust:F

    mul-float/2addr v4, v5

    sub-float v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 107
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch:Landroid/widget/ImageView;

    const/high16 v4, 0x42b80000    # 92.0f

    iget v5, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mScreenAdjust:F

    mul-float/2addr v4, v5

    sub-float v4, p2, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 108
    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dm:F

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dm:F

    .line 109
    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dn:F

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dn:F

    .line 110
    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dm:F

    const/high16 v4, 0x427c0000    # 63.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 111
    const/high16 v3, 0x427c0000    # 63.0f

    iput v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dm:F

    .line 113
    :cond_1
    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dn:F

    const/high16 v4, 0x42a20000    # 81.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 114
    const/high16 v3, 0x42a20000    # 81.0f

    iput v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dn:F

    .line 116
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch2:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dm:F

    iget v5, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mScreenAdjust:F

    mul-float/2addr v4, v5

    sub-float v4, p1, v4

    const/high16 v5, 0x41600000    # 14.0f

    iget v6, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mScreenAdjust:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 117
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch2:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dm:F

    iget v5, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mScreenAdjust:F

    mul-float/2addr v4, v5

    sub-float v4, p2, v4

    const/high16 v5, 0x41500000    # 13.0f

    iget v6, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mScreenAdjust:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 118
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch3:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dn:F

    iget v5, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mScreenAdjust:F

    mul-float/2addr v4, v5

    sub-float v4, p1, v4

    const/high16 v5, 0x41e80000    # 29.0f

    iget v6, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mScreenAdjust:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 119
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageTouch3:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dn:F

    iget v5, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mScreenAdjust:F

    mul-float/2addr v4, v5

    sub-float v4, p2, v4

    const/high16 v5, 0x41c80000    # 25.0f

    iget v6, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mScreenAdjust:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 121
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 122
    .local v2, "rnd2":Ljava/util/Random;
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->m:I

    .line 124
    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->m:I

    const/4 v4, 0x6

    if-ge v3, v4, :cond_5

    .line 125
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    .line 126
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->resId:[I

    iget v5, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->m:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->addView(Landroid/view/View;II)V

    .line 130
    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->m:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->m:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 131
    :cond_3
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 132
    .local v1, "rnd":Ljava/util/Random;
    const-wide v4, 0x3fe3333340000000L    # 0.6000000238418579

    const-wide v6, 0x3fb999999999999aL    # 0.1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-double v8, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    .line 133
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dx:F

    sub-float v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 134
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dx:F

    add-float/2addr v4, p2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 135
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleX:Landroid/animation/ValueAnimator;

    .line 137
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleY:Landroid/animation/ValueAnimator;

    .line 139
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleX:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 140
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleY:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 141
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    .line 143
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBlank:Landroid/animation/ValueAnimator;

    .line 145
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x177

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 146
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBlank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x177

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 147
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x3f0ccccd    # 0.55f

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBack:Landroid/animation/ValueAnimator;

    .line 149
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x3f0ccccd    # 0.55f

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBack:Landroid/animation/ValueAnimator;

    .line 151
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBack:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 152
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBack:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 154
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alpha:Landroid/animation/ValueAnimator;

    .line 156
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alpha:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 157
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBlank:Landroid/animation/ValueAnimator;

    .line 159
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBlank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 160
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBack:Landroid/animation/ValueAnimator;

    .line 162
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBack:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 164
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "rotation"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->rotation:Landroid/animation/ValueAnimator;

    .line 166
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->rotation:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 168
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleY:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->rotation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 169
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 170
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 171
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 172
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 304
    .end local v1    # "rnd":Ljava/util/Random;
    :cond_4
    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 306
    :cond_5
    return-void

    .line 173
    :cond_6
    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->m:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->m:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    .line 174
    :cond_7
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 175
    .restart local v1    # "rnd":Ljava/util/Random;
    const-wide v4, 0x3fe6666660000000L    # 0.699999988079071

    const-wide v6, 0x3fb999999999999aL    # 0.1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-double v8, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    .line 176
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dx:F

    sub-float v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 177
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dx:F

    add-float/2addr v4, p2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 178
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleX:Landroid/animation/ValueAnimator;

    .line 180
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleY:Landroid/animation/ValueAnimator;

    .line 182
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleX:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 183
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleY:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 184
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    .line 186
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBlank:Landroid/animation/ValueAnimator;

    .line 188
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x177

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 189
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBlank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x177

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 190
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x3f0ccccd    # 0.55f

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBack:Landroid/animation/ValueAnimator;

    .line 192
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x3f0ccccd    # 0.55f

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBack:Landroid/animation/ValueAnimator;

    .line 194
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBack:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 195
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBack:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 197
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alpha:Landroid/animation/ValueAnimator;

    .line 199
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alpha:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 200
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_5

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBlank:Landroid/animation/ValueAnimator;

    .line 202
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBlank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 203
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBack:Landroid/animation/ValueAnimator;

    .line 205
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBack:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 207
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "rotation"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->rotation:Landroid/animation/ValueAnimator;

    .line 209
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->rotation:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 211
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleY:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->rotation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 212
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 213
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 214
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 215
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0

    .line 216
    .end local v1    # "rnd":Ljava/util/Random;
    :cond_8
    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->m:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9

    .line 217
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 218
    .restart local v1    # "rnd":Ljava/util/Random;
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-double v8, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    .line 219
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dx:F

    sub-float v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 220
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dx:F

    add-float/2addr v4, p2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 221
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleX:Landroid/animation/ValueAnimator;

    .line 223
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleY:Landroid/animation/ValueAnimator;

    .line 225
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleX:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 226
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleY:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 227
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    .line 229
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBlank:Landroid/animation/ValueAnimator;

    .line 231
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x177

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 232
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBlank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x177

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 233
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x3f0ccccd    # 0.55f

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBack:Landroid/animation/ValueAnimator;

    .line 235
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x3f0ccccd    # 0.55f

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBack:Landroid/animation/ValueAnimator;

    .line 237
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBack:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 238
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBack:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 240
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alpha:Landroid/animation/ValueAnimator;

    .line 242
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alpha:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 243
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBlank:Landroid/animation/ValueAnimator;

    .line 245
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBlank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 246
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_a

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBack:Landroid/animation/ValueAnimator;

    .line 248
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBack:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 250
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "rotation"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_b

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->rotation:Landroid/animation/ValueAnimator;

    .line 252
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->rotation:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 254
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleY:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->rotation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 255
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 256
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 257
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 258
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0

    .line 259
    .end local v1    # "rnd":Ljava/util/Random;
    :cond_9
    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->m:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 260
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 261
    .restart local v1    # "rnd":Ljava/util/Random;
    const-wide v4, 0x3fecccccc0000000L    # 0.8999999761581421

    const-wide v6, 0x3fb999999999999aL    # 0.1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-double v8, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    .line 262
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dx:F

    sub-float v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 263
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dx:F

    add-float/2addr v4, p2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 264
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleX:Landroid/animation/ValueAnimator;

    .line 266
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleY:Landroid/animation/ValueAnimator;

    .line 268
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleX:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 269
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleY:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 270
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    .line 272
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBlank:Landroid/animation/ValueAnimator;

    .line 274
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x177

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 275
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBlank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x177

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 276
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x3f0ccccd    # 0.55f

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBack:Landroid/animation/ValueAnimator;

    .line 278
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "ScaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->dk:F

    aput v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x3f0ccccd    # 0.55f

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBack:Landroid/animation/ValueAnimator;

    .line 280
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBack:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 281
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBack:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 283
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_c

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alpha:Landroid/animation/ValueAnimator;

    .line 285
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alpha:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 286
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_d

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBlank:Landroid/animation/ValueAnimator;

    .line 288
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBlank:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 289
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_e

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBack:Landroid/animation/ValueAnimator;

    .line 291
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBack:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 293
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string v4, "rotation"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_f

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->rotation:Landroid/animation/ValueAnimator;

    .line 295
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->rotation:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 297
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleY:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->rotation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 298
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 299
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleYBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->scaleXBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 300
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 301
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->alphaBlank:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0

    .line 154
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 157
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 160
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 164
    :array_3
    .array-data 4
        0x0
        0x43b38000    # 359.0f
    .end array-data

    .line 197
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 200
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 203
    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 207
    :array_7
    .array-data 4
        0x0
        0x43b38000    # 359.0f
    .end array-data

    .line 240
    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 243
    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 246
    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 250
    :array_b
    .array-data 4
        0x0
        0x43b38000    # 359.0f
    .end array-data

    .line 283
    :array_c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 286
    :array_d
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 289
    :array_e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 293
    :array_f
    .array-data 4
        0x0
        0x43b38000    # 359.0f
    .end array-data
.end method
