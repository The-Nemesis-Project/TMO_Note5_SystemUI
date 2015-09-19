.class Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "SecVolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SafetyWarning"
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mNewVolumeUp:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mVolumePanel:Lcom/android/systemui/volume/SecVolumePanel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/SecVolumePanel;Landroid/media/AudioManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumePanel"    # Lcom/android/systemui/volume/SecVolumePanel;
    .param p3, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 641
    new-instance v1, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning$1;-><init>(Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;)V

    iput-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 587
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    .line 588
    iput-object p2, p0, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->mVolumePanel:Lcom/android/systemui/volume/SecVolumePanel;

    .line 589
    iput-object p3, p0, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->mAudioManager:Landroid/media/AudioManager;

    .line 592
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    const v2, 0x7f0d04b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->setMessage(Ljava/lang/CharSequence;)V

    .line 593
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    const v3, 0x1040013

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p0}, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 595
    const/4 v2, -0x2

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    const v3, 0x1040009

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 597
    invoke-virtual {p0, p0}, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 599
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 600
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 601
    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->cleanUp()V

    return-void
.end method

.method private cleanUp()V
    .locals 4

    .prologue
    .line 633
    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarningLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 634
    const/4 v0, 0x0

    :try_start_0
    # setter for: Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumePanel;->access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 635
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 637
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->mVolumePanel:Lcom/android/systemui/volume/SecVolumePanel;

    const-wide/16 v2, 0x0

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->forceTimeout(J)V
    invoke-static {v0, v2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->access$300(Lcom/android/systemui/volume/SecVolumePanel;J)V

    .line 638
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->mVolumePanel:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumePanel;->updateStates()V

    .line 639
    return-void

    .line 635
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    .line 624
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 629
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->cleanUp()V

    .line 630
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 605
    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumePanel$SafetyWarning;->mNewVolumeUp:Z

    .line 608
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 618
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
