.class public Lcom/android/keyguard/sec/SecKeyguardProfileView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardProfileView.java"


# static fields
.field private static final MSG_CLOCK_ON_SETTINGS_CHANGED:I = 0x66

.field private static final MSG_CONTENT_UPDATED:I = 0x64

.field private static final MSG_DATE_ON_SETTINGS_CHANGED:I = 0x65

.field private static final NOTOSERIF_ITALIC:Ljava/lang/String; = "NotoSerif-Italic"

.field private static final TRAVEL_IMAGE_PATH:Ljava/lang/String; = "/com.samsung.android.service.travel/files/images/"

.field private static mDefaultProfile:Ljava/lang/String;

.field private static mDefaultProfileLifeCompanion:Ljava/lang/String;

.field private static sTypeFaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAlarm:Landroid/widget/TextView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClockTypeface:Landroid/graphics/Typeface;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mHasNotification:Z

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLocale:Ljava/util/Locale;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mProfileAmpm:Landroid/widget/TextClock;

.field private mProfileAmpmKor:Landroid/widget/TextClock;

.field private mProfileDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mProfileText:Landroid/widget/TextView;

.field private mProfileTime:Landroid/widget/TextClock;

.field private mSecKeyguardProfileView:Landroid/widget/LinearLayout;

.field private mTravelText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->sTypeFaceMap:Ljava/util/HashMap;

    .line 61
    const-string v0, "Personal message"

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mDefaultProfile:Ljava/lang/String;

    .line 63
    const-string v0, "Life companion"

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mDefaultProfileLifeCompanion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const-string v0, "SecMyProfile"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHasNotification:Z

    .line 55
    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLocale:Ljava/util/Locale;

    .line 57
    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 71
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    .line 150
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const-string v0, "SecMyProfile"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHasNotification:Z

    .line 55
    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLocale:Ljava/util/Locale;

    .line 57
    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 71
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    .line 150
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const-string v0, "SecMyProfile"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHasNotification:Z

    .line 55
    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLocale:Ljava/util/Locale;

    .line 57
    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 71
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    .line 150
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    const-string v0, "SecMyProfile"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHasNotification:Z

    .line 55
    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLocale:Ljava/util/Locale;

    .line 57
    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 71
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    .line 150
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardProfileView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->updateProfile()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardProfileView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->handleDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardProfileView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->handleClockOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardProfileView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardProfileView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->refreshOwnerInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SecKeyguardProfileView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardProfileView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mOwnerInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleClockOnSettngsChanged()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 378
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileTime:Landroid/widget/TextClock;

    if-eqz v1, :cond_0

    .line 379
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileTime:Landroid/widget/TextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isClockOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 380
    :cond_0
    const-string v1, "ko"

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 381
    .local v0, "isKorea":Z
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpm:Landroid/widget/TextClock;

    if-eqz v1, :cond_1

    .line 382
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpm:Landroid/widget/TextClock;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isClockOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpmKor:Landroid/widget/TextClock;

    if-eqz v1, :cond_2

    .line 384
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpmKor:Landroid/widget/TextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isClockOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 385
    :cond_2
    return-void

    .end local v0    # "isKorea":Z
    :cond_3
    move v1, v3

    .line 379
    goto :goto_0

    .restart local v0    # "isKorea":Z
    :cond_4
    move v1, v3

    .line 382
    goto :goto_1

    :cond_5
    move v2, v3

    .line 384
    goto :goto_2
.end method

.method private handleDateOnSettngsChanged()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v0, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 375
    :cond_0
    return-void

    .line 374
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private isHideOwnerInfo()Z
    .locals 1

    .prologue
    .line 388
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->hideOwnerInfoOnNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHasNotification:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowOwnerInfo()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 314
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "my_profile_enabled"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v0, v2

    .line 316
    .local v0, "isProfileOn":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isJProject()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v3

    if-nez v3, :cond_1

    .line 319
    :goto_1
    return v1

    .end local v0    # "isProfileOn":Z
    :cond_0
    move v0, v1

    .line 314
    goto :goto_0

    .restart local v0    # "isProfileOn":Z
    :cond_1
    move v1, v2

    .line 319
    goto :goto_1
