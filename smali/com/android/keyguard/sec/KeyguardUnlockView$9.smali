.class Lcom/android/keyguard/sec/KeyguardUnlockView$9;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isWirelssCharged()Z

    move-result v1

    # setter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsWirelessCharging:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$1202(Lcom/android/keyguard/sec/KeyguardUnlockView;Z)Z

    .line 657
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsWirelessChargingAnimationEnabled:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$1100(Lcom/android/keyguard/sec/KeyguardUnlockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsWirelessCharging:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$1200(Lcom/android/keyguard/sec/KeyguardUnlockView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->showUnlockAffordance()V

    .line 642
    :cond_1
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/16 v4, 0x12ef

    .line 646
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$1300(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 647
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 648
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$200(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$200(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 650
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$200(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 652
    :cond_1
    return-void
.end method
