.class Lcom/android/keyguard/KeyguardPatternView$10;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    .prologue
    .line 944
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$10;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 947
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/keyguard/R$id;->onehand_left_arrow_pattern:I

    if-ne v0, v1, :cond_1

    .line 948
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$10;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$2900(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V

    .line 949
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$10;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # setter for: Lcom/android/keyguard/KeyguardPatternView;->mRightPressed:Z
    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardPatternView;->access$3002(Lcom/android/keyguard/KeyguardPatternView;Z)Z

    .line 950
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$10;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3100(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_direction"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/keyguard/R$id;->onehand_right_arrow_pattern:I

    if-ne v0, v1, :cond_0

    .line 954
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$10;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$2900(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V

    .line 955
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$10;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # setter for: Lcom/android/keyguard/KeyguardPatternView;->mRightPressed:Z
    invoke-static {v0, v4}, Lcom/android/keyguard/KeyguardPatternView;->access$3002(Lcom/android/keyguard/KeyguardPatternView;Z)Z

    .line 956
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$10;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$3200(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_direction"

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method
