.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewMassRipple.java"

# interfaces
.implements Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;,
        Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "KeyguardEffectViewMassRipple"

.field private static final mRDownPath:Ljava/lang/String; = "/system/media/audio/ui/simple_ripple_down.ogg"

.field private static final mRUpPath:Ljava/lang/String; = "/system/media/audio/ui/simple_ripple_up.ogg"


# instance fields
.field private final ACQUIRE_DVFS:I

.field protected final ANIMATION_DURATION:F

.field final CIRCLE_AFFORDANCE_ROUND_SIZE:F

.field final CIRCLE_ROUND_SIZE:F

.field private final COUNT_ANIMATION:I

.field private CPU_CLOCK_NUM:I

.field private final CPU_CLOK_CONTROL:I

.field private DEBUG:Z

.field private GPU_FREQUNCY_NUM:I

.field private final GPU_FREQ_CONTROL:I

.field final MAX_RIPPLE_COUNT:I

.field final MSG_AFFORDANCE_TOUCH:I

.field final MSG_FIRST_TOUCH:I

.field final MSG_TIME_TICK:I

.field private final RELEASE_DVFS:I

.field final SOUND_ID_DOWN:I

.field final SOUND_ID_UP:I

.field private TIME_FOR_CPU_GPU_MAX_LOCK:I

.field protected final UNLOCK_DRAG_THRESHOLD:D

.field protected final UNLOCK_RELEASE_THRESHOLD:D

.field cpuMaxClockBooster:Landroid/os/DVFSHelper;

.field private diffPressTime:J

.field drawRippleCount:I

.field firstTouch_X:I

.field firstTouch_Y:I

.field gpuMaxFreqBooster:Landroid/os/DVFSHelper;

.field private indexAni:I

.field private isRestrictCPUClock:Z

.field private isRestrictGPUFreq:Z

.field private isStartUnlock:Z

.field private isSystemSoundChecked:Z

.field protected mCircleMain:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

.field private mDistanceRatio:D

.field mHandler:Landroid/os/Handler;

.field mMovingRippleCount:I

.field private mRDownId:I

