.class Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;
.super Ljava/lang/Object;
.source "KeyguardSignatureView.java"

# interfaces
.implements Lcom/android/internal/widget/SignView$OnSignatureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSignatureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockSignatureLister"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/sec/KeyguardSignatureView;Lcom/android/keyguard/sec/KeyguardSignatureView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/sec/KeyguardSignatureView;
    .param p2, "x1"    # Lcom/android/keyguard/sec/KeyguardSignatureView$1;

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V

    return-void
.end method


# virtual methods
.method public notifySignServiceError()V
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$700(Lcom/android/keyguard/sec/KeyguardSignatureView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 541
    :try_start_0
    const-string v0, "KeyguardSignatureView"

    const-string v2, "notifySignServiceError start"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    const-string v0, "KeyguardSignatureView"

    const-string v2, "oh, sign service is alive now, just set to sign view."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setSignService(Lcom/android/internal/policy/ISignServiceInterface;)V

    .line 546
    monitor-exit v1

    .line 559
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1800(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 550
    const-string v0, "KeyguardSignatureView"

    const-string v2, "onSignServiceError unbind by force."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1900(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1800(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 554
    :cond_1
    const-string v0, "KeyguardSignatureView"

    const-string v2, "onSignServiceError bind sign service by force."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->bindToSignatureLock()V

    .line 556
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    const/4 v2, 0x1

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$2002(Lcom/android/keyguard/sec/KeyguardSignatureView;Z)Z

    .line 558
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAddSignFailed(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 534
    return-void
.end method

.method public onAddSignSucceeded(I)V
    .locals 0
    .param p1, "nCount"    # I

    .prologue
    .line 537
    return-void
.end method

.method public onSignatureCleared()V
    .locals 2

    .prologue
    .line 469
    const-string v0, "KeyguardSignatureView"

    const-string v1, "onSignatureCleared is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void
.end method

.method public onSignatureDetected()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 479
    const-string v3, "KeyguardSignatureView"

    const-string v4, "onSignatureDetected is called by SignView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/SignView;->getVerifyResult()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 496
    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 497
    const-string v3, "KeyguardSignatureView"

    const-string v4, "Signature verification is successful, let\'s unlock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    sget-object v3, Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;->SUCCESS:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1202(Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .line 500
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 501
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I
    invoke-static {v3, v6}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1502(Lcom/android/keyguard/sec/KeyguardSignatureView;I)I

    .line 502
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->setNullHintMessage()V

    .line 503
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 531
    :goto_0
    return-void

    .line 505
    :cond_1
    sget-object v3, Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;->FAIL:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1202(Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .line 507
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 508
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardSignatureView;->getFailedAttempts()I

    move-result v4

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I
    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1502(Lcom/android/keyguard/sec/KeyguardSignatureView;I)I

    .line 510
    const-string v3, "KeyguardSignatureView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sign verification is failed, count("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I
    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1500(Lcom/android/keyguard/sec/KeyguardSignatureView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1500(Lcom/android/keyguard/sec/KeyguardSignatureView;)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1500(Lcom/android/keyguard/sec/KeyguardSignatureView;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_2

    .line 520
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1000(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 521
    .local v0, "deadline":J
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSignatureView;->handleAttemptLockout(J)V
    invoke-static {v3, v0, v1}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1600(Lcom/android/keyguard/sec/KeyguardSignatureView;J)V

    goto :goto_0

    .line 523
    .end local v0    # "deadline":J
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1700(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->keyguard_signature_failed_guide:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 525
    .local v2, "guideMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-virtual {v3, v2, v7}, Lcom/android/keyguard/sec/KeyguardSignatureView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    .line 528
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/SignView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onSignatureInputting()V
    .locals 2

    .prologue
    .line 473
    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG_TOUCH:Z
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardSignatureView"

    const-string v1, "onSignatureInputting is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 476
    return-void
.end method

.method public onSignatureStart()V
    .locals 2

    .prologue
    .line 458
    const-string v0, "KeyguardSignatureView"

    const-string v1, "onSignatureStart is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$200(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SignView;->setBackgroundColor(I)V

    .line 463
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;->INIT:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1200()Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 464
    sget-object v0, Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;->IDENTIFYING:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1202(Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    .line 466
    :cond_0
    return-void
.end method
