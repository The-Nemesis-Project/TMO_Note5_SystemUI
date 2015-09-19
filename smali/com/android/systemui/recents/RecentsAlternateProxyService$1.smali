.class Lcom/android/systemui/recents/RecentsAlternateProxyService$1;
.super Lcom/android/systemui/recents/IRecentsAlternateProxyService$Stub;
.source "RecentsAlternateProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsAlternateProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsAlternateProxyService;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$1;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    invoke-direct {p0}, Lcom/android/systemui/recents/IRecentsAlternateProxyService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public configurationChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 113
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$1;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    # getter for: Lcom/android/systemui/recents/RecentsAlternateProxyService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsAlternateProxyService;->access$100(Lcom/android/systemui/recents/RecentsAlternateProxyService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$1;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    # getter for: Lcom/android/systemui/recents/RecentsAlternateProxyService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsAlternateProxyService;->access$100(Lcom/android/systemui/recents/RecentsAlternateProxyService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    return-void
.end method

.method public hideRecents(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHome"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$1;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    # getter for: Lcom/android/systemui/recents/RecentsAlternateProxyService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/recents/RecentsAlternateProxyService;->access$100(Lcom/android/systemui/recents/RecentsAlternateProxyService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$1;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    # getter for: Lcom/android/systemui/recents/RecentsAlternateProxyService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/recents/RecentsAlternateProxyService;->access$100(Lcom/android/systemui/recents/RecentsAlternateProxyService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 100
    return-void

    :cond_0
    move v2, v1

    .line 97
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public onBootCompleted()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 118
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$1;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    # getter for: Lcom/android/systemui/recents/RecentsAlternateProxyService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsAlternateProxyService;->access$100(Lcom/android/systemui/recents/RecentsAlternateProxyService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$1;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    # getter for: Lcom/android/systemui/recents/RecentsAlternateProxyService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsAlternateProxyService;->access$100(Lcom/android/systemui/recents/RecentsAlternateProxyService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    return-void
.end method

.method public preloadRecents()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 108
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$1;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    # getter for: Lcom/android/systemui/recents/RecentsAlternateProxyService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsAlternateProxyService;->access$100(Lcom/android/systemui/recents/RecentsAlternateProxyService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$1;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    # getter for: Lcom/android/systemui/recents/RecentsAlternateProxyService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsAlternateProxyService;->access$100(Lcom/android/systemui/recents/RecentsAlternateProxyService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    return-void
.end method

.method public showRecents(Z)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 90
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$1;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    # getter for: Lcom/android/systemui/recents/RecentsAlternateProxyService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsAlternateProxyService;->access$100(Lcom/android/systemui/recents/RecentsAlternateProxyService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$1;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    # getter for: Lcom/android/systemui/recents/RecentsAlternateProxyService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsAlternateProxyService;->access$100(Lcom/android/systemui/recents/RecentsAlternateProxyService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 93
    return-void

    :cond_0
    move v0, v2

    .line 91
    goto :goto_0
.end method

.method public toggleRecents()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 103
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$1;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    # getter for: Lcom/android/systemui/recents/RecentsAlternateProxyService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsAlternateProxyService;->access$100(Lcom/android/systemui/recents/RecentsAlternateProxyService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$1;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    # getter for: Lcom/android/systemui/recents/RecentsAlternateProxyService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsAlternateProxyService;->access$100(Lcom/android/systemui/recents/RecentsAlternateProxyService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 105
    return-void
.end method
