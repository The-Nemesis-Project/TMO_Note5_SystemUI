.class Lcom/android/systemui/multiwindow/SplitRecentsFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "SplitRecentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/SplitRecentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$2;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 246
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$2;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->refreshSearchWidget()V

    .line 257
    :cond_0
    return-void
.end method
