.class public Lcom/android/keyguard/KeyguardSecurityViewHelper;
.super Ljava/lang/Object;
.source "KeyguardSecurityViewHelper.java"


# static fields
.field private static final ANIMATION_DOWN_DURATION:I = 0x1d3

.field private static final ANIMATION_DOWN_TIMEOFFSET:I = 0x258

.field private static final ANIMATION_UP_DURATION:I = 0x14d

.field private static final ANIMATION_UP_TIMEOFFSET:I = 0x10b

.field private static mChoreographer:Landroid/view/Choreographer;

.field private static mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

.field private static mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 5
    .param p0, "securityMessageDisplay"    # Lcom/android/keyguard/SecurityMessageDisplay;
    .param p1, "ecaView"    # Landroid/view/View;
    .param p2, "bouncerFrame"    # Landroid/graphics/drawable/Drawable;
    .param p3, "duration"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 85
    if-eqz p0, :cond_0

    .line 86
    invoke-interface {p0, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->hideBouncer(I)V

    .line 88
    :cond_0
    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 90
    if-lez p3, :cond_3

    .line 91
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 92
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 93
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityViewHelper$2;

    invoke-direct {v1, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 99
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 104
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 105
    if-lez p3, :cond_4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 107
    .restart local v0    # "anim":Landroid/animation/Animator;
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 108
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 113
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_2
    :goto_1
    return-void

    .line 101
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 106
    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private static setScaleAnimation()V
    .locals 16

    .prologue
    const v2, 0x3f83d70a    # 1.03f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    .line 165
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    .line 167
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 168
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 169
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v8, 0x14d

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 171
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    move v8, v2

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v5

    move v13, v6

    move v14, v5

    move v15, v6

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sput-object v7, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    .line 173
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 174
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 175
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x1d3

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 176
    return-void
.end method

.method public static showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 5
    .param p0, "securityMessageDisplay"    # Lcom/android/keyguard/SecurityMessageDisplay;
    .param p1, "ecaView"    # Landroid/view/View;
    .param p2, "bouncerFrame"    # Landroid/graphics/drawable/Drawable;
    .param p3, "duration"    # I

    .prologue
    const/4 v4, 0x0

    .line 46
    if-eqz p0, :cond_0

    .line 47
    invoke-interface {p0, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->showBouncer(I)V

    .line 49
    :cond_0
    if-eqz p1, :cond_1

    .line 50
    if-lez p3, :cond_3

    .line 51
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 52
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 53
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityViewHelper$1;

    invoke-direct {v1, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 66
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 72
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    if-lez p3, :cond_4

    .line 74
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 75
    .restart local v0    # "anim":Landroid/animation/Animator;
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 76
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 81
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_2
    :goto_1
    return-void

    .line 68
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 69
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 78
    :cond_4
    const/16 v1, 0xff

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 74
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public static showBouncerWithScaleAnimation(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V
    .locals 6
    .param p0, "securityMessageDisplay"    # Lcom/android/keyguard/SecurityMessageDisplay;
    .param p1, "ecaView"    # Landroid/view/View;
    .param p2, "animationView"    # Landroid/view/View;
    .param p3, "duration"    # I

    .prologue
    const/4 v5, 0x0

    .line 117
    if-eqz p0, :cond_0

    .line 118
    invoke-interface {p0, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->showBouncer(I)V

    .line 120
    :cond_0
    if-eqz p1, :cond_1

    .line 121
    if-lez p3, :cond_3

    .line 122
    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v5, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 123
    .local v0, "anim":Landroid/animation/Animator;
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 124
    new-instance v2, Lcom/android/keyguard/KeyguardSecurityViewHelper$3;

    invoke-direct {v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 142
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 143
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 144
    .local v1, "bouncerFrame":Landroid/graphics/drawable/Drawable;
    if-lez p3, :cond_4

    .line 145
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->setScaleAnimation()V

    .line 146
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationUp:Landroid/view/animation/ScaleAnimation;

    const/16 v3, 0x10b

    invoke-static {p2, v2, v3}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->startViewAnimation(Landroid/view/View;Landroid/view/animation/ScaleAnimation;I)V

    .line 147
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityViewHelper;->mScaleAnimationDown:Landroid/view/animation/ScaleAnimation;

    const/16 v3, 0x258

    invoke-static {p2, v2, v3}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->startViewAnimation(Landroid/view/View;Landroid/view/animation/ScaleAnimation;I)V

    .line 149
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 151
    .restart local v0    # "anim":Landroid/animation/Animator;
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 152
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 162
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "bouncerFrame":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    return-void

    .line 138
    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 139
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 155
    .restart local v1    # "bouncerFrame":Landroid/graphics/drawable/Drawable;
    :cond_4
    const/high16 v2, 0x437f0000    # 255.0f

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 157
    if-eqz v1, :cond_2

    .line 158
    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 150
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private static startViewAnimation(Landroid/view/View;Landroid/view/animation/ScaleAnimation;I)V
    .locals 4
    .param p0, "animationView"    # Landroid/view/View;
    .param p1, "Anim"    # Landroid/view/animation/ScaleAnimation;
    .param p2, "offset"    # I

    .prologue
    .line 179
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 180
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 181
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityViewHelper$4;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper$4;-><init>(Landroid/view/View;Landroid/view/animation/ScaleAnimation;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method
