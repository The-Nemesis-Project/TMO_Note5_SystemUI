.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewGeometricMosaic.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/IEffectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/HashMap;)V
    .locals 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    if-nez p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mMsg:Landroid/os/Message;

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    iget-object v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mMsg:Landroid/os/Message;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mHandler:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;

    iget-object v1, v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic;->mMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewGeometricMosaic$EffectHandler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    :cond_0
    return-void
.end method
