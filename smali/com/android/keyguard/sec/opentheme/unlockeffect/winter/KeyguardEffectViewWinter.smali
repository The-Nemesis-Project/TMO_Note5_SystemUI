.class public Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewWinter.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewWinter"


# instance fields
.field final DRAG_SOUND_COUNT_INTERVAL:I

.field final DRAG_SOUND_COUNT_START_POINT:I

.field final SOUND_ID_DRAG:I

.field final SOUND_ID_TAB:I

.field final SOUND_ID_UNLOCK:I

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private dragSoundCount:I

.field private isSystemSoundChecked:Z

.field private isUnlocking:Z

.field private lastPlayedIdBeforeUnlock:I

.field private leftVolumeMax:F

.field private mContext:Landroid/content/Context;

.field private mSoundPool:Landroid/media/SoundPool;

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private rightVolumeMax:F

.field private sounds:[I

.field private winterEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const v0, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mSoundPool:Landroid/media/SoundPool;

    .line 33
    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->leftVolumeMax:F

    .line 34
    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->rightVolumeMax:F

    .line 35
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->UNLOCK_SOUND_PLAY_TIME:J

    .line 36
    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 37
    iput-boolean v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->isSystemSoundChecked:Z

    .line 38
    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->sounds:[I

    .line 39
    iput v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->dragSoundCount:I

    .line 40
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 41
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->DRAG_SOUND_COUNT_START_POINT:I

    .line 42
    iput v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->SOUND_ID_TAB:I

    .line 43
    iput v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->SOUND_ID_UNLOCK:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->SOUND_ID_DRAG:I

    .line 46
    iput-boolean v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->isUnlocking:Z

    .line 50
    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->winterEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->winterEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->addView(Landroid/view/View;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    const/4 v4, 0x1

    const v0, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mSoundPool:Landroid/media/SoundPool;

    .line 33
    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->leftVolumeMax:F

    .line 34
    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->rightVolumeMax:F

    .line 35
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->UNLOCK_SOUND_PLAY_TIME:J

    .line 36
    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 37
    iput-boolean v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->isSystemSoundChecked:Z

    .line 38
    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->sounds:[I

    .line 39
    iput v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->dragSoundCount:I

    .line 40
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 41
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->DRAG_SOUND_COUNT_START_POINT:I

    .line 42
    iput v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->SOUND_ID_TAB:I

    .line 43
    iput v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->SOUND_ID_UNLOCK:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->SOUND_ID_DRAG:I

    .line 46
    iput-boolean v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->isUnlocking:Z

    .line 57
    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->winterEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;

    .line 59
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->winterEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->addView(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "isProcessSeparated"    # Z

    .prologue
    const/4 v4, 0x1

    const v0, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mSoundPool:Landroid/media/SoundPool;

    .line 33
    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->leftVolumeMax:F

    .line 34
    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->rightVolumeMax:F

    .line 35
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->UNLOCK_SOUND_PLAY_TIME:J

    .line 36
    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 37
    iput-boolean v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->isSystemSoundChecked:Z

    .line 38
    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->sounds:[I

    .line 39
    iput v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->dragSoundCount:I

    .line 40
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 41
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->DRAG_SOUND_COUNT_START_POINT:I

    .line 42
    iput v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->SOUND_ID_TAB:I

    .line 43
    iput v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->SOUND_ID_UNLOCK:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->SOUND_ID_DRAG:I

    .line 46
    iput-boolean v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->isUnlocking:Z

    .line 64
    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->winterEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;

    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->winterEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->addView(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private checkSound()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 120
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 121
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 123
    .local v1, "result":I
    const-string v3, "lockscreen_sounds_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 128
    if-ne v1, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->isSystemSoundChecked:Z

    .line 129
    return-void

    .line 128
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const-string v0, "Wallpaper"

    return-object v0
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method private makeSound()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 70
    invoke-direct {p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->stopReleaseSound()V

    .line 71
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->sounds:[I

    .line 75
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mSoundPool:Landroid/media/SoundPool;

    .line 76
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$raw;->winter_tap:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 77
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$raw;->winter_unlock:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->sounds:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$raw;->winter_drag:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 82
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 106
    iget-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->isUnlocking:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->checkSound()V

    .line 109
    iget-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->lastPlayedIdBeforeUnlock:I

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->lastPlayedIdBeforeUnlock:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->lastPlayedIdBeforeUnlock:I

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter$1;-><init>(Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    return-void
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->isUnlocking:Z

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->winterEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->winterEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->clearEffect()V

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->makeSound()V

    .line 151
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 177
    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 194
    iget-boolean v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->isUnlocking:Z

    if-eqz v2, :cond_0

    .line 195
    const-string v1, "KeyguardEffectViewWinter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent isUnlocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->isUnlocking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    return v0

    .line 198
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_3

    .line 199
    const/16 v2, 0x32

    iput v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->dragSoundCount:I

    .line 201
    invoke-direct {p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->stopReleaseSound()V

    .line 202
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->mSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->makeSound()V

    .line 205
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->playSound(I)V

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->winterEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->add(FF)V

    :cond_2
    :goto_1
    move v0, v1

    .line 218
    goto :goto_0

    .line 207
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 208
    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->dragSoundCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->dragSoundCount:I

    .line 209
    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->dragSoundCount:I

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_4

    .line 210
    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->playSound(I)V

    .line 211
    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->dragSoundCount:I

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->winterEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->move(FF)V

    goto :goto_1

    .line 214
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 216
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->winterEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->clearEffect()V

    goto :goto_1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->isUnlocking:Z

    .line 184
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->isUnlocking:Z

    .line 143
    return-void
.end method

.method public screenTurnedOff()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->winterEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->clearEffect()V

    .line 167
    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->isUnlocking:Z

    .line 162
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 244
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 229
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->isUnlocking:Z

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->winterEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->winterEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->clearEffect()V

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->makeSound()V

    .line 137
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 1
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/KeyguardEffectViewWinter;->isUnlocking:Z

    .line 173
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method
