.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 5563
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const v9, 0x7f0e0235

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 5565
    const-string v3, "CoverUI"

    const-string v4, "updateCoverWindow() start ----------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5567
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "automatic_unlock"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_7

    move v0, v1

    .line 5569
    .local v0, "isAutoUnlockEnabled":Z
    :goto_0
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5570
    const-string v3, "CoverUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAutoUnlockEnabled in PhonStatusBar = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5574
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$13700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$13800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 5576
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$13900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(Z)V

    .line 5579
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez v3, :cond_8

    .line 5580
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    invoke-virtual {v3, v4, v5, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setCoverShowing(ZZI)V

    .line 5585
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-nez v3, :cond_2

    .line 5586
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getCoverHolder()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5589
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSupportNotificationOnCover()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5590
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-nez v3, :cond_9

    .line 5591
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showCover()V

    .line 5597
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-eqz v3, :cond_a

    .line 5598
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v1, v9}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5599
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0e023c

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5600
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->isSupportNotificationOnCover()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5601
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateViewVisibilityForCover(I)V

    .line 5604
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 5605
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_6

    .line 5606
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setCoverMargin(I)V

    .line 5620
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    if-nez v1, :cond_c

    .line 5624
    :goto_4
    const-string v1, "CoverUI"

    const-string v2, "updateCoverWindow() end ----------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5625
    return-void

    .end local v0    # "isAutoUnlockEnabled":Z
    :cond_7
    move v0, v2

    .line 5567
    goto/16 :goto_0

    .line 5582
    .restart local v0    # "isAutoUnlockEnabled":Z
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSViewCoverCovered:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAppCoverCovered:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v6, v6, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setCoverShowing(ZZI)V

    goto/16 :goto_1

    .line 5593
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideCover()V

    goto/16 :goto_2

    .line 5609
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v3, v9}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5610
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f0e023c

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5611
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->isSupportNotificationOnCover()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 5612
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateViewVisibilityForCover(I)V

    .line 5615
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->disableExpand(Z)V

    .line 5616
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 5617
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setCoverMargin(I)V

    goto :goto_3

    .line 5622
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getCoverHolder()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4
.end method
