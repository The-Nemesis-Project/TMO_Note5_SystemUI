.class public Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;
.super Landroid/widget/LinearLayout;
.source "KeyguardCarrierLockPlusView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field private static final BOUNCER_FRAME_BACKGROUND_COLOR:I

.field static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardCarrierLockPlusView"

.field private static final TIMEOUT:I = 0x1


# instance fields
.field private final CARRIER_LOCK_DISABLED:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallButton:Landroid/widget/Button;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private final mContext:Landroid/content/Context;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardBouncerFrameView:Landroid/view/View;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMaintext:Landroid/widget/TextView;

.field private mMccInfo:Ljava/lang/String;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mPhoneNumber:Ljava/lang/String;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mUnlockButton:Landroid/widget/Button;

.field private mWakelockSequence:I

.field mtelephony:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x66ffffff

    :goto_0
    sput v0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->BOUNCER_FRAME_BACKGROUND_COLOR:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    const-string v1, "0000"

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneNumber:Ljava/lang/String;

    .line 97
    const-string v1, "com.sec.android.CarrierLock.DISABLED"

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->CARRIER_LOCK_DISABLED:Ljava/lang/String;

    .line 107
    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$1;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$2;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 133
    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$3;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 378
    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$7;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    .line 145
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    .line 147
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.CarrierLock.DISABLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    .line 153
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 154
    const-string v1, "gsm.operator.iso-country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMccInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMccInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->updateButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->handleTimeout(I)V

    return-void
.end method

.method private handleTimeout(I)V
    .locals 2
    .param p1, "seq"    # I

    .prologue
    .line 390
    monitor-enter p0

    .line 391
    :try_start_0
    const-string v0, "KeyguardCarrierLockPlusView"

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakelockSequence:I

    if-ne p1, v0, :cond_0

    .line 393
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->setKeepScreenOn(Z)V

    .line 395
    :cond_0
    monitor-exit p0

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setCarrierLockPlusInfo()V
    .locals 4

    .prologue
    .line 328
    sget v2, Lcom/android/keyguard/R$id;->carrierlockplus_main_text:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMaintext:Landroid/widget/TextView;

    .line 329
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMaintext:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 330
    const-string v2, "kr"

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 331
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMaintext:Landroid/widget/TextView;

    sget v3, Lcom/android/keyguard/R$string;->skt_lockscreen_findlostphone_kor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 338
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->parsingCarrierLockPlusMsg()V

    .line 339
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierPasswordSaved()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    const-string v2, "KeyguardCarrierLockPlusView"

    const-string v3, "HostView CarrierPassword NOT exist!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.FindingLostPhonePlus.SAVELOCK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, "IntentForDM":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MASTER_CLEAR"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 345
    .end local v0    # "IntentForDM":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getCarrierLockPlusInfo(I)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "OwnerInfo":Ljava/lang/String;
    sget v2, Lcom/android/keyguard/R$id;->carrierlockplus_owner_info:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mOwnerInfo:Landroid/widget/TextView;

    .line 347
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 348
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :cond_2
    return-void

    .line 332
    .end local v1    # "OwnerInfo":Ljava/lang/String;
    :cond_3
    const-string v2, "cn"

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 333
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMaintext:Landroid/widget/TextView;

    sget v3, Lcom/android/keyguard/R$string;->skt_lockscreen_findlostphone_cn:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 335
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mMaintext:Landroid/widget/TextView;

    sget v3, Lcom/android/keyguard/R$string;->skt_lockscreen_findlostphone_eng:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updateButtonVisibility(I)V
    .locals 4
    .param p1, "phoneState"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 399
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 400
    const-string v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_returntocall_kor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 407
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$8;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 440
    :goto_1
    return-void

    .line 402
    :cond_0
    const-string v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_returntocall_cn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_returntocall_eng:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 416
    :cond_2
    const-string v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_call_owner_kor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 424
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$9;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$9;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 418
    :cond_3
    const-string v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 419
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_call_owner_cn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 421
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_call_owner_eng:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2
.end method


# virtual methods
.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 310
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 284
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 285
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 286
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 290
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 291
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 292
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 295
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 173
    const-string v0, "KeyguardCarrierLockPlusView"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->setCarrierLockPlusInfo()V

    .line 177
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 178
    sget v0, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEcaView:Landroid/view/View;

    .line 179
    sget v0, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->BOUNCER_FRAME_BACKGROUND_COLOR:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 182
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 184
    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->carrierlockplus_call_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    .line 185
    sget v0, Lcom/android/keyguard/R$id;->carrierlockplus_unlock_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    .line 186
    sget v0, Lcom/android/keyguard/R$id;->carrierlockplus_emergency_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 189
    const-string v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_call_owner_kor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mtelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    if-nez v0, :cond_6

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$4;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 216
    const-string v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_unlock_kor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 223
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$5;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 234
    const-string v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 235
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_emergencycall_kor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 241
    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$6;-><init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    :cond_3
    return-void

    .line 191
    :cond_4
    const-string v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_call_owner_cn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_call_owner_eng:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 211
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 218
    :cond_7
    const-string v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_unlock_cn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 221
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mUnlockButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_unlock_eng:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 236
    :cond_9
    const-string v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 237
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_emergencycall_cn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    .line 239
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEmergencyButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->skt_lockscreen_emergencycall_eng:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->setKeepScreenOn(Z)V

    .line 280
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 274
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 5
    .param p1, "holdMs"    # I

    .prologue
    .line 368
    monitor-enter p0

    .line 369
    :try_start_0
    const-string v1, "KeyguardCarrierLockPlusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pokeWakelock("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->setKeepScreenOn(Z)V

    .line 371
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 372
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakelockSequence:I

    .line 373
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 374
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 375
    monitor-exit p0

    .line 376
    return-void

    .line 375
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public resetState()V
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->setKeepScreenOn(Z)V

    .line 168
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 159
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 163
    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncerWithScaleAnimation(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V

    .line 305
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method
