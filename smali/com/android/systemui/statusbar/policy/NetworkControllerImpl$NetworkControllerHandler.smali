.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;
.super Landroid/os/Handler;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    .prologue
    .line 1689
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x46

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1692
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1829
    :cond_0
    :goto_0
    return-void

    .line 1694
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMessageUpdateNotDone:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1502(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1695
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurSvcSate:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPreSvcSate:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1602(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1696
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getCurrentRSSIState()I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurSvcSate:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1698
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH -mPreSvcSate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPreSvcSate:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurSvcSate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurSvcSate:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPreSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 1714
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAirPlane:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1715
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2002(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1716
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const/4 v1, -0x1

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2102(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1719
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-eqz v0, :cond_2

    .line 1720
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const v1, 0x7f02087b

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1721
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const v1, 0x7f02087b

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1722
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneSignalDescriptionIconId(I)I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1734
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1735
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPreSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurSvcSate:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1738
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2002(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    goto/16 :goto_0

    .line 1723
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v0, v1, :cond_3

    .line 1724
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const v1, 0x7f02087c

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1725
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const v1, 0x7f02087c

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto :goto_1

    .line 1727
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const v1, 0x7f0206b5

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1728
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    const v1, 0x7f0206b5

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1729
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_1

    .line 1730
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneSignalDescriptionIconId(I)I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_1

    .line 1742
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPreSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAirPlane:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1744
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 1745
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2302(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1746
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v0, :cond_6

    .line 1747
    :cond_5
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH(NO_SVC) -no diff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurSvcSate:I
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1749
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1752
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurSvcSate:I
    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1753
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2002(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1799
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 1800
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # operator++ for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2108(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    .line 1804
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-le v0, v5, :cond_12

    .line 1805
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2102(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1809
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->displaySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V

    .line 1810
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1768
    :cond_a
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mKeepFakeState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeState:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1770
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFakeSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2302(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1777
    :goto_5
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-le v0, v5, :cond_f

    .line 1779
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH level over - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2302(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    .line 1785
    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 1786
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH(IN_SVC) -no diff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2002(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1789
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherDisconnected:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1790
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherDisconnected:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2402(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1792
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->displaySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V

    goto/16 :goto_0

    .line 1772
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_e

    .line 1773
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2302(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    goto/16 :goto_5

    .line 1775
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2302(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    goto/16 :goto_5

    .line 1781
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-gez v0, :cond_b

    .line 1782
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH level under - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2302(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    goto/16 :goto_6

    .line 1795
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1796
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2002(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    goto/16 :goto_2

    .line 1801
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v1

    if-le v0, v1, :cond_8

    .line 1802
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # operator-- for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2110(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    goto/16 :goto_3

    .line 1806
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I

    move-result v0

    if-gez v0, :cond_9

    .line 1807
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2102(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I

    goto/16 :goto_4

    .line 1815
    :pswitch_1
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "CHANGE_FAKE_CALL_STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeState:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$602(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 1817
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1818
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1823
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 1692
    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
