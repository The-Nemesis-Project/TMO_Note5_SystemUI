.class public Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewSummer.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewSummer"


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

.field private summerEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;


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
    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mSoundPool:Landroid/media/SoundPool;

    .line 33
    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->leftVolumeMax:F

    .line 34
    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->rightVolumeMax:F

    .line 35
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->UNLOCK_SOUND_PLAY_TIME:J

    .line 36
    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 37
    iput-boolean v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->isSystemSoundChecked:Z

    .line 38
    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->sounds:[I

    .line 39
    iput v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->dragSoundCount:I

    .line 40
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 41
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->DRAG_SOUND_COUNT_START_POINT:I

    .line 42
    iput v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->SOUND_ID_TAB:I

    .line 43
    iput v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->SOUND_ID_UNLOCK:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->SOUND_ID_DRAG:I

    .line 46
    iput-boolean v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->isUnlocking:Z

    .line 50
    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->summerEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->summerEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->addView(Landroid/view/View;)V

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
    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mSoundPool:Landroid/media/SoundPool;

    .line 33
    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->leftVolumeMax:F

    .line 34
    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->rightVolumeMax:F

    .line 35
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->UNLOCK_SOUND_PLAY_TIME:J

    .line 36
    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 37
    iput-boolean v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->isSystemSoundChecked:Z

    .line 38
    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->sounds:[I

    .line 39
    iput v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->dragSoundCount:I

    .line 40
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 41
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->DRAG_SOUND_COUNT_START_POINT:I

    .line 42
    iput v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->SOUND_ID_TAB:I

    .line 43
    iput v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->SOUND_ID_UNLOCK:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->SOUND_ID_DRAG:I

    .line 46
    iput-boolean v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->isUnlocking:Z

    .line 57
    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->summerEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;

    .line 59
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->summerEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->addView(Landroid/view/View;)V

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
    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mSoundPool:Landroid/media/SoundPool;

    .line 33
    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->leftVolumeMax:F

    .line 34
    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->rightVolumeMax:F

    .line 35
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->UNLOCK_SOUND_PLAY_TIME:J

    .line 36
    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 37
    iput-boolean v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->isSystemSoundChecked:Z

    .line 38
    iput-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->sounds:[I

    .line 39
    iput v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->dragSoundCount:I

    .line 40
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->DRAG_SOUND_COUNT_INTERVAL:I

    .line 41
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->DRAG_SOUND_COUNT_START_POINT:I

    .line 42
    iput v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->SOUND_ID_TAB:I

    .line 43
    iput v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->SOUND_ID_UNLOCK:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->SOUND_ID_DRAG:I

    .line 46
    iput-boolean v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->isUnlocking:Z

    .line 64
    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->summerEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;

    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->summerEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->addView(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private checkSound()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 118
    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 119
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 121
    .local v1, "result":I
    const-string v3, "lockscreen_sounds_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 126
    if-ne v1, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->isSystemSoundChecked:Z

    .line 127
    return-void

    .line 126
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    const-string v0, "Wallpaper"

    return-object v0
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method private makeSound()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 70
    invoke-direct {p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->stopReleaseSound()V

    .line 71
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->sounds:[I

    .line 74
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mSoundPool:Landroid/media/SoundPool;

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$raw;->summer_tap:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 76
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$raw;->summer_unlock:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 77
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->sounds:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$raw;->summer_drag:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 80
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 104
    iget-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->isUnlocking:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->checkSound()V

    .line 107
    iget-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->lastPlayedIdBeforeUnlock:I

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->lastPlayedIdBeforeUnlock:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->sounds:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->leftVolumeMax:F

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->rightVolumeMax:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->lastPlayedIdBeforeUnlock:I

    goto :goto_0
.end method

.method private releaseSound()V
    .locals 4

    .prologue
    .line 83
    new-instance v0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer$1;-><init>(Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    return-void
.end method

.method private stopReleaseSound()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->isUnlocking:Z

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->summerEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->summerEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->clearEffect()V

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->makeSound()V

    .line 149
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 174
    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 191
    iget-boolean v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->isUnlocking:Z

    if-eqz v2, :cond_0

    .line 192
    const-string v1, "KeyguardEffectViewSummer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent isUnlocking : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->isUnlocking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return v0

    .line 195
    :cond_0
    const-string v2, "KeyguardEffectViewSummer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTouchEvent event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_3

    .line 198
    const/16 v2, 0x32

    iput v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->dragSoundCount:I

    .line 200
    invoke-direct {p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->stopReleaseSound()V

    .line 201
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->makeSound()V

    .line 204
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->playSound(I)V

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->summerEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->add(FF)V

    :cond_2
    :goto_1
    move v0, v1

    .line 217
    goto :goto_0

    .line 206
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 207
    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->dragSoundCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->dragSoundCount:I

    .line 208
    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->dragSoundCount:I

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_4

    .line 209
    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->playSound(I)V

    .line 210
    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->dragSoundCount:I

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->summerEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->move(FF)V

    goto :goto_1

    .line 213
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 215
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->summerEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->clearEffect()V

    goto :goto_1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->isUnlocking:Z

    .line 181
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->isUnlocking:Z

    .line 141
    return-void
.end method

.method public screenTurnedOff()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->summerEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->clearEffect()V

    .line 165
    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->isUnlocking:Z

    .line 160
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 243
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 228
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->isUnlocking:Z

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->summerEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->summerEffect:Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/SummerEffect;->clearEffect()V

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->makeSound()V

    .line 135
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 1
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/summer/KeyguardEffectViewSummer;->isUnlocking:Z

    .line 170
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method
