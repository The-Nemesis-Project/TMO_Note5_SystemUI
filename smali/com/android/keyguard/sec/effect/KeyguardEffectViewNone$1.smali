.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardEffectViewNone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenThemeChanged()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardUpdateMonitorCallback : onOpenThemeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->reloadResForOpenTheme()V
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;)V

    .line 45
    return-void
.end method
