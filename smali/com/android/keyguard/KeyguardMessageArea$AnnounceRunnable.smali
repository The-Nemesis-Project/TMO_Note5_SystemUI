.class Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;
.super Ljava/lang/Object;
.source "KeyguardMessageArea.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMessageArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnnounceRunnable"
.end annotation


# instance fields
.field private final mHost:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextToAnnounce:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "textToAnnounce"    # Ljava/lang/CharSequence;

    .prologue
    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;->mHost:Ljava/lang/ref/WeakReference;

    .line 654
    iput-object p2, p0, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;->mTextToAnnounce:Ljava/lang/CharSequence;

    .line 655
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 659
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 660
    .local v0, "host":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 661
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;->mTextToAnnounce:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    # getter for: Lcom/android/keyguard/KeyguardMessageArea;->mKeyguardShowing:Z
    invoke-static {}, Lcom/android/keyguard/KeyguardMessageArea;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea$AnnounceRunnable;->mTextToAnnounce:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 665
    :cond_0
    return-void
.end method
