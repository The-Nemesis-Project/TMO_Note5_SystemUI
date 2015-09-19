.class public Lcom/android/systemui/recents/model/TaskStack;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/TaskStack$GroupTaskIndex;,
        Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;
    }
.end annotation


# static fields
.field static final IndividualTaskIdOffset:I = 0x10000

.field public static final TAG:Ljava/lang/String; = "Recents_TaskStack"


# instance fields
.field mAffinitiesGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/recents/model/TaskGrouping;",
            ">;"
        }
    .end annotation
.end field

.field mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

.field mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskGrouping;",
            ">;"
        }
    .end annotation
.end field

.field mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    .line 312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V
    .locals 2
    .param p1, "group"    # Lcom/android/systemui/recents/model/TaskGrouping;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Ljava/util/HashMap;

    iget v1, p1, Lcom/android/systemui/recents/model/TaskGrouping;->affiliation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    return-void
.end method

.method public addTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 1
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/FilteredTaskList;->add(Lcom/android/systemui/recents/model/Task;)V

    .line 330
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V

    .line 333
    :cond_0
    return-void
.end method

.method public createAffiliatedGroupings(Lcom/android/systemui/recents/RecentsConfiguration;)V
    .locals 16
    .param p1, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;

    .prologue
    .line 628
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 629
    .local v13, "tasksMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v14}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v12

    .line 630
    .local v12, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 631
    .local v10, "taskCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v10, :cond_2

    .line 632
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/model/Task;

    .line 634
    .local v9, "t":Lcom/android/systemui/recents/model/Task;
    iget v14, v9, Lcom/android/systemui/recents/model/Task;->taskAffiliation:I

    if-lez v14, :cond_0

    iget v1, v9, Lcom/android/systemui/recents/model/Task;->taskAffiliation:I

    .line 636
    .local v1, "affiliation":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 637
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->getGroupWithAffiliation(I)Lcom/android/systemui/recents/model/TaskGrouping;

    move-result-object v5

    .line 642
    .local v5, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    :goto_2
    invoke-virtual {v5, v9}, Lcom/android/systemui/recents/model/TaskGrouping;->addTask(Lcom/android/systemui/recents/model/Task;)V

    .line 643
    iget-object v14, v9, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v13, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 634
    .end local v1    # "affiliation":I
    .end local v5    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    :cond_0
    const/high16 v14, 0x10000

    iget-object v15, v9, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v15, v15, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    add-int v1, v14, v15

    goto :goto_1

    .line 639
    .restart local v1    # "affiliation":I
    :cond_1
    new-instance v5, Lcom/android/systemui/recents/model/TaskGrouping;

    invoke-direct {v5, v1}, Lcom/android/systemui/recents/model/TaskGrouping;-><init>(I)V

    .line 640
    .restart local v5    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/model/TaskStack;->addGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    goto :goto_2

    .line 646
    .end local v1    # "affiliation":I
    .end local v5    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v9    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_2
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewAffiliationColorMinAlpha:F

    .line 647
    .local v8, "minAlpha":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 648
    .local v11, "taskGroupCount":I
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v11, :cond_5

    .line 649
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/model/TaskGrouping;

    .line 650
    .restart local v5    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v10

    .line 652
    const/4 v14, 0x1

    if-gt v10, v14, :cond_4

    .line 648
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 654
    :cond_4
    iget-object v14, v5, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recents/model/Task;

    iget v2, v14, Lcom/android/systemui/recents/model/Task;->taskAffiliationColor:I

    .line 655
    .local v2, "affiliationColor":I
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v8

    int-to-float v15, v10

    div-float v4, v14, v15

    .line 656
    .local v4, "alphaStep":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 657
    .local v3, "alpha":F
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    if-ge v7, v10, :cond_3

    .line 658
    iget-object v14, v5, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/model/Task;

    .line 659
    .restart local v9    # "t":Lcom/android/systemui/recents/model/Task;
    const/4 v14, -0x1

    invoke-static {v2, v14, v3}, Lcom/android/systemui/recents/misc/Utilities;->getColorWithOverlay(IIF)I

    move-result v14

    iput v14, v9, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    .line 661
    sub-float/2addr v3, v4

    .line 657
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 665
    .end local v2    # "affiliationColor":I
    .end local v3    # "alpha":F
    .end local v4    # "alphaStep":F
    .end local v5    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v7    # "j":I
    .end local v9    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_5
    return-void
