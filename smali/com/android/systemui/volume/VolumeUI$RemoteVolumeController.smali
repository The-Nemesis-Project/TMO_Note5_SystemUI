.class final Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;
.super Landroid/media/IRemoteVolumeController$Stub;
.source "VolumeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteVolumeController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {p0}, Landroid/media/IRemoteVolumeController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumeUI;
    .param p2, "x1"    # Lcom/android/systemui/volume/VolumeUI$1;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    return-void
.end method


# virtual methods
.method public remoteVolumeChanged(Landroid/media/session/ISessionController;I)V
    .locals 2
    .param p1, "binder"    # Landroid/media/session/ISessionController;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/ISessionController;)V

    .line 212
    .local v0, "controller":Landroid/media/session/MediaController;
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/SecVolumePanel;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeUI;->access$700(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/SecVolumePanel;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/volume/SecVolumePanel;->postRemoteVolumeChanged(Landroid/media/session/MediaController;I)V

    .line 213
    return-void
.end method

.method public updateRemoteController(Landroid/media/session/ISessionController;)V
    .locals 2
    .param p1, "session"    # Landroid/media/session/ISessionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/SecVolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$700(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/SecVolumePanel;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/SecVolumePanel;->postRemoteSliderVisibility(Z)V

    .line 220
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
