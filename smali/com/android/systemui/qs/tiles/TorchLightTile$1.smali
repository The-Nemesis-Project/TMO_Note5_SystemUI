.class Lcom/android/systemui/qs/tiles/TorchLightTile$1;
.super Landroid/content/BroadcastReceiver;
.source "TorchLightTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/TorchLightTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/TorchLightTile;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "action":Ljava/lang/String;
    const-string v5, "com.sec.android.systemui.action.TORCH_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$000(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ACTION_TORCH_OFF !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # invokes: Lcom/android/systemui/qs/tiles/TorchLightTile;->updateTorchState(Z)V
    invoke-static {v5, v4}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$100(Lcom/android/systemui/qs/tiles/TorchLightTile;Z)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 97
    const-string v5, "level"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 98
    .local v2, "batteryLevel":I
    const-string v5, "status"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 99
    .local v1, "battStatus":I
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$200(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_BATTERY_CHANGED - Level :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Status :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v5, 0x5

    if-gt v2, v5, :cond_3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    .line 101
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # setter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->mDisblebyBattery:Z
    invoke-static {v5, v3}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$302(Lcom/android/systemui/qs/tiles/TorchLightTile;Z)Z

    .line 102
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$400(Lcom/android/systemui/qs/tiles/TorchLightTile;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$500(Lcom/android/systemui/qs/tiles/TorchLightTile;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "emergency_mode"

    const/4 v7, -0x2

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 104
    .local v3, "emEnabled":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$600(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_BATTERY_CHANGED - emEnabled :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-nez v3, :cond_0

    .line 107
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$800(Lcom/android/systemui/qs/tiles/TorchLightTile;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    # setter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->toastAlert:Landroid/widget/Toast;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$702(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 108
    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->toastAlert:Landroid/widget/Toast;
    invoke-static {}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$700()Landroid/widget/Toast;

    move-result-object v5

    const v6, 0x7f0d0559

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setText(I)V

    .line 109
    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->toastAlert:Landroid/widget/Toast;
    invoke-static {}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$700()Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 110
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # invokes: Lcom/android/systemui/qs/tiles/TorchLightTile;->updateTorchState(Z)V
    invoke-static {v5, v4}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$100(Lcom/android/systemui/qs/tiles/TorchLightTile;Z)V

    goto/16 :goto_0

    .end local v3    # "emEnabled":Z
    :cond_2
    move v3, v4

    .line 103
    goto :goto_1

    .line 114
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # setter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->mDisblebyBattery:Z
    invoke-static {v5, v4}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$302(Lcom/android/systemui/qs/tiles/TorchLightTile;Z)Z

    goto/16 :goto_0

    .line 116
    .end local v1    # "battStatus":I
    .end local v2    # "batteryLevel":I
    :cond_4
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 117
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$400(Lcom/android/systemui/qs/tiles/TorchLightTile;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # invokes: Lcom/android/systemui/qs/tiles/TorchLightTile;->enqueueNotification()V
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$900(Lcom/android/systemui/qs/tiles/TorchLightTile;)V

    goto/16 :goto_0

    .line 120
    :cond_5
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$1000(Lcom/android/systemui/qs/tiles/TorchLightTile;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ACTION_SHUTDOWN !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # getter for: Lcom/android/systemui/qs/tiles/TorchLightTile;->mTorchEnabled:Z
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$400(Lcom/android/systemui/qs/tiles/TorchLightTile;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/TorchLightTile$1;->this$0:Lcom/android/systemui/qs/tiles/TorchLightTile;

    # invokes: Lcom/android/systemui/qs/tiles/TorchLightTile;->updateTorchState(Z)V
    invoke-static {v5, v4}, Lcom/android/systemui/qs/tiles/TorchLightTile;->access$100(Lcom/android/systemui/qs/tiles/TorchLightTile;Z)V

    goto/16 :goto_0
.end method
