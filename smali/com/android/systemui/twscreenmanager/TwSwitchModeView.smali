.class public Lcom/android/systemui/twscreenmanager/TwSwitchModeView;
.super Landroid/widget/FrameLayout;
.source "TwSwitchModeView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TwSwitchModeView"


# instance fields
.field private final ANIMATION_DURATION:I

.field private final SWIPE_THRESHOLD_DISTANCE:I

.field private final SWIPE_THRESHOLD_DISTANCE_MAX:I

.field private final debug:Z

.field private mAppMoveIgnoreList:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mCurrentTouchDisplay:I

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mIsDualScreenEnabled:Z

.field private mIsExtendedMode:Z

.field private mMarginLayoutParamsMain:Landroid/view/ViewGroup$MarginLayoutParams;

.field private mMarginLayoutParamsSub:Landroid/view/ViewGroup$MarginLayoutParams;

.field private mMoveIgnoreMain:Z

.field private mMoveIgnoreSub:Z

.field private mPreTouchPositionX:I

.field private mScaleInAnimation:Landroid/view/animation/Animation;

.field private mScaleOutAnimation:Landroid/view/animation/Animation;

.field private mScreen:Lcom/samsung/android/dualscreen/DualScreen;

.field private mScreenShotMain:Landroid/widget/ImageView;

.field private mScreenShotSub:Landroid/widget/ImageView;

.field private mTaskInfoMain:Lcom/samsung/android/dualscreen/TaskInfo;

.field private mTaskInfoSub:Lcom/samsung/android/dualscreen/TaskInfo;

.field private mTopRunningAppInMain:Ljava/lang/String;

.field private mTopRunningAppInSub:Ljava/lang/String;

.field private mTouchDownX:I

