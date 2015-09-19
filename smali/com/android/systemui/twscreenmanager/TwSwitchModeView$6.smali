.class Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;
.super Ljava/lang/Object;
.source "TwSwitchModeView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/twscreenmanager/TwSwitchModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;


# direct methods
.method constructor <init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 477
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 510
    :goto_0
    return v3

    .line 479
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    # setter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTouchDownX:I
    invoke-static {v1, v2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$702(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)I

    .line 480
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    # getter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mTouchDownX:I
    invoke-static {v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$700(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)I

    move-result v1

    const/16 v2, 0x438

    if-le v1, v2, :cond_0

    .line 481
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v2

    # setter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mCurrentTouchDisplay:I
    invoke-static {v1, v2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$802(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)I

    .line 482
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    # getter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotMain:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$900(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->bringToFront()V

    .line 487
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    # setter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mPreTouchPositionX:I
    invoke-static {v1, v2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$1102(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)I

    goto :goto_0

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v2

    # setter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mCurrentTouchDisplay:I
    invoke-static {v1, v2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$802(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)I

    .line 485
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    # getter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mScreenShotSub:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$1000(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->bringToFront()V

    goto :goto_1

    .line 491
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    # getter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mPreTouchPositionX:I
    invoke-static {v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$1100(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    sub-int v0, v1, v2

    .line 492
    .local v0, "distanceX":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    .line 493
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    # getter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mIsExtendedMode:Z
    invoke-static {v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$1200(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)Z

    move-result v1

    if-eq v1, v3, :cond_1

    .line 494
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    # getter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mCurrentTouchDisplay:I
    invoke-static {v2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$800(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)I

    move-result v2

    # invokes: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->followFingerAnimation(II)V
    invoke-static {v1, v2, v0}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$1300(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;II)V

    .line 497
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    # setter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mPreTouchPositionX:I
    invoke-static {v1, v2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$1102(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)I

    goto :goto_0

    .line 501
    .end local v0    # "distanceX":I
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    # getter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mCurrentTouchDisplay:I
    invoke-static {v2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$800(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)I

    move-result v2

    # invokes: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->loadScreenAnimation(ILandroid/view/MotionEvent;)V
    invoke-static {v1, v2, p2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$1400(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;ILandroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 504
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    # getter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mCurrentTouchDisplay:I
    invoke-static {v2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$800(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)I

    move-result v2

    # invokes: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->loadScreenAnimation(ILandroid/view/MotionEvent;)V
    invoke-static {v1, v2, p2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$1400(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;ILandroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 507
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    iget-object v2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$6;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    # getter for: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->mCurrentTouchDisplay:I
    invoke-static {v2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$800(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;)I

    move-result v2

    # invokes: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->loadScreenAnimation(ILandroid/view/MotionEvent;)V
    invoke-static {v1, v2, p2}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$1400(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;ILandroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
