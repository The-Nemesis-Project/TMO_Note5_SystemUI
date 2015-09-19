.class Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;
.super Ljava/lang/Object;
.source "SecKeyguardClockSingleView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->addTextChangedListenerForClockTimeMargin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v3, 0x68

    .line 626
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    iget-object v2, v2, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 627
    .local v1, "curClockTextRaw":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 629
    .local v0, "curClockText":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 630
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mOldClockText:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$1400(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mOldClockText:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$1400(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 634
    const-string v2, "SecKeyguardClockSingleView"

    const-string v3, "Ignore. Because it is same clock text"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :goto_0
    return-void

    .line 638
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mOldClockText:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$1402(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;Ljava/lang/String;)Ljava/lang/String;

    .line 641
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$1500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$1600(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getIsShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$1700(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportLongShadowEffect(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 644
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$600(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 645
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$600(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 647
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$600(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 651
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockContentDesciption()V
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$200(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const/4 v4, 0x0

    .line 605
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    iget-object v2, v2, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 606
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$1200(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getClockSize(Landroid/content/Context;)I

    move-result v0

    .line 608
    .local v0, "fontSize":I
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    iget-object v2, v2, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->isFirstDigitOne()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 609
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$1300(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_singleclock_first_digit_one_margin_start:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 620
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    iget-object v2, v2, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$5;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    iget-object v2, v2, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    int-to-float v3, v0

    invoke-virtual {v2, v4, v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setTextSize(IF)V

    .line 622
    return-void

    .line 612
    :cond_0
    int-to-float v2, v0

    const/high16 v3, 0x41700000    # 15.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 614
    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 615
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 617
    :cond_2
    int-to-float v2, v0

    const/high16 v3, 0x42480000    # 50.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 600
    return-void
.end method
