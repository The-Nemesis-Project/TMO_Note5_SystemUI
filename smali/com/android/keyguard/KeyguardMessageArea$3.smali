.class Lcom/android/keyguard/KeyguardMessageArea$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMessageArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMessageArea;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea$3;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 332
    if-eqz p1, :cond_0

    .line 333
    const/4 v0, 0x1

    # setter for: Lcom/android/keyguard/KeyguardMessageArea;->mKeyguardShowing:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardMessageArea;->access$702(Z)Z

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    const/4 v0, 0x0

    # setter for: Lcom/android/keyguard/KeyguardMessageArea;->mKeyguardShowing:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardMessageArea;->access$702(Z)Z

    goto :goto_0
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 5
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 310
    iget-object v3, p0, Lcom/android/keyguard/KeyguardMessageArea$3;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    # setter for: Lcom/android/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z
    invoke-static {v3, v0}, Lcom/android/keyguard/KeyguardMessageArea;->access$402(Lcom/android/keyguard/KeyguardMessageArea;Z)Z

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$3;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget v3, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    # setter for: Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->access$502(Lcom/android/keyguard/KeyguardMessageArea;Z)Z

    .line 313
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$3;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    # setter for: Lcom/android/keyguard/KeyguardMessageArea;->mBatteryLevel:I
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->access$602(Lcom/android/keyguard/KeyguardMessageArea;I)I

    .line 314
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$3;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    .line 315
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$3;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsLow:Z

    .line 316
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$3;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isWirelssCharged()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardMessageArea;->mBatteryIsWirelessCharging:Z

    .line 317
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$3;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 318
    return-void

    :cond_3
    move v0, v1

    .line 310
    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$3;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setSelected(Z)V

    .line 321
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$3;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setSelected(Z)V

    .line 324
    return-void
.end method

.method public onTimeChanged()V
    .locals 3

    .prologue
    .line 326
    const-string v0, "KeyguardMessageArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimeChanged( mCharging = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea$3;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    # getter for: Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z
    invoke-static {v2}, Lcom/android/keyguard/KeyguardMessageArea;->access$500(Lcom/android/keyguard/KeyguardMessageArea;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$3;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    # getter for: Lcom/android/keyguard/KeyguardMessageArea;->mCharging:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardMessageArea;->access$500(Lcom/android/keyguard/KeyguardMessageArea;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$3;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 330
    :cond_0
    return-void
.end method
