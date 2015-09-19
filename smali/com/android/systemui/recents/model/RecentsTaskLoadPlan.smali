.class public Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    }
.end annotation


# static fields
.field static DEBUG:Z

.field static TAG:Ljava/lang/String;


# instance fields
.field mActivityInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$ComponentNameKey;",
            "Lcom/android/systemui/recents/model/ActivityInfoHandle;",
            ">;"
        }
    .end annotation
.end field

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mContext:Landroid/content/Context;

.field mRawTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field mStack:Lcom/android/systemui/recents/model/TaskStack;

.field mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "RecentsTaskLoadPlan"

    sput-object v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;
    .param p3, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    .line 82
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 84
    iput-object p3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 85
    return-void
.end method


# virtual methods
.method declared-synchronized executePlan(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/recents/model/RecentsTaskLoader;Lcom/android/systemui/recents/model/TaskResourceLoadQueue;)V
    .locals 18
    .param p1, "opts"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .param p2, "loader"    # Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .param p3, "loadQueue"    # Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executePlan, # tasks: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", # thumbnails: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", running task id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 238
    .local v5, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v17

    .line 239
    .local v17, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 240
    .local v16, "taskCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v10, v0, :cond_f

    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 242
    .local v14, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/Task;

    .line 243
    .local v15, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v2, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 246
    .local v2, "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponentNameKey()Lcom/android/systemui/recents/model/Task$ComponentNameKey;

    move-result-object v8

    .line 248
    .local v8, "cnKey":Lcom/android/systemui/recents/model/Task$ComponentNameKey;
    const/4 v9, 0x0

    .line 249
    .local v9, "hadCachedActivityInfo":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/model/ActivityInfoHandle;

    .line 251
    .local v6, "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    const/4 v9, 0x1

    .line 256
    :goto_1
    iget-object v1, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    if-ne v1, v3, :cond_3

    const/4 v11, 0x1

    .line 257
    .local v11, "isRunningTask":Z
    :goto_2
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    sub-int v1, v16, v1

    if-lt v10, v1, :cond_4

    const/4 v12, 0x1

    .line 258
    .local v12, "isVisibleTask":Z
    :goto_3
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    sub-int v1, v16, v1

    if-lt v10, v1, :cond_5

    const/4 v13, 0x1

    .line 261
    .local v13, "isVisibleThumbnail":Z
    :goto_4
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    if-eqz v1, :cond_6

    if-eqz v11, :cond_6

    .line 240
    :cond_1
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 253
    .end local v6    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    .end local v11    # "isRunningTask":Z
    .end local v12    # "isVisibleTask":Z
    .end local v13    # "isVisibleThumbnail":Z
    :cond_2
    new-instance v6, Lcom/android/systemui/recents/model/ActivityInfoHandle;

    invoke-direct {v6}, Lcom/android/systemui/recents/model/ActivityInfoHandle;-><init>()V

    .restart local v6    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    goto :goto_1

    .line 256
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 257
    .restart local v11    # "isRunningTask":Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    .line 258
    .restart local v12    # "isVisibleTask":Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_4

    .line 265
    .restart local v13    # "isVisibleThumbnail":Z
    :cond_6
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    if-eqz v1, :cond_9

    if-nez v11, :cond_7

    if-eqz v12, :cond_9

    .line 266
    :cond_7
    iget-object v1, v15, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_9

    .line 267
    sget-boolean v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tLoading icon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_8
    iget-object v3, v14, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    const/4 v7, 0x1

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;Lcom/android/systemui/recents/model/ActivityInfoHandle;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v15, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    .line 272
    :cond_9
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v1, :cond_d

    if-nez v11, :cond_a

    if-eqz v13, :cond_d

    .line 273
    :cond_a
    iget-object v1, v15, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_b

    if-eqz v11, :cond_d

    .line 274
    :cond_b
    sget-boolean v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tLoading thumbnail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v3, 0x1

    if-gt v1, v3, :cond_e

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v1, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v15, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 285
    :cond_d
    :goto_6
    if-nez v9, :cond_1

    iget-object v1, v6, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    .line 231
    .end local v2    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    .end local v8    # "cnKey":Lcom/android/systemui/recents/model/Task$ComponentNameKey;
    .end local v9    # "hadCachedActivityInfo":Z
    .end local v10    # "i":I
    .end local v11    # "isRunningTask":Z
    .end local v12    # "isVisibleTask":Z
    .end local v13    # "isVisibleThumbnail":Z
    .end local v14    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v16    # "taskCount":I
    .end local v17    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 278
    .restart local v2    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .restart local v5    # "res":Landroid/content/res/Resources;
    .restart local v6    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    .restart local v8    # "cnKey":Lcom/android/systemui/recents/model/Task$ComponentNameKey;
    .restart local v9    # "hadCachedActivityInfo":Z
    .restart local v10    # "i":I
    .restart local v11    # "isRunningTask":Z
    .restart local v12    # "isVisibleTask":Z
    .restart local v13    # "isVisibleThumbnail":Z
    .restart local v14    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v15    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v16    # "taskCount":I
    .restart local v17    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_d

    .line 279
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/recents/model/Task;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 289
    .end local v2    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .end local v6    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    .end local v8    # "cnKey":Lcom/android/systemui/recents/model/Task$ComponentNameKey;
    .end local v9    # "hadCachedActivityInfo":Z
    .end local v11    # "isRunningTask":Z
    .end local v12    # "isVisibleTask":Z
    .end local v13    # "isVisibleThumbnail":Z
    .end local v14    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_f
    monitor-exit p0

    return-void
