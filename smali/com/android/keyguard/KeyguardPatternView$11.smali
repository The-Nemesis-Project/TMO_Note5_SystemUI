.class Lcom/android/keyguard/KeyguardPatternView$11;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternView;->startAppearAnimation()V
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
    .line 1008
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$11;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$11;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    const/4 v1, 0x1

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$3300(Lcom/android/keyguard/KeyguardPatternView;Z)V

    .line 1012
    return-void
.end method