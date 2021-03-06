.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;
.super Landroid/database/ContentObserver;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MPTCPObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4674
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 4675
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4677
    iget-object v2, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mptcp_value_internal"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPSettingEnabled:Z
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 4679
    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 4680
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MPTCPObserver():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPSettingEnabled:Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2900(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4681
    return-void

    :cond_0
    move v0, v1

    .line 4677
    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4684
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mptcp_value_internal"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPSettingEnabled:Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z

    .line 4686
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sendRefreshViewsMessage()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 4687
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MPTCPObserver onChange():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPSettingEnabled:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$2900(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4688
    return-void

    :cond_0
    move v0, v1

    .line 4684
    goto :goto_0
.end method
