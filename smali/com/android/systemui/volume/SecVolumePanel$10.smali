.class Lcom/android/systemui/volume/SecVolumePanel$10;
.super Ljava/lang/Object;
.source "SecVolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumePanel;
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
    .line 2973
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumePanel$10;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 2976
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 2977
    .local v1, "tag":Ljava/lang/Object;
    if-eqz p3, :cond_8

    instance-of v2, v1, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    if-eqz v2, :cond_8

    move-object v0, v1

    .line 2978
    check-cast v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;

    .line 2980
    .local v0, "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SecVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged stream type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    :cond_0
    iget v2, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 2984
    :cond_1
    if-lez p2, :cond_2

    .line 2985
    add-int/lit8 p2, p2, -0x1

    .line 2988
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-nez v2, :cond_4

    .line 2989
    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$400()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "SecVolumePanel"

    const-string v3, "Set force progress level 1 for call volume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    :cond_3
    iget-object v2, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2998
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel$10;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    iget v3, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->getStreamVolume(I)I
    invoke-static {v2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->access$2000(Lcom/android/systemui/volume/SecVolumePanel;I)I

    move-result v2

    if-eq v2, p2, :cond_7

    .line 2999
    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$400()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "SecVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touch setting volume level : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    :cond_5
    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$400()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "SecVolumePanel"

    const-string v3, "onProgressChanged : call setStreamTypeForLogging"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel$10;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    iget v3, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->setStreamTypeForLogging(I)V
    invoke-static {v2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->access$2100(Lcom/android/systemui/volume/SecVolumePanel;I)V

    .line 3002
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel$10;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/systemui/volume/SecVolumePanel;->mValueForHwSwKey:J
    invoke-static {v2, v4, v5}, Lcom/android/systemui/volume/SecVolumePanel;->access$1202(Lcom/android/systemui/volume/SecVolumePanel;J)J

    .line 3003
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel$10;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    const/4 v3, 0x0

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->setStreamVolume(Lcom/android/systemui/volume/SecVolumePanel$StreamControl;II)V
    invoke-static {v2, v0, p2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->access$2200(Lcom/android/systemui/volume/SecVolumePanel;Lcom/android/systemui/volume/SecVolumePanel$StreamControl;II)V

    .line 3006
    :cond_7
    iget v2, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-ne v2, v6, :cond_a

    .line 3007
    if-eqz p2, :cond_9

    .line 3008
    iget-object v2, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080924

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3026
    .end local v0    # "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    :cond_8
    :goto_0
    const-string v2, "SecVolumePanel"

    const-string v3, "onProgressChanged : call resetTimeout()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel$10;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->resetTimeout()V
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumePanel;->access$1400(Lcom/android/systemui/volume/SecVolumePanel;)V

    .line 3028
    return-void

    .line 3010
    .restart local v0    # "sc":Lcom/android/systemui/volume/SecVolumePanel$StreamControl;
    :cond_9
    iget-object v2, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080926

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3011
    :cond_a
    iget v2, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    if-ne v2, v7, :cond_b

    .line 3012
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel$10;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumePanel;->access$700(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v2

    and-int/lit16 v2, v2, 0x3a0

    if-nez v2, :cond_8

    .line 3015
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel$10;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    const v3, 0x108092a

    const v4, 0x108092e

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->setMusicIcon(II)V
    invoke-static {v2, v3, v4}, Lcom/android/systemui/volume/SecVolumePanel;->access$2300(Lcom/android/systemui/volume/SecVolumePanel;II)V

    goto :goto_0

    .line 3017
    :cond_b
    iget v2, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_d

    .line 3018
    if-eqz p2, :cond_c

    .line 3019
    iget-object v2, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080913

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3021
    :cond_c
    iget-object v2, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x1080915

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3022
    :cond_d
    iget v2, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 3023
    iget-object v3, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-nez p2, :cond_e

    iget v2, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_e
    iget v2, v0, Lcom/android/systemui/volume/SecVolumePanel$StreamControl;->iconRes:I

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 3032
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 3036
    return-void
.end method
