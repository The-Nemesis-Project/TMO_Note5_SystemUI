.class Lcom/android/systemui/qs/tiles/DefaultDataTile$4;
.super Landroid/content/BroadcastReceiver;
.source "DefaultDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DefaultDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 232
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "intentAction":Ljava/lang/String;
    const-string v6, "DefaultDataTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intentAction:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 235
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$300(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v7

    if-ne v7, v4, :cond_1

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z
    invoke-static {v6, v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$002(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    .line 236
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->getMobileData()Z
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$400(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v5

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z
    invoke-static {v4, v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    .line 237
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->getDefaultDataReady()I
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$600(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v5

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I
    invoke-static {v4, v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$502(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I

    .line 238
    const-string v4, "DefaultDataTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMobileData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/mCurrentDataNW:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->updateActivateStatus()V
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    .line 289
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v4, v5

    .line 235
    goto :goto_0

    .line 240
    :cond_2
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 243
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->getMobileData()Z
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$400(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v5

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z
    invoke-static {v4, v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    .line 244
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->getDefaultDataReady()I
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$600(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v5

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I
    invoke-static {v4, v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$502(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I

    .line 245
    const-string v4, "DefaultDataTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMobileData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/mCurrentDataNW:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->updateActivateStatus()V
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    goto :goto_1

    .line 247
    :cond_4
    const-string v6, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_STARTED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 248
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 250
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 252
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->getMobileData()Z
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$400(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v6

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z
    invoke-static {v4, v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    .line 253
    const-string v4, "subscription"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 254
    .local v3, "subId":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v5

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I
    invoke-static {v4, v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$502(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I

    .line 255
    const-string v4, "DefaultDataTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMobileData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/mCurrentDataNW:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->updateActivateStatus()V
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    .line 258
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 259
    .local v0, "delayReady":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 260
    .end local v0    # "delayReady":Landroid/os/Message;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "subId":I
    :cond_5
    const-string v6, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 261
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 262
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->getMobileData()Z
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$400(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v6

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z
    invoke-static {v4, v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    .line 264
    const-string v4, "subscription"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 265
    .restart local v3    # "subId":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v5

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I
    invoke-static {v4, v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$502(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I

    .line 266
    const-string v4, "DefaultDataTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMobileData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/mCurrentDataNW:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->updateActivateStatus()V
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    goto/16 :goto_1

    .line 268
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "subId":I
    :cond_6
    const-string v6, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "com.samsung.net.conn.SwitchDataNetworkDuringVoiceCall"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "com.samsung.net.conn.SwitchDataNetworkDuringMMS"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 271
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 272
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->getMobileData()Z
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$400(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v7

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z
    invoke-static {v6, v7}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    .line 275
    const-string v6, "subscription"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 276
    .restart local v3    # "subId":I
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v7

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I
    invoke-static {v6, v7}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$502(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I

    .line 277
    const-string v6, "DefaultDataTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mMobileData:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileData:Z
    invoke-static {v8}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/mCurrentDataNW:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I
    invoke-static {v8}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", subId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # operator++ for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$508(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    .line 279
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v6

    if-le v6, v4, :cond_8

    .line 280
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I
    invoke-static {v4, v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$502(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I

    .line 282
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->updateActivateStatus()V
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    .line 283
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$800(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "default_data"

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mCurrentDataNW:I
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 284
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "subId":I
    :cond_9
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 285
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$900(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$900(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$900(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_1
.end method