.end method

.method public getSpaceNode()Lcom/android/systemui/recents/model/SpaceNode;
    .locals 2

    .prologue
    .line 304
    new-instance v0, Lcom/android/systemui/recents/model/SpaceNode;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/SpaceNode;-><init>()V

    .line 305
    .local v0, "node":Lcom/android/systemui/recents/model/SpaceNode;
    monitor-enter p0

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/SpaceNode;->setStack(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 307
    monitor-exit p0

    .line 308
    return-object v0

    .line 307
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTaskStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    .prologue
    .line 295
    monitor-enter p0

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    monitor-exit p0

    return-object v0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized preloadPlan(Lcom/android/systemui/recents/model/RecentsTaskLoader;ZIZ)V
    .locals 36
    .param p1, "loader"    # Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .param p2, "isTopTaskHome"    # Z
    .param p3, "displayId"    # I
    .param p4, "blockToGetPopupThumbnail"    # Z

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    const-string v4, "preloadPlan"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 116
    new-instance v3, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v3}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    .line 119
    .local v33, "res":Landroid/content/res/Resources;
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v32, "loadedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    if-nez v3, :cond_1

    .line 121
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 123
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v35

    .line 124
    .local v35, "taskCount":I
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_0
    move/from16 v0, v31

    move/from16 v1, v35

    if-ge v0, v1, :cond_b

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    move/from16 v0, v31

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 146
    .local v34, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v2, Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v34

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v34

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v34

    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, v34

    iget-wide v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    move-object/from16 v0, v34

    iget-wide v8, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/recents/model/Task$TaskKey;-><init>(ILandroid/content/Intent;IJJ)V

    .line 150
    .local v2, "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->setOrigActivity(Landroid/content/ComponentName;)V

    .line 154
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponentNameKey()Lcom/android/systemui/recents/model/Task$ComponentNameKey;

    move-result-object v28

    .line 156
    .local v28, "cnKey":Lcom/android/systemui/recents/model/Task$ComponentNameKey;
    const/16 v30, 0x0

    .line 157
    .local v30, "hadCachedActivityInfo":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/ActivityInfoHandle;

    .line 159
    .local v8, "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    const/16 v30, 0x1

    .line 165
    :goto_1
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v8}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityLabel(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/model/ActivityInfoHandle;)Ljava/lang/String;

    move-result-object v14

    .line 167
    .local v14, "activityLabel":Ljava/lang/String;
    move-object/from16 v0, v34

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object v4, v2

    move-object/from16 v7, v33

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;Lcom/android/systemui/recents/model/ActivityInfoHandle;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 169
    .local v15, "activityIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/RecentsConfiguration;)I

    move-result v16

    .line 171
    .local v16, "activityColor":I
    move/from16 v17, v16

    .line 172
    .local v17, "activityTextColor":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v8}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/android/systemui/recents/model/ActivityInfoHandle;)Landroid/content/pm/ActivityInfo;

    move-result-object v23

    .line 173
    .local v23, "activityInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v24

    .line 177
    .local v24, "isMultiWindowVisible":Z
    if-nez v30, :cond_2

    iget-object v3, v8, Lcom/android/systemui/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_2

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mActivityInfoCache:Ljava/util/HashMap;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_2
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v3, :cond_6

    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v20

    .line 184
    .local v20, "icon":Landroid/graphics/Bitmap;
    :goto_2
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v3, :cond_7

    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v21

    .line 189
    .local v21, "iconFilename":Ljava/lang/String;
    :goto_3
    new-instance v9, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v34

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    sget v4, Lcom/android/systemui/recents/model/RecentsTaskLoader;->INVALID_TASK_ID:I

    if-eq v3, v4, :cond_8

    const/4 v11, 0x1

    :goto_4
    move-object/from16 v0, v34

    iget v12, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    move-object/from16 v0, v34

    iget v13, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    add-int/lit8 v3, v35, -0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_9

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v3, Lcom/android/systemui/recents/RecentsConfiguration;->lockToAppEnabled:Z

    move/from16 v19, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v22, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isSecretMode:Z

    move/from16 v25, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->displayId:I

    move/from16 v26, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->dualScreenTaskInfo:Lcom/samsung/android/dualscreen/TaskInfo;

    move-object/from16 v27, v0

    move-object v10, v2

    invoke-direct/range {v9 .. v27}, Lcom/android/systemui/recents/model/Task;-><init>(Lcom/android/systemui/recents/model/Task$TaskKey;ZIILjava/lang/String;Landroid/graphics/drawable/Drawable;IIZZLandroid/graphics/Bitmap;Ljava/lang/String;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/content/pm/ActivityInfo;ZZILcom/samsung/android/dualscreen/TaskInfo;)V

    .line 197
    .local v9, "task":Lcom/android/systemui/recents/model/Task;
    const/16 v29, 0x0

    .line 198
    .local v29, "getForceThumbnail":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v35, -0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_3

    iget-object v3, v9, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v3, :cond_3

    iget-object v3, v9, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 201
    if-nez p4, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->isScreenOff:Z

    if-nez v3, :cond_a

    const/16 v29, 0x1

    .line 202
    :goto_6
    sget-object v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getForceThumbnail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v9, v3, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v9, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    .line 207
    sget-boolean v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tthumbnail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_4
    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_0

    .line 161
    .end local v8    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    .end local v9    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v14    # "activityLabel":Ljava/lang/String;
    .end local v15    # "activityIcon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "activityColor":I
    .end local v17    # "activityTextColor":I
    .end local v20    # "icon":Landroid/graphics/Bitmap;
    .end local v21    # "iconFilename":Ljava/lang/String;
    .end local v23    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "isMultiWindowVisible":Z
    .end local v29    # "getForceThumbnail":Z
    :cond_5
    new-instance v8, Lcom/android/systemui/recents/model/ActivityInfoHandle;

    invoke-direct {v8}, Lcom/android/systemui/recents/model/ActivityInfoHandle;-><init>()V

    .restart local v8    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    goto/16 :goto_1

    .line 181
    .restart local v14    # "activityLabel":Ljava/lang/String;
    .restart local v15    # "activityIcon":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "activityColor":I
    .restart local v17    # "activityTextColor":I
    .restart local v23    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v24    # "isMultiWindowVisible":Z
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 184
    .restart local v20    # "icon":Landroid/graphics/Bitmap;
    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 189
    .restart local v21    # "iconFilename":Ljava/lang/String;
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 201
    .restart local v9    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v29    # "getForceThumbnail":Z
    :cond_a
    const/16 v29, 0x0

    goto :goto_6

    .line 210
    .end local v2    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .end local v8    # "infoHandle":Lcom/android/systemui/recents/model/ActivityInfoHandle;
    .end local v9    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v14    # "activityLabel":Ljava/lang/String;
    .end local v15    # "activityIcon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "activityColor":I
    .end local v17    # "activityTextColor":I
    .end local v20    # "icon":Landroid/graphics/Bitmap;
    .end local v21    # "iconFilename":Ljava/lang/String;
    .end local v23    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "isMultiWindowVisible":Z
    .end local v28    # "cnKey":Lcom/android/systemui/recents/model/Task$ComponentNameKey;
    .end local v29    # "getForceThumbnail":Z
    .end local v30    # "hadCachedActivityInfo":Z
    .end local v34    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/model/TaskStack;->setTasks(Ljava/util/List;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/model/TaskStack;->createAffiliatedGroupings(Lcom/android/systemui/recents/RecentsConfiguration;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_c

    .line 221
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Loading failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v31    # "i":I
    .end local v32    # "loadedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .end local v33    # "res":Landroid/content/res/Resources;
    .end local v35    # "taskCount":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 224
    .restart local v31    # "i":I
    .restart local v32    # "loadedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .restart local v33    # "res":Landroid/content/res/Resources;
    .restart local v35    # "taskCount":I
    :cond_c
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized preloadRawTasks(Z)V
    .locals 4
    .param p1, "isTopTaskHome"    # Z

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->maxNumTasksToLoad:I

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZ)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    .line 95
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 103
    :goto_0
    sget-boolean v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preloadRawTasks, tasks: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    monitor-exit p0

    return-void

    .line 97
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v0

    .line 98
    .local v0, "maxNumTasks":I
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v0, v2, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZ)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    .line 100
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    .end local v0    # "maxNumTasks":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
