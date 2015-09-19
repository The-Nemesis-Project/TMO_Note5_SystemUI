.class public Lcom/android/keyguard/sec/KeyguardSignatureView;
.super Landroid/widget/FrameLayout;
.source "KeyguardSignatureView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;,
        Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    }
.end annotation


# static fields
.field private static final BOUNCER_FRAME_BACKGROUND_COLOR:I = 0x66ffffff

.field private static final DBG:Z

.field private static final DBG_TOUCH:Z

.field private static final HINT_MESSAGE_DURATION:I = 0x1388

.field private static final MAX_SIGNATURE_ATTEMPTS:I = 0x5

.field private static final REGISTRED_SIGNATURE_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "KeyguardSignatureView"

.field private static mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;


# instance fields
.field private initRunnable:Ljava/lang/Runnable;

.field private mBackupPIN:Landroid/widget/ImageButton;

.field protected mBouncerEMA:Landroid/view/View;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mBoundToSignService:Z

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field mClearMessageRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field protected mEMAPress:Z

.field private mEcaView:Landroid/view/View;

.field private mEngineStarted:Z

.field private mGuideText:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mKeyguardBouncerFrameView:Landroid/view/View;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mSecurityTextViewDisplay:Landroid/widget/TextView;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSignService:Lcom/android/internal/policy/ISignServiceInterface;

.field private final mSignServiceRunningLock:Ljava/lang/Object;

.field private mSignView:Lcom/android/internal/widget/SignView;

.field private mTotalFailedSignatureAttempts:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVerificationLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 68
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    .line 69
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG_TOUCH:Z

    return-void

    :cond_0
    move v0, v2

    .line 68
    goto :goto_0

    :cond_1
    move v1, v2

    .line 69
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 92
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSignatureView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSignatureView$1;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mClearMessageRunnable:Ljava/lang/Runnable;

    .line 103
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;

    .line 113
    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->initRunnable:Ljava/lang/Runnable;

    .line 115
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEMAPress:Z

    .line 206
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSignatureView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSignatureView$3;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 386
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSignatureView$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSignatureView$6;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 129
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I

    .line 131
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 133
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 135
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSignatureView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSignatureView$2;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->initRunnable:Ljava/lang/Runnable;

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mHandler:Landroid/os/Handler;

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/KeyguardSignatureView;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;
    .param p1, "x1"    # Lcom/android/internal/policy/ISignServiceInterface;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .prologue
    .line 66
    sput-object p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    return-object p0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG_TOUCH:Z

    return v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/KeyguardSignatureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/keyguard/sec/KeyguardSignatureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/KeyguardSignatureView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;
    .param p1, "x1"    # J

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/keyguard/sec/KeyguardSignatureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardSignatureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/KeyguardSignatureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardSignatureView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardSignatureView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->initRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SignView;->setUserInputEnabled(Z)V

    .line 415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 417
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSignatureView$7;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/KeyguardSignatureView$7;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView$7;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 432
    return-void
.end method

.method private initSignView()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 215
    sget-object v2, Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;->INIT:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    sput-object v2, Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .line 217
    new-instance v2, Lcom/android/internal/widget/BeautySignView;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/BeautySignView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    .line 220
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v2}, Lcom/android/internal/widget/SignView;->setVerifySign()V

    .line 222
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v2}, Lcom/android/internal/widget/SignView;->loadVerificationSettings()V

    .line 225
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getSignatureVerificationLevel()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mVerificationLevel:I

    .line 226
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mVerificationLevel:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setVerificationLevel(I)V

    .line 227
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setSettingInputType(I)V

    .line 229
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setSignatureVisible(Z)V

    .line 231
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    new-instance v3, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;Lcom/android/keyguard/sec/KeyguardSignatureView$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setOnSignatureListener(Lcom/android/internal/widget/SignView$OnSignatureListener;)V

    .line 234
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SignView;->setFocusable(Z)V

    .line 236
    sget v2, Lcom/android/keyguard/R$id;->signature_signview_container:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 237
    .local v1, "signViewContainer":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 239
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    sget v2, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mKeyguardBouncerFrameView:Landroid/view/View;

    .line 241
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mKeyguardBouncerFrameView:Landroid/view/View;

    const v3, 0x66ffffff

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 243
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 245
    :cond_0
    sget v2, Lcom/android/keyguard/R$id;->sec_emergency_button_area:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBouncerEMA:Landroid/view/View;

    .line 246
    return-void
.end method

