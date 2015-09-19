.class Lcom/android/systemui/qs/QsDatabaseUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "QsDatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QsDatabaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QsDatabaseUtils;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QsDatabaseUtils;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/systemui/qs/QsDatabaseUtils$1;->this$0:Lcom/android/systemui/qs/QsDatabaseUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 551
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 553
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 554
    .local v1, "data":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 564
    .end local v1    # "data":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 557
    .restart local v1    # "data":Landroid/net/Uri;
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "com.oem.smartwifisupport"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 559
    iget-object v3, p0, Lcom/android/systemui/qs/QsDatabaseUtils$1;->this$0:Lcom/android/systemui/qs/QsDatabaseUtils;

    # invokes: Lcom/android/systemui/qs/QsDatabaseUtils;->handleVoWifi()V
    invoke-static {v3}, Lcom/android/systemui/qs/QsDatabaseUtils;->access$000(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    goto :goto_0

    .line 560
    :cond_2
    const-string v3, "kr.co.rightbrain.RetailMode.TR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    iget-object v3, p0, Lcom/android/systemui/qs/QsDatabaseUtils$1;->this$0:Lcom/android/systemui/qs/QsDatabaseUtils;

    # invokes: Lcom/android/systemui/qs/QsDatabaseUtils;->handleRetailMode()V
    invoke-static {v3}, Lcom/android/systemui/qs/QsDatabaseUtils;->access$100(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    goto :goto_0
.end method
