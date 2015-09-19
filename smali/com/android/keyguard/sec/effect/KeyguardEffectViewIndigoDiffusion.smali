.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;
.super Lcom/samsung/android/visualeffect/EffectView;
.source "KeyguardEffectViewIndigoDiffusion.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;
    }
.end annotation


# static fields
.field private static final DOWN_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_indigodiffusion_ripple_down.ogg"

.field public static final IMAGE_TYPE_BURGUNDY_RED:I = 0x1

.field public static final IMAGE_TYPE_MIDNIGHT_BLUE_OR_NORMAL:I = 0x0

.field public static final UPDATE_TYPE_CHANGE_BACKGROUND:I = 0x1

.field public static final UPDATE_TYPE_USER_SWITCHING:I = 0x2

.field private static final UP_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/ve_indigodiffusion_ripple_up.ogg"

.field private static mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;


# instance fields
.field final SOUND_ID_DOWN:I

.field final SOUND_ID_DRAG:I

.field private final TAG:Ljava/lang/String;

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field imageType:I

.field private isSystemSoundChecked:Z

.field private isUnlocked:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

.field private mListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field private mSoundPool:Landroid/media/SoundPool;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field soundMsg:Landroid/os/Message;

.field private sounds:[I

.field private windowHeight:I

.field private windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/effect/LockSoundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 45
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->TAG:Ljava/lang/String;

    .line 52
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->imageType:I

    .line 57
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    .line 58
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->leftVolumeMax:F

    .line 59
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->rightVolumeMax:F

    .line 60
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->UNLOCK_SOUND_PLAY_TIME:J

    .line 61
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 62
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isSystemSoundChecked:Z

    .line 63
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    .line 64
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->SOUND_ID_DOWN:I

    .line 65
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->SOUND_ID_DRAG:I

    .line 69
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    .line 74
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    .line 75
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    .line 90
    invoke-direct {p0, p1, v3, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 45
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->TAG:Ljava/lang/String;

    .line 52
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->imageType:I

    .line 57
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    .line 58
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->leftVolumeMax:F

    .line 59
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->rightVolumeMax:F

    .line 60
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->UNLOCK_SOUND_PLAY_TIME:J

    .line 61
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 62
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isSystemSoundChecked:Z

    .line 63
    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    .line 64
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->SOUND_ID_DOWN:I

    .line 65
    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->SOUND_ID_DRAG:I

    .line 69
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    .line 74
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    .line 75
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    .line 94
    invoke-direct {p0, p1, p2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z

    .prologue
    const/4 v4, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;-><init>(Landroid/content/Context;)V

    .line 45
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->TAG:Ljava/lang/String;

    .line 52
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->imageType:I

    .line 57
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    .line 58
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->leftVolumeMax:F

    .line 59
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->rightVolumeMax:F

    .line 60
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->UNLOCK_SOUND_PLAY_TIME:J

    .line 61
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 62
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isSystemSoundChecked:Z

    .line 63
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    .line 64
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->SOUND_ID_DOWN:I

    .line 65
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->SOUND_ID_DRAG:I

    .line 69
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    .line 74
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    .line 75
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->playSound(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    return-object v0
.end method

.method private changeColor(III)V
    .locals 2
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 203
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 204
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 205
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iput p1, v1, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->red:I

    .line 206
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iput p2, v1, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->green:I

    .line 207
    iget-object v1, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iput p3, v1, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->blue:I

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 210
    return-void
.end method

.method private checkSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 312
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 317
    .local v2, "result":I
    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 326
    :goto_0
    if-ne v2, v5, :cond_0

    .line 327
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isSystemSoundChecked:Z

    .line 331
    :goto_1
    return-void

    .line 320
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 329
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLockSoundInfo()Lcom/android/keyguard/sec/effect/LockSoundInfo;
    .locals 1

    .prologue
    .line 549
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mLockSoundInfo:Lcom/android/keyguard/sec/effect/LockSoundInfo;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "mWallpaperProcessSeparated"    # Z

    .prologue
    const/16 v7, 0x23

    const/16 v6, 0x9

    .line 104
    const-string v4, "KeyguardEffectViewIndigoDiffusion"

    const-string v5, "KeyguardEffectViewIndigoDiffusion Constructor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    .line 108
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->keyguardManager:Landroid/app/KeyguardManager;

    .line 109
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 110
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 112
    .local v2, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 113
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    .line 114
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    .line 116
    invoke-virtual {p0, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->setEffect(I)V

    .line 118
    new-instance v0, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v0}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    .line 119
    .local v0, "data":Lcom/samsung/android/visualeffect/EffectDataObj;
    invoke-virtual {v0, v6}, Lcom/samsung/android/visualeffect/EffectDataObj;->setEffect(I)V

    .line 120
    iget-object v4, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowWidth:I

    iput v5, v4, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->windowWidth:I

    .line 121
    iget-object v4, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->windowHeight:I

    iput v5, v4, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->windowHeight:I

    .line 122
    iget-object v4, v0, Lcom/samsung/android/visualeffect/EffectDataObj;->indigoDiffuseData:Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;

    sget v5, Lcom/android/keyguard/R$drawable;->reflectionmap:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->makeResBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/visualeffect/lock/data/IndigoDiffuseData;->reflectionBitmap:Landroid/graphics/Bitmap;

    .line 124
    const/16 v4, 0x55

    invoke-direct {p0, v7, v7, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->changeColor(III)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    .line 127
    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    .line 129
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v3, "map2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v4, "Bitmap"

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 134
    new-instance v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$1;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mListener:Lcom/samsung/android/visualeffect/IEffectListener;

    .line 152
    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mListener:Lcom/samsung/android/visualeffect/IEffectListener;

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V

    .line 153
    return-void
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x1

    return v0
.end method

.method private makeResBitmap(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "res"    # I

    .prologue
    .line 214
    const/4 v2, 0x0

    .line 217
    .local v2, "result":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 218
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 219
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 220
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-object v2

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 230
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->stopReleaseSound()V

    .line 232
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    .line 236
    const-string v1, "KeyguardEffectViewIndigoDiffusion"

    const-string v2, "IndigoDiffusion sound : new SoundPool"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 242
    .local v0, "attr":Landroid/media/AudioAttributes;
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    .line 248
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/ve_indigodiffusion_ripple_down.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 249
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    const-string v3, "/system/media/audio/ui/ve_indigodiffusion_ripple_up.ogg"

    invoke-virtual {v2, v3, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    .line 253
    .end local v0    # "attr":Landroid/media/AudioAttributes;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    if-nez v1, :cond_1

    .line 255
    const-string v1, "KeyguardEffectViewIndigoDiffusion"

    const-string v2, "new SoundHandler()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    .line 258
    :cond_1
    return-void
.end method

.method private playSound(I)V
    .locals 8
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 284
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->checkSound()V

    .line 285
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->stopReleaseSound()V

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 288
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    const-string v1, "ACTION_DOWN, mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->makeSound()V

    .line 292
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isSystemSoundChecked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 295
    .local v7, "streanID":I
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    .line 300
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    add-int/lit8 v1, v7, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->soundMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    .end local v7    # "streanID":I
    :cond_1
    return-void
.end method

.method private releaseSound()V
    .locals 4

    .prologue
    .line 262
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 273
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    return-void
.end method

.method private setBackground()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 156
    const-string v2, "KeyguardEffectViewIndigoDiffusion"

    const-string v3, "setBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "pBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 161
    .local v0, "newBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_0

    .line 167
    const-string v2, "KeyguardEffectViewIndigoDiffusion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pBitmap.width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pBitmap.height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    return-object v1

    .line 172
    :cond_0
    const-string v2, "KeyguardEffectViewIndigoDiffusion"

    const-string v3, "pBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_1
    const-string v2, "KeyguardEffectViewIndigoDiffusion"

    const-string v3, "newBitmapDrawable is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 281
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    .line 409
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->stopReleaseSound()V

    .line 411
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->releaseSound()V

    .line 413
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 420
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 463
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 487
    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 478
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    if-eqz v0, :cond_0

    .line 482
    :goto_0
    return v1

    .line 481
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 492
    const/4 v0, 0x1

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 468
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    .line 470
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 497
    invoke-super {p0}, Lcom/samsung/android/visualeffect/EffectView;->onDetachedFromWindow()V

    .line 498
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;->removeMessages(I)V

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$SoundHandler;

    .line 504
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 513
    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/EffectView;->onWindowFocusChanged(Z)V

    .line 514
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged hasWindowFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 474
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 403
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->clearScreen()V

    .line 405
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 448
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    const-string v1, "screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 441
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    .line 444
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 532
    const-string v1, "KeyguardEffectViewIndigoDiffusion"

    const-string v2, "setContextualWallpaper"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    if-nez p1, :cond_0

    .line 535
    const-string v1, "KeyguardEffectViewIndigoDiffusion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bmp is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :goto_0
    return-void

    .line 539
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 541
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 542
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v1, "Bitmap"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->handleCustomEvent(ILjava/util/HashMap;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 509
    return-void
.end method

.method public settingsForImageType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/16 v2, 0x23

    .line 185
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    const-string v1, "settingsForImageType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->imageType:I

    if-eq v0, p1, :cond_0

    .line 189
    iput p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->imageType:I

    .line 190
    if-nez p1, :cond_1

    .line 192
    const/16 v0, 0x55

    invoke-direct {p0, v2, v2, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->changeColor(III)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const/16 v0, 0x50

    const/16 v1, 0xa

    const/16 v2, 0x19

    invoke-direct {p0, v0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->changeColor(III)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 395
    const-string v0, "KeyguardEffectViewIndigoDiffusion"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->makeSound()V

    .line 397
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->clearScreen()V

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->isUnlocked:Z

    .line 399
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 453
    const-string v1, "KeyguardEffectViewIndigoDiffusion"

    const-string v2, "showUnlockAffordance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 455
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v1, "StartDelay"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string v1, "Rect"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 459
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 424
    const-string v1, "KeyguardEffectViewIndigoDiffusion"

    const-string v2, "update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 426
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v1, "Bitmap"

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 429
    return-void
.end method

.method public update(I)V
    .locals 4
    .param p1, "updateType"    # I

    .prologue
    .line 432
    const-string v1, "KeyguardEffectViewIndigoDiffusion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update() updateType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 434
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v1, "Bitmap"

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->setBackground()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->handleCustomEvent(ILjava/util/HashMap;)V

    .line 437
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 528
    return-void
.end method