.end method

.method private refreshOwnerInfo()V
    .locals 6

    .prologue
    .line 237
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 253
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v1

    .line 243
    .local v1, "isShowInformation":Z
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v3

    .line 244
    .local v3, "ownerInfoEnabled":Z
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "ownerInfo":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->isShowOwnerInfo()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->isHideOwnerInfo()Z

    move-result v4

    if-nez v4, :cond_1

    .line 247
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalInfoEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 251
    .local v0, "isAdditionalInfoEnabled":Z
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x8

    goto :goto_1
.end method

.method private updateProfile()V
    .locals 15

    .prologue
    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v14, -0x2

    .line 256
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SLOGAN_PERSONAL_MESSAGE"

    invoke-virtual {v9, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 257
    sget-object v9, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mDefaultProfileLifeCompanion:Ljava/lang/String;

    sput-object v9, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mDefaultProfile:Ljava/lang/String;

    .line 259
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWModel()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 260
    const-string v9, "Personal Banner"

    sput-object v9, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mDefaultProfile:Ljava/lang/String;

    .line 263
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 264
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "my_profile_text_color"

    const/4 v13, -0x1

    invoke-static {v9, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 265
    .local v6, "profileColor":I
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "my_profile_background_color"

    invoke-static {v9, v12, v10, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 266
    .local v5, "profileBgColor":I
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "my_profile_information"

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "profile":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "my_profile_font_package"

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "font_pkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "my_profile_font_filename"

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "font_file":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v12, Lcom/android/keyguard/R$dimen;->kg_myprofile_text_size:I

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v7, v9

    .line 272
    .local v7, "profileSize":F
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "my_profile_text_size"

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 273
    .local v8, "tmp":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 274
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 276
    :cond_2
    if-eqz v4, :cond_3

    sget-object v9, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mDefaultProfile:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 277
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v12, "SEC_FLOATING_FEATURE_SETTINGS_SLOGAN_PERSONAL_MESSAGE"

    invoke-virtual {v9, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 278
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    sget v12, Lcom/android/keyguard/R$string;->default_profile_string:I

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 284
    :cond_4
    :goto_0
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileText:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v9, v12, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 285
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileText:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileText:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 287
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileText:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileText:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 290
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v12, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v0, v12}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v12, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v0, v12}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v12, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v10

    :goto_1
    invoke-virtual {v12, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setVisibility(I)V

    .line 294
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isClockOn(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 295
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileTime:Landroid/widget/TextClock;

    invoke-virtual {v9, v10}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 296
    const-string v9, "ko"

    iget-object v12, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 297
    .local v3, "isKorean":Z
    if-eqz v3, :cond_7

    .line 298
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpm:Landroid/widget/TextClock;

    invoke-virtual {v9, v11}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 299
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpmKor:Landroid/widget/TextClock;

    invoke-virtual {v9, v10}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 300
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpmKor:Landroid/widget/TextClock;

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpmKor:Landroid/widget/TextClock;

    invoke-virtual {v10}, Landroid/widget/TextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 311
    .end local v3    # "isKorean":Z
    :goto_2
    return-void

    .line 281
    :cond_5
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    sget v12, Lcom/android/keyguard/R$string;->default_profile_string_life_companion:I

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    move v9, v11

    .line 292
    goto :goto_1

    .line 302
    .restart local v3    # "isKorean":Z
    :cond_7
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpm:Landroid/widget/TextClock;

    invoke-virtual {v9, v10}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 303
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpmKor:Landroid/widget/TextClock;

    invoke-virtual {v9, v11}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 304
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpm:Landroid/widget/TextClock;

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpm:Landroid/widget/TextClock;

    invoke-virtual {v10}, Landroid/widget/TextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 307
    .end local v3    # "isKorean":Z
    :cond_8
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileTime:Landroid/widget/TextClock;

    invoke-virtual {v9, v11}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 308
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpm:Landroid/widget/TextClock;

    invoke-virtual {v9, v11}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 309
    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpmKor:Landroid/widget/TextClock;

    invoke-virtual {v9, v11}, Landroid/widget/TextClock;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "fontContext":Landroid/content/Context;
    const/4 v2, 0x0

    .line 326
    .local v2, "typeface":Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "file="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object v4, Lcom/android/keyguard/sec/SecKeyguardProfileView;->sTypeFaceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 329
    sget-object v3, Lcom/android/keyguard/sec/SecKeyguardProfileView;->sTypeFaceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 369
    :goto_0
    return-object v3

    .line 332
    :cond_0
    :try_start_0
    const-string v4, "Lindsey"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 333
    const-string v4, "/system/fonts/LindseyforSamsung-Regular.ttf"

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 334
    sget-object v4, Lcom/android/keyguard/sec/SecKeyguardProfileView;->sTypeFaceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 335
    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get Typeface Lindsey, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v4, "NotoSerif-Italic"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 343
    const-string v4, "/system/fonts/NotoSerif-Italic.ttf"

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 344
    sget-object v4, Lcom/android/keyguard/sec/SecKeyguardProfileView;->sTypeFaceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v2

    .line 345
    goto :goto_0

    .line 347
    :catch_1
    move-exception v0

    .line 348
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get Typeface, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v4, Lcom/android/keyguard/sec/SecKeyguardProfileView;->sTypeFaceMap:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 352
    sget-object v3, Lcom/android/keyguard/sec/SecKeyguardProfileView;->sTypeFaceMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    goto/16 :goto_0

    .line 356
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 363
    :try_start_3
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 364
    sget-object v4, Lcom/android/keyguard/sec/SecKeyguardProfileView;->sTypeFaceMap:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, v2

    .line 369
    goto/16 :goto_0

    .line 357
    :catch_2
    move-exception v0

    .line 358
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 359
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load font package, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 366
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get Typeface, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 182
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 183
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_name"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 184
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "my_profile_text_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 185
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "my_profile_background_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 186
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "my_profile_information"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 187
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "my_profile_font_package"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 188
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "my_profile_text_size"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 189
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_date_and_year"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 190
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_clock"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 195
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->updateProfile()V

    .line 196
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->refreshOwnerInfo()V

    .line 197
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v2, 0x64

    .line 92
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 94
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLocale:Ljava/util/Locale;

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 101
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 203
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 205
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 161
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 162
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 164
    sget v1, Lcom/android/keyguard/R$id;->keyguard_sec_profile_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mSecKeyguardProfileView:Landroid/widget/LinearLayout;

    .line 165
    sget v1, Lcom/android/keyguard/R$id;->profile_text:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileText:Landroid/widget/TextView;

    .line 166
    sget v1, Lcom/android/keyguard/R$id;->profile_time:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileTime:Landroid/widget/TextClock;

    .line 167
    sget v1, Lcom/android/keyguard/R$id;->profile_ampm:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpm:Landroid/widget/TextClock;

    .line 168
    sget v1, Lcom/android/keyguard/R$id;->profile_ampm_kor:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextClock;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileAmpmKor:Landroid/widget/TextClock;

    .line 169
    sget v1, Lcom/android/keyguard/R$id;->profile_date:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileDate:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    .line 170
    sget v1, Lcom/android/keyguard/R$id;->keyguard_owner_info:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mOwnerInfo:Landroid/widget/TextView;

    .line 172
    const-string v1, "/system/fonts/SamsungNeoNum-3T.ttf"

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mClockTypeface:Landroid/graphics/Typeface;

    .line 173
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mClockTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileTime:Landroid/widget/TextClock;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mClockTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mProfileTime:Landroid/widget/TextClock;

    invoke-virtual {v1}, Landroid/widget/TextClock;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 177
    .local v0, "paint":Landroid/text/TextPaint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 178
    return-void
.end method

.method public updateOwnerInfo(ZZ)V
    .locals 2
    .param p1, "isHasNotification"    # Z
    .param p2, "isForced"    # Z

    .prologue
    .line 392
    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHasNotification:Z

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 393
    .local v0, "isChanged":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mHasNotification:Z

    .line 394
    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView;->mSecKeyguardProfileView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 395
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->refreshOwnerInfo()V

    .line 397
    :cond_1
    return-void

    .line 392
    .end local v0    # "isChanged":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
