.class Lcom/android/keyguard/MSimCarrierText$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "MSimCarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MSimCarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MSimCarrierText;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MSimCarrierText;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/keyguard/MSimCarrierText$1;->this$0:Lcom/android/keyguard/MSimCarrierText;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(I)V
    .locals 4
    .param p1, "on"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText$1;->this$0:Lcom/android/keyguard/MSimCarrierText;

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$600()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$000()[Ljava/lang/CharSequence;

    move-result-object v2

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$200()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/MSimCarrierText;->updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/keyguard/MSimCarrierText$1;->this$0:Lcom/android/keyguard/MSimCarrierText;

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$600()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$000()[Ljava/lang/CharSequence;

    move-result-object v2

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$200()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/MSimCarrierText;->updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method public onRefreshCarrierInfo(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 59
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    # getter for: Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$000()[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimCarrierText$1;->this$0:Lcom/android/keyguard/MSimCarrierText;

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/MSimCarrierText;->access$100(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmn(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, p1

    .line 61
    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$200()[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimCarrierText$1;->this$0:Lcom/android/keyguard/MSimCarrierText;

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/MSimCarrierText;->access$300(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonySpn(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, p1

    .line 80
    :goto_0
    const-string v2, "MSimCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onRefreshCarrierInfo:: PLMN : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$000()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SPN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$200()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SUB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v2, p0, Lcom/android/keyguard/MSimCarrierText$1;->this$0:Lcom/android/keyguard/MSimCarrierText;

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$600()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$000()[Ljava/lang/CharSequence;

    move-result-object v4

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$200()[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/keyguard/MSimCarrierText;->updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 82
    return-void

    .line 63
    :cond_0
    move v1, p1

    .line 65
    .local v1, "swapSub":I
    const-string v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "mSIMM":Ljava/lang/String;
    const-string v2, "MSimCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRefreshCarrierInfo on sub :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSIMM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    if-nez p1, :cond_2

    .line 70
    const/4 v1, 0x1

    .line 77
    :cond_1
    :goto_1
    # getter for: Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$000()[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimCarrierText$1;->this$0:Lcom/android/keyguard/MSimCarrierText;

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/MSimCarrierText;->access$400(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmn(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v1

    .line 78
    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$200()[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/MSimCarrierText$1;->this$0:Lcom/android/keyguard/MSimCarrierText;

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/MSimCarrierText;->access$500(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getTelephonySpn(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v1

    goto/16 :goto_0

    .line 73
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 86
    iget-object v3, p0, Lcom/android/keyguard/MSimCarrierText$1;->this$0:Lcom/android/keyguard/MSimCarrierText;

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/MSimCarrierText;->access$700(Lcom/android/keyguard/MSimCarrierText;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneId(I)I

    move-result v1

    .line 87
    .local v1, "sub":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$600()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    aput-object p3, v3, v1

    .line 105
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/MSimCarrierText$1;->this$0:Lcom/android/keyguard/MSimCarrierText;

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$600()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$000()[Ljava/lang/CharSequence;

    move-result-object v5

    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$200()[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/keyguard/MSimCarrierText;->updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 106
    return-void

    .line 90
    :cond_0
    move v2, v1

    .line 92
    .local v2, "swapSub":I
    const-string v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "mSIMM":Ljava/lang/String;
    const-string v3, "MSimCarrierText"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSimStateChanged on sub :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSIMM:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    if-nez v1, :cond_2

    .line 97
    const/4 v2, 0x1

    .line 103
    :cond_1
    :goto_1
    # getter for: Lcom/android/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Lcom/android/keyguard/MSimCarrierText;->access$600()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    aput-object p3, v3, v2

    goto :goto_0

    .line 100
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