.method private isHintMessageArea()Z
    .locals 1

    .prologue
    .line 597
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAdditionalPinButton()V
    .locals 2

    .prologue
    .line 279
    sget v0, Lcom/android/keyguard/R$id;->signature_additional_pin_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardSignatureView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSignatureView$4;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 289
    return-void
.end method


# virtual methods
.method public bindToSignatureLock()V
    .locals 6

    .prologue
    .line 379
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.signaturelock"

    const-string v3, "com.sec.android.signaturelock.SignService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 381
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    new-instance v4, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 384
    return-void
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public getFailedAttempts()I
    .locals 6

    .prologue
    .line 434
    const/4 v1, 0x0

    .line 436
    .local v1, "failed_attempts":I
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    .line 438
    .local v0, "failedAttemptsBeforeWipe":I
    if-lez v0, :cond_0

    const/4 v2, 0x1

    .line 440
    .local v2, "isITPolicyEnabled":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 441
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy(I)I

    move-result v1

    .line 446
    :goto_1
    return v1

    .line 438
    .end local v2    # "isITPolicyEnabled":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 443
    .restart local v2    # "isITPolicyEnabled":Z
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v1

    goto :goto_1
.end method

.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 366
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 367
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->showHideBouncerKeyguardMessageArea(Z)V

    .line 368
    return-void
.end method

.method public isSignatureRecognitionFailed()Z
    .locals 2

    .prologue
    .line 408
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;->FAIL:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 250
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_0

    .line 251
    const-string v0, "KeyguardSignatureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardSignatureView onAttachedToWindow, mBoundToSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    if-nez v0, :cond_2

    .line 255
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "KeyguardSignatureView"

    const-string v1, "Trying to connect to signature service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->bindToSignatureLock()V

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    .line 260
    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 261
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 265
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "KeyguardSignatureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardSignatureView onDetachedFromWindow, mBoundToSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 270
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "KeyguardSignatureView"

    const-string v1, "Trying to disconnect to signature service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z

    .line 275
    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 276
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 178
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 180
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->initSignView()V

    .line 182
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 183
    sget v1, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardSignatureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEcaView:Landroid/view/View;

    .line 184
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->isHintMessageArea()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    sget v1, Lcom/android/keyguard/R$id;->textview_keyguard_message_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardSignatureView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "unlock_text"

    const/4 v4, -0x2

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 191
    .local v0, "helpTextEnabled":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 192
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/keyguard/R$string;->keyguard_signature_guide:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    .line 197
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    .line 199
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->setAdditionalPinButton()V

    .line 202
    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->setFocusableInTouchMode(Z)V

    .line 204
    return-void

    .line 189
    .end local v0    # "helpTextEnabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 194
    .restart local v0    # "helpTextEnabled":Z
    :cond_2
    const-string v1, ""

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 314
    const-string v0, "KeyguardSignatureView"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->clearFocus()V

    .line 318
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 319
    return-void
.end method

.method public onResume(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->reset()V

    .line 325
    const-string v0, "KeyguardSignatureView"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBackupPIN:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardSignatureView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSignatureView$5;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 335
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 303
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 304
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 305
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSignatureView;->handleAttemptLockout(J)V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mGuideText:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method protected setHintOrMessageText(IZ)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "important"    # Z

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/keyguard/sec/KeyguardSignatureView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    .line 573
    return-void
.end method

.method protected setHintOrMessageText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .param p2, "important"    # Z

    .prologue
    .line 576
    const/16 v0, 0x1388

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    .line 577
    return-void
.end method

.method protected setHintOrMessageText(Ljava/lang/CharSequence;ZI)V
    .locals 4
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .param p2, "important"    # Z
    .param p3, "timeout"    # I

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->isHintMessageArea()Z

    move-result v0

    if-nez v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 584
    const-string v0, "ko"

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_status_help_font_size_kor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 588
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 589
    :cond_3
    if-lez p3, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mClearMessageRunnable:Ljava/lang/Runnable;

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 293
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 298
    return-void
.end method

.method protected setNullHintMessage()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 569
    :cond_1
    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 360
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 361
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->showHideBouncerKeyguardMessageArea(Z)V

    .line 362
    return-void
.end method

.method public showHideBouncerKeyguardMessageArea(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBouncerEMA:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mBouncerEMA:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEMAPress:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView;->mEMAPress:Z

    .line 375
    :cond_0
    return-void

    .line 372
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showUsabilityHint()V
    .locals 2

    .prologue
    .line 354
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z

    if-eqz v0, :cond_0

    .line 355
    const-string v0, "KeyguardSignatureView"

    const-string v1, "Requested showUsabilityHint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method
