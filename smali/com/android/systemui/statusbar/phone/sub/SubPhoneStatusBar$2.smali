.class Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;
.super Landroid/content/BroadcastReceiver;
.source "SubPhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 560
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SubPhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 569
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->makeExpandedInvisible()V

    .line 595
    :cond_1
    :goto_0
    return-void

    .line 570
    :cond_2
    const-string v3, "com.sec.android.action.FLOATING_BACK_KEY_VISIBILITY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 571
    const-string v3, "com.sec.android.extra.FLOATING_BACK_KEY_VISIBLE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 572
    .local v2, "visible":Z
    const-string v3, "SubPhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " received FLOATING_BACK_KEY_VISIBILITY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$200(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    if-eqz v2, :cond_3

    .line 575
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$300(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$200(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 576
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->addFloatingBackKey()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$400(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V

    goto :goto_0

    .line 578
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$300(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$200(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 579
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$300(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->disappear()V

    goto :goto_0

    .line 582
    .end local v2    # "visible":Z
    :cond_4
    const-string v3, "com.sec.android.action.NOTIFY_COUPLEDTASK_RESUMED_STATUS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 583
    const-string v3, "com.sec.android.extra.COUPLED_RESUMED_STATUS"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 584
    .local v1, "isCoupled":Z
    const-string v3, "SubPhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " received NOTIFY_COUPLEDTASK_RESUMED_STATUS : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$200(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    if-nez v1, :cond_5

    .line 587
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$300(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$200(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 588
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->addFloatingBackKey()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$400(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V

    goto/16 :goto_0

    .line 590
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$300(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mIsFloatingKeyVisible:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$200(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 591
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->mFloatingBackKey:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->access$300(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->disappear()V

    goto/16 :goto_0
.end method