.end method

.method public filterCoupledTask(Z)V
    .locals 2
    .param p1, "noUpdate"    # Z

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    new-instance v1, Lcom/android/systemui/recents/model/TaskStack$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/TaskStack$2;-><init>(Lcom/android/systemui/recents/model/TaskStack;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/FilteredTaskList;->setCoupledTaskFilter(Lcom/android/systemui/recents/model/TaskFilter;)Z

    .line 483
    return-void
.end method

.method public filterExcludeTask(Lcom/android/systemui/recents/model/Task;Z)V
    .locals 3
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "noUpdate"    # Z

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    new-instance v2, Lcom/android/systemui/recents/model/TaskStack$3;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recents/model/TaskStack$3;-><init>(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/FilteredTaskList;->setExcludeFilter(Lcom/android/systemui/recents/model/TaskFilter;)Z

    move-result v0

    .line 498
    .local v0, "filtered":Z
    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v1, p0, p1}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackExcludeFiltered(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V

    .line 501
    :cond_0
    return-void
.end method

.method public filterSplitTasks(Z)V
    .locals 9
    .param p1, "isSplitRecent"    # Z

    .prologue
    .line 504
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 505
    .local v4, "prevTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v7, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    new-instance v8, Lcom/android/systemui/recents/model/TaskStack$4;

    invoke-direct {v8, p0, p1}, Lcom/android/systemui/recents/model/TaskStack$4;-><init>(Lcom/android/systemui/recents/model/TaskStack;Z)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/model/FilteredTaskList;->setSplitFilter(Lcom/android/systemui/recents/model/TaskFilter;)Z

    move-result v0

    .line 518
    .local v0, "filtered":Z
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v7, :cond_2

    .line 519
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 520
    .local v5, "remainTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v1, "filteredTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/model/Task;

    .line 522
    .local v6, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 523
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 524
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 528
    .end local v3    # "index":I
    .end local v6    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v7, p0, v1}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackSplitFiltered(Lcom/android/systemui/recents/model/TaskStack;Ljava/util/ArrayList;)V

    .line 530
    .end local v1    # "filteredTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "remainTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_2
    return-void
.end method

.method public filterTasks(Lcom/android/systemui/recents/model/Task;)V
    .locals 4
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 439
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 442
    .local v1, "oldStack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    new-instance v3, Lcom/android/systemui/recents/model/TaskStack$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/recents/model/TaskStack$1;-><init>(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/FilteredTaskList;->setFilter(Lcom/android/systemui/recents/model/TaskFilter;)Z

    move-result v0

    .line 449
    .local v0, "filtered":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v2, p0, v1, p1}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackFiltered(Lcom/android/systemui/recents/model/TaskStack;Ljava/util/ArrayList;Lcom/android/systemui/recents/model/Task;)V

    .line 452
    :cond_0
    return-void
.end method

.method public findTaskWithId(I)Lcom/android/systemui/recents/model/Task;
    .locals 5
    .param p1, "taskId"    # I

    .prologue
    .line 424
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 425
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 426
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 427
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 428
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v4, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-ne v4, p1, :cond_0

    .line 432
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    :goto_1
    return-object v1

    .line 426
    .restart local v1    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFrontMostTask()Lcom/android/systemui/recents/model/Task;
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/FilteredTaskList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    goto :goto_0
.end method

.method public getGroupWithAffiliation(I)Lcom/android/systemui/recents/model/TaskGrouping;
    .locals 2
    .param p1, "affiliation"    # I

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/TaskGrouping;

    return-object v0
.end method

.method public getTaskCount()I
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->size()I

    move-result v0

    return v0
.end method

