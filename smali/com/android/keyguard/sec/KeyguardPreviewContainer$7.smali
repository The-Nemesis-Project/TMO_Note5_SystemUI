.class Lcom/android/keyguard/sec/KeyguardPreviewContainer$7;
.super Landroid/os/AsyncTask;
.source "KeyguardPreviewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardPreviewContainer;->refreshPhonePreviewIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/view/View;",
        "Landroid/view/View;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$7;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 486
    const-string v1, "KeyguardPreviewContainer"

    const-string v2, "refreshPhonePreviewIfNeeded - re-creating preview"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$7;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewInflater:Lcom/android/keyguard/sec/KeyguardPreviewInflater;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$400(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Lcom/android/keyguard/sec/KeyguardPreviewInflater;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    .line 489
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 490
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 491
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 492
    new-instance v1, Lcom/android/keyguard/sec/KeyguardPreviewContainer$7$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$7$1;-><init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer$7;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 501
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 482
    check-cast p1, [Landroid/view/View;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$7;->doInBackground([Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$7;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPhonePreview:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$500(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$7;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$7;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPhonePreview:Landroid/view/View;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$500(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->removeView(Landroid/view/View;)V

    .line 508
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$7;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPhonePreview:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$502(Lcom/android/keyguard/sec/KeyguardPreviewContainer;Landroid/view/View;)Landroid/view/View;

    .line 511
    :cond_0
    if-eqz p1, :cond_1

    .line 512
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$7;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->addView(Landroid/view/View;)V

    .line 513
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$7;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # setter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPhonePreview:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$502(Lcom/android/keyguard/sec/KeyguardPreviewContainer;Landroid/view/View;)Landroid/view/View;

    .line 515
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 482
    check-cast p1, Landroid/view/View;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$7;->onPostExecute(Landroid/view/View;)V

    return-void
.end method
