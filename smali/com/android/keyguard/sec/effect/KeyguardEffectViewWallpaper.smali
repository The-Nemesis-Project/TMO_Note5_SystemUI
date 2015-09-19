.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewWallpaper.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# instance fields
.field private final DBG:Z

.field private final SCREEN_ON_ANIMATION_DURATION:I

.field private final SCREEN_ON_BACKGROUND_SCALE:F

.field private final TAG:Ljava/lang/String;

.field private isSupportMobileKeyboard:Z

.field private mChoreographer:Landroid/view/Choreographer;

.field private mContext:Landroid/content/Context;

.field private mCurrentMobileKeyboard:I

.field private mIsLiveWallpaper:Z

.field private mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

.field private mLockScreenWallpaperImage:Landroid/widget/ImageView;

.field private mScreenOnAnim:Landroid/animation/ValueAnimator;

.field private mScreenOnAnimationValue:F

.field private mScreenOnRunnable:Ljava/lang/Runnable;

.field private mWallpaperPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "isProcessSeparated"    # Z

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const-string v0, "WallpaperWidget"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->DBG:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 45
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mChoreographer:Landroid/view/Choreographer;

    .line 48
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->SCREEN_ON_ANIMATION_DURATION:I

    .line 49
    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->SCREEN_ON_BACKGROUND_SCALE:F

    .line 53
    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->isSupportMobileKeyboard:Z

    .line 54
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mCurrentMobileKeyboard:I

    .line 91
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .line 93
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->isSupportMobileKeyboard:Z

    .line 94
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mCurrentMobileKeyboard:I

    .line 95
    invoke-static {p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isKeyguardEffectViewWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->updateWallpaper(Landroid/content/Context;)V

    .line 100
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->useWaterDropletEffect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->setAnimator()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mScreenOnAnimationValue:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mScreenOnAnimationValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mScreenOnAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    return-object v0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method private setAnimator()V
    .locals 4

    .prologue
    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mScreenOnAnim:Landroid/animation/ValueAnimator;

    .line 58
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mScreenOnAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/CubicEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/CubicEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 59
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mScreenOnAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mScreenOnAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 70
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mScreenOnRunnable:Ljava/lang/Runnable;

    .line 76
    return-void

    .line 57
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateWallpaper(Landroid/content/Context;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 106
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 107
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 108
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 109
    const/4 v0, -0x1

    .line 110
    .local v0, "heights":I
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mCurrentMobileKeyboard:I

    if-ne v1, v3, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->addView(Landroid/view/View;II)V

    .line 114
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->setLockScreenWallpaper()V

    .line 115
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    :cond_0
    return-void
.end method

.method public getBitmapWallpaperImage()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 228
    const-string v1, "WallpaperWidget"

    const-string v2, "getWallpaperImage()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->buildDrawingCache()V

    .line 231
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 199
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWallpaperImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 224
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 204
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->isSupportMobileKeyboard:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mCurrentMobileKeyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-eq v0, v1, :cond_0

    .line 138
    const-string v0, "WallpaperWidget"

    const-string v1, "keyboard ConfigurationChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget v0, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mCurrentMobileKeyboard:I

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->updateWallpaper(Landroid/content/Context;)V

    .line 142
    :cond_0
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public screenTurnedOff()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public screenTurnedOn()V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mScreenOnRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mScreenOnRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 187
    :cond_0
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 255
    const-string v0, "WallpaperWidget"

    const-string v1, "setContextualWallpaper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 259
    :cond_0
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 241
    return-void
.end method

.method public setLockScreenWallpaper()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "WallpaperWidget"

    const-string v1, "setLockScreenWallpaper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 0
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 195
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWallpaper;->setLockScreenWallpaper()V

    .line 180
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method
