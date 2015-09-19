.class public Lcom/android/keyguard/sec/SecKeyguardClockView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardClockView.java"


# static fields
.field private static final FONT_SIZE_EASY_MODE_KOREAN_OWNER_INFO:I = 0x10

.field private static final FONT_SIZE_EASY_MODE_OWNER_INFO:I = 0x13

.field private static final MKEYBOARD_CONNECTED_SCALE:F = 0.75f

.field private static final MKEYBOARD_DISCONNECTED_SCALE:F = 1.0f

.field private static final MSG_CONTENT_UPDATED:I = 0x12cb

.field private static final MSG_HANDLE_POST_ONCONFIGURATIONCHANGED:I = 0x12cd

.field private static final MSG_SETSELECTED_TRUE_AFTER_3_SEC:I = 0x12ce

.field private static final MSG_TRAVEL_INFO_SETTINGS_CHANGED:I = 0x12cc

.field private static final TAG:Ljava/lang/String; = "SecKeyguardClockView"

.field public static final THEME_APPLY:Ljava/lang/String; = "com.samsung.android.theme.themecenter.THEME_APPLY"

.field private static mShouldShowDualClock:Ljava/lang/Boolean;


# instance fields
.field private mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

.field private mAdaptiveEventWeatherClockCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

.field private mClockHolder:Landroid/widget/FrameLayout;

.field private mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mClockViewSettingsObserver:Landroid/database/ContentObserver;

.field private mCurrentOrientation:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsMobileKeyboard:Z

.field mIsRotationEnabled:Z

.field private mIsUpdateOwnerInfo:Z

.field private mKeyguardClockBottom:Landroid/widget/LinearLayout;

.field private mKeyguardClockView:Landroid/widget/LinearLayout;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mOldConfig:Landroid/content/res/Configuration;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mScreenOn:Z

.field private mTimeZone:Ljava/lang/String;

.field private mTravelText:Landroid/widget/TextView;

.field private mUseBlackTextOnWhiteCoverWallpaper:Z

.field private mUseBlackTextOnWhiteWallpaper:Z

.field private mWasMobileKeyboard:Z

.field private wasWeatherVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->wasWeatherVisible:Z

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mCurrentOrientation:I

    .line 69
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsRotationEnabled:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsUpdateOwnerInfo:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mScreenOn:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mWasMobileKeyboard:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsMobileKeyboard:Z

    .line 81
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventWeatherClockCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    .line 519
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClockView$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClockView$6;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOldConfig:Landroid/content/res/Configuration;

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshTravelInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->handleDelayedOnConfigurationChanged()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/keyguard/sec/SecKeyguardClockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/keyguard/sec/SecKeyguardClockView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mCurrentOrientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->handleSetSelectedTrue()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->shouldEnableKeyguardScreenRotation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/sec/SecKeyguardClockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isDualClockSet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/sec/SecKeyguardClockView;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setAutoHomeTimezone(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/keyguard/sec/SecKeyguardClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setWidthAdaptiveEventContainer()V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/keyguard/sec/SecKeyguardClockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/SecKeyguardClockView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SecKeyguardClockView;)Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/SecKeyguardClockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->wasWeatherVisible:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/SecKeyguardClockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->wasWeatherVisible:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/SecKeyguardClockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/SecKeyguardClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardClockView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshOwnerInfo()V

    return-void
.end method

.method private handleDelayedOnConfigurationChanged()V
    .locals 2

    .prologue
    .line 695
    const-string v0, "SecKeyguardClockView"

    const-string v1, "handleDelayedOnConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsRotationEnabled:Z

    if-eqz v0, :cond_0

    .line 697
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshOwnerInfo()V

    .line 698
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshTravelInfo()V

    .line 700
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateClock()V

    .line 701
    return-void
.end method

.method private handleSetSelectedTrue()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 579
    :cond_0
    return-void
.end method

