.class Lcom/android/systemui/volume/SecVolumePanel$11;
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
    .line 3039
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumePanel$11;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x3

    .line 3042
    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSeekListenerForBottomMedia : progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$11;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->IsUnitDigitZero(I)Z
    invoke-static {v0, p2}, Lcom/android/systemui/volume/SecVolumePanel;->access$2400(Lcom/android/systemui/volume/SecVolumePanel;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3046
    const-string v0, "SecVolumePanel"

    const-string v1, "onProgressChanged : case1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$11;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->setTenDigitMediaVolume(III)V
    invoke-static {v0, v3, p2, v4}, Lcom/android/systemui/volume/SecVolumePanel;->access$2500(Lcom/android/systemui/volume/SecVolumePanel;III)V

    .line 3060
    :goto_0
    if-nez p2, :cond_4

    .line 3061
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$11;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mMediaVolumeIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumePanel;->access$2800(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x108092c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3065
    :goto_1
    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SecVolumePanel"

    const-string v1, "mSeekListenerForBottomMedia : onProgressChanged : call resetTimeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$11;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->resetTimeout()V
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumePanel;->access$1400(Lcom/android/systemui/volume/SecVolumePanel;)V

    .line 3067
    return-void

    .line 3048
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$11;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->IsTenDigitSame(II)Z
    invoke-static {v0, v3, p2}, Lcom/android/systemui/volume/SecVolumePanel;->access$2600(Lcom/android/systemui/volume/SecVolumePanel;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3049
    const-string v0, "SecVolumePanel"

    const-string v1, "onProgressChanged : case2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$11;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->setUnitDigtMediaVolume(I)V
    invoke-static {v0, p2}, Lcom/android/systemui/volume/SecVolumePanel;->access$2700(Lcom/android/systemui/volume/SecVolumePanel;I)V

    goto :goto_0

    .line 3052
    :cond_3
    const-string v0, "SecVolumePanel"

    const-string v1, "onProgressChanged : case3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$11;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->setTenDigitMediaVolume(III)V
    invoke-static {v0, v3, p2, v4}, Lcom/android/systemui/volume/SecVolumePanel;->access$2500(Lcom/android/systemui/volume/SecVolumePanel;III)V

    .line 3054
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$11;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->setUnitDigtMediaVolume(I)V
    invoke-static {v0, p2}, Lcom/android/systemui/volume/SecVolumePanel;->access$2700(Lcom/android/systemui/volume/SecVolumePanel;I)V

    goto :goto_0

    .line 3063
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$11;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mMediaVolumeIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumePanel;->access$2800(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x108092b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 3071
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 3075
    return-void
.end method
