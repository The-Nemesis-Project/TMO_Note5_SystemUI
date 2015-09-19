.class public Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;
.super Ljava/lang/Object;
.source "ParticleStraightLine.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private alpha:Landroid/animation/ValueAnimator;

.field private alphaEnd:Landroid/animation/ValueAnimator;

.field private finalTranslateX:Landroid/animation/ValueAnimator;

.field private finalTranslateY:Landroid/animation/ValueAnimator;

.field private rotation:Landroid/animation/ValueAnimator;

.field private scaleX:Landroid/animation/ValueAnimator;

.field private scaleY:Landroid/animation/ValueAnimator;

.field private together:Landroid/animation/AnimatorSet;

.field private translateX:Landroid/animation/ValueAnimator;

.field private translateY:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;JFFFFJJFFJ)V
    .locals 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "alphaDuration"    # J
    .param p4, "startX"    # F
    .param p5, "startY"    # F
    .param p6, "endX"    # F
    .param p7, "endY"    # F
    .param p8, "tranlsateDuration"    # J
    .param p10, "KeepTime"    # J
    .param p12, "finalEndX"    # F
    .param p13, "finalEndY"    # F
    .param p14, "finalTranlsateDuration"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->alpha:Landroid/animation/ValueAnimator;

    .line 39
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 42
    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p4, v3, v4

    const/4 v4, 0x1

    aput p6, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    .line 43
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p8, p9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 44
    const-string v2, "y"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p5, v3, v4

    const/4 v4, 0x1

    aput p7, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateY:Landroid/animation/ValueAnimator;

    .line 45
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p8, p9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p6, v3, v4

    const/4 v4, 0x1

    aput p12, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->finalTranslateX:Landroid/animation/ValueAnimator;

    .line 50
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->finalTranslateX:Landroid/animation/ValueAnimator;

    move-wide/from16 v0, p14

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 51
    const-string v2, "y"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p7, v3, v4

    const/4 v4, 0x1

    aput p13, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->finalTranslateY:Landroid/animation/ValueAnimator;

    .line 53
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->finalTranslateY:Landroid/animation/ValueAnimator;

    move-wide/from16 v0, p14

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 56
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    .line 57
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 58
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 59
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->finalTranslateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    .line 60
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->finalTranslateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->finalTranslateY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 61
    return-void

    .line 38
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/widget/ImageView;JFFFFJZJF)V
    .locals 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "alphaDuration"    # J
    .param p4, "endX"    # F
    .param p5, "endY"    # F
    .param p6, "startX"    # F
    .param p7, "startY"    # F
    .param p8, "tranlsateDuration"    # J
    .param p10, "isRotate"    # Z
    .param p11, "rotateDuration"    # J
    .param p13, "randomSize"    # F

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p6, v3, v4

    const/4 v4, 0x1

    aput p4, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    .line 69
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p8, p9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 70
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 71
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 72
    const-string v2, "y"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p7, v3, v4

    const/4 v4, 0x1

    aput p5, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateY:Landroid/animation/ValueAnimator;

    .line 73
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p8, p9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 74
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateY:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 75
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateY:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 78
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->alpha:Landroid/animation/ValueAnimator;

    .line 79
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 80
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->alpha:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 81
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->alpha:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 82
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->alpha:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    const-string v2, "scaleX"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p13, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->scaleX:Landroid/animation/ValueAnimator;

    .line 86
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 87
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->scaleX:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 88
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->scaleX:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 90
    const-string v2, "scaleY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p13, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->scaleY:Landroid/animation/ValueAnimator;

    .line 91
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->scaleY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 92
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->scaleY:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 93
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->scaleY:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 96
    if-eqz p10, :cond_0

    .line 97
    const-string v2, "rotation"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->rotation:Landroid/animation/ValueAnimator;

    .line 98
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->rotation:Landroid/animation/ValueAnimator;

    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 99
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->rotation:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 100
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->rotation:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 104
    :cond_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    .line 105
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 106
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 107
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 108
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->scaleY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 109
    if-eqz p10, :cond_1

    .line 110
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->translateX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->rotation:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 112
    :cond_1
    return-void

    .line 78
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 97
    :array_1
    .array-data 4
        0x0
        0x43b38000    # 359.0f
    .end array-data
.end method


# virtual methods
.method public getAnimation()Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/ParticleStraightLine;->together:Landroid/animation/AnimatorSet;

    return-object v0
.end method
