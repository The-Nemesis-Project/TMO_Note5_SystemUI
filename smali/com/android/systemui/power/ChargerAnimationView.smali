.class public Lcom/android/systemui/power/ChargerAnimationView;
.super Landroid/widget/RelativeLayout;
.source "ChargerAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_LISTENER_REPEAT_COUNT:I = 0xa

.field private static final ANIM_FRAME_DURATION:I = 0x11

.field private static final ANIM_IMAGE_CABLE_SCALE:F = 1.9f

.field private static final ANIM_IMAGE_WIRELESS_SCALE:F = 5.2f

.field private static final BATTERY_LEVEL_CHANGE_RANGE:I = 0x2

.field private static final BATTERY_LEVEL_TEXT:Ljava/lang/String; = "%s%%"

.field private static final CABLE_CHARGER_ANIM_NAME_FORMAT:Ljava/lang/String; = "charger_anim_cable_%s"

.field private static final CABLE_CHARGER_ANIM_NAME_FORMAT_UNDER_TEN:Ljava/lang/String; = "charger_anim_cable_0%s"

.field private static final CHARGER_ANIMATION_BOOST_FREQ:I = 0x155cc0

.field private static final CHARGER_ANIMATION_BOOST_FREQ_RATIO:F = 1.0f

.field private static final FRAME_OF_CABLE_CHARGER:I = 0x4f

.field private static final FRAME_OF_WIRELESS_CHARGER:I = 0x4f

.field private static final TAG:Ljava/lang/String; = "PowerUI.ChargerAnimationView"

.field private static final WIRELESS_CHARGER_ANIM_NAME_FORMAT:Ljava/lang/String; = "charger_anim_wireless_%s"

.field private static final WIRELESS_CHARGER_ANIM_NAME_FORMAT_UNDER_TEN:Ljava/lang/String; = "charger_anim_wireless_0%s"


# instance fields
.field private mAnimListenerRecursiveCount:I

.field private mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

.field private mAnimationPlaying:Z

.field private mBackGroundAnim:Landroid/animation/AnimatorSet;

.field private mBackGroundView:Landroid/widget/LinearLayout;

.field private mBatteryChangeLevel:I

.field private mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryTextAnim:Landroid/animation/AnimatorSet;

.field private mChargerAnimationView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCurrentBatteryLevel:I

.field private mCurrentChargerType:I

.field private mCurrentOrientation:I

.field private mDVFSHelper:Landroid/os/DVFSHelper;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayDensity:F

.field private mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

.field private mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

.field private mHandler:Landroid/os/Handler;

