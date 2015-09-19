.class public Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;
.super Landroid/widget/LinearLayout;
.source "SeckeyguardClockDualImageView.java"


# static fields
.field private static final ATT_ROAMING_TEXT:Ljava/lang/String; = ""

.field protected static final MARGIN_RATIO_FOR_NUM45_LEFT:F = 15.0f

.field private static final MSG_CONTENT_UPDATED:I = 0x67

.field private static final MSG_DUAL_CLOCK_SETTINGS_CHANGED:I = 0x66

.field private static final MSG_DUAL_DATE_ON_SETTINGS_CHANGED:I = 0x64

.field private static final MSG_DUAL_SHOW_CLOCK_DATE_ON_SETTINGS_CHANGED:I = 0x65

.field public static TAG:Ljava/lang/String;

.field public static mBatteryLevel:I


# instance fields
.field private DIGITS:[I

.field private HOME_ZONE:I

.field private ROAMING_ZONE:I

.field private mAmpmKorTypeface:Landroid/graphics/Typeface;

.field private mAmpmOpenTypeface:Landroid/graphics/Typeface;

.field private mDualClockHomeContainer:Landroid/view/View;

.field private mDualClockRoamingContainer:Landroid/view/View;

.field private mDualClockSettingsObserver:Landroid/database/ContentObserver;

.field private mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualHomeLocale:Landroid/widget/TextView;

.field private mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualRoamingLocale:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mHour10th_home:Landroid/widget/ImageView;

.field private mHour10th_roam:Landroid/widget/ImageView;

.field private mHour1th_home:Landroid/widget/ImageView;

.field private mHour1th_roam:Landroid/widget/ImageView;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocale:Ljava/util/Locale;

.field private mMin10th_home:Landroid/widget/ImageView;

.field private mMin10th_roam:Landroid/widget/ImageView;

.field private mMin1th_home:Landroid/widget/ImageView;

.field private mMin1th_roam:Landroid/widget/ImageView;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUseBlackTextOnWhiteWallpaper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "SeckeyguardClockDualImageView"

    sput-object v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    .line 73
    const/16 v0, 0x64

    sput v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mBatteryLevel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mLocale:Ljava/util/Locale;

    .line 83
    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_0:I

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_1:I

    aput v1, v0, v3

    sget v1, Lcom/android/keyguard/R$drawable;->clock_digit_2:I

    aput v1, v0, v4

    const/4 v1, 0x3

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_3:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/keyguard/R$drawable;->clock_digit_9:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    .line 91
    iput v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    .line 92
    iput v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    .line 94
    new-instance v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$1;-><init>(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$2;-><init>(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 274
    new-instance v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$4;-><init>(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->handleDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->handleShowClockDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setClockContentDesciption()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->updateClock()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleDateOnSettngsChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 607
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v0, :cond_0

    .line 608
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 611
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 608
    goto :goto_0

    :cond_3
    move v1, v2

    .line 610
    goto :goto_1
.end method

.method private handleShowClockDateOnSettngsChanged()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockRoamingContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setVisibility(I)V

    .line 616
    :cond_0
    return-void

    .line 615
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private setClockContentDesciption()V
    .locals 5

    .prologue
    .line 455
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_0

    const-string v3, "ko"

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 457
    .local v2, "isKorean":Z
    :goto_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 458
    .local v1, "dualRAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 462
    .local v0, "dualHAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    :goto_2
    return-void

    .line 455
    .end local v0    # "dualHAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    .end local v1    # "dualRAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    .end local v2    # "isKorean":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 457
    .restart local v2    # "isKorean":Z
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    goto :goto_1

    .line 458
    .restart local v1    # "dualRAmPm":Lcom/android/keyguard/sec/SecKeyguardTextClock;
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    goto :goto_2
.end method

.method private setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "time"    # Lcom/android/keyguard/sec/SecKeyguardTextClock;
    .param p3, "ampm"    # Lcom/android/keyguard/sec/SecKeyguardTextClock;
    .param p4, "isKorean"    # Z

    .prologue
    .line 466
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 467
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 468
    .local v6, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$5;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$5;-><init>(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;ZLandroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v6, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 485
    .end local v6    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method private setHour(ZII)V
    .locals 6
    .param p1, "is24Hour"    # Z
    .param p2, "hour"    # I
    .param p3, "zone"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 557
    iget v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    if-ne p3, v2, :cond_3

    .line 558
    if-nez p2, :cond_0

    .line 559
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour1th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 560
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 591
    :goto_0
    return-void

    .line 563
    :cond_0
    rem-int/lit8 v1, p2, 0xa

    .line 564
    .local v1, "hour_zero":I
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour1th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 566
    div-int/lit8 v0, p2, 0xa

    .line 567
    .local v0, "hour_tenth":I
    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    .line 568
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 569
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 571
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 574
    .end local v0    # "hour_tenth":I
    .end local v1    # "hour_zero":I
    :cond_3
    if-nez p2, :cond_4

    .line 575
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour1th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 576
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 580
    :cond_4
    rem-int/lit8 v1, p2, 0xa

    .line 581
    .restart local v1    # "hour_zero":I
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour1th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 583
    div-int/lit8 v0, p2, 0xa

    .line 584
    .restart local v0    # "hour_tenth":I
    if-nez p1, :cond_5

    if-eqz v0, :cond_6

    .line 585
    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 586
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 588
    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMin(II)V
    .locals 4
    .param p1, "min"    # I
    .param p2, "zone"    # I

    .prologue
    .line 595
    rem-int/lit8 v1, p1, 0xa

    .line 596
    .local v1, "min_zero":I
    div-int/lit8 v0, p1, 0xa

    .line 597
    .local v0, "min_tenth":I
    iget v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    if-ne p2, v2, :cond_0

    .line 598
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin1th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 599
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin10th_home:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 604
    :goto_0
    return-void

    .line 601
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin1th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 602
    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin10th_roam:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->DIGITS:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateClock()V
    .locals 25

    .prologue
    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getHometimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 491
    .local v6, "autoHomeTimeZoneId":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 492
    .local v7, "c":Ljava/util/Calendar;
    if-eqz v6, :cond_0

    .line 493
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    .line 498
    :goto_0
    const/16 v22, 0xc

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 499
    .local v17, "minutes":I
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 500
    .local v12, "hour":I
    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 502
    .local v4, "AM_PM":I
    const/16 v22, 0xb

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 503
    .local v13, "hour_day":I
    const/16 v22, 0x7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 504
    .local v10, "day_of_week":I
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 506
    .local v8, "date":I
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    .line 508
    .local v19, "month":I
    sget-object v22, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    const-string v23, "HOME CLOCK "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    sget-object v22, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "min : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "hour : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "AM_PM : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-object v22, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "hour_day : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "day_of_week : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "date : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    sget-object v22, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "month : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->is24HourModeEnabled()Z

    move-result v16

    .line 514
    .local v16, "is24Hour":Z
    if-eqz v16, :cond_1

    .line 515
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v1, v13, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setHour(ZII)V

    .line 522
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setMin(II)V

    .line 525
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v21

    .line 526
    .local v21, "roamingCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 528
    const/16 v22, 0xc

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 529
    .local v18, "minutes_roam":I
    const/16 v22, 0xa

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 530
    .local v15, "hour_roam":I
    const/16 v22, 0x9

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 532
    .local v5, "AM_PM_roam":I
    const/16 v22, 0xb

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 533
    .local v14, "hour_day_roam":I
    const/16 v22, 0x7

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 534
    .local v11, "day_of_week_roam":I
    const/16 v22, 0x5

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 536
    .local v9, "date_roam":I
    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 538
    .local v20, "month_roam":I
    sget-object v22, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    const-string v23, "Roaming Clock "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    sget-object v22, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "min : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "hour : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "AM_PM : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    sget-object v22, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "hour_day : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "day_of_week : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "date : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    sget-object v22, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "month : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    if-eqz v16, :cond_3

    .line 545
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v1, v14, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setHour(ZII)V

    .line 552
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setMin(II)V

    .line 553
    return-void

    .line 495
    .end local v4    # "AM_PM":I
    .end local v5    # "AM_PM_roam":I
    .end local v8    # "date":I
    .end local v9    # "date_roam":I
    .end local v10    # "day_of_week":I
    .end local v11    # "day_of_week_roam":I
    .end local v12    # "hour":I
    .end local v13    # "hour_day":I
    .end local v14    # "hour_day_roam":I
    .end local v15    # "hour_roam":I
    .end local v16    # "is24Hour":Z
    .end local v17    # "minutes":I
    .end local v18    # "minutes_roam":I
    .end local v19    # "month":I
    .end local v20    # "month_roam":I
    .end local v21    # "roamingCalendar":Ljava/util/Calendar;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_0

    .line 517
    .restart local v4    # "AM_PM":I
    .restart local v8    # "date":I
    .restart local v10    # "day_of_week":I
    .restart local v12    # "hour":I
    .restart local v13    # "hour_day":I
    .restart local v16    # "is24Hour":Z
    .restart local v17    # "minutes":I
    .restart local v19    # "month":I
    :cond_1
    if-nez v12, :cond_2

    .line 518
    const/16 v22, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setHour(ZII)V

    goto/16 :goto_1

    .line 520
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->HOME_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v1, v12, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setHour(ZII)V

    goto/16 :goto_1

    .line 547
    .restart local v5    # "AM_PM_roam":I
    .restart local v9    # "date_roam":I
    .restart local v11    # "day_of_week_roam":I
    .restart local v14    # "hour_day_roam":I
    .restart local v15    # "hour_roam":I
    .restart local v18    # "minutes_roam":I
    .restart local v20    # "month_roam":I
    .restart local v21    # "roamingCalendar":Ljava/util/Calendar;
    :cond_3
    if-nez v15, :cond_4

    .line 548
    const/16 v22, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setHour(ZII)V

    goto :goto_2

    .line 550
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->ROAMING_ZONE:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v1, v15, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setHour(ZII)V

    goto :goto_2
.end method


# virtual methods
.method public is24HourModeEnabled()Z
    .locals 7

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 628
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 629
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 630
    .local v0, "locale":Ljava/util/Locale;
    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 633
    .local v1, "natural":Ljava/text/DateFormat;
    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_1

    move-object v3, v1

    .line 634
    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 635
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, "pattern":Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    .line 638
    const-string v4, "24"

    .line 645
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 647
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "natural":Ljava/text/DateFormat;
    :goto_1
    return v5

    .line 640
    .restart local v0    # "locale":Ljava/util/Locale;
    .restart local v1    # "natural":Ljava/text/DateFormat;
    .restart local v2    # "pattern":Ljava/lang/String;
    .restart local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    const-string v4, "12"

    goto :goto_0

    .line 643
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    const-string v4, "12"

    goto :goto_0

    .line 647
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "natural":Ljava/text/DateFormat;
    :cond_2
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 207
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 209
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 218
    new-instance v1, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;

    iget-object v2, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$3;-><init>(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    .line 252
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "white_lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 254
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_date_and_year"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 256
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_clock"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 258
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_clock_size"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 260
    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 262
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v2, 0x67

    .line 120
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 122
    sget-object v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mLocale:Ljava/util/Locale;

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 130
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 267
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 272
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 165
    sget v0, Lcom/android/keyguard/R$id;->keyguard_dual_roaming_clock_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockRoamingContainer:Landroid/view/View;

    .line 166
    sget v0, Lcom/android/keyguard/R$id;->roaming_locale:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    .line 167
    sget v0, Lcom/android/keyguard/R$id;->hour_10th_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_roam:Landroid/widget/ImageView;

    .line 168
    sget v0, Lcom/android/keyguard/R$id;->hour_1th_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour1th_roam:Landroid/widget/ImageView;

    .line 169
    sget v0, Lcom/android/keyguard/R$id;->minute_10th_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin10th_roam:Landroid/widget/ImageView;

    .line 170
    sget v0, Lcom/android/keyguard/R$id;->minute_1th_roaming:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin1th_roam:Landroid/widget/ImageView;

    .line 171
    sget v0, Lcom/android/keyguard/R$id;->roaming_ampm:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 172
    sget v0, Lcom/android/keyguard/R$id;->roaming_ampm_kor:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 173
    sget v0, Lcom/android/keyguard/R$id;->roaming_date:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 175
    sget v0, Lcom/android/keyguard/R$id;->keyguard_dual_home_clock_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockHomeContainer:Landroid/view/View;

    .line 176
    sget v0, Lcom/android/keyguard/R$id;->home_locale:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    .line 177
    sget v0, Lcom/android/keyguard/R$id;->hour_10th_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour10th_home:Landroid/widget/ImageView;

    .line 178
    sget v0, Lcom/android/keyguard/R$id;->hour_1th_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mHour1th_home:Landroid/widget/ImageView;

    .line 179
    sget v0, Lcom/android/keyguard/R$id;->minute_10th_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin10th_home:Landroid/widget/ImageView;

    .line 180
    sget v0, Lcom/android/keyguard/R$id;->minute_1th_home:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mMin1th_home:Landroid/widget/ImageView;

    .line 181
    sget v0, Lcom/android/keyguard/R$id;->home_ampm:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 182
    sget v0, Lcom/android/keyguard/R$id;->home_ampm_kor:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 183
    sget v0, Lcom/android/keyguard/R$id;->home_date:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "white_lockscreen_wallpaper"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 186
    const-string v0, "/system/fonts/SECRobotoLight-Bold.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    .line 187
    const-string v0, "/system/fonts/SamsungSans-Light.ttf"

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mLocale:Ljava/util/Locale;

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setClockStyle()V

    .line 199
    :goto_1
    const-string v0, "iw"

    iget-object v1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockRoamingContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 201
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockHomeContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 203
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 184
    goto :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockRoamingContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualClockHomeContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    goto :goto_1
.end method

.method protected setClockStyle()V
    .locals 10

    .prologue
    const/4 v5, 0x4

    const/16 v7, 0x8

    const v9, -0xbbbbbc

    const/high16 v8, -0x80000000

    const/4 v4, 0x0

    .line 284
    sget-object v3, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->TAG:Ljava/lang/String;

    const-string v6, "setClockStyle()"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    if-eqz v3, :cond_0

    .line 286
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 287
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 290
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    if-eqz v3, :cond_1

    .line 291
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 292
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 295
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->updateClock()V

    .line 297
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->is24HourModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 298
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 299
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 300
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 301
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 320
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getHometimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "autoHomeTimeZoneId":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 323
    .local v1, "homeCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 325
    .local v2, "roamingCalendar":Ljava/util/Calendar;
    if-eqz v0, :cond_a

    .line 326
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 328
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    .line 329
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_2

    .line 330
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    .line 332
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_3

    .line 333
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTimeZone(Ljava/lang/String;)V

    .line 335
    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSktModel()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "Asia/Seoul"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 336
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->keyguard_dualclock_home_Seoul:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 346
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSktModel()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 347
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->keyguard_dualclock_roaming_Korea:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_4

    .line 355
    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 357
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 362
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_6

    .line 363
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v5, v4

    :cond_5
    invoke-virtual {v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 365
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 371
    :cond_6
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 372
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 373
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 374
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 375
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 376
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 377
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 378
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 383
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 385
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 387
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 389
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 391
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 393
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 395
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 452
    :goto_4
    return-void

    .line 303
    .end local v0    # "autoHomeTimeZoneId":Ljava/lang/String;
    .end local v1    # "homeCalendar":Ljava/util/Calendar;
    .end local v2    # "roamingCalendar":Ljava/util/Calendar;
    :cond_7
    const-string v3, "ko"

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 304
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 305
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 306
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 307
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 308
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    .line 309
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    goto/16 :goto_0

    .line 311
    :cond_8
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 312
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 313
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 314
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 315
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    .line 316
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    goto/16 :goto_0

    .line 338
    .restart local v0    # "autoHomeTimeZoneId":Ljava/lang/String;
    .restart local v1    # "homeCalendar":Ljava/util/Calendar;
    .restart local v2    # "roamingCalendar":Ljava/util/Calendar;
    :cond_9
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->keyguard_dualclock_home:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 341
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 342
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->keyguard_dualclock_home:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 348
    :cond_b
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isRoamingTextNotAllowedOnDualClock()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 349
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 351
    :cond_c
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->keyguard_dualclock_roaming:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_d
    move v3, v5

    .line 355
    goto/16 :goto_3

    .line 398
    :cond_e
    iget-boolean v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v3, :cond_f

    .line 399
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 400
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 401
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 402
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 403
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 404
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 405
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 410
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 412
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 414
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 416
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 418
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v7}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 420
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 422
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getShadowDx()F

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getShadowDy()F

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_4

    .line 425
    :cond_f
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 426
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 427
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 428
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 429
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 430
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextColor(I)V

    .line 431
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 434
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 436
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 438
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 440
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 442
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 444
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowRadius()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDx()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getShadowDy()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setShadowLayer(FFFI)V

    .line 446
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getShadowDx()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getShadowDy()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 448
    iget-object v3, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getShadowDx()F

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mDualRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getShadowDy()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_4
.end method
