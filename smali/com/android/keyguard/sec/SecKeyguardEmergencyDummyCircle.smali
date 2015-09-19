.class public Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;
.super Landroid/widget/FrameLayout;
.source "SecKeyguardEmergencyDummyCircle.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final ACTION_EMERGENCY_LIST:Ljava/lang/String; = "com.samsung.phone.EmergencyDialer.LIST"

.field static final TAG:Ljava/lang/String; = "SecKeyguardEmergencyDummyCircle"


# instance fields
.field private mDispatchInitX:F

.field private mDispatchInitY:F

.field private mDummyCircle:Landroid/view/View;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mHelpTextView:Landroid/widget/TextView;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerManager:Landroid/os/PowerManager;

.field mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mTempRect:Landroid/graphics/Rect;

    .line 93
    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 89
    new-instance v0, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    .line 91
    return-void
.end method

.method private VoIPIsInUse()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->updateEmergencyCallButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    return-object v0
.end method

.method private isTouchInView(Landroid/view/View;FF)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 195
    if-nez p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private launchEmergencyDialler()V
    .locals 5

    .prologue
    .line 262
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SecKeyguardEmergencyDummyCircle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find the component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCurrentView()V
    .locals 7

    .prologue
    .line 312
    const-string v5, "SecKeyguardEmergencyDummyCircle"

    const-string v6, "updateCurrentView()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v5, :cond_1

    .line 316
    const/4 v2, 0x0

    .line 318
    .local v2, "knoxVisibility":I
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v5

    if-nez v5, :cond_0

    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, "knoxCustomLockScreenState":I
    const-string v5, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 321
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 322
    .local v0, "knoxCM":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    const-string v5, "getLockScreenHiddenItems"

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v6}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getKnoxIntValue(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 325
    if-eqz v0, :cond_0

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 326
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_0

    .line 327
    const-string v5, "SecKeyguardEmergencyDummyCircle"

    const-string v6, "KnoxCustom: Emergency Button is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/16 v2, 0x8

    .line 332
    .end local v0    # "knoxCM":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .end local v1    # "knoxCustomLockScreenState":I
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v5, v2}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    .line 333
    const/16 v5, 0x8

    if-ne v2, v5, :cond_2

    .line 343
    .end local v2    # "knoxVisibility":I
    :cond_1
    :goto_0
    return-void

    .line 338
    .restart local v2    # "knoxVisibility":I
    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCModel()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 339
    const/4 v4, 0x0

    .line 340
    .local v4, "visibility":I
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateEmergencyCallButton()V
    .locals 2

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->updateCurrentView()V

    .line 204
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 209
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 109
    .local v0, "action":I
    const/4 v1, 0x0

    .line 111
    .local v1, "handled":Z
    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDispatchInitX:F

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDispatchInitY:F

    .line 114
    const-string v2, "SecKeyguardEmergencyDummyCircle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDispatchInitX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDispatchInitX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDispatchInitY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDispatchInitY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    iget v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDispatchInitX:F

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDispatchInitY:F

    invoke-direct {p0, v2, v3, v4}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->isTouchInView(Landroid/view/View;FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    const-string v2, "SecKeyguardEmergencyDummyCircle"

    const-string v3, "isTouchInView = true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDummyCircle:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 121
    const/4 v1, 0x1

    .line 125
    :cond_1
    if-nez v1, :cond_2

    .line 126
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 129
    :cond_2
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 287
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "unlock_text"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 288
    .local v0, "isHelpTextEnabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_0

    .line 289
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 292
    :cond_0
    return-void

    .end local v0    # "isHelpTextEnabled":Z
    :cond_1
    move v0, v2

    .line 287
    goto :goto_0

    .line 289
    .restart local v0    # "isHelpTextEnabled":Z
    :cond_2
    const/4 v2, 0x4

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 297
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 298
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mHelpTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 301
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mPowerManager:Landroid/os/PowerManager;

    .line 138
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 139
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->updateEmergencyCallButton()V

    .line 141
    sget v0, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 142
    sget v0, Lcom/android/keyguard/R$id;->keyguard_unlock_view_help_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mHelpTextView:Landroid/widget/TextView;

    .line 143
    sget v0, Lcom/android/keyguard/R$id;->dummy_emergency_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDummyCircle:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDummyCircle:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mDummyCircle:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    :cond_0
    return-void
.end method

.method public onUnlockExecuted()V
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->takeEmergencyCallList()V

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->takeEmergencyCallAction()V

    goto :goto_0
.end method

.method public onUnlockViewPressed()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public onUnlockViewReleased()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public onUnlockViewSwiped(Z)V
    .locals 0
    .param p1, "isSwiped"    # Z

    .prologue
    .line 188
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 305
    if-nez p1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mKeyguardUnlockEventHandler:Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockEventHandler;->reset()V

    .line 308
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 309
    return-void
.end method

.method public setHelpText()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 239
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 241
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 242
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->VoIPIsInUse()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    const/4 v0, 0x1

    .line 255
    .local v0, "bypassHandler":Z
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    .line 257
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->launchEmergencyDialler()V

    goto :goto_0
.end method

.method public takeEmergencyCallList()V
    .locals 6

    .prologue
    .line 212
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 213
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    .line 230
    :goto_0
    return-void

    .line 221
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.phone.EmergencyDialer.LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardEmergencyDummyCircle;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SecKeyguardEmergencyDummyCircle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find the component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public userActivity()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method
