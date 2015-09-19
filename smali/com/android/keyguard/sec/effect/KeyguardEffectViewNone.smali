.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewNone.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# static fields
.field private static final LOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_none_lock.ogg"

.field public static final TYPE_SHORTCUT:I = 0x1

.field public static final TYPE_UNLOCK:I = 0x0

.field private static final UNLOCK_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_none_unlock.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private circleEffect:Lcom/samsung/android/visualeffect/EffectView;

.field private mContext:Landroid/content/Context;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private touchHashmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, "/system/media/audio/ui/ve_none_lock.ogg"

    const-string v2, "/system/media/audio/ui/ve_none_unlock.ogg"

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 28
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    .line 40
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 28
    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    .line 40
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/4 v1, 0x1

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 28
    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    .line 40
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 69
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p4, "mWallpaperProcessSeparated"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    .line 40
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 74
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 28
    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    .line 40
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->DBG:Z

    .line 40
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->reloadResForOpenTheme()V

    return-void
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    const-string v0, "Wallpaper"

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method private reloadResForOpenTheme()V
    .locals 3

    .prologue
    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v0, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "reloadResForOpenTheme"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 196
    return-void
.end method

.method private setOuterCircleType(Z)V
    .locals 3
    .param p1, "isStroke"    # Z

    .prologue
    .line 179
    const-string v1, "VisualEffectCircleUnlockEffect"

    const-string v2, "KeyguardEffectViewNone : setOuterCircleType"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v0, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "setOuterCircleType"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 183
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 219
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 250
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/visualeffect/EffectView;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 255
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 257
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;ILcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p4, "mWallpaperProcessSeparated"    # Z

    .prologue
    .line 79
    const-string v10, "VisualEffectCircleUnlockEffect"

    const-string v11, "KeyguardEffectViewNone : Constructor"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iput-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 83
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 84
    .local v8, "screenWidth":I
    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 86
    .local v7, "screenHeight":I
    if-ge v8, v7, :cond_4

    move v9, v8

    .line 87
    .local v9, "smallestWidth":I
    :goto_0
    int-to-float v10, v9

    const/high16 v11, 0x44870000    # 1080.0f

    div-float v6, v10, v11

    .line 89
    .local v6, "ratio":F
    const-string v10, "VisualEffectCircleUnlockEffect"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "screenWidth : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v10, "VisualEffectCircleUnlockEffect"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "screenHeight : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v10, "VisualEffectCircleUnlockEffect"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ratio : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->touchHashmap:Ljava/util/HashMap;

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "circleUnlockMaxWidth":I
    if-nez p2, :cond_5

    .line 105
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    mul-int/lit8 v0, v10, 0x2

    .line 109
    :cond_0
    :goto_1
    const/high16 v10, 0x40800000    # 4.0f

    mul-float/2addr v10, v6

    float-to-int v5, v10

    .line 110
    .local v5, "outerStrokeWidth":I
    const/high16 v10, 0x40c00000    # 6.0f

    mul-float/2addr v10, v6

    float-to-int v3, v10

    .line 111
    .local v3, "innerStrokeWidth":I
    const/16 v10, 0x1e

    new-array v4, v10, [I

    const/4 v10, 0x0

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_01:I

    aput v11, v4, v10

    const/4 v10, 0x1

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_02:I

    aput v11, v4, v10

    const/4 v10, 0x2

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_03:I

    aput v11, v4, v10

    const/4 v10, 0x3

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_04:I

    aput v11, v4, v10

    const/4 v10, 0x4

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_05:I

    aput v11, v4, v10

    const/4 v10, 0x5

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_06:I

    aput v11, v4, v10

    const/4 v10, 0x6

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_07:I

    aput v11, v4, v10

    const/4 v10, 0x7

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_08:I

    aput v11, v4, v10

    const/16 v10, 0x8

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_09:I

    aput v11, v4, v10

    const/16 v10, 0x9

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_10:I

    aput v11, v4, v10

    const/16 v10, 0xa

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_11:I

    aput v11, v4, v10

    const/16 v10, 0xb

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_12:I

    aput v11, v4, v10

    const/16 v10, 0xc

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_13:I

    aput v11, v4, v10

    const/16 v10, 0xd

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_14:I

    aput v11, v4, v10

    const/16 v10, 0xe

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_15:I

    aput v11, v4, v10

    const/16 v10, 0xf

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_16:I

    aput v11, v4, v10

    const/16 v10, 0x10

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_17:I

    aput v11, v4, v10

    const/16 v10, 0x11

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_18:I

    aput v11, v4, v10

    const/16 v10, 0x12

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_19:I

    aput v11, v4, v10

    const/16 v10, 0x13

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_20:I

    aput v11, v4, v10

    const/16 v10, 0x14

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_21:I

    aput v11, v4, v10

    const/16 v10, 0x15

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_22:I

    aput v11, v4, v10

    const/16 v10, 0x16

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_23:I

    aput v11, v4, v10

    const/16 v10, 0x17

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_24:I

    aput v11, v4, v10

    const/16 v10, 0x18

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_25:I

    aput v11, v4, v10

    const/16 v10, 0x19

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_26:I

    aput v11, v4, v10

    const/16 v10, 0x1a

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_27:I

    aput v11, v4, v10

    const/16 v10, 0x1b

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_28:I

    aput v11, v4, v10

    const/16 v10, 0x1c

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_29:I

    aput v11, v4, v10

    const/16 v10, 0x1d

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_lock_30:I

    aput v11, v4, v10

    .line 129
    .local v4, "lockSequenceImageId":[I
    new-instance v10, Lcom/samsung/android/visualeffect/EffectView;

    iget-object v11, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    .line 130
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/samsung/android/visualeffect/EffectView;->setEffect(I)V

    .line 132
    new-instance v1, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v1}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 133
    .local v1, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 134
    iget-object v10, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v0, v10, Lcom/samsung/android/visualeffect/lock/data/CircleData;->circleUnlockMaxWidth:I

    .line 135
    iget-object v10, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v5, v10, Lcom/samsung/android/visualeffect/lock/data/CircleData;->outerStrokeWidth:I

    .line 136
    iget-object v10, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput v3, v10, Lcom/samsung/android/visualeffect/lock/data/CircleData;->innerStrokeWidth:I

    .line 137
    iget-object v10, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput-object v4, v10, Lcom/samsung/android/visualeffect/lock/data/CircleData;->lockSequenceImageId:[I

    .line 138
    iget-object v10, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    sget v11, Lcom/android/keyguard/R$drawable;->keyguard_none_arrow:I

    iput v11, v10, Lcom/samsung/android/visualeffect/lock/data/CircleData;->arrowId:I

    .line 139
    iget-object v10, v1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v11

    iput-boolean v11, v10, Lcom/samsung/android/visualeffect/lock/data/CircleData;->hasNoOuterCircle:Z

    .line 140
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v10, v1}, Lcom/samsung/android/visualeffect/EffectView;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 141
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 142
    :cond_1
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/android/keyguard/R$dimen;->keyguard_shortcut_min_width_offset:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0, v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->setMinWidthOffset(I)V

    .line 143
    sget v10, Lcom/android/keyguard/R$drawable;->keyguard_shortcut_arrow:I

    invoke-virtual {p0, v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->setArrowForButton(I)V

    .line 145
    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestShortcutEffect()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 146
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->setOuterCircleType(Z)V

    .line 147
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->showSwipeCircleEffect(Z)V

    .line 149
    :cond_3
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {p0, v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->addView(Landroid/view/View;)V

    .line 150
    return-void

    .end local v0    # "circleUnlockMaxWidth":I
    .end local v1    # "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    .end local v3    # "innerStrokeWidth":I
    .end local v4    # "lockSequenceImageId":[I
    .end local v5    # "outerStrokeWidth":I
    .end local v6    # "ratio":F
    .end local v9    # "smallestWidth":I
    :cond_4
    move v9, v7

    .line 86
    goto/16 :goto_0

    .line 106
    .restart local v0    # "circleUnlockMaxWidth":I
    .restart local v6    # "ratio":F
    .restart local v9    # "smallestWidth":I
    :cond_5
    const/4 v10, 0x1

    if-ne p2, v10, :cond_0

    .line 107
    iget-object v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border_shortcut:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    mul-int/lit8 v0, v10, 0x2

    goto/16 :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 156
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 162
    return-void
.end method

.method public playLockSound()V
    .locals 2

    .prologue
    .line 261
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : playLockSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 213
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 215
    :cond_0
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 234
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 229
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method public setArrowForButton(I)V
    .locals 2
    .param p1, "arrowForButtonId"    # I

    .prologue
    .line 186
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 187
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 188
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput p1, v1, Lcom/samsung/android/visualeffect/lock/data/CircleData;->arrowForButtonId:I

    .line 189
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/EffectView;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 190
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 290
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .param p1, "isHidden"    # Z

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 271
    :cond_0
    return-void
.end method

.method public setMinWidthOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 165
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 166
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 167
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iput p1, v1, Lcom/samsung/android/visualeffect/lock/data/CircleData;->minWidthOffset:I

    .line 168
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/EffectView;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 169
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 207
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 209
    :cond_0
    return-void
.end method

.method public showSwipeCircleEffect(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 172
    const-string v1, "VisualEffectCircleUnlockEffect"

    const-string v2, "KeyguardEffectViewNone : showSwipeCircleEffect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 174
    .local v0, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "showSwipeCircleEffect"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 176
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 239
    const-string v1, "VisualEffectCircleUnlockEffect"

    const-string v2, "KeyguardEffectViewNone : showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v1, :cond_0

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v0, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->circleEffect:Lcom/samsung/android/visualeffect/EffectView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 246
    .end local v0    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 224
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method
