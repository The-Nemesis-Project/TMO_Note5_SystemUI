.class Lcom/android/systemui/recents/RecentsActivity$5;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    .prologue
    .line 2052
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$5;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    .line 2054
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2060
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$5;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->moveTaskToBack(Z)Z

    .line 2064
    :cond_0
    :goto_0
    return-void

    .line 2062
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method
