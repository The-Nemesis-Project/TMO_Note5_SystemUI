.class Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickSim2ButtonLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v10, 0x1040395

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->updateAirplaneMode()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 84
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    const-string v6, "subscription"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->subId:I
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$002(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I

    .line 85
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v5, :cond_3

    .line 86
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    const-string v6, "phone"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->phoneId:I
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$102(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I

    .line 91
    :goto_1
    const-string v5, "QuickSim2Button"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SPN_STRINGS_UPDATED_ACTION:subId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->subId:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$000(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",phoneId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->phoneId:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$100(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->phoneId:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$100(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I

    move-result v5

    if-ne v5, v9, :cond_2

    .line 93
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    const-string v6, "showSpn"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mShowSpn:Z
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$302(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Z)Z

    .line 94
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    const-string v6, "spn"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mSpn:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$402(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    const-string v6, "showPlmn"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mShowPlmn:Z
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$502(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Z)Z

    .line 96
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    const-string v6, "plmn"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPlmn:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$602(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mShowSpn:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$300(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Z

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mSpn:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$400(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mShowPlmn:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$500(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Z

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPlmn:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$600(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$700(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;ZLjava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->subId:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$000(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I

    move-result v7

    # invokes: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->getPhoneId(I)I
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$200(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I

    move-result v6

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->phoneId:I
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$102(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I

    goto/16 :goto_1

    .line 99
    :cond_4
    const-string v5, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 100
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$800(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "phone2_on"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 101
    .local v1, "simActive":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v6

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$902(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I

    .line 102
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$1100(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$1002(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;I)I

    .line 103
    const-string v5, "QuickSim2Button"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", currSimId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$900(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",simActive:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mAirplaneMode:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$1000(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I

    move-result v5

    if-ne v5, v9, :cond_6

    .line 106
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeactiveSimUI()V

    goto/16 :goto_0

    .line 107
    :cond_6
    if-eqz v1, :cond_7

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-nez v5, :cond_8

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mPreferedVoice:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$1200(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I

    move-result v5

    if-nez v5, :cond_8

    .line 108
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeselectedSimUI()V

    goto/16 :goto_0

    .line 110
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->currSimId:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$900(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)I

    move-result v5

    if-ne v5, v9, :cond_9

    .line 111
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setSelectedSimUI()V

    goto/16 :goto_0

    .line 113
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeselectedSimUI()V

    goto/16 :goto_0

    .line 116
    .end local v1    # "simActive":I
    :cond_a
    const-string v5, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 117
    const-string v5, "simcard_sim_id"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 118
    .local v3, "simId":I
    const-string v5, "simcard_sim_icon"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 119
    .local v2, "simIconIndex":Ljava/lang/String;
    const-string v5, "simcard_sim_name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 120
    .local v4, "simName":Ljava/lang/String;
    const-string v5, "QuickSim2Button"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive() - ACTION_SIM_MGT_CHANGED : simId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",simIconIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",simName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # invokes: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->updateDualSimUiBySettings(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v3, v2, v4}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$1300(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    .end local v2    # "simIconIndex":Ljava/lang/String;
    .end local v3    # "simId":I
    .end local v4    # "simName":Ljava/lang/String;
    :cond_b
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    const-string v5, "QuickSim2Button"

    const-string v6, "onReceive() - ACTION_LOCALE_CHANGED : "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 125
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mQuickSim2Text:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$1500(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$1400(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0d0205

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 127
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$1600(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$1600(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$1700(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 128
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$1800(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->carrierText:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$1602(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$1702(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 131
    :cond_d
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$1900(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$1702(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method
