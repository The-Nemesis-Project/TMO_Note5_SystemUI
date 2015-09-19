.class public Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewWallpaperSlider.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;
    }
.end annotation


# static fields
.field private static final ANIMATING_TIME:I = 0x320

.field private static final START_SLIDE:I = 0x2710

.field private static final STOP_SLIDE:I = 0x2711

.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewWallpaperSlider"


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mIsAnimating:Z

.field private mNewView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

.field private mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

.field private mScreenState:Z

.field private mSlideAnim:Landroid/animation/AnimatorSet;

.field private mSlideAnimListener:Landroid/animation/AnimatorListenerAdapter;

.field private mWidgetController:Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

.field private mWindowHeight:I

.field private mWindowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput-boolean v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mIsAnimating:Z

    .line 39
    iput-boolean v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mScreenState:Z

    .line 155
    new-instance v3, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$1;-><init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mAnimationHandler:Landroid/os/Handler;

    .line 177
    new-instance v3, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$2;-><init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnimListener:Landroid/animation/AnimatorListenerAdapter;

    .line 52
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 53
    .local v1, "displaymetrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWindowWidth:I

    .line 54
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWindowHeight:I

    .line 55
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    .line 57
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 58
    const/high16 v0, 0x43200000    # 160.0f

    .line 59
    .local v0, "cocktailBarSize":F
    iget v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWindowWidth:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWindowWidth:I

    .line 61
    const-string v3, "KeyguardEffectViewWallpaperSlider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cocktailBarSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v0    # "cocktailBarSize":F
    :cond_0
    new-instance v3, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    invoke-direct {v3, p0, p1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;-><init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mNewView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    .line 65
    new-instance v3, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    invoke-direct {v3, p0, p1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;-><init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    .line 66
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->getCurrentWallpaperDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWindowWidth:I

    iget v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWindowHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mNewView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    invoke-virtual {p0, v3, v2}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    invoke-virtual {p0, v3, v2}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->setVisibility(I)V

    .line 73
    invoke-static {p1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWidgetController:Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->startSlideShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->handleStopSlideEffect()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->getCurrentWallpaperPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCurrentWallpaperDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 122
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->getCurrentWallpaperPath()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "wallpaperPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 126
    .local v3, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 127
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 128
    .local v1, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 129
    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 130
    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 131
    const/4 v5, 0x4

    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 132
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 133
    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 135
    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 141
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v3

    .line 138
    :cond_0
    const-string v5, "KeyguardEffectViewWallpaperSlider"

    const-string v6, "file is not exist."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCurrentWallpaperPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleStopSlideEffect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mIsAnimating:Z

    if-eqz v0, :cond_1

    .line 104
    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "Sliding finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->setVisibility(I)V

    .line 106
    iput-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mIsAnimating:Z

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mNewView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->copyView(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;)V

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->setPosition(I)V

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mNewView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    iget v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWindowWidth:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->setPosition(I)V

    .line 110
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWidgetController:Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->handleUpdateEnd()V

    .line 115
    :cond_1
    return-void
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method private isSameBitmap()Z
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    iget-object v1, v1, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->path:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 146
    const-string v1, "KeyguardEffectViewWallpaperSlider"

    const-string v2, "mOldInfo.path is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v1, 0x1

    .line 152
    :goto_0
    return v1

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->getCurrentWallpaperPath()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "newBitmapPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    iget-object v1, v1, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private startSlideShow()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 166
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    const-string v3, "x"

    new-array v4, v9, [F

    aput v6, v4, v7

    iget v5, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWindowWidth:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 167
    .local v1, "oldMove":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mNewView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    const-string v3, "x"

    new-array v4, v9, [F

    iget v5, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWindowWidth:I

    int-to-float v5, v5

    aput v5, v4, v7

    aput v6, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 169
    .local v0, "newMove":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnimListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 171
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 172
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x320

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 173
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 174
    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mSlideAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 175
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 199
    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "clearUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->handleStopSlideEffect()V

    .line 201
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 228
    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "getUnlockDelay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public handleShowSlideEffect()V
    .locals 3

    .prologue
    .line 77
    const-string v1, "KeyguardEffectViewWallpaperSlider"

    const-string v2, "handleShowSlideEffect."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->isSameBitmap()Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->handleStopSlideEffect()V

    .line 81
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->getCurrentWallpaperDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 82
    .local v0, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_1

    .line 83
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mNewView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mScreenState:Z

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "KeyguardEffectViewWallpaperSlider"

    const-string v2, "Sliding started."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->setVisibility(I)V

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mIsAnimating:Z

    .line 88
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mAnimationHandler:Landroid/os/Handler;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 89
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mWidgetController:Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->handleUpdateStart()V

    .line 99
    .end local v0    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-void

    .line 91
    .restart local v0    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mOldView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    iget-object v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mNewView:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->copyView(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;)V

    goto :goto_0

    .line 94
    :cond_1
    const-string v1, "KeyguardEffectViewWallpaperSlider"

    const-string v2, "startSlideShow not work. new Bitmap is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    .end local v0    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    const-string v1, "KeyguardEffectViewWallpaperSlider"

    const-string v2, "handleShowSlideEffect not work. same Image."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 234
    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 193
    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->handleStopSlideEffect()V

    .line 195
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->handleStopSlideEffect()V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mScreenState:Z

    .line 219
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->mScreenState:Z

    .line 212
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 305
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 253
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 188
    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 2
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 223
    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "showUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "KeyguardEffectViewWallpaperSlider"

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method