.field private mRUpId:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private massRipple:[Landroid/widget/ImageView;

.field prevMovingDistance:F

.field private prevPressTime:J

.field scale:[Landroid/view/animation/Animation;

.field private soundNum:I

.field private soundTime:I

.field private sounds:[I

.field supportedCPUClockTable:[I

.field supportedGPUFreqTable:[I

.field touchedEventX:F

.field touchedEventY:F

.field typeStorke:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    .param p3, "isProcessSeparated"    # Z

    .prologue
    const/4 v8, 0x6

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->DEBUG:Z

    .line 55
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    .line 56
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->COUNT_ANIMATION:I

    .line 58
    new-array v2, v8, [Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    .line 60
    const-wide v2, 0x3fe99999a0000000L    # 0.800000011920929

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->UNLOCK_RELEASE_THRESHOLD:D

    .line 61
    const-wide v2, 0x3ff4ccccc0000000L    # 1.2999999523162842

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->UNLOCK_DRAG_THRESHOLD:D

    .line 63
    const v2, 0x44a28000    # 1300.0f

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->ANIMATION_DURATION:F

    .line 67
    iput v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_X:I

    .line 68
    iput v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_Y:I

    .line 70
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->prevMovingDistance:F

    .line 78
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->drawRippleCount:I

    .line 83
    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->typeStorke:[F

    .line 86
    const/high16 v2, 0x43910000    # 290.0f

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->CIRCLE_ROUND_SIZE:F

    .line 87
    const/high16 v2, 0x43600000    # 224.0f

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->CIRCLE_AFFORDANCE_ROUND_SIZE:F

    .line 89
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->MSG_FIRST_TOUCH:I

    .line 90
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->MSG_AFFORDANCE_TOUCH:I

    .line 92
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->MSG_TIME_TICK:I

    .line 93
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->MAX_RIPPLE_COUNT:I

    .line 95
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mMovingRippleCount:I

    .line 98
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isStartUnlock:Z

    .line 101
    iput v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->CPU_CLOCK_NUM:I

    .line 102
    iput-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    .line 103
    iput-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedCPUClockTable:[I

    .line 104
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    .line 107
    iput v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->GPU_FREQUNCY_NUM:I

    .line 108
    iput-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    .line 109
    iput-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedGPUFreqTable:[I

    .line 110
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    .line 112
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->CPU_CLOK_CONTROL:I

    .line 113
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->GPU_FREQ_CONTROL:I

    .line 115
    const v2, 0x88b8

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    .line 117
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->ACQUIRE_DVFS:I

    .line 118
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->RELEASE_DVFS:I

    .line 120
    iput-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    .line 171
    new-instance v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mHandler:Landroid/os/Handler;

    .line 546
    iput-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    .line 547
    iput-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    .line 548
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->diffPressTime:J

    .line 549
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->prevPressTime:J

    .line 550
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->soundNum:I

    .line 551
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->soundTime:I

    .line 552
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->SOUND_ID_DOWN:I

    .line 553
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->SOUND_ID_UP:I

    .line 554
    sget v2, Lcom/android/keyguard/R$raw;->simple_ripple_down:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mRDownId:I

    .line 555
    sget v2, Lcom/android/keyguard/R$raw;->simple_ripple_up:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mRUpId:I

    .line 559
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isSystemSoundChecked:Z

    .line 133
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    .line 135
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "productName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "lentislte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const v2, 0x180600

    const v3, 0x11e1a300

    invoke-direct {p0, v5, v2, v5, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->setValueOfDVFS(ZIZI)V

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 141
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/android/keyguard/R$layout;->keyguard_mass_ripple_effect_view:I

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 143
    new-array v2, v8, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    .line 144
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->setLayout()V

    .line 146
    return-void

    .line 83
    nop

    :array_0
    .array-data 4
        0x42440000    # 49.0f
        0x41d4cccd    # 26.6f
        0x42140000    # 37.0f
        0x41f00000    # 30.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->soundNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isSystemSoundChecked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->soundTime:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->aquireCpuGpuMaxLock()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->releaseCpuGpuMaxLock()V

    return-void
.end method

.method private acquireBooster(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 739
    const/4 v0, 0x0

    .line 740
    .local v0, "bestCpuClock":I
    const/4 v1, 0x0

    .line 742
    .local v1, "bestGpuFreq":I
    if-nez p1, :cond_1

    .line 744
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_0

    .line 746
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedCPUClockTable:[I

    if-nez v2, :cond_0

    .line 748
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedCPUClockTable:[I

    .line 750
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedCPUClockTable:[I

    if-eqz v2, :cond_0

    .line 752
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedCPUClockTable:[I

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->CPU_CLOCK_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->getBestMaxFreq([II)I

    move-result v0

    .line 753
    const-string v2, "KeyguardEffectViewMassRipple"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== DVFS == acquire!!! CPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedCPUClockTable:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    const-string v3, "CPU"

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedCPUClockTable:[I

    aget v4, v4, v0

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 755
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_0

    .line 764
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedGPUFreqTable:[I

    if-nez v2, :cond_0

    .line 766
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedGPUFreqTable:[I

    .line 768
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedGPUFreqTable:[I

    if-eqz v2, :cond_0

    .line 770
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedGPUFreqTable:[I

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->GPU_FREQUNCY_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->getBestMaxFreq([II)I

    move-result v1

    .line 771
    const-string v2, "KeyguardEffectViewMassRipple"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== DVFS == acquire!!! GPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    const-string v3, "GPU"

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 773
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_0
.end method

.method private aquireCpuGpuMaxLock()V
    .locals 1

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    if-eqz v0, :cond_0

    .line 718
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->acquireBooster(I)V

    .line 721
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    .line 722
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->acquireBooster(I)V

    .line 724
    :cond_1
    return-void
.end method

.method private checkSound()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 564
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 565
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 569
    .local v2, "result":I
    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 577
    :goto_0
    if-ne v2, v4, :cond_0

    .line 578
    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isSystemSoundChecked:Z

    .line 582
    :goto_1
    return-void

    .line 571
    :catch_0
    move-exception v1

    .line 573
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 580
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private clearAllViews()V
    .locals 3

    .prologue
    .line 420
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 425
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 427
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 422
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_1
    return-void
.end method

.method private getBestMaxFreq([II)I
    .locals 6
    .param p1, "pArray"    # [I
    .param p2, "bestValue"    # I

    .prologue
    .line 812
    const/4 v4, 0x0

    .line 813
    .local v4, "value":I
    const v3, 0x7fffffff

    .line 814
    .local v3, "prevdiff":I
    const/4 v1, 0x0

    .line 815
    .local v1, "currdiff":I
    array-length v0, p1

    .line 817
    .local v0, "arrayLenth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 819
    aget v5, p1, v2

    sub-int v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 820
    if-ge v1, v3, :cond_0

    .line 822
    move v4, v2

    .line 823
    move v3, v1

    .line 817
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 827
    :cond_1
    return v4
.end method

.method public static getCounterEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 879
    const-string v0, "Wallpaper"

    return-object v0
.end method

.method public static isBackgroundEffect()Z
    .locals 1

    .prologue
    .line 875
    const/4 v0, 0x0

    return v0
.end method

.method private playDragSound(I)V
    .locals 9
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 618
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isStartUnlock:Z

    if-eqz v0, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 623
    .local v8, "streanID":I
    add-int/lit8 v8, v8, -0x1

    .line 624
    new-instance v7, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;

    invoke-direct {v7, p0, v8}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;I)V

    .line 625
    .local v7, "soundpoolThread":Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;
    invoke-virtual {v7}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$SoundPoolThread;->run()V

    goto :goto_0
.end method

.method private playSound(I)V
    .locals 7
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 608
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isStartUnlock:Z

    if-eqz v0, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private releaseCpuGpuMaxLock()V
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    if-eqz v0, :cond_0

    .line 729
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->releaseBooster(I)V

    .line 732
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    .line 733
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->releaseBooster(I)V

    .line 735
    :cond_1
    return-void
.end method

.method private setLayout()V
    .locals 5

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$anim;->scale_1:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    .line 151
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$anim;->scale_2:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    .line 152
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$anim;->scale_3:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    .line 153
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$anim;->scale_4:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    .line 155
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$anim;->scale_5:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    .line 156
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$anim;->scale_6:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v1, v2

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x514

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    sget v1, Lcom/android/keyguard/R$id;->keyguard_circle_effect_circle_main:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    .line 166
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 168
    return-void
.end method

.method private setSound()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 585
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    if-nez v2, :cond_0

    .line 587
    const-string v2, "KeyguardEffectViewMassRipple"

    const-string v3, "show mSoundPool is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    .line 589
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    .line 591
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 592
    .local v0, "checkDownFile":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 593
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-virtual {v3, v4, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v7

    .line 598
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 599
    .local v1, "checkUpFile":Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 600
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    const-string v4, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-virtual {v3, v4, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v6

    .line 605
    .end local v0    # "checkDownFile":Ljava/io/File;
    .end local v1    # "checkUpFile":Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 595
    .restart local v0    # "checkDownFile":Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mRDownId:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v2, v7

    goto :goto_0

    .line 602
    .restart local v1    # "checkUpFile":Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mRUpId:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v2, v6

    goto :goto_1
.end method

.method private setValueOfDVFS(ZIZI)V
    .locals 3
    .param p1, "cpuClock"    # Z
    .param p2, "cpuClockIndex"    # I
    .param p3, "gpuFreq"    # Z
    .param p4, "gpuFreqIndex"    # I

    .prologue
    .line 833
    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    .line 834
    iput p2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->CPU_CLOCK_NUM:I

    .line 835
    const-string v0, "KeyguardEffectViewMassRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == isRestrictCPUClock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const-string v0, "KeyguardEffectViewMassRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == CPU_CLOCK_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->CPU_CLOCK_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iput-boolean p3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    .line 840
    iput p4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->GPU_FREQUNCY_NUM:I

    .line 841
    const-string v0, "KeyguardEffectViewMassRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == isRestrictGPUFreq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const-string v0, "KeyguardEffectViewMassRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == GPU_FREQUNCY_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->GPU_FREQUNCY_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 478
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->clearAllViews()V

    .line 480
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 482
    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    .line 483
    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    .line 486
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_2

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;->sendEmptyMessage(I)Z

    .line 491
    :cond_2
    return-void
.end method

.method public getCircleSize(IZ)F
    .locals 3
    .param p1, "lineStorke"    # I
    .param p2, "isAffordance"    # Z

    .prologue
    const/high16 v2, 0x43910000    # 290.0f

    .line 349
    if-eqz p2, :cond_0

    .line 350
    const/high16 v0, 0x43600000    # 224.0f

    .line 352
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mMovingRippleCount:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    goto :goto_0
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 518
    const-wide/16 v0, 0x12d

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 190
    .local v2, "insdieViewTouchedEventX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 193
    .local v3, "insdieViewTouchedEventY":F
    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 194
    const-string v5, "KeyguardEffectViewMassRipple"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insdieViewTouchedEventX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "insdieViewTouchedEventY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_7

    .line 198
    const-string v5, "KeyguardEffectViewMassRipple"

    const-string v6, "ACTION_DOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_X:I

    if-ne v5, v8, :cond_4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_Y:I

    if-ne v5, v8, :cond_4

    .line 201
    const-string v5, "KeyguardEffectViewMassRipple"

    const-string v6, "ACTION_DOWN First Touch"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    float-to-int v5, v2

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_X:I

    .line 203
    float-to-int v5, v3

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_Y:I

    .line 212
    :goto_0
    iput v10, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mMovingRippleCount:I

    .line 213
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    if-nez v5, :cond_1

    .line 215
    new-instance v5, Landroid/media/SoundPool;

    const/16 v6, 0xa

    invoke-direct {v5, v6, v11, v10}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    .line 216
    new-array v5, v9, [I

    iput-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    .line 218
    new-instance v0, Ljava/io/File;

    const-string v5, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "checkDownFile":Ljava/io/File;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 220
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    const-string v7, "/system/media/audio/ui/simple_ripple_down.ogg"

    invoke-virtual {v6, v7, v11}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v10

    .line 225
    :goto_1
    new-instance v1, Ljava/io/File;

    const-string v5, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, "checkUpFile":Ljava/io/File;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 227
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    const-string v7, "/system/media/audio/ui/simple_ripple_up.ogg"

    invoke-virtual {v6, v7, v11}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v11

    .line 232
    .end local v0    # "checkDownFile":Ljava/io/File;
    .end local v1    # "checkUpFile":Ljava/io/File;
    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->prevPressTime:J

    .line 233
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->diffPressTime:J

    .line 235
    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventX:F

    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventY:F

    invoke-virtual {p0, v5, v6, v10, v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->rippeDown(FFIZ)V

    .line 236
    invoke-direct {p0, v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->playSound(I)V

    .line 239
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 240
    .local v4, "message":Landroid/os/Message;
    iput v10, v4, Landroid/os/Message;->what:I

    .line 241
    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventX:F

    float-to-int v5, v5

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 242
    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventY:F

    float-to-int v5, v5

    iput v5, v4, Landroid/os/Message;->arg2:I

    .line 243
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 245
    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    if-eqz v5, :cond_3

    .line 247
    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    if-eqz v5, :cond_3

    .line 248
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    invoke-virtual {v5, v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;->sendEmptyMessage(I)Z

    .line 302
    .end local v4    # "message":Landroid/os/Message;
    :cond_3
    :goto_3
    return v11

    .line 206
    :cond_4
    iput v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_X:I

    .line 207
    iput v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_Y:I

    .line 208
    iput v12, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->prevMovingDistance:F

    .line 209
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    goto/16 :goto_0

    .line 222
    .restart local v0    # "checkDownFile":Ljava/io/File;
    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mRDownId:I

    invoke-virtual {v6, v7, v8, v11}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    aput v6, v5, v10

    goto :goto_1

    .line 229
    .restart local v1    # "checkUpFile":Ljava/io/File;
    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->sounds:[I

    iget-object v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mSoundPool:Landroid/media/SoundPool;

    iget-object v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mRUpId:I

    invoke-virtual {v6, v7, v8, v11}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    aput v6, v5, v11

    goto :goto_2

    .line 251
    .end local v0    # "checkDownFile":Ljava/io/File;
    .end local v1    # "checkUpFile":Ljava/io/File;
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v9, :cond_b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    if-nez v5, :cond_b

    .line 254
    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->DEBUG:Z

    if-eqz v5, :cond_8

    .line 255
    const-string v5, "KeyguardEffectViewMassRipple"

    const-string v6, "ACTION_MOVE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_8
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->moveToDistanceIs20percent(FF)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 259
    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->drawRippleCount:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_a

    .line 260
    invoke-virtual {p0, v2, v3, v9, v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->rippeDown(FFIZ)V

    .line 264
    :goto_4
    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->drawRippleCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->drawRippleCount:I

    .line 265
    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mMovingRippleCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mMovingRippleCount:I

    .line 266
    invoke-direct {p0, v11}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->playDragSound(I)V

    .line 270
    :cond_9
    iget-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    const-wide v8, 0x3ff4ccccc0000000L    # 1.2999999523162842

    cmpl-double v5, v6, v8

    if-lez v5, :cond_3

    .line 271
    const-string v5, "KeyguardEffectViewMassRipple"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDistanceRatio ove DRAG threshold "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 262
    :cond_a
    const/4 v5, 0x3

    invoke-virtual {p0, v2, v3, v5, v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->rippeDown(FFIZ)V

    goto :goto_4

    .line 273
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-eq v5, v11, :cond_c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_e

    .line 276
    :cond_c
    const-string v5, "KeyguardEffectViewMassRipple"

    const-string v6, "ACTION_UP"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iput v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_X:I

    .line 279
    iput v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_Y:I

    .line 280
    iput v12, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->prevMovingDistance:F

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->prevPressTime:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->diffPressTime:J

    .line 284
    iget-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->diffPressTime:J

    const-wide/16 v8, 0x258

    cmp-long v5, v6, v8

    if-lez v5, :cond_d

    .line 285
    invoke-direct {p0, v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->playSound(I)V

    .line 288
    :cond_d
    iget-wide v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    const-wide v8, 0x3fe99999a0000000L    # 0.800000011920929

    cmpl-double v5, v6, v8

    if-lez v5, :cond_3

    .line 289
    const-string v5, "KeyguardEffectViewMassRipple"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDistanceRatio ove RELEASE threshold "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 291
    :cond_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3

    .line 293
    const-string v5, "KeyguardEffectViewMassRipple"

    const-string v6, "ACTION_HOVER_ENTER"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    if-nez v5, :cond_f

    iget-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    if-eqz v5, :cond_3

    .line 297
    :cond_f
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    if-eqz v5, :cond_3

    .line 298
    iget-object v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    invoke-virtual {v5, v10}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;->sendEmptyMessage(I)Z

    goto/16 :goto_3
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 688
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 689
    .local v0, "action":I
    const-string v1, "KeyguardEffectViewMassRipple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEventForPatternLock action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    packed-switch v0, :pswitch_data_0

    .line 702
    :cond_0
    :goto_0
    return v4

    .line 693
    :pswitch_0
    const-string v1, "KeyguardEffectViewMassRipple"

    const-string v2, "ACTION_DOWN => ACTION_HOVER_ENTER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    if-eqz v1, :cond_0

    .line 696
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    if-eqz v1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, -0x1

    .line 435
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;->sendEmptyMessage(I)Z

    .line 440
    :cond_1
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_X:I

    .line 441
    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_Y:I

    .line 442
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->prevMovingDistance:F

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isStartUnlock:Z

    .line 444
    return-void
.end method

.method public moveToDistanceIs20percent(FF)Z
    .locals 18
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 370
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_X:I

    const/4 v12, -0x1

    if-ne v9, v12, :cond_0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_Y:I

    const/4 v12, -0x1

    if-ne v9, v12, :cond_0

    .line 371
    const/4 v9, 0x0

    .line 400
    :goto_0
    return v9

    .line 374
    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_X:I

    move/from16 v0, p1

    float-to-int v12, v0

    sub-int/2addr v9, v12

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 375
    .local v2, "diffX":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->firstTouch_Y:I

    move/from16 v0, p2

    float-to-int v12, v0

    sub-int/2addr v9, v12

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 377
    .local v3, "diffY":I
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->DEBUG:Z

    if-eqz v9, :cond_1

    .line 378
    const-string v9, "KeyguardEffectViewMassRipple"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onTouchEvent() : diffX="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",diffY="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_1
    int-to-double v12, v2

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    int-to-double v14, v3

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double v6, v12, v14

    .line 381
    .local v6, "distance_square":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 382
    .local v4, "distance":D
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v12

    if-ge v9, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    .line 384
    .local v8, "min":I
    :goto_1
    int-to-double v12, v8

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v10, v12, v14

    .line 385
    .local v10, "threshold":D
    div-double v12, v4, v10

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    .line 388
    const-string v9, "KeyguardEffectViewMassRipple"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onTouchEvent() : threshold="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",mDistanceRatio="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    const-wide v14, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v9, v12, v14

    if-gez v9, :cond_3

    .line 391
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 382
    .end local v8    # "min":I
    .end local v10    # "threshold":D
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    goto :goto_1

    .line 393
    .restart local v8    # "min":I
    .restart local v10    # "threshold":D
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->prevMovingDistance:F

    float-to-double v12, v9

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3fdccccccccccccdL    # 0.45

    cmpl-double v9, v12, v14

    if-lez v9, :cond_4

    .line 395
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDistanceRatio:D

    double-to-float v9, v12

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->prevMovingDistance:F

    .line 396
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 400
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 407
    .local v0, "originalCircleX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 409
    .local v1, "originalCircleY":F
    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 410
    const-string v2, "KeyguardEffectViewMassRipple"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " originalCircleX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originalCircleY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string v2, "KeyguardEffectViewMassRipple"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " touchedEventX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", touchedEventY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventX:F

    .line 414
    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventY:F

    .line 416
    const/4 v2, 0x0

    return v2
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 544
    return-void
.end method

.method public releaseBooster(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 782
    if-nez p1, :cond_2

    .line 784
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedCPUClockTable:[I

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 788
    const-string v0, "KeyguardEffectViewMassRipple"

    const-string v1, "== DVFS == cpu MaxClock Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 792
    :cond_0
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedCPUClockTable:[I

    .line 808
    :cond_1
    :goto_0
    return-void

    .line 797
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    .line 801
    const-string v0, "KeyguardEffectViewMassRipple"

    const-string v1, "== DVFS == gpu MaxFreq Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 805
    :cond_3
    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->supportedGPUFreqTable:[I

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;->sendEmptyMessage(I)Z

    .line 501
    :cond_1
    const-string v0, "KeyguardEffectViewMassRipple"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return-void
.end method

.method public rippeDown(FFIZ)V
    .locals 15
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "lineStroke"    # I
    .param p4, "isAffordance"    # Z

    .prologue
    .line 310
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mMovingRippleCount:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 345
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 315
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v2, v2, v3

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 317
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 320
    :cond_1
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->getCircleSize(IZ)F

    move-result v8

    .line 322
    .local v8, "CIRCLE_MAX_SIZE":F
    iget-object v13, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v14, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    new-instance v2, Lcom/android/keyguard/sec/effect/MassRippleImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->typeStorke:[F

    aget v4, v4, p3

    float-to-int v5, v8

    float-to-int v6, v8

    const v7, 0x44a28000    # 1300.0f

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/sec/effect/MassRippleImageView;-><init>(Landroid/content/Context;FIIF)V

    aput-object v2, v13, v14

    .line 324
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v9, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 325
    .local v9, "addViewParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    move/from16 v0, p1

    float-to-int v2, v0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v10, v2, v3

    .line 328
    .local v10, "moveX":I
    move/from16 v0, p2

    float-to-int v2, v0

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v11, v2, v3

    .line 329
    .local v11, "moveY":I
    const-string v2, "KeyguardEffectViewMassRipple"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveX X = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "moveY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v12, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 333
    .local v12, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 334
    iput v11, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 335
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 336
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 338
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->massRipple:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->scale:[Landroid/view/animation/Animation;

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 342
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    rem-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    .line 343
    const-string v2, "KeyguardEffectViewMassRipple"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lineStroke = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v2, "KeyguardEffectViewMassRipple"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indexAni = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->indexAni:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public screenTurnedOff()V
    .locals 0

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->clearAllViews()V

    .line 683
    return-void
.end method

.method public screenTurnedOn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 509
    const-string v0, "KeyguardEffectViewMassRipple"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 511
    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isStartUnlock:Z

    .line 513
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 872
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "isHidden"    # Z

    .prologue
    .line 708
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 451
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->checkSound()V

    .line 452
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->setSound()V

    .line 454
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictCPUClock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_2

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    if-nez v0, :cond_2

    .line 458
    const-string v0, "KeyguardEffectViewMassRipple"

    const-string v1, "== DVFS == new DVFSHandlerForMassRipple"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mDVFSHandlerMassRipple:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;

    .line 461
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    .line 463
    const-string v0, "KeyguardEffectViewMassRipple"

    const-string v1, "== DVFS == new cpuMaxClockBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    .line 468
    const-string v0, "KeyguardEffectViewMassRipple"

    const-string v1, "== DVFS == new gpuMaxFreqBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mContext:Landroid/content/Context;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    .line 473
    :cond_2
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 7
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 524
    const-string v1, "KeyguardEffectViewMassRipple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showUnlockAffordance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", startDelay : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 526
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mMovingRippleCount:I

    .line 528
    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventX:F

    .line 529
    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventY:F

    .line 531
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventX:F

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventY:F

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->rippeDown(FFIZ)V

    .line 532
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 533
    .local v0, "message":Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 534
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 535
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->touchedEventY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 536
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 538
    return-void
.end method

.method public translatedFromDPToPixel(F)F
    .locals 6
    .param p1, "dp"    # F

    .prologue
    .line 356
    const/4 v2, 0x0

    .line 357
    .local v2, "ret":F
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 358
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 359
    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v3

    .line 360
    .local v0, "dpi":F
    const/high16 v3, 0x43200000    # 160.0f

    div-float v3, v0, v3

    mul-float v2, p1, v3

    .line 361
    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 362
    const-string v3, "KeyguardEffectViewMassRipple"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", to Pixel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    return v2
.end method

.method public update()V
    .locals 0

    .prologue
    .line 677
    return-void
.end method

.method public updateAfterCreation()V
    .locals 0

    .prologue
    .line 867
    return-void
.end method