.method public getTaskKeys()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v2, "taskKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 400
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 401
    .local v1, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 402
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_0
    return-object v2
.end method

.method public getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hasFilteredTasks()Z
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->hasFilter()Z

    move-result v0

    return v0
.end method

.method public indexOfTask(Lcom/android/systemui/recents/model/Task;)I
    .locals 1
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/FilteredTaskList;->indexOf(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    return v0
.end method

.method public isSupportMultiWindow(Landroid/content/pm/ActivityInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 4
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v1, 0x0

    .line 677
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    .line 678
    .local v0, "applicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 694
    :cond_0
    :goto_0
    return v1

    .line 682
    :cond_1
    if-eqz p2, :cond_2

    .line 683
    const/16 v2, 0x1000

    invoke-virtual {p2, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 686
    const/high16 v2, 0x200000

    invoke-virtual {p2, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 689
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 693
    :cond_2
    const-string v1, "Recents_TaskStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportMultiWindow aInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / style : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V
    .locals 2
    .param p1, "group"    # Lcom/android/systemui/recents/model/TaskGrouping;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 550
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Ljava/util/HashMap;

    iget v1, p1, Lcom/android/systemui/recents/model/TaskGrouping;->affiliation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    return-void
.end method

.method public removeTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 3
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 337
    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/model/FilteredTaskList;->contains(Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 339
    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/model/FilteredTaskList;->remove(Lcom/android/systemui/recents/model/Task;)Z

    .line 341
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 342
    .local v0, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskGrouping;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 344
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/model/TaskStack;->removeGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    .line 349
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 351
    .local v1, "newFrontMostTask":Lcom/android/systemui/recents/model/Task;
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    if-eqz v2, :cond_1

    .line 352
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    .line 354
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v2, :cond_2

    .line 356
    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v2, p0, p1, v1}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)V

    .line 359
    .end local v0    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v1    # "newFrontMostTask":Lcom/android/systemui/recents/model/Task;
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    .line 322
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->reset()V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 325
    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    .line 317
    return-void
.end method

.method public setTasks(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 364
    .local v5, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 365
    .local v4, "taskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 366
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    .line 368
    .local v3, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v6, v3}, Lcom/android/systemui/recents/model/FilteredTaskList;->remove(Lcom/android/systemui/recents/model/Task;)Z

    .line 370
    iget-object v0, v3, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 371
    .local v0, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/model/TaskGrouping;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 372
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 373
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/model/TaskStack;->removeGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    .line 376
    :cond_0
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    .line 377
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v6, :cond_1

    .line 379
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    const/4 v7, 0x0

    invoke-interface {v6, p0, v3, v7}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)V

    .line 365
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v0    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v3    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v6, p1}, Lcom/android/systemui/recents/model/FilteredTaskList;->set(Ljava/util/List;)V

    .line 383
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    .line 384
    .restart local v3    # "t":Lcom/android/systemui/recents/model/Task;
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v6, :cond_3

    .line 385
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v6, p0, v3}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V

    goto :goto_1

    .line 388
    .end local v3    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 669
    const-string v1, "Tasks:\n"

    .line 670
    .local v1, "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 671
    .local v2, "t":Lcom/android/systemui/recents/model/Task;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 672
    goto :goto_0

    .line 673
    .end local v2    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_0
    return-object v1
.end method

.method public unfilterCoupledTask()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->removeCoupledTaskFilter()V

    .line 487
    return-void
.end method

.method public unfilterExcludeTask()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->removeExcludeFilter()V

    .line 534
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackExcludeUnfiltered(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 537
    :cond_0
    return-void
.end method

.method public unfilterTasks()V
    .locals 2

    .prologue
    .line 456
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 459
    .local v0, "oldStack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/FilteredTaskList;->removeFilter()V

    .line 460
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v1, p0, v0}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackUnfiltered(Lcom/android/systemui/recents/model/TaskStack;Ljava/util/ArrayList;)V

    .line 464
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v1, p0}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackExcludeUnfiltered(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 468
    :cond_0
    return-void
.end method