.method private is24HourModeEnabled()Z
    .locals 8

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    const/4 v7, -0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 754
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 755
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 756
    .local v0, "locale":Ljava/util/Locale;
    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 758
    .local v1, "natural":Ljava/text/DateFormat;
    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_1

    move-object v3, v1

    .line 759
    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 760
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 762
    .local v2, "pattern":Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    .line 763
    const-string v4, "24"

    .line 770
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 772
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "natural":Ljava/text/DateFormat;
    :goto_1
    return v5

    .line 765
    .restart local v0    # "locale":Ljava/util/Locale;
    .restart local v1    # "natural":Ljava/text/DateFormat;
    .restart local v2    # "pattern":Ljava/lang/String;
    .restart local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    const-string v4, "12"

    goto :goto_0

    .line 768
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    const-string v4, "12"

    goto :goto_0

    .line 772
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "natural":Ljava/text/DateFormat;
    :cond_2
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1
.end method

.method private isClockCentered()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 743
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isDualClockSet()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardProperties;->isDualClockCenterAlign(Landroid/content/Context;)Z

    move-result v0

    .line 745
    .local v0, "isCenterClockModel":Z
    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isClockMovedByWeatherVisiblity()Z

    move-result v1

    .line 746
    .local v1, "isClockMovedByWeatherVisiblity":Z
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->isShowingWeatherInfo()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    move v2, v3

    .line 748
    .local v2, "isNoWeather":Z
    :goto_1
    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    :cond_2
    :goto_2
    return v3

    .line 743
    .end local v0    # "isCenterClockModel":Z
    .end local v1    # "isClockMovedByWeatherVisiblity":Z
    .end local v2    # "isNoWeather":Z
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardProperties;->isSingleClockCenterAlign(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .restart local v0    # "isCenterClockModel":Z
    .restart local v1    # "isClockMovedByWeatherVisiblity":Z
    :cond_4
    move v2, v4

    .line 746
    goto :goto_1

    .restart local v2    # "isNoWeather":Z
    :cond_5
    move v3, v4

    .line 748
    goto :goto_2
.end method

.method private isDualClockSet()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 643
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v5

    .line 644
    .local v5, "isWiFiOnlyDevice":Z
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDualClock(Landroid/content/Context;)Z

    move-result v0

    .line 645
    .local v0, "isDualClockSet":Z
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getHometimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    move v2, v7

    .line 646
    .local v2, "isHomeTimeZoneExist":Z
    :goto_0
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 647
    .local v1, "isEasyUxOn":Z
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v4

    .line 648
    .local v4, "isShowInfomation":Z
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v3

    .line 649
    .local v3, "isNetworkRoaming":Z
    const/4 v6, 0x0

    .line 651
    .local v6, "onlyForTest":Z
    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isIgnoreNationalRoaming()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/KeyguardProperties;->isNationalRoamingForTWO(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    if-eqz v6, :cond_3

    :cond_1
    :goto_1
    return v7

    .end local v1    # "isEasyUxOn":Z
    .end local v2    # "isHomeTimeZoneExist":Z
    .end local v3    # "isNetworkRoaming":Z
    .end local v4    # "isShowInfomation":Z
    .end local v6    # "onlyForTest":Z
    :cond_2
    move v2, v8

    .line 645
    goto :goto_0

    .restart local v1    # "isEasyUxOn":Z
    .restart local v2    # "isHomeTimeZoneExist":Z
    .restart local v3    # "isNetworkRoaming":Z
    .restart local v4    # "isShowInfomation":Z
    .restart local v6    # "onlyForTest":Z
    :cond_3
    move v7, v8

    .line 651
    goto :goto_1
.end method

.method private isImageClockSet()Z
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->theme_use_image_clock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCurrentLanguageArabic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUpdateOwnerInfo()Z
    .locals 1

    .prologue
    .line 721
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->hideOwnerInfoOnNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsUpdateOwnerInfo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshOwnerInfo()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 462
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateCMASText()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 463
    :cond_0
    const-string v5, "SecKeyguardClockView"

    const-string v6, "refreshOwnerInfo() - return"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_1
    :goto_0
    return-void

    .line 467
    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v1

    .line 469
    .local v1, "isShowInformation":Z
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v4

    .line 470
    .local v4, "ownerInfoEnabled":Z
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "ownerInfo":Ljava/lang/String;
    if-eqz v1, :cond_7

    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isUpdateOwnerInfo()Z

    move-result v5

    if-nez v5, :cond_7

    .line 472
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 474
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v2

    .line 476
    .local v2, "isThemeApplied":Z
    invoke-static {}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isCovered()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v5, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isCovered()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    if-eqz v5, :cond_5

    .line 478
    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-static {v5, v6, v2, v8}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 482
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyModeOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 483
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBigFontModelinEasyMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 484
    const-string v5, "ko"

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 485
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v5, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 480
    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-static {v5, v6, v2, v9}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    goto :goto_1

    .line 487
    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    const/high16 v6, 0x41980000    # 19.0f

    invoke-virtual {v5, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    .line 492
    .end local v2    # "isThemeApplied":Z
    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalInfoEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 493
    .local v0, "isAdditionalInfoEnabled":Z
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    const/4 v5, 0x4

    :goto_2
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0x8

    goto :goto_2
.end method

.method private refreshTravelInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 498
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isTravelWallpaperSet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 507
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getTravelLocationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "locationName":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 509
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 512
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 515
    .end local v0    # "locationName":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private scaleTopViewByMKeyboard()V
    .locals 5

    .prologue
    .line 788
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v3

    if-nez v3, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsMobileKeyboard:Z

    .line 792
    iget-boolean v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsMobileKeyboard:Z

    iget-boolean v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mWasMobileKeyboard:Z

    if-eq v3, v4, :cond_0

    .line 793
    iget-boolean v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsMobileKeyboard:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mWasMobileKeyboard:Z

    .line 798
    const/high16 v1, 0x3f800000    # 1.0f

    .line 799
    .local v1, "scale":F
    iget-boolean v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsMobileKeyboard:Z

    if-eqz v3, :cond_2

    .line 800
    const/high16 v1, 0x3f400000    # 0.75f

    .line 802
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setScaleY(F)V

    .line 803
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    .line 804
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 805
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    if-eqz v3, :cond_4

    .line 806
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->setScaleX(F)V

    .line 809
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 810
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 811
    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 812
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 813
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->kg_owner_text_left_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 814
    .local v2, "size":I
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 815
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setAutoHomeTimezone(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 615
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "homecity_timezone"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "autoHomeTimeZoneId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 617
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 618
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_1

    .line 619
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 621
    .local v3, "simstateFromTelephony":I
    const-string v5, "SecKeyguardClockView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HomeTimezone(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    if-ne v3, v5, :cond_1

    .line 623
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 624
    .local v1, "homeCalendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, "hometz":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "homecity_timezone"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 626
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 627
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "homecity_timezone"

    const-string v7, "Asia/Seoul"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 628
    :cond_0
    const-string v5, "SecKeyguardClockView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set homecity_timezone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "homecity_timezone"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local v1    # "homeCalendar":Ljava/util/Calendar;
    .end local v2    # "hometz":Ljava/lang/String;
    .end local v3    # "simstateFromTelephony":I
    .end local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    return-void
.end method

.method private setDualClockImageLayoutParams()V
    .locals 11

    .prologue
    const v10, 0x800003

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 370
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 371
    .local v5, "rs":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 372
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_left:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 373
    .local v1, "leftMargin":I
    sget v7, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_right:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 374
    .local v4, "rightMargin":I
    sget v7, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_top:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 375
    .local v6, "topMargin":I
    invoke-virtual {v2, v8, v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 376
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 377
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 378
    sget v7, Lcom/android/keyguard/R$id;->keyguard_sec_clock_dual_image:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 380
    .local v0, "dualClockView":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isClockCentered()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 381
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 382
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 383
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 384
    invoke-virtual {v2, v8, v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 385
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 386
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 393
    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$bool;->theme_use_clock_background_image:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 394
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 395
    .local v3, "lp_2":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/android/keyguard/R$dimen;->kg_dualclock_container_height:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 396
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$drawable;->dualclock_background_image:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 399
    .end local v3    # "lp_2":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    return-void

    .line 388
    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 389
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 390
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private setDualClockLayoutParams()V
    .locals 11

    .prologue
    const v10, 0x800003

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 337
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 338
    .local v5, "rs":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 339
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_left:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 340
    .local v1, "leftMargin":I
    sget v7, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_right:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 341
    .local v4, "rightMargin":I
    sget v7, Lcom/android/keyguard/R$dimen;->kg_dualclock_margin_top:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 342
    .local v6, "topMargin":I
    invoke-virtual {v2, v8, v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 343
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 344
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 345
    sget v7, Lcom/android/keyguard/R$id;->keyguard_sec_clock_dual_view:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 347
    .local v0, "dualClockView":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isClockCentered()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 348
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 349
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 350
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 351
    invoke-virtual {v2, v8, v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 352
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 353
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 359
    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$bool;->theme_use_clock_background_image:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 360
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 361
    .local v3, "lp_2":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/android/keyguard/R$dimen;->kg_dualclock_container_height:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 362
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$drawable;->dualclock_background_image:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 365
    .end local v3    # "lp_2":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    return-void

    .line 355
    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 356
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 357
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private setPivotForMKeyboard()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 776
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setPivotY(F)V

    .line 779
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 780
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 781
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 782
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 783
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_adaptive_event_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->setPivotX(F)V

    goto :goto_0
.end method

.method private setSingleClockImageLayoutParams()V
    .locals 11

    .prologue
    const v10, 0x800003

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 305
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 306
    .local v4, "rs":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 307
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_left:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 308
    .local v0, "leftMargin":I
    sget v7, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_right:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 309
    .local v3, "rightMargin":I
    sget v7, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_top:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 310
    .local v6, "topMargin":I
    invoke-virtual {v1, v8, v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 311
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 312
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 313
    sget v7, Lcom/android/keyguard/R$id;->keyguard_sec_clock_single_image:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 315
    .local v5, "singleClockView":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isClockCentered()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 316
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 317
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 318
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 319
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 320
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 326
    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$bool;->theme_use_clock_background_image:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 327
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 328
    .local v2, "lp_2":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/android/keyguard/R$dimen;->kg_singleclock_container_height:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 329
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$drawable;->theme_textclock_bg_image:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 332
    .end local v2    # "lp_2":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    return-void

    .line 322
    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 323
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 324
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private setSingleClockLayoutParams()V
    .locals 11

    .prologue
    const v10, 0x800003

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 271
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 272
    .local v4, "rs":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 273
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_left:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 274
    .local v0, "leftMargin":I
    sget v7, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_right:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 275
    .local v3, "rightMargin":I
    sget v7, Lcom/android/keyguard/R$dimen;->kg_singleclock_margin_top:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 276
    .local v6, "topMargin":I
    invoke-virtual {v1, v8, v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 277
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 278
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 279
    sget v7, Lcom/android/keyguard/R$id;->keyguard_sec_clock_single_view:I

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .line 280
    .local v5, "singleClockView":Lcom/android/keyguard/sec/SecKeyguardClockSingleView;
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->updateMarginPaddingTimeIfTheme(Z)V

    .line 283
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isClockCentered()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 284
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 285
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 286
    invoke-virtual {v5, v9}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setGravity(I)V

    .line 287
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 288
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 294
    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$bool;->theme_use_clock_background_image:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 295
    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 296
    .local v2, "lp_2":Landroid/widget/FrameLayout$LayoutParams;
    sget v7, Lcom/android/keyguard/R$dimen;->kg_singleclock_container_height:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 297
    invoke-virtual {v5, v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$drawable;->theme_textclock_bg_image:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 300
    .end local v2    # "lp_2":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    return-void

    .line 290
    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 291
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 292
    invoke-virtual {v5, v10}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setGravity(I)V

    goto :goto_0
.end method

.method private setWidthAdaptiveEventContainer()V
    .locals 6

    .prologue
    .line 725
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v3

    if-nez v3, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    if-eqz v3, :cond_0

    .line 729
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTimeZone:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 730
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTimeZone:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 734
    .local v2, "time":Ljava/util/Calendar;
    :goto_1
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 736
    .local v0, "hour":I
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->is24HourModeEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isDualClockSet()Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x9

    if-gt v0, v3, :cond_2

    if-nez v0, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 737
    .local v1, "isShortMaxWidth":Z
    :goto_2
    const-string v3, "SecKeyguardClockView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTimeZone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",   hour:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",   isShortMaxWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->setWidthWeatherCityName(Z)V

    goto :goto_0

    .line 732
    .end local v0    # "hour":I
    .end local v1    # "isShortMaxWidth":Z
    .end local v2    # "time":Ljava/util/Calendar;
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .restart local v2    # "time":Ljava/util/Calendar;
    goto :goto_1

    .line 736
    .restart local v0    # "hour":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 637
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 638
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/android/keyguard/R$bool;->config_enableLockScreenRotation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method protected handleUpdateClock()V
    .locals 0

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->updateClock()V

    .line 405
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 178
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 180
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 181
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isClockMovedByWeatherVisiblity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 189
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isClockMovedByWeatherVisiblity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventWeatherClockCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEventWeatherClockCallback(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;)V

    .line 192
    :cond_1
    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardClockView$4;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/SecKeyguardClockView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    .line 223
    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardClockView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardClockView$5;-><init>(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/SecKeyguardClockView$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 254
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v4, 0x12cd

    .line 664
    const-string v1, "SecKeyguardClockView"

    const-string v2, "onConfigurationChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 667
    const/16 v0, 0x80

    .line 668
    .local v0, "diff":I
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOldConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 671
    :cond_0
    const-string v1, "SecKeyguardClockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newConfig diff : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOldConfig:Landroid/content/res/Configuration;

    .line 673
    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 692
    :goto_0
    return-void

    .line 677
    :cond_1
    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mCurrentOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_2

    .line 678
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mCurrentOrientation:I

    .line 681
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 682
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 685
    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mScreenOn:Z

    if-eqz v1, :cond_4

    .line 686
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->handleDelayedOnConfigurationChanged()V

    .line 691
    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->scaleTopViewByMKeyboard()V

    goto :goto_0

    .line 688
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 259
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 262
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isClockMovedByWeatherVisiblity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEventWeatherClockCallback(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockViewSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 268
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sec_clock_holder:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    .line 160
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sec_clock_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    .line 161
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sec_clock_bottom:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockBottom:Landroid/widget/LinearLayout;

    .line 162
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 163
    sget v0, Lcom/android/keyguard/R$id;->keyguard_owner_info:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    .line 164
    sget v0, Lcom/android/keyguard/R$id;->keyguard_travel_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mTravelText:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "white_lockscreen_wallpaper"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "white_cover_wallpaper"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    .line 168
    sget v0, Lcom/android/keyguard/R$id;->adaptive_event_container_small:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mAdaptiveEventContainerSmall:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    .line 171
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setPivotForMKeyboard()V

    .line 172
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->scaleTopViewByMKeyboard()V

    .line 174
    return-void

    :cond_0
    move v0, v2

    .line 166
    goto :goto_0

    :cond_1
    move v1, v2

    .line 167
    goto :goto_1
.end method

.method public updateCMASText()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 582
    const-string v4, "SecKeyguardClockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCMASText() mOwnerInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 611
    :goto_0
    return v3

    .line 585
    :cond_0
    const/4 v0, 0x0

    .line 587
    .local v0, "disableNoti":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_show_notifications"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 594
    :goto_1
    const-string v4, "SecKeyguardClockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disableNoti = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 596
    const-string v4, "SecKeyguardClockView"

    const-string v5, "updateCMASText( )"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingCMAS()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 598
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 599
    const-string v4, "SecKeyguardClockView"

    const-string v5, "[SPR] Presidential Alert!! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_spr:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    sget v5, Lcom/android/keyguard/R$drawable;->ic_lockscreen_cmas:I

    invoke-virtual {v4, v5, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 606
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move v3, v2

    .line 607
    goto :goto_0

    :cond_1
    move v0, v3

    .line 587
    goto :goto_1

    .line 589
    :catch_0
    move-exception v1

    .line 590
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "SecKeyguardClockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCMASText() can not found setting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v0, 0x0

    .line 592
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_1

    .line 602
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    const-string v4, "SecKeyguardClockView"

    const-string v5, "[No SPR] Emergency Alert!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_vzw:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 610
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0
.end method

.method protected updateClock()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 408
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isDualClockSet()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    .line 409
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setWidthAdaptiveEventContainer()V

    .line 413
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isImageClockSet()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 414
    const-string v1, "SecKeyguardClockView"

    const-string v2, "updateClock() : Theme Image Clock is inflated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 417
    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_dual_image:I

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 419
    .local v0, "targetClock":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 420
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 421
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setDualClockImageLayoutParams()V

    .line 459
    .end local v0    # "targetClock":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 423
    .restart local v0    # "targetClock":Landroid/view/View;
    :cond_1
    const-string v1, "SecKeyguardClockView"

    const-string v2, "Dual clock Image null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 426
    .end local v0    # "targetClock":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_single_image:I

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 427
    .restart local v0    # "targetClock":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 428
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 429
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setSingleClockImageLayoutParams()V

    goto :goto_0

    .line 431
    :cond_3
    const-string v1, "SecKeyguardClockView"

    const-string v2, "Single clock Image null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    .end local v0    # "targetClock":Landroid/view/View;
    :cond_4
    const-string v1, "SecKeyguardClockView"

    const-string v2, "updateClock() : Text Clock is inflated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 440
    sget-object v1, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 441
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_dual_view:I

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 442
    .restart local v0    # "targetClock":Landroid/view/View;
    if-eqz v0, :cond_5

    .line 443
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 444
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setDualClockLayoutParams()V

    goto :goto_0

    .line 446
    :cond_5
    const-string v1, "SecKeyguardClockView"

    const-string v2, "Dual clock null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 449
    .end local v0    # "targetClock":Landroid/view/View;
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_single_view:I

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 450
    .restart local v0    # "targetClock":Landroid/view/View;
    if-eqz v0, :cond_7

    .line 451
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mClockHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 452
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->setSingleClockLayoutParams()V

    goto :goto_0

    .line 454
    :cond_7
    const-string v1, "SecKeyguardClockView"

    const-string v2, "Single clock null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateFontColor()V
    .locals 4

    .prologue
    .line 820
    const-string v2, "SecKeyguardClockView"

    const-string v3, "Update font color"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    sget-object v2, Lcom/android/keyguard/sec/SecKeyguardClockView;->mShouldShowDualClock:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 822
    sget v2, Lcom/android/keyguard/R$id;->keyguard_sec_clock_dual_view:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardClockDualView;

    .line 824
    .local v0, "dualClockView":Lcom/android/keyguard/sec/SecKeyguardClockDualView;
    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockDualView;->setClockStyle()V

    .line 826
    const-string v2, "SecKeyguardClockView"

    const-string v3, "Cannot update dual clock font, view is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    .end local v0    # "dualClockView":Lcom/android/keyguard/sec/SecKeyguardClockDualView;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshOwnerInfo()V

    .line 838
    return-void

    .line 829
    :cond_1
    sget v2, Lcom/android/keyguard/R$id;->keyguard_sec_clock_single_view:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .line 831
    .local v1, "singleClockView":Lcom/android/keyguard/sec/SecKeyguardClockSingleView;
    if-eqz v1, :cond_2

    .line 832
    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockStyle()V

    goto :goto_0

    .line 834
    :cond_2
    const-string v2, "SecKeyguardClockView"

    const-string v3, "Cannot update single clock font, view is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateLongShadowImageViews()V
    .locals 2

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->isImageClockSet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 705
    sget v1, Lcom/android/keyguard/R$id;->keyguard_sec_clock_single_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    .line 706
    .local v0, "singleClockView":Lcom/android/keyguard/sec/SecKeyguardClockSingleView;
    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->updateLongShadowImageViews()V

    .line 710
    .end local v0    # "singleClockView":Lcom/android/keyguard/sec/SecKeyguardClockSingleView;
    :cond_0
    return-void
.end method

.method public updateOwnerInfo(ZZ)V
    .locals 2
    .param p1, "isUpdateOwnerInfo"    # Z
    .param p2, "isForced"    # Z

    .prologue
    .line 713
    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsUpdateOwnerInfo:Z

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 714
    .local v0, "isChanged":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mIsUpdateOwnerInfo:Z

    .line 715
    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView;->mKeyguardClockView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 716
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshOwnerInfo()V

    .line 718
    :cond_1
    return-void

    .line 713
    .end local v0    # "isChanged":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
