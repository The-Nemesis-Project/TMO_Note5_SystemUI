.class Lcom/android/systemui/volume/SecVolumePanel$8;
.super Landroid/content/BroadcastReceiver;
.source "SecVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumePanel;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumePanel;)V
    .locals 0

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumePanel$8;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x6

    .line 1158
    const-string v1, "SecVolumePanel"

    const-string v2, "registerReceiver: onReceive start "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1168
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1169
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$8;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    .line 1170
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$8;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel$8;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SecVolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 1175
    :cond_0
    :goto_0
    const-string v1, "SecVolumePanel"

    const-string v2, "registerReceiver: onReceive end "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return-void

    .line 1171
    :cond_1
    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1172
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$8;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    .line 1173
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$8;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel$8;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-virtual {v2, v4}, Lcom/android/systemui/volume/SecVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SecVolumePanel;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
