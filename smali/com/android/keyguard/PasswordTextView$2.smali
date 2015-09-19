.class Lcom/android/keyguard/PasswordTextView$2;
.super Ljava/lang/Object;
.source "PasswordTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PasswordTextView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextView;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$2;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    const-string v0, ""

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$2;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$2;->this$0:Lcom/android/keyguard/PasswordTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$2;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mResDrawableId:I
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextView;->access$400(Lcom/android/keyguard/PasswordTextView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$2;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$2;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mResDrawableId:I
    invoke-static {v1}, Lcom/android/keyguard/PasswordTextView;->access$400(Lcom/android/keyguard/PasswordTextView;)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/keyguard/PasswordTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$2;->this$0:Lcom/android/keyguard/PasswordTextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$2;->this$0:Lcom/android/keyguard/PasswordTextView;

    # getter for: Lcom/android/keyguard/PasswordTextView;->mResDrawableId:I
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextView;->access$400(Lcom/android/keyguard/PasswordTextView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$2;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/android/keyguard/PasswordTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method
