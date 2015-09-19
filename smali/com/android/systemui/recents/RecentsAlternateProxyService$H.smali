.class final Lcom/android/systemui/recents/RecentsAlternateProxyService$H;
.super Landroid/os/Handler;
.source "RecentsAlternateProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsAlternateProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/RecentsAlternateProxyService;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$H;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/RecentsAlternateProxyService;Lcom/android/systemui/recents/RecentsAlternateProxyService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/recents/RecentsAlternateProxyService;
    .param p2, "x1"    # Lcom/android/systemui/recents/RecentsAlternateProxyService$1;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsAlternateProxyService$H;-><init>(Lcom/android/systemui/recents/RecentsAlternateProxyService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    .line 126
    .local v0, "what":I
    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$H;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->showRecents(Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 131
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$H;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    iget-object v4, v3, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    move v3, v1

    :goto_2
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_2

    :goto_3
    invoke-virtual {v4, v3, v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->hideRecents(ZZ)V

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    .line 134
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$H;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->toggleRecents()V

    goto :goto_0

    .line 137
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$H;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->preloadRecents()V

    goto :goto_0

    .line 140
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$H;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->configurationChanged()V

    goto :goto_0

    .line 143
    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsAlternateProxyService$H;->this$0:Lcom/android/systemui/recents/RecentsAlternateProxyService;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsAlternateProxyService;->mRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onBootCompleted(Z)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
