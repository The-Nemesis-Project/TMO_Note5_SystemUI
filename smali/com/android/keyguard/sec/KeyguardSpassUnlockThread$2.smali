.class Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;
.super Landroid/os/Handler;
.source "KeyguardSpassUnlockThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 122
    const/4 v1, 0x0

    .line 124
    .local v1, "errorMessage":Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 251
    const-string v4, "KeyguardSpassUnlockThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 126
    :sswitch_0
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleFingerPrintDataBaseError()V

    goto :goto_0

    .line 129
    :sswitch_1
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleRespondingError()V

    goto :goto_0

    .line 132
    :sswitch_2
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleSensorFailure()V

    goto :goto_0

    .line 135
    :sswitch_3
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleSensorError()V

    goto :goto_0

    .line 138
    :sswitch_4
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleStartFingerPrintSensor()V

    goto :goto_0

    .line 141
    :sswitch_5
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    goto :goto_0

    .line 144
    :sswitch_6
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # invokes: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleStartIdentify()V
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$100(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    goto :goto_0

    .line 147
    :sswitch_7
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleStopIdentify()V

    goto :goto_0

    .line 150
    :sswitch_8
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # invokes: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleDestoryFingerPrintThread()V
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$200(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    goto :goto_0

    .line 153
    :sswitch_9
    const-string v4, "KeyguardSpassUnlockThread"

    const-string v5, "handleMessage : EVENT_IDENTIFY_STARTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 155
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v4

    invoke-interface {v4, v11}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->setAttributionViewEnabled(Z)V

    goto :goto_0

    .line 159
    :sswitch_a
    const-string v4, "KeyguardSpassUnlockThread"

    const-string v5, "handleMessage : EVENT_FINGER_REMOVED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 161
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v4

    invoke-interface {v4, v9}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->setAttributionViewEnabled(Z)V

    goto :goto_0

    .line 165
    :sswitch_b
    const-string v4, "KeyguardSpassUnlockThread"

    const-string v5, "handleMessage : EVENT_IDENTIFY_READY"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 169
    :sswitch_c
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$500(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 171
    const-string v4, "KeyguardSpassUnlockThread"

    const-string v5, "EVENT_IDENTIFY_FINISHED - showBackupPassword"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showBackupPassword()V

    goto/16 :goto_0

    .line 176
    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/fingerprint/FingerprintEvent;

    .line 177
    .local v2, "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    iget v4, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v4, :cond_5

    .line 178
    const-string v4, "KeyguardSpassUnlockThread"

    const-string v5, "handleMessage : RESULT_SUCCESS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # invokes: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleUnlock()V
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$600(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    .line 231
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 232
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 233
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 234
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v4

    invoke-interface {v4, v9}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->setAttributionViewEnabled(Z)V

    goto/16 :goto_0

    .line 180
    :cond_5
    iget v4, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v4, v10, :cond_3

    .line 181
    const-string v4, "KeyguardSpassUnlockThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage : RESULT_FAILED eventStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget v4, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    .line 185
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # invokes: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleStartIdentify()V
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$100(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    goto :goto_1

    .line 186
    :cond_6
    iget v4, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_7

    .line 187
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 188
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x461

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 190
    :cond_7
    iget v4, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v5, 0x79

    if-ne v4, v5, :cond_8

    .line 191
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 192
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x462

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 194
    :cond_8
    iget v4, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    .line 195
    iget v4, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_c

    .line 197
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # invokes: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleReportFailedAttempts()V
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$700(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    .line 198
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWModel()Z

    move-result v4

    if-eqz v4, :cond_b

    sget-boolean v4, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v4, :cond_b

    .line 199
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$800(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedSecBiometricUnlockAttempts()I

    move-result v0

    .line 201
    .local v0, "attempts":I
    rsub-int/lit8 v3, v0, 0x5

    .line 203
    .local v3, "remaining":I
    if-le v3, v9, :cond_a

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$800(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .end local v0    # "attempts":I
    .end local v3    # "remaining":I
    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 216
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorMessage(Ljava/lang/String;)V

    .line 226
    :cond_9
    :goto_3
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mVibraterService:Landroid/os/SystemVibrator;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$900(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/SystemVibrator;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 227
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mVibraterService:Landroid/os/SystemVibrator;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$900(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/SystemVibrator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mVibraterPattern:[J
    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$1000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)[J

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Landroid/os/SystemVibrator;->vibrate([JI)V

    goto/16 :goto_1

    .line 208
    .restart local v0    # "attempts":I
    .restart local v3    # "remaining":I
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$800(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 213
    .end local v0    # "attempts":I
    .end local v3    # "remaining":I
    :cond_b
    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 217
    :cond_c
    iget v4, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v5, 0x7a

    if-ne v4, v5, :cond_d

    .line 218
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 219
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x465

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 221
    :cond_d
    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v1

    .line 222
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 223
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 238
    .end local v2    # "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    :sswitch_d
    const-string v4, "KeyguardSpassUnlockThread"

    const-string v5, "handleMessage : EVENT_IDENTIFY_STATUS  "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/fingerprint/FingerprintEvent;

    .line 240
    .restart local v2    # "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    iget v4, v2, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v5, 0x14

    if-ne v4, v5, :cond_0

    .line 241
    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v1

    .line 242
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 243
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # getter for: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    .end local v2    # "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    :sswitch_e
    const-string v4, "KeyguardSpassUnlockThread"

    const-string v5, "handleMessage : EVENT_IDENTIFY_COMPLETED  "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;->this$0:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    # invokes: Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleStartIdentify()V
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->access$100(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    goto/16 :goto_0

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_b
        0xc -> :sswitch_9
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0x10 -> :sswitch_e
        0x3f3 -> :sswitch_a
        0x45c -> :sswitch_6
        0x45d -> :sswitch_7
        0x45f -> :sswitch_4
        0x460 -> :sswitch_5
        0x461 -> :sswitch_3
        0x462 -> :sswitch_2
        0x463 -> :sswitch_1
        0x464 -> :sswitch_8
        0x465 -> :sswitch_0
    .end sparse-switch
.end method
