.class abstract Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
.super Ljava/lang/Thread;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private mSubId:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V
    .locals 0
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 250
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->mPin:Ljava/lang/String;

    .line 251
    iput p3, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->mSubId:I

    .line 252
    return-void
.end method


# virtual methods
.method abstract onSimCheckResponse(II)V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 260
    :try_start_0
    const-string v2, "KeyguardSimPinView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call supplyPinReportResultForSubscriber(subid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->mSubId:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->mPin:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v1

    .line 265
    .local v1, "result":[I
    const-string v2, "KeyguardSimPinView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "supplyPinReportResult returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    new-instance v3, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$1;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$1;-><init>(Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;[I)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardSimPinView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v1    # "result":[I
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardSimPinView"

    const-string v3, "RemoteException for supplyPinReportResult:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    new-instance v3, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin$2;-><init>(Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardSimPinView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
