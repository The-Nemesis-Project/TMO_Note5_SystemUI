.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewRippleInk.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/IEffectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/HashMap;)V
    .locals 3
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    const/4 v2, 0x1

    .line 136
    if-ne p1, v2, :cond_0

    .line 138
    const-string v0, "sound"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->playSound(I)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;I)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const-string v0, "sound"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "drag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->playSound(I)V
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewRippleInk;I)V

    goto :goto_0
.end method
