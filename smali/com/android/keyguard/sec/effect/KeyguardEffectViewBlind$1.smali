.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewBlind.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "BlindEffect"

    const-string v1, "releaseSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$002(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->releaseSoundRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;->access$102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBlind;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 171
    return-void
.end method
