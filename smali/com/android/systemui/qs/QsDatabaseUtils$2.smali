.class Lcom/android/systemui/qs/QsDatabaseUtils$2;
.super Ljava/lang/Object;
.source "QsDatabaseUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QsDatabaseUtils;->handleVoWifi()V
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
    .line 568
    iput-object p1, p0, Lcom/android/systemui/qs/QsDatabaseUtils$2;->this$0:Lcom/android/systemui/qs/QsDatabaseUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/systemui/qs/QsDatabaseUtils$2;->this$0:Lcom/android/systemui/qs/QsDatabaseUtils;

    # invokes: Lcom/android/systemui/qs/QsDatabaseUtils;->updateVoWifiIfNeeded()V
    invoke-static {v0}, Lcom/android/systemui/qs/QsDatabaseUtils;->access$200(Lcom/android/systemui/qs/QsDatabaseUtils;)V

    .line 571
    return-void
.end method
