.class public Lcom/android/keyguard/sec/KeyguardFMMView;
.super Lcom/android/keyguard/KeyguardPINView;
.source "KeyguardFMMView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardFMMView"

.field public static final UNLOCK_FMM_ALERT_ACTION:Ljava/lang/String; = "com.samsung.Keyguard.UNLOCK_FMM_ALERT"


# instance fields
.field private mFMMCallButton:Landroid/widget/Button;

.field private mFMMPhoneNumber:Ljava/lang/String;

.field private mFMMTitle:Landroid/widget/TextView;

.field private mOwnerContactInfo:Landroid/widget/TextView;

.field private mOwnerMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardFMMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardFMMView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardFMMView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardFMMView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardFMMView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardFMMView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardFMMView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardFMMView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardFMMView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardFMMView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardFMMView;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method private setFMMInfo()V
    .locals 5

    .prologue
    .line 143
    sget v2, Lcom/android/keyguard/R$id;->keyguard_fmm_phone_locked:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMTitle:Landroid/widget/TextView;

    .line 144
    sget v2, Lcom/android/keyguard/R$id;->keyguard_fmm_message:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mOwnerMessage:Landroid/widget/TextView;

    .line 145
    sget v2, Lcom/android/keyguard/R$id;->keyguard_fmm_owner_phone_num:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    .line 146
    sget v2, Lcom/android/keyguard/R$id;->keyguard_fmm_emergency_btn:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMCallButton:Landroid/widget/Button;

    .line 147
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMTitle:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 149
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_fmm_Message"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "fmmMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mOwnerMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_fmm_phone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->keyguard_fmm_owner_phone:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "fmmOwnerContact":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/android/keyguard/R$id;->pinEntry:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 61
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->onFinishInflate()V

    .line 63
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->setFMMInfo()V

    .line 65
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 68
    .local v1, "isVoiceCapacity":Z
    const/4 v0, 0x0

    .line 69
    .local v0, "disableCallButton":Z
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    :cond_0
    const/4 v0, 0x1

    .line 72
    :cond_1
    const-string v3, "KeyguardFMMView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoiceCapacity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " disableCallButton = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 76
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMCallButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMCallButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/keyguard/sec/KeyguardFMMView$1;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/KeyguardFMMView$1;-><init>(Lcom/android/keyguard/sec/KeyguardFMMView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :goto_0
    sget v3, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 103
    .local v2, "ok":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 104
    new-instance v3, Lcom/android/keyguard/sec/KeyguardFMMView$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/KeyguardFMMView$2;-><init>(Lcom/android/keyguard/sec/KeyguardFMMView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :cond_2
    return-void

    .line 98
    .end local v2    # "ok":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mFMMCallButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 117
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->resetState()V

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$plurals;->kg_password_wrong_pin_code:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/sec/KeyguardFMMView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_pin_instructions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/keyguard/sec/KeyguardFMMView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    goto :goto_0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 162
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->getPasswordText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "entry":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkFMMPassword(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 165
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v7, 0x0

    invoke-virtual {v6, v9, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;)V

    .line 167
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.samsung.Keyguard.UNLOCK_FMM_ALERT"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v4, "intent":Landroid/content/Intent;
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 169
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.SEND_SMS"

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 170
    const-string v6, "KeyguardFMMView"

    const-string v7, "send Broadcast (UNLOCK_FMM_ALERT_ACTION)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 173
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 196
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/KeyguardFMMView;->resetPasswordText(Z)V

    .line 197
    return-void

    .line 175
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_2

    .line 178
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 179
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 182
    .local v0, "attempts":I
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v5

    .line 183
    .local v5, "lDeviceDisableForMaxFailedAttempt":Z
    if-nez v5, :cond_3

    .line 184
    rem-int/lit8 v6, v0, 0x5

    if-nez v6, :cond_1

    .line 185
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v2

    .line 186
    .local v2, "deadline":J
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/sec/KeyguardFMMView;->handleAttemptLockout(J)V

    .line 188
    .end local v2    # "deadline":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->getWrongPasswordStringId()I

    move-result v6

    invoke-virtual {p0, v6, v8}, Lcom/android/keyguard/sec/KeyguardFMMView;->setHintOrMessageText(IZ)V

    .line 194
    .end local v0    # "attempts":I
    .end local v5    # "lDeviceDisableForMaxFailedAttempt":Z
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->getWrongPasswordStringId()I

    move-result v6

    invoke-virtual {p0, v6, v8}, Lcom/android/keyguard/sec/KeyguardFMMView;->setHintOrMessageText(IZ)V

    goto :goto_0

    .line 190
    .restart local v0    # "attempts":I
    .restart local v5    # "lDeviceDisableForMaxFailedAttempt":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardFMMView;->disableDevicePermanently()V

    goto :goto_1
.end method