.field onTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->debug:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mIsExtendedMode:Z

    .line 80
    iput v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mPreTouchPositionX:I

    .line 83
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->SWIPE_THRESHOLD_DISTANCE:I

    .line 84
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->SWIPE_THRESHOLD_DISTANCE_MAX:I

    .line 85
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->ANIMATION_DURATION:I

    .line 86
    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    .line 87
    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.incallui"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.voicenote"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mAppMoveIgnoreList:[Ljava/lang/String;

    .line 471
    new-instance v0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;-><init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)V

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->init(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->debug:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mIsExtendedMode:Z

    .line 80
    iput v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mPreTouchPositionX:I

    .line 83
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->SWIPE_THRESHOLD_DISTANCE:I

    .line 84
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->SWIPE_THRESHOLD_DISTANCE_MAX:I

    .line 85
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->ANIMATION_DURATION:I

    .line 86
    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    .line 87
    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.incallui"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.voicenote"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mAppMoveIgnoreList:[Ljava/lang/String;

    .line 471
    new-instance v0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;-><init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)V

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->init(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->debug:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mIsExtendedMode:Z

    .line 80
    iput v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mPreTouchPositionX:I

    .line 83
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->SWIPE_THRESHOLD_DISTANCE:I

    .line 84
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->SWIPE_THRESHOLD_DISTANCE_MAX:I

    .line 85
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->ANIMATION_DURATION:I

    .line 86
    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    .line 87
    iput-boolean v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.incallui"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.voicenote"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mAppMoveIgnoreList:[Ljava/lang/String;

    .line 471
    new-instance v0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;-><init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)V

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->init(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/twscreenmanager/TwSwitchModeView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->isMainScreen(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/twscreenmanager/TwSwitchModeView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->stopTwScreenManagerServiceWithMoveToScrren(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mPreTouchPositionX:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/twscreenmanager/TwSwitchModeView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mPreTouchPositionX:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mIsExtendedMode:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/twscreenmanager/TwSwitchModeView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->followFingerAnimation(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;ILandroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/twscreenmanager/TwSwitchModeView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->loadScreenAnimation(ILandroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Lcom/samsung/android/dualscreen/TaskInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoMain:Lcom/samsung/android/dualscreen/TaskInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/twscreenmanager/TwSwitchModeView;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->stopTwScreenManagerService(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Lcom/samsung/android/dualscreen/TaskInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoSub:Lcom/samsung/android/dualscreen/TaskInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTouchDownX:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/twscreenmanager/TwSwitchModeView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTouchDownX:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mCurrentTouchDisplay:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/twscreenmanager/TwSwitchModeView;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mCurrentTouchDisplay:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    return-object v0
.end method

.method private followFingerAnimation(II)V
    .locals 2
    .param p1, "displayID"    # I
    .param p2, "distanceX"    # I

    .prologue
    .line 285
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMarginLayoutParamsMain:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 287
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMarginLayoutParamsSub:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 290
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mContext:Landroid/content/Context;

    .line 111
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 112
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0400e6

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 114
    const v1, 0x7f0e0443

    invoke-virtual {p0, v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    .line 115
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 116
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 118
    const v1, 0x7f0e0442

    invoke-virtual {p0, v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    .line 119
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 120
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 122
    const v1, 0x7f0e0441

    invoke-virtual {p0, v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mIsDualScreenEnabled:Z

    .line 130
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMarginLayoutParamsMain:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 131
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMarginLayoutParamsSub:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 133
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoMain:Lcom/samsung/android/dualscreen/TaskInfo;

    .line 136
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoSub:Lcom/samsung/android/dualscreen/TaskInfo;

    .line 139
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->isMoveIgnore(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    .line 140
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->isMoveIgnore(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    .line 142
    iget-boolean v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    if-nez v1, :cond_0

    .line 143
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->startScaleInAnimation(I)V

    .line 146
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    if-nez v1, :cond_1

    .line 147
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->startScaleInAnimation(I)V

    .line 150
    :cond_1
    return-void
.end method

.method private isMainScreen(I)Z
    .locals 2
    .param p1, "displayID"    # I

    .prologue
    const/4 v0, 0x0

    .line 210
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 211
    const/4 v0, 0x1

    .line 215
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_0
.end method

.method private isMoveIgnore(I)Z
    .locals 10
    .param p1, "displayID"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 174
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 175
    iget-object v6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoMain:Lcom/samsung/android/dualscreen/TaskInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoMain:Lcom/samsung/android/dualscreen/TaskInfo;

    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskType()I

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    .line 196
    :goto_0
    return v6

    .line 177
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoMain:Lcom/samsung/android/dualscreen/TaskInfo;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoMain:Lcom/samsung/android/dualscreen/TaskInfo;

    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/TaskInfo;->isCoupled()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    .line 178
    goto :goto_0

    .line 180
    :cond_1
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v6

    if-ne p1, v6, :cond_3

    .line 181
    iget-object v6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoSub:Lcom/samsung/android/dualscreen/TaskInfo;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoSub:Lcom/samsung/android/dualscreen/TaskInfo;

    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskType()I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    .line 182
    goto :goto_0

    .line 183
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoSub:Lcom/samsung/android/dualscreen/TaskInfo;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTaskInfoSub:Lcom/samsung/android/dualscreen/TaskInfo;

    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/TaskInfo;->isCoupled()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    .line 184
    goto :goto_0

    .line 188
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 189
    .local v4, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v4, v7, p1}, Landroid/app/ActivityManager;->getRunningTasks(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mAppMoveIgnoreList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v2, v0, v1

    .line 192
    .local v2, "ignorePkgName":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    .line 193
    goto :goto_0

    .line 191
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "ignorePkgName":Ljava/lang/String;
    :cond_5
    move v6, v8

    .line 196
    goto :goto_0
.end method

.method private loadScreenAnimation(ILandroid/view/MotionEvent;)V
    .locals 4
    .param p1, "displayID"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v3, 0xfa

    .line 420
    iget v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTouchDownX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    sub-int v0, v1, v2

    .line 421
    .local v0, "distance":I
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 422
    if-lez v0, :cond_2

    .line 423
    iget-boolean v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_1

    .line 424
    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->moveToOtherScreen(I)V

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->snapBack(I)V

    goto :goto_0

    .line 429
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->snapBack(I)V

    goto :goto_0

    .line 431
    :cond_3
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 432
    if-gez v0, :cond_5

    .line 433
    iget-boolean v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    if-nez v1, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_4

    .line 434
    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->moveToOtherScreen(I)V

    goto :goto_0

    .line 436
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->snapBack(I)V

    goto :goto_0

    .line 439
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->snapBack(I)V

    goto :goto_0
.end method

.method private moveToOtherScreen(I)V
    .locals 14
    .param p1, "displayID"    # I

    .prologue
    .line 331
    iget-object v5, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    .line 332
    .local v5, "SCREEN_SHOT_MAIN":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    .line 333
    .local v8, "SCREEN_SHOT_SUB":Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 334
    .local v4, "MARGIN_LAYOUT_PARAMS_FOR_MAIN":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 336
    .local v7, "MARGIN_LAYOUT_PARAMS_FOR_SUB":Landroid/view/ViewGroup$MarginLayoutParams;
    move v2, p1

    .line 337
    .local v2, "DISPLAY_ID":I
    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 338
    .local v6, "LEFT_MARGIN":I
    const/16 v9, 0x438

    .line 340
    .local v9, "LEFT_MARGIN_ORIGIN":I
    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 341
    .local v3, "RIGHT_MARGIN":I
    const/16 v10, 0x438

    .line 343
    .local v10, "RIGHT_MARGIN_ORIGIN":I
    new-instance v0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$3;-><init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;IILandroid/view/ViewGroup$MarginLayoutParams;Landroid/widget/ImageView;ILandroid/view/ViewGroup$MarginLayoutParams;Landroid/widget/ImageView;)V

    .line 357
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v12, 0x12c

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 358
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 359
    new-instance v1, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$4;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$4;-><init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 373
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 376
    return-void
.end method

.method private snapBack(I)V
    .locals 14
    .param p1, "displayID"    # I

    .prologue
    .line 298
    iget-object v5, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    .line 299
    .local v5, "SCREEN_SHOT_MAIN":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    .line 300
    .local v8, "SCREEN_SHOT_SUB":Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 301
    .local v4, "MARGIN_LAYOUT_PARAMS_FOR_MAIN":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 303
    .local v7, "MARGIN_LAYOUT_PARAMS_FOR_SUB":Landroid/view/ViewGroup$MarginLayoutParams;
    move v2, p1

    .line 304
    .local v2, "DISPLAY_ID":I
    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 305
    .local v6, "LEFT_MARGIN":I
    const/4 v9, 0x0

    .line 307
    .local v9, "LEFT_MARGIN_ORIGIN":I
    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 308
    .local v3, "RIGHT_MARGIN":I
    const/4 v10, 0x0

    .line 310
    .local v10, "RIGHT_MARGIN_ORIGIN":I
    new-instance v0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$2;-><init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;IILandroid/view/ViewGroup$MarginLayoutParams;Landroid/widget/ImageView;ILandroid/view/ViewGroup$MarginLayoutParams;Landroid/widget/ImageView;)V

    .line 324
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v12, 0x12c

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 325
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 326
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 327
    return-void
.end method

.method private startScaleInAnimation(I)V
    .locals 9
    .param p1, "displayID"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    .line 445
    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    if-ne v0, v5, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    if-ne v0, v5, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleInAnimation:Landroid/view/animation/Animation;

    .line 449
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 452
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    if-nez v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 454
    :cond_2
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private startScaleOutAnimation(I)V
    .locals 9
    .param p1, "displayID"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    .line 461
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    .line 462
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 463
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 464
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    if-nez v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private stopTwScreenManagerService(Z)V
    .locals 4
    .param p1, "enableAnimation"    # Z

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 226
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->startScaleOutAnimation(I)V

    .line 227
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->startScaleOutAnimation(I)V

    .line 229
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$1;-><init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 238
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 245
    .end local v1    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 241
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/twscreenmanager/TwScreenManagerService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v0, "bindIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private stopTwScreenManagerServiceWithMoveToScrren(I)V
    .locals 10
    .param p1, "displayID"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    .line 379
    move v9, p1

    .line 380
    .local v9, "d":I
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    .line 381
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$5;

    invoke-direct {v1, p0, v9}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$5;-><init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 412
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreMain:Z

    if-nez v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mMoveIgnoreSub:Z

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScaleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 254
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->stopTwScreenManagerService(Z)V

    .line 256
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 221
    return-void
.end method

.method public setScreenShotMain(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "screenShot"    # Landroid/graphics/Bitmap;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 156
    return-void
.end method

.method public setScreenShotSub(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "screenShot"    # Landroid/graphics/Bitmap;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 162
    return-void
.end method

.method public swapScreenShot()V
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 170
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 171
    return-void
.end method
