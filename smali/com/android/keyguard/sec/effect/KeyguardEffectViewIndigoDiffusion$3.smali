.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$3;
.super Ljava/lang/Object;
.source "KeyguardEffectViewIndigoDiffusion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$3;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion$3;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewIndigoDiffusion;->clearScreen()V

    .line 418
    return-void
.end method
