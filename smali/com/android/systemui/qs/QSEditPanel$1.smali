.class Lcom/android/systemui/qs/QSEditPanel$1;
.super Landroid/os/Handler;
.source "QSEditPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSEditPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSEditPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSEditPanel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel$1;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 259
    const-string v0, "QSEditPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 263
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel$1;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSEditPanel$MessageObject;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSEditPanel;->handleUpdateViewChangeState(Lcom/android/systemui/qs/QSEditPanel$MessageObject;)V

    goto :goto_0

    .line 266
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel$1;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    # invokes: Lcom/android/systemui/qs/QSEditPanel;->handleAnimateLeft(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSEditPanel;->access$000(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    goto :goto_0

    .line 269
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel$1;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    # invokes: Lcom/android/systemui/qs/QSEditPanel;->handleAnimateRight(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSEditPanel;->access$100(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    goto :goto_0

    .line 272
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel$1;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    # invokes: Lcom/android/systemui/qs/QSEditPanel;->handleAnimateActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSEditPanel;->access$200(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    goto :goto_0

    .line 275
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel$1;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    # invokes: Lcom/android/systemui/qs/QSEditPanel;->handleAnimateAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSEditPanel;->access$300(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    goto :goto_0

    .line 278
    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel$1;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    # invokes: Lcom/android/systemui/qs/QSEditPanel;->handleAnimateEmptySameArea(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSEditPanel;->access$400(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    goto :goto_0

    .line 281
    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel$1;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    # invokes: Lcom/android/systemui/qs/QSEditPanel;->handleAnimateEmptyActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSEditPanel;->access$500(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    goto :goto_0

    .line 284
    :pswitch_7
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel$1;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    # invokes: Lcom/android/systemui/qs/QSEditPanel;->handleAnimateEmptyAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSEditPanel;->access$600(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    goto :goto_0

    .line 287
    :pswitch_8
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel$1;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    # invokes: Lcom/android/systemui/qs/QSEditPanel;->handleAnimateMaxAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSEditPanel;->access$700(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    goto :goto_0

    .line 290
    :pswitch_9
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel$1;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    # invokes: Lcom/android/systemui/qs/QSEditPanel;->handleAnimateMaxActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSEditPanel;->access$800(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    goto :goto_0

    .line 293
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$1;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # invokes: Lcom/android/systemui/qs/QSEditPanel;->handleActionDropView()V
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel;->access$900(Lcom/android/systemui/qs/QSEditPanel;)V

    goto :goto_0

    .line 296
    :pswitch_b
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$1;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSEditPanel;->resetPanel()V

    goto :goto_0

    .line 299
    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$1;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # invokes: Lcom/android/systemui/qs/QSEditPanel;->handleDelayedOnConfigurationChanged()V
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel;->access$1000(Lcom/android/systemui/qs/QSEditPanel;)V

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
