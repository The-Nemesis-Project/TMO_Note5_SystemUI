.class Lcom/android/systemui/keyguard/KeyguardViewMediator$6;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .prologue
    .line 1959
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1962
    const-string v5, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1963
    const-string v5, "seq"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1964
    .local v4, "sequence":I
    const-string v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received DELAYED_KEYGUARD_ACTION with seq = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mDelayedShowingSequence = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v6

    .line 1967
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 1969
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v7, 0x1

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v5, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3502(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 1971
    sget-boolean v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v5, :cond_3

    .line 1972
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v7, 0x0

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->setSwipeLockShowingLocked(Z)V
    invoke-static {v5, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 1973
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v7, 0x0

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v5, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3502(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 1974
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1986
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v7, 0x0

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1997
    :cond_0
    :goto_0
    monitor-exit v6

    .line 2137
    .end local v4    # "sequence":I
    :cond_1
    :goto_1
    return-void

    .line 1988
    .restart local v4    # "sequence":I
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1989
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1997
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1993
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v7, 0x0

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2000
    .end local v4    # "sequence":I
    :cond_4
    const-string v5, "com.android.samsungtest.DISABLE_KEYGUARD_FACTORY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2001
    const-string v5, "KeyguardViewMediator"

    const-string v6, "received DISABLE_KEYGUARD_FACTORY_ACTION!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->isFactoryMode()Z
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2003
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5, v8, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto :goto_1

    .line 2007
    :cond_5
    const-string v5, "ACTION_CDMA_PINPUK_REQUIRE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2008
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2009
    const-string v5, "KeyguardViewMediator"

    const-string v6, "ACTION_CDMA_PINPUK_REQUIRE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    invoke-static {v8}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    .line 2011
    invoke-static {v9}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKSlot(I)V

    .line 2012
    const-string v5, "SIMCARD"

    const-string v6, "FROM"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2013
    invoke-static {v7}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequestMode(I)V

    .line 2017
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2018
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v10}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_1

    .line 2015
    :cond_6
    invoke-static {v8}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequestMode(I)V

    goto :goto_2

    .line 2020
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_1

    .line 2023
    :cond_8
    const-string v5, "ACTION_GSM_PINPUK_REQUIRE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2024
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2025
    const-string v5, "KeyguardViewMediator"

    const-string v6, "ACTION_GSM_PINPUK_REQUIRE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    invoke-static {v8}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    .line 2027
    invoke-static {v8}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKSlot(I)V

    .line 2028
    const-string v5, "SIMCARD"

    const-string v6, "FROM"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2029
    invoke-static {v7}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequestMode(I)V

    .line 2033
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_a

    .line 2034
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v10}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 2031
    :cond_9
    invoke-static {v8}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequestMode(I)V

    goto :goto_3

    .line 2036
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1

    .line 2041
    :cond_b
    const-string v5, "com.samsung.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2043
    const-string v5, "KeyguardViewMediator"

    const-string v6, "FMM_SAMSUNG_LOCKED_ACTION intent is received."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->setSwipeLockShowingLocked(Z)V
    invoke-static {v5, v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 2045
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_c

    .line 2046
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v10}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 2052
    :goto_4
    const-string v5, "KeyguardViewMediator"

    const-string v6, "wakeUp device!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_1

    .line 2048
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 2049
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_4

    .line 2054
    :cond_d
    const-string v5, "com.samsung.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2056
    const-string v5, "KeyguardViewMediator"

    const-string v6, "FMM_SAMSUNG_UNLOCKED_ACTION intent is received."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    .line 2058
    .local v1, "isSecure":Z
    if-nez v1, :cond_e

    .line 2059
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5, v8, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 2065
    :goto_5
    const-string v5, "KeyguardViewMediator"

    const-string v6, "wakeUp device!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_1

    .line 2061
    :cond_e
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 2062
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_5

    .line 2067
    .end local v1    # "isSecure":Z
    :cond_f
    const-string v5, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2069
    const-string v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2071
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->isGear1(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v5, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3700(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2072
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-eqz v5, :cond_11

    if-eqz v0, :cond_11

    .line 2073
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2074
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v10}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3802(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2075
    const-string v5, "android.bluetooth.device.extra.LINKTYPE"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2076
    .local v2, "linktype":I
    if-ne v2, v8, :cond_1

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->isKnoxCustomLockScreenDisabled()Z
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2082
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->setSwipeLockShowingLocked(Z)V
    invoke-static {v5, v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 2083
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/LockPatternUtils;->setSwipeSmartLock(Z)V

    .line 2084
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 2085
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1

    .line 2088
    .end local v2    # "linktype":I
    :cond_10
    const-string v5, "KeyguardViewMediator"

    const-string v6, "ACTION_ACL_DISCONNECTED : mWearabledevice =/= device !!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2091
    :cond_11
    const-string v5, "KeyguardViewMediator"

    const-string v6, "ACTION_ACL_DISCONNECTED : mWearabledevice or device is null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2094
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_12
    const-string v5, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2096
    const-string v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2098
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->isGear1(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v5, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3700(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2099
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mWearabledevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3802(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2100
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getModelMidRssi()I

    move-result v6

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_IN_RSSI:I
    invoke-static {v5, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4002(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    .line 2101
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getModelLowRssi()I

    move-result v6

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCriteria_OUT_RSSI:I
    invoke-static {v5, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4102(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    .line 2102
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v6, 0x3

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_IN_RSSI:I
    invoke-static {v5, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4202(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    .line 2103
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOffset_OUT_RSSI:I
    invoke-static {v5, v9}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4302(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    goto/16 :goto_1

    .line 2106
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_13
    const-string v5, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 2108
    const-string v5, "KeyguardViewMediator"

    const-string v6, "CARRIER_FLPP_LOCKED_ACTION intent is received."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-nez v5, :cond_14

    .line 2110
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v5, v10}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 2112
    :cond_14
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 2113
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1

    .line 2115
    :cond_15
    const-string v5, "com.sec.android.FindingLostPhonePlus.CANCEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2117
    const-string v5, "KeyguardViewMediator"

    const-string v6, "CARRIER_FLPP_UNLOCKED_ACTION intent is received."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5, v8, v10}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;)V

    .line 2119
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    .line 2120
    .restart local v1    # "isSecure":Z
    if-nez v1, :cond_16

    .line 2121
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5, v8, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto/16 :goto_1

    .line 2123
    :cond_16
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 2124
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1

    .line 2126
    .end local v1    # "isSecure":Z
    :cond_17
    const-string v5, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2127
    const-string v5, "reason"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2128
    .local v3, "reason":I
    if-lez v3, :cond_1

    .line 2130
    const-string v5, "KeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EmergencyMode intent is received : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2132
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 2133
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_1
.end method
