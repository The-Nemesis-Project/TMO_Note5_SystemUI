.class Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;
.super Landroid/os/AsyncTask;
.source "KeyguardSmartcardPINView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSmartcardPINView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyPasswordWithCACTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field errorMsgId:I

.field password:Ljava/lang/String;

.field status:Z

.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSmartcardPINView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/sec/KeyguardSmartcardPINView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    .line 178
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    .line 179
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;Lcom/android/keyguard/sec/KeyguardSmartcardPINView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/sec/KeyguardSmartcardPINView;
    .param p2, "x1"    # Lcom/android/keyguard/sec/KeyguardSmartcardPINView$1;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;-><init>(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 193
    # getter for: Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doInBackground():VerifyPasswordWithCACTask"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/sec/KeyguardSmartcardPINView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$500(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordWithCAC(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 196
    .local v0, "ret":Ljava/lang/Integer;
    # getter for: Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPasswordWithCAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 176
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 202
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 203
    # getter for: Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnPostExecute():VerifyPasswordWithCACTask"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    # getter for: Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnPostExecute():VerifyPasswordWithCACTask result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    .line 206
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    .line 207
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 228
    :pswitch_0
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_internalerror:I

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    .line 231
    :goto_0
    const/4 v0, 0x0

    .line 232
    .local v0, "keyguardscpinview":Lcom/android/keyguard/sec/KeyguardSmartcardPINView;
    # getter for: Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$600()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 234
    # getter for: Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VerifyPasswordWithCACTask mCurrent == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_1
    return-void

    .line 209
    .end local v0    # "keyguardscpinview":Lcom/android/keyguard/sec/KeyguardSmartcardPINView;
    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    goto :goto_0

    .line 212
    :pswitch_2
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_invalid_pin:I

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    .line 215
    :pswitch_3
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_locked:I

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    .line 218
    :pswitch_4
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_expired:I

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    .line 221
    :pswitch_5
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_connectionerror:I

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    .line 224
    :pswitch_6
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_wrong_card:I

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    .line 237
    .restart local v0    # "keyguardscpinview":Lcom/android/keyguard/sec/KeyguardSmartcardPINView;
    :cond_0
    # getter for: Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$600()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "keyguardscpinview":Lcom/android/keyguard/sec/KeyguardSmartcardPINView;
    check-cast v0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;

    .restart local v0    # "keyguardscpinview":Lcom/android/keyguard/sec/KeyguardSmartcardPINView;
    if-nez v0, :cond_1

    .line 239
    # getter for: Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VerifyPasswordWithCACTask activity == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 242
    :cond_1
    # getter for: Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$700(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_2

    .line 244
    # getter for: Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VerifyPasswordWithCACTask mHandler == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 248
    :cond_2
    # getter for: Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$700(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;-><init>(Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 176
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 183
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 184
    # getter for: Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnPreExecute():VerifyPasswordWithCACTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/sec/KeyguardSmartcardPINView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$200(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_check_pin:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/sec/KeyguardSmartcardPINView;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->setPasswordEntryEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$300(Lcom/android/keyguard/sec/KeyguardSmartcardPINView;Z)V

    .line 187
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/sec/KeyguardSmartcardPINView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->setKeepScreenOn(Z)V

    .line 188
    # setter for: Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSmartcardPINView;->access$402(Z)Z

    .line 189
    return-void
.end method
