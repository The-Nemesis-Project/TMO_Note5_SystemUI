.class public Lcom/android/keyguard/sec/effect/LockSoundInfo;
.super Ljava/lang/Object;
.source "LockSoundInfo.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final TYPE_PATH:I = 0x1

.field private static final TYPE_RESOURCE:I = 0x2


# instance fields
.field mPathLock:Ljava/lang/String;

.field mPathUnlock:Ljava/lang/String;

.field mResIdLock:I

.field mResIdUnlock:I

.field mTypeLock:I

.field mTypeUnlock:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "LockSoundInfo"

    sput-object v0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "resIdLock"    # I
    .param p2, "resIdUnlock"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeLock:I

    .line 15
    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeUnlock:I

    .line 16
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathLock:Ljava/lang/String;

    .line 17
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathUnlock:Ljava/lang/String;

    .line 18
    iput v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdLock:I

    .line 19
    iput v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdUnlock:I

    .line 22
    iput v2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeLock:I

    .line 23
    iput v2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeUnlock:I

    .line 25
    iput p1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdLock:I

    .line 26
    iput p2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdUnlock:I

    .line 27
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "resIdLock"    # I
    .param p2, "pathUnlock"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeLock:I

    .line 15
    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeUnlock:I

    .line 16
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathLock:Ljava/lang/String;

    .line 17
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathUnlock:Ljava/lang/String;

    .line 18
    iput v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdLock:I

    .line 19
    iput v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdUnlock:I

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeLock:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeUnlock:I

    .line 33
    iput p1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdLock:I

    .line 34
    iput-object p2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathUnlock:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pathLock"    # Ljava/lang/String;
    .param p2, "resIdUnlock"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeLock:I

    .line 15
    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeUnlock:I

    .line 16
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathLock:Ljava/lang/String;

    .line 17
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathUnlock:Ljava/lang/String;

    .line 18
    iput v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdLock:I

    .line 19
    iput v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdUnlock:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeLock:I

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeUnlock:I

    .line 41
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathLock:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdUnlock:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "pathLock"    # Ljava/lang/String;
    .param p2, "pathUnlock"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeLock:I

    .line 15
    iput v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeUnlock:I

    .line 16
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathLock:Ljava/lang/String;

    .line 17
    iput-object v3, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathUnlock:Ljava/lang/String;

    .line 18
    iput v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdLock:I

    .line 19
    iput v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdUnlock:I

    .line 47
    iput v2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeLock:I

    .line 48
    iput v2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeUnlock:I

    .line 50
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathLock:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathUnlock:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private getPathLock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathLock:Ljava/lang/String;

    return-object v0
.end method

.method private getPathUnlock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mPathUnlock:Ljava/lang/String;

    return-object v0
.end method

.method private getResIdLock()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdLock:I

    return v0
.end method

.method private getResIdUnlock()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mResIdUnlock:I

    return v0
.end method

.method private isLockSoundTypePath()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 55
    iget v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeLock:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUnlockSoundTypePath()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 59
    iget v1, p0, Lcom/android/keyguard/sec/effect/LockSoundInfo;->mTypeUnlock:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public reloadSoundIdLock(Landroid/content/Context;ILandroid/media/SoundPool;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentId"    # I
    .param p3, "soundPool"    # Landroid/media/SoundPool;

    .prologue
    const/4 v5, 0x1

    .line 79
    const/4 v2, 0x0

    .line 81
    .local v2, "retSoundId":I
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/LockSoundInfo;->isLockSoundTypePath()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 82
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/LockSoundInfo;->getPathLock()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 84
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_sound"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    invoke-virtual {p3, p2}, Landroid/media/SoundPool;->unload(I)Z

    .line 88
    invoke-virtual {p3, v0, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    .line 90
    :cond_1
    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    .line 91
    :cond_2
    sget-object v3, Lcom/android/keyguard/sec/effect/LockSoundInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load lock sound from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-nez v0, :cond_3

    .line 93
    move v2, p2

    .line 110
    .end local v0    # "path":Ljava/lang/String;
    :cond_3
    :goto_0
    return v2

    .line 97
    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/LockSoundInfo;->getResIdLock()I

    move-result v1

    .line 98
    .local v1, "resId":I
    if-eqz v1, :cond_5

    .line 99
    invoke-virtual {p3, p2}, Landroid/media/SoundPool;->unload(I)Z

    .line 100
    invoke-virtual {p3, p1, v1, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    .line 102
    :cond_5
    if-eqz v1, :cond_6

    if-nez v2, :cond_3

    .line 103
    :cond_6
    sget-object v3, Lcom/android/keyguard/sec/effect/LockSoundInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load lock sound from resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-nez v1, :cond_3

    .line 105
    move v2, p2

    goto :goto_0
.end method

.method public reloadSoundIdUnlock(Landroid/content/Context;ILandroid/media/SoundPool;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentId"    # I
    .param p3, "soundPool"    # Landroid/media/SoundPool;

    .prologue
    const/4 v5, 0x1

    .line 114
    const/4 v2, 0x0

    .line 116
    .local v2, "retSoundId":I
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/LockSoundInfo;->isUnlockSoundTypePath()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/LockSoundInfo;->getPathUnlock()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 119
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "unlock_sound"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    invoke-virtual {p3, p2}, Landroid/media/SoundPool;->unload(I)Z

    .line 123
    invoke-virtual {p3, v0, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    .line 125
    :cond_1
    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    .line 126
    :cond_2
    sget-object v3, Lcom/android/keyguard/sec/effect/LockSoundInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load unlock sound from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-nez v0, :cond_3

    .line 128
    move v2, p2

    .line 145
    .end local v0    # "path":Ljava/lang/String;
    :cond_3
    :goto_0
    return v2

    .line 132
    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/LockSoundInfo;->getResIdUnlock()I

    move-result v1

    .line 133
    .local v1, "resId":I
    if-eqz v1, :cond_5

    .line 134
    invoke-virtual {p3, p2}, Landroid/media/SoundPool;->unload(I)Z

    .line 135
    invoke-virtual {p3, p1, v1, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    .line 137
    :cond_5
    if-eqz v1, :cond_6

    if-nez v2, :cond_3

    .line 138
    :cond_6
    sget-object v3, Lcom/android/keyguard/sec/effect/LockSoundInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load unlock sound from resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-nez v1, :cond_3

    .line 140
    move v2, p2

    goto :goto_0
.end method
