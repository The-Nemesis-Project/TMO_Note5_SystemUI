.class Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$7;
.super Landroid/os/Handler;
.source "KeyguardCarrierLockPlusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$7;->this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 381
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 386
    :goto_0
    return-void

    .line 383
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$7;->this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->handleTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->access$800(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;I)V

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method