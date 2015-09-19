.class Lcom/android/keyguard/sec/SecKeyguardStatusView$1;
.super Landroid/os/Handler;
.source "SecKeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 41
    :sswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardStatusView;->handleMyProfileSettngsChanged()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->access$000(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V

    goto :goto_0

    .line 44
    :sswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateStatusView()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->access$100(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V

    goto :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x12cb -> :sswitch_1
    .end sparse-switch
.end method
