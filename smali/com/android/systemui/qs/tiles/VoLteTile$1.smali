.class Lcom/android/systemui/qs/tiles/VoLteTile$1;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "VoLteTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/VoLteTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VoLteTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/VoLteTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$1;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 93
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile$1;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    if-ne p1, v1, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mIsAirPlaneMode:Z
    invoke-static {v2, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$002(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$1;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile$1;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # invokes: Lcom/android/systemui/qs/tiles/VoLteTile;->getVoLTEEnabled()Z
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$100(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$200(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V

    .line 95
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method