.field private mIsScreenOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/power/ChargerAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/power/ChargerAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput-boolean v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsScreenOn:Z

    .line 87
    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    .line 88
    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    .line 89
    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentOrientation:I

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    .line 91
    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    .line 103
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/power/ChargerAnimationView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/ChargerAnimationView;)Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/power/ChargerAnimationView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/power/ChargerAnimationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->changeBatteryLevelText()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/power/ChargerAnimationView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/power/ChargerAnimationView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/power/ChargerAnimationView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/ChargerAnimationView;->checkChargerAnimationEnd(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/os/DVFSHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDVFSHelper:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/power/ChargerAnimationView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/ChargerAnimationView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private changeBatteryLevelText()V
    .locals 6

    .prologue
    .line 196
    iget v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 197
    iget v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    iget v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    sub-int v1, v2, v3

    .line 201
    .local v1, "displayBatteryLevel":I
    :goto_0
    const-string v2, "%s%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "batteryLevel":Ljava/lang/String;
    iget v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryChangeLevel:I

    .line 206
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/power/ChargerAnimationView$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/power/ChargerAnimationView$1;-><init>(Lcom/android/systemui/power/ChargerAnimationView;Ljava/lang/String;I)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 215
    return-void

    .line 199
    .end local v0    # "batteryLevel":Ljava/lang/String;
    .end local v1    # "displayBatteryLevel":I
    :cond_0
    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    .restart local v1    # "displayBatteryLevel":I
    goto :goto_0
.end method

.method private checkChargerAnimationEnd(II)V
    .locals 6
    .param p1, "delayTime"    # I
    .param p2, "chargerType"    # I

    .prologue
    .line 338
    move v0, p2

    .line 340
    .local v0, "currentChargerType":I
    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    .line 342
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/power/ChargerAnimationView$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/power/ChargerAnimationView$2;-><init>(Lcom/android/systemui/power/ChargerAnimationView;I)V

    int-to-long v4, p1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 379
    return-void
.end method

.method private dp2px(F)F
    .locals 1
    .param p1, "dp"    # F

    .prologue
    .line 394
    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayDensity:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private makeChargerAnimationDrawable(I)V
    .locals 12
    .param p1, "chargerType"    # I

    .prologue
    const/4 v11, 0x3

    .line 268
    if-ne p1, v11, :cond_0

    .line 269
    const/16 v3, 0x4f

    .line 270
    .local v3, "frameCount":I
    const-string v6, "charger_anim_wireless_%s"

    .line 271
    .local v6, "resName":Ljava/lang/String;
    const-string v7, "charger_anim_wireless_0%s"

    .line 278
    .local v7, "resNameUnderTen":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 280
    const/16 v8, 0xa

    if-ge v4, v8, :cond_1

    .line 281
    const/4 v8, 0x1

    :try_start_0
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "fileName":Ljava/lang/String;
    :goto_2
    const-class v8, Lcom/android/systemui/R$drawable;

    invoke-virtual {v8, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 286
    .local v0, "drawableRes":Ljava/lang/reflect/Field;
    const-class v8, Lcom/android/systemui/R$drawable;

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 288
    .local v5, "resId":I
    if-ne p1, v11, :cond_2

    .line 289
    iget-object v8, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/power/ChargerAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/16 v10, 0x11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 278
    .end local v0    # "drawableRes":Ljava/lang/reflect/Field;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v5    # "resId":I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 273
    .end local v3    # "frameCount":I
    .end local v4    # "i":I
    .end local v6    # "resName":Ljava/lang/String;
    .end local v7    # "resNameUnderTen":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x4f

    .line 274
    .restart local v3    # "frameCount":I
    const-string v6, "charger_anim_cable_%s"

    .line 275
    .restart local v6    # "resName":Ljava/lang/String;
    const-string v7, "charger_anim_cable_0%s"

    .restart local v7    # "resNameUnderTen":Ljava/lang/String;
    goto :goto_0

    .line 283
    .restart local v4    # "i":I
    :cond_1
    const/4 v8, 0x1

    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "fileName":Ljava/lang/String;
    goto :goto_2

    .line 291
    .restart local v0    # "drawableRes":Ljava/lang/reflect/Field;
    .restart local v5    # "resId":I
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/power/ChargerAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/16 v10, 0x11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 292
    .end local v0    # "drawableRes":Ljava/lang/reflect/Field;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v5    # "resId":I
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_3

    .line 294
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    .line 296
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 300
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    return-void
.end method

.method private setBackGroundAnimation()V
    .locals 4

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    const-string v2, "alpha"

    const/4 v3, 0x7

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 173
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 175
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 176
    return-void

    .line 172
    nop

    :array_0
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x3e4ccccd    # 0.2f
        0x0
    .end array-data
.end method

.method private setBatteryLevelTextAnimation()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x320

    const/4 v6, 0x2

    .line 183
    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    const-string v4, "alpha"

    const/4 v5, 0x7

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 184
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x640

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 186
    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 187
    .local v1, "scaleX":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 188
    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 189
    .local v2, "scaleY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 191
    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 192
    return-void

    .line 183
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3ecccccd    # 0.4f
        0x0
    .end array-data

    .line 186
    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    .line 188
    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setCableChargerAnimation()V
    .locals 7

    .prologue
    const/16 v6, 0xf

    const/4 v5, 0x1

    const/4 v3, -0x2

    const v4, 0x3ff33333    # 1.9f

    .line 231
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    .line 232
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 233
    invoke-direct {p0, v5}, Lcom/android/systemui/power/ChargerAnimationView;->makeChargerAnimationDrawable(I)V

    .line 235
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 236
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 238
    .local v0, "currentOrientaion":I
    packed-switch v0, :pswitch_data_0

    .line 252
    :pswitch_0
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 253
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 254
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 255
    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {p0, v2}, Lcom/android/systemui/power/ChargerAnimationView;->dp2px(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 258
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 260
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 261
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    return-void

    .line 240
    :pswitch_1
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 241
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 242
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    .line 246
    :pswitch_2
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 247
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 248
    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setWirelessChargerAnimation()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const v3, 0x40a66666    # 5.2f

    .line 218
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    .line 219
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 220
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->makeChargerAnimationDrawable(I)V

    .line 222
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 223
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 224
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 226
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 227
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mHandler:Landroid/os/Handler;

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/power/ChargerAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplayDensity:F

    .line 114
    const v0, 0x7f0e00b4

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/ChargerAnimationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Landroid/widget/ImageView;

    .line 126
    const v0, 0x7f0e00b3

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/ChargerAnimationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    .line 127
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim:Landroid/animation/AnimatorSet;

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setBackGroundAnimation()V

    .line 130
    const v0, 0x7f0e00b5

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/ChargerAnimationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 131
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setBatteryLevelTextAnimation()V

    .line 134
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    const-string v2, "CHARGER_ANIMATION_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDVFSHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDVFSHelper:Landroid/os/DVFSHelper;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v4, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximum(D)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 136
    return-void
.end method

.method protected setChargerAnimationViewVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 143
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/ChargerAnimationView;->setVisibility(I)V

    .line 145
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChargingAnimationListner(Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationListener:Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;

    .line 140
    return-void
.end method

.method protected setScreenOrientationState(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentOrientation:I

    .line 154
    return-void
.end method

.method protected setScreenTurnOnState(Z)V
    .locals 0
    .param p1, "isScreenOn"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mIsScreenOn:Z

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setBackGroundAnimation()V

    .line 150
    return-void
.end method

.method protected setWindowDisplay(Landroid/view/Display;)V
    .locals 0
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDisplay:Landroid/view/Display;

    .line 158
    return-void
.end method

.method protected startChargerAnimation(IIZ)V
    .locals 3
    .param p1, "chargerType"    # I
    .param p2, "currentBatteryLevel"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 303
    iput p1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    .line 305
    iget-boolean v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    if-eqz v1, :cond_0

    .line 306
    const-string v1, "PowerUI.ChargerAnimationView"

    const-string v2, "Animation is playing, return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->acquire()V

    .line 311
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    .line 315
    iput p2, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    .line 318
    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 319
    if-eqz p3, :cond_1

    .line 320
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 322
    :cond_1
    const/16 v0, 0x53f

    .line 323
    .local v0, "animDuration":I
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setWirelessChargerAnimation()V

    .line 324
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Wireless:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 325
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mBatteryTextAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 326
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->changeBatteryLevelText()V

    .line 333
    :goto_1
    const-string v1, "PowerUI.ChargerAnimationView"

    const-string v2, "Animation Started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->checkChargerAnimationEnd(II)V

    goto :goto_0

    .line 328
    .end local v0    # "animDuration":I
    :cond_2
    const/16 v0, 0x53f

    .line 329
    .restart local v0    # "animDuration":I
    invoke-direct {p0}, Lcom/android/systemui/power/ChargerAnimationView;->setCableChargerAnimation()V

    .line 330
    iget-object v1, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1
.end method

.method protected stopChargerAnimation()V
    .locals 2

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentChargerType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 383
    const-string v0, "PowerUI.ChargerAnimationView"

    const-string v1, "Orientation change so stop annimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mFrameAnimation_Cable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 386
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 389
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mAnimListenerRecursiveCount:I

    .line 391
    :cond_0
    return-void
.end method
