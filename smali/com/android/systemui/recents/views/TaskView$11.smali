.class Lcom/android/systemui/recents/views/TaskView$11;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$tv:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;Landroid/view/View;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskView$11;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskView$11;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1126
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->val$v:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-ne v3, v4, :cond_1

    .line 1127
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->val$v:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    if-ne v3, v4, :cond_0

    .line 1130
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationZ(F)V

    .line 1131
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v3, :cond_2

    .line 1132
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView$11;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView$11;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;ZZ)V

    .line 1134
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 1135
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 1136
    .local v2, "taskId":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 1137
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1138
    .local v1, "packageName":Ljava/lang/String;
    if-ltz v2, :cond_3

    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    .line 1139
    :cond_3
    const-string v3, "Recents_TaskView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task has unvalid elements taskId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1142
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$11;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/systemui/recents/views/TaskView;->handleOnClickMultiWindowBtn(ILandroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method
