.class Lcom/android/keyguard/sec/SecKeyguardCircleView$7;
.super Landroid/view/OrientationEventListener;
.source "SecKeyguardCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardCircleView;->createOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardCircleView;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$7;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/16 v4, 0x10e

    const/16 v3, 0xb4

    const/16 v2, 0x5a

    const/4 v1, 0x0

    .line 589
    const/16 v0, 0x145

    if-ge p1, v0, :cond_0

    const/16 v0, 0x23

    if-le v0, p1, :cond_3

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$7;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCameraRotateonTablet:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$300(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 591
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$7;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->rotateIcon(I)V

    .line 610
    :cond_1
    :goto_0
    return-void

    .line 593
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$7;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->rotateIcon(I)V

    goto :goto_0

    .line 594
    :cond_3
    const/16 v0, 0x37

    if-lt p1, v0, :cond_5

    const/16 v0, 0x7d

    if-le v0, p1, :cond_5

    .line 595
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$7;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCameraRotateonTablet:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$300(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 596
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$7;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->rotateIcon(I)V

    goto :goto_0

    .line 597
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$7;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsLandscapeAvailable:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$400(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$7;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->rotateIcon(I)V

    goto :goto_0

    .line 599
    :cond_5
    const/16 v0, 0x91

    if-lt p1, v0, :cond_7

    const/16 v0, 0xd7

    if-le v0, p1, :cond_7

    .line 600
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$7;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCameraRotateonTablet:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$300(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 601
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$7;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->rotateIcon(I)V

    goto :goto_0

    .line 602
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$7;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsLandscapeAvailable:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$400(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$7;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->rotateIcon(I)V

    goto :goto_0

    .line 604
    :cond_7
    const/16 v0, 0xeb

    if-lt p1, v0, :cond_1

    const/16 v0, 0x131

    if-le v0, p1, :cond_1

    .line 605
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$7;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardCircleView;->mCameraRotateonTablet:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$300(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 606
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$7;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->rotateIcon(I)V

    goto :goto_0

    .line 607
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$7;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardCircleView;->mIsLandscapeAvailable:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->access$400(Lcom/android/keyguard/sec/SecKeyguardCircleView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleView$7;->this$0:Lcom/android/keyguard/sec/SecKeyguardCircleView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->rotateIcon(I)V

    goto :goto_0
.end method
