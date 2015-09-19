.class public Lcom/android/systemui/multiwindow/SplitRecentsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SplitRecentsFragment.java"

# interfaces
.implements Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;
.implements Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;
.implements Lcom/android/systemui/recents/views/DebugOverlayView$DebugOverlayViewCallbacks;
.implements Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;
    }
.end annotation


# static fields
.field public static final EDM_FALSE:I = 0x0

.field public static final EDM_NULL:I = -0x1

.field public static final EDM_TRUE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Recents_SplitRecentsFragment"

.field private static mStatusBarManager:Landroid/app/StatusBarManager;


# instance fields
.field private final SAVE_STATE_DUMMY_MODE:Ljava/lang/String;

.field emptyTextView:Landroid/widget/TextView;

.field private mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

.field private mAppListShadowDistance:F

.field private mAppListShadowOpacity:F

.field private mAppListStrokeOpacity:F

.field mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field mDebugOverlayStub:Landroid/view/ViewStub;

.field final mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

.field mEmptyView:Landroid/view/View;

.field mEmptyViewStub:Landroid/view/ViewStub;

.field mFinishLaunchHomeRunnable:Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsDummyMode:Z

.field mLastTabKeyEventTime:J

.field private mMainLayout:Landroid/view/View;

.field mNeedDarkFont:Z

.field mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

.field mSearchAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

.field mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field final mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSystemReceiverFlag:Z

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 122
    const-string v0, "dummy_mode"

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->SAVE_STATE_DUMMY_MODE:Ljava/lang/String;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mHandler:Landroid/os/Handler;

    .line 135
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mIsDummyMode:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSystemReceiverFlag:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mNeedDarkFont:Z

    .line 208
    new-instance v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$1;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 243
    new-instance v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$2;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 262
    new-instance v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$3;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 273
    new-instance v0, Lcom/android/systemui/recents/misc/DebugTrigger;

    new-instance v1, Lcom/android/systemui/multiwindow/SplitRecentsFragment$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$4;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/DebugTrigger;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 94
    invoke-static {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->notifyRecentPanelVisiblity(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/multiwindow/SplitRecentsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/SplitRecentsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    return-object v0
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1238
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1239
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1240
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1242
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1243
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    const/4 v0, 0x1

    .line 1250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1253
    :goto_0
    return v0

    .line 1246
    :cond_0
    const/4 v0, 0x0

    .line 1250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1248
    :catch_0
    move-exception v0

    .line 1250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1253
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1250
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static notifyRecentPanelVisiblity(Z)V
    .locals 2
    .param p0, "visible"    # Z

    .prologue
    .line 1103
    sget-object v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 1104
    sget-object v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, p0}, Landroid/app/StatusBarManager;->notifyRecentPanelVisiblity(Z)V

    .line 1108
    :goto_0
    return-void

    .line 1106
    :cond_0
    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "mStatusBarManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateStackByReload()V
    .locals 20

    .prologue
    .line 1179
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v8

    .line 1180
    .local v8, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    const/4 v9, 0x0

    .line 1181
    .local v9, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    if-nez v9, :cond_0

    .line 1182
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v9

    .line 1186
    :cond_0
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v17

    if-nez v17, :cond_1

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v9, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 1189
    :cond_1
    new-instance v7, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 1191
    .local v7, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v7, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 1196
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v9, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 1198
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getSpaceNode()Lcom/android/systemui/recents/model/SpaceNode;

    move-result-object v10

    .line 1201
    .local v10, "root":Lcom/android/systemui/recents/model/SpaceNode;
    invoke-virtual {v10}, Lcom/android/systemui/recents/model/SpaceNode;->getStacks()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    .line 1203
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v11, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "true"

    aput-object v18, v11, v17

    .line 1204
    .local v11, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "content://com.sec.knox.provider2/KioskMode"

    const-string v19, "isTaskManagerAllowed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v11}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1206
    .local v5, "isKioskMode":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_4

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_4

    .line 1216
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1217
    .local v15, "taskStackCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 1218
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v15, :cond_6

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/TaskStack;

    .line 1220
    .local v12, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v12}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v16

    .line 1221
    .local v16, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1222
    .local v14, "taskCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v14, :cond_3

    .line 1223
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/model/Task;

    .line 1224
    .local v13, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v0, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1225
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v13, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 1218
    .end local v13    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1209
    .end local v3    # "i":I
    .end local v6    # "j":I
    .end local v12    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v14    # "taskCount":I
    .end local v15    # "taskStackCount":I
    .end local v16    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Lcom/android/systemui/recents/model/SpaceNode;->getStacks()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/recents/views/RecentsView;->setTaskStacks(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1222
    .restart local v3    # "i":I
    .restart local v6    # "j":I
    .restart local v12    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v13    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v14    # "taskCount":I
    .restart local v15    # "taskStackCount":I
    .restart local v16    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1232
    .end local v3    # "i":I
    .end local v6    # "j":I
    .end local v12    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v13    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v14    # "taskCount":I
    .end local v16    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/TaskStack;

    .line 1233
    .restart local v12    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/systemui/recents/model/TaskStack;->filterSplitTasks(Z)V

    goto :goto_3

    .line 1235
    .end local v12    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_7
    return-void
.end method


# virtual methods
.method addSearchBarAppWidgetView()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method bindSearchBarAppWidget()V
    .locals 0

    .prologue
    .line 456
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 1061
    const-string v1, "Recents_SplitRecentsFragment"

    const-string v2, "dismiss is getting called "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->finishActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    :goto_0
    return-void

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Recents_SplitRecentsFragment"

    const-string v2, "Activity is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dismissRecentsToFocusedTaskOrHome(Z)Z
    .locals 7
    .param p1, "checkFilteredStackState"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 481
    const-string v4, "Recents_SplitRecentsFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dismissRecentsToFocusedTaskOrHome is getting called mVisible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mVisible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 484
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 486
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->unfilterFilteredStacks()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 503
    :cond_0
    :goto_0
    return v2

    .line 489
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->launchFocusedTask()Z

    move-result v4

    if-nez v4, :cond_0

    .line 491
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-eqz v4, :cond_2

    .line 492
    invoke-virtual {p0, v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->dismissRecentsToHomeRaw(Z)V

    goto :goto_0

    .line 496
    :cond_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 498
    .local v0, "launchedFromMW":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/RecentsView;->launchPreviousTask(Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 500
    invoke-virtual {p0, v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->dismissRecentsToHomeRaw(Z)V

    goto :goto_0

    .end local v0    # "launchedFromMW":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_3
    move v2, v3

    .line 503
    goto :goto_0
.end method

.method dismissRecentsToHome(Z)Z
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    .line 524
    const-string v1, "Recents_SplitRecentsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissRecentsToHome is getting called animated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 527
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->dismissRecentsToHomeRaw(Z)V

    .line 530
    const/4 v1, 0x1

    .line 532
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dismissRecentsToHomeRaw(Z)V
    .locals 5
    .param p1, "animated"    # Z

    .prologue
    const/4 v4, 0x0

    .line 509
    const-string v1, "Recents_SplitRecentsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissRecentsToHomeRaw is getting called animated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    if-eqz p1, :cond_0

    .line 512
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mFinishLaunchHomeRunnable:Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 514
    .local v0, "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 519
    .end local v0    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mFinishLaunchHomeRunnable:Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method inflateDebugOverlay()V
    .locals 0

    .prologue
    .line 679
    return-void
.end method

.method public onAllTaskViewsDismissed()V
    .locals 2

    .prologue
    .line 1046
    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onAllTaskViewsDismissed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mFinishLaunchHomeRunnable:Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;->run()V

    .line 1049
    return-void
.end method

.method public onAltTaskViewClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1028
    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onAltTaskViewClicked is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-static {v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->notifyRecentPanelVisiblity(Z)V

    .line 1031
    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mVisible:Z

    .line 1032
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 955
    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onBackPressed is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v0, :cond_0

    .line 963
    :goto_0
    return-void

    .line 962
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->dismissRecentsToFocusedTaskOrHome(Z)Z

    goto :goto_0
.end method

.method onConfigurationChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 692
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 695
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    .line 702
    :goto_0
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 703
    .local v0, "t":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 704
    return-void

    .line 698
    .end local v0    # "t":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 538
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 542
    const-string v4, "Recents_SplitRecentsFragment"

    const-string v5, "onCreate is getting called"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    iput-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .line 544
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    sput-object v4, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 547
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 548
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 549
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 552
    new-instance v4, Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/android/systemui/recents/Constants$Values$App;->AppWidgetHostId:I

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/recents/RecentsAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    .line 555
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 556
    .local v0, "appListShadowDistance":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c04cf

    invoke-virtual {v4, v5, v0, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 557
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListShadowDistance:F

    .line 559
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 560
    .local v1, "appListShadowOpacity":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c04d0

    invoke-virtual {v4, v5, v1, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 561
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListShadowOpacity:F

    .line 563
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 564
    .local v2, "appListStrokeOpacity":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c04ce

    invoke-virtual {v4, v5, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 565
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListStrokeOpacity:F

    .line 567
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 572
    const v5, 0x7f040086

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mMainLayout:Landroid/view/View;

    .line 573
    iput-object p3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 574
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mMainLayout:Landroid/view/View;

    new-instance v6, Lcom/android/systemui/multiwindow/SplitRecentsFragment$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$5;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 584
    if-eqz p3, :cond_0

    .line 585
    const-string v5, "dummy_mode"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mIsDummyMode:Z

    .line 593
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mMainLayout:Landroid/view/View;

    const v6, 0x7f0e0294

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 594
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/RecentsView;->setMultiWindowActivity(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V

    .line 596
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v5, p0}, Lcom/android/systemui/recents/views/RecentsView;->setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V

    .line 597
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v6, 0x700

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/RecentsView;->setSystemUiVisibility(I)V

    .line 605
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mMainLayout:Landroid/view/View;

    const v6, 0x7f0e0295

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyViewStub:Landroid/view/ViewStub;

    .line 606
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    invoke-virtual {p0, v5}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->updateNoRecentTaskViews(Z)Z

    .line 607
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mMainLayout:Landroid/view/View;

    const v6, 0x7f0e0296

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    iput-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugOverlayStub:Landroid/view/ViewStub;

    .line 608
    new-instance v5, Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/recents/views/SystemBarScrimViews;-><init>(Landroid/app/Activity;Lcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    .line 609
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/SystemUIApplication;

    const-class v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5, v6}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 611
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->inflateDebugOverlay()V

    .line 619
    iget-boolean v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mIsDummyMode:Z

    if-nez v5, :cond_1

    .line 622
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 626
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 630
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 631
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSystemReceiverFlag:Z

    .line 637
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_1
    :try_start_0
    const-string v5, "ambientRatio"

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/recents/misc/Utilities;->setShadowProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 646
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 647
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v5}, Lcom/android/systemui/recents/RecentsConfiguration;->updateOnConfigurationChange()V

    .line 648
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->onConfigurationChange()V

    .line 653
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-ltz v5, :cond_3

    .line 654
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 656
    .local v0, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v6, Lcom/android/systemui/multiwindow/SplitRecentsFragment$6;

    invoke-direct {v6, p0, v0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$6;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    .line 666
    .end local v0    # "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 667
    .local v4, "win":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 668
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 669
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 670
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 671
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 673
    iget-object v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mMainLayout:Landroid/view/View;

    return-object v5

    .line 638
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "win":Landroid/view/Window;
    :catch_0
    move-exception v1

    .line 639
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 640
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 641
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDebugModeTriggered()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 967
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    if-eqz v1, :cond_1

    .line 970
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 972
    .local v0, "settings":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 974
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 975
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 976
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->inflateDebugOverlay()V

    .line 977
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v1, :cond_0

    .line 978
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/DebugOverlayView;->disable()V

    .line 989
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug mode ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/recents/Constants$Values$App;->DebugModeVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v1, :cond_3

    const-string v1, "Enabled"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", please restart Recents now"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 993
    .end local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    return-void

    .line 982
    .restart local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 983
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v3, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 984
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->inflateDebugOverlay()V

    .line 985
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v1, :cond_0

    .line 986
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/DebugOverlayView;->enable()V

    goto :goto_0

    .line 989
    :cond_3
    const-string v1, "Disabled"

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 837
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 839
    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onDestroy is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mIsDummyMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSystemReceiverFlag:Z

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 846
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 849
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 853
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHost;->stopListening()V

    .line 854
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 829
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    .line 831
    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return-void
.end method

.method public onEnterAnimationTriggered()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 858
    new-instance v2, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 859
    .local v2, "t":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    new-instance v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 860
    .local v1, "ctx":Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/views/RecentsView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 861
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-ltz v3, :cond_0

    .line 862
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 865
    .local v0, "cbRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    iget-object v3, v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    new-instance v4, Lcom/android/systemui/multiwindow/SplitRecentsFragment$7;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$7;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 878
    .end local v0    # "cbRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startEnterRecentsAnimation()V

    .line 879
    return-void
.end method

.method public onExitToHomeAnimationTriggered()V
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startExitRecentsAnimation()V

    .line 1001
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 896
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v4, :cond_0

    .line 898
    sparse-switch p1, :sswitch_data_0

    .line 928
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/misc/DebugTrigger;->onKeyEvent(I)V

    .line 931
    :cond_1
    :goto_0
    return v2

    .line 900
    :sswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mLastTabKeyEventTime:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->altTabKeyDelay:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move v1, v2

    .line 902
    .local v1, "hasRepKeyTimeElapsed":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_2

    if-eqz v1, :cond_1

    .line 904
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    .line 905
    .local v0, "backward":Z
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-nez v0, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    .line 906
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mLastTabKeyEventTime:J

    goto :goto_0

    .end local v0    # "backward":Z
    .end local v1    # "hasRepKeyTimeElapsed":Z
    :cond_4
    move v1, v3

    .line 900
    goto :goto_1

    .line 911
    :sswitch_1
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 915
    :sswitch_2
    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 920
    :sswitch_3
    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->dismissFocusedTask()V

    goto :goto_0

    .line 898
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x3d -> :sswitch_0
        0x43 -> :sswitch_3
        0x70 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 788
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 789
    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onPause is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    .line 791
    return-void
.end method

.method public onPrimarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 1094
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 773
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 774
    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onResume is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ultra_powersaving_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 778
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    .line 783
    iput-boolean v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mVisible:Z

    .line 784
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 945
    const-string v0, "dummy_mode"

    iget-boolean v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mIsDummyMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 946
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 947
    return-void
.end method

.method public onScreenPinningRequest()V
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showScreenPinningRequest()V

    .line 1056
    :cond_0
    return-void
.end method

.method public onSecondarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 1099
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 722
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 724
    const-string v2, "Recents_SplitRecentsFragment"

    const-string v3, "Inside onStart()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 726
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    .line 733
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->bindSearchBarAppWidget()V

    .line 737
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v2, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->registerCallbacks(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;)V

    .line 740
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 747
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-boolean v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mIsDummyMode:Z

    if-nez v2, :cond_0

    .line 750
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 751
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "action_hide_recents_activity"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 752
    const-string v2, "action_toggle_recents_activity"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 753
    const-string v2, "action_start_enter_animation"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 754
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 757
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->registerReceivers(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    .line 761
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->updateRecentsTasks(Landroid/content/Intent;)V

    .line 765
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    if-eqz v2, :cond_1

    .line 766
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->onEnterAnimationTriggered()V

    .line 768
    :cond_1
    return-void

    .line 728
    .end local v1    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 796
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 798
    const-string v1, "Recents_SplitRecentsFragment"

    const-string v2, "onStop is getting called "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 808
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->onRecentsHidden()V

    .line 810
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/recents/RecentsConfiguration;->doNotDrawTaskViewHeader:Z

    .line 816
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v1, p0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->unregisterCallbacks(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$FragmentUpdateCallbacks;)V

    .line 821
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mIsDummyMode:Z

    if-nez v1, :cond_1

    .line 823
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unregisterReceivers()V

    .line 824
    :cond_1
    return-void
.end method

.method public onTaskLaunchFailed()V
    .locals 0

    .prologue
    .line 1041
    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V
    .locals 4
    .param p1, "tv"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v2, 0x0

    .line 1007
    const-string v0, "Recents_SplitRecentsFragment"

    const-string v1, "onTaskViewClicked is getting called "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-static {v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->notifyRecentPanelVisiblity(Z)V

    .line 1010
    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mVisible:Z

    .line 1011
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/multiwindow/SplitRecentsFragment$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$8;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1022
    return-void
.end method

.method public onTaskViewFocusSwitched(IZ)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "onlyFocusChange"    # Z

    .prologue
    .line 1078
    return-void
.end method

.method public onTaskViewMoved()V
    .locals 0

    .prologue
    .line 1074
    return-void
.end method

.method public refreshSearchWidget()V
    .locals 0

    .prologue
    .line 1085
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->bindSearchBarAppWidget()V

    .line 1086
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->addSearchBarAppWidgetView()V

    .line 1087
    return-void
.end method

.method public updateNoRecentTaskViews(Z)Z
    .locals 8
    .param p1, "noRecentTasks"    # Z

    .prologue
    const/high16 v4, -0x1000000

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1142
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    :cond_0
    move v6, v7

    .line 1173
    :goto_0
    return v6

    .line 1145
    :cond_1
    if-eqz p1, :cond_5

    .line 1146
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1147
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    .line 1149
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0e02b5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->emptyTextView:Landroid/widget/TextView;

    .line 1150
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "need_dark_font"

    invoke-static {v0, v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_3

    move v0, v6

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mNeedDarkFont:Z

    .line 1152
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mNeedDarkFont:Z

    if-eqz v0, :cond_4

    .line 1153
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a00c7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1154
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->emptyTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    iget v4, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListStrokeOpacity:F

    invoke-virtual {v0, v3, v2, v4}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 1155
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->emptyTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListShadowDistance:F

    const/4 v4, -0x1

    iget v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListShadowOpacity:F

    sub-float v5, v3, v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    .line 1161
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v7

    .line 1150
    goto :goto_1

    .line 1157
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->emptyTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListStrokeOpacity:F

    invoke-virtual {v0, v3, v4, v2}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 1158
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->emptyTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListShadowDistance:F

    iget v5, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mAppListShadowOpacity:F

    sub-float v5, v3, v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    goto :goto_2

    .line 1164
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->hasSearchBar()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1168
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, v7}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    goto/16 :goto_0

    .line 1170
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->addSearchBarAppWidgetView()V

    goto/16 :goto_0
.end method

.method updateRecentsTasks(Landroid/content/Intent;)V
    .locals 32
    .param p1, "launchIntent"    # Landroid/content/Intent;

    .prologue
    .line 283
    const-string v28, "Recents_SplitRecentsFragment"

    const-string v29, "updateRecentsTasks is getting called"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v28, "recents.triggeredOverSearchHome"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 288
    .local v4, "fromSearchHome":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v29, v0

    if-nez v4, :cond_0

    const-string v28, "recents.triggeredOverHome"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    if-eqz v28, :cond_5

    :cond_0
    const/16 v28, 0x1

    :goto_0
    move/from16 v0, v28

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    const-string v29, "recents.animatingWithThumbnail"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    const-string v29, "recents.activeTaskId"

    const/16 v30, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    const-string v29, "recents.triggeredFromAltTab"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    .line 300
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v14

    .line 301
    .local v14, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    const/16 v16, 0x0

    .line 302
    .local v16, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    if-nez v16, :cond_1

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v16

    .line 307
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v28

    if-nez v28, :cond_2

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    move/from16 v28, v0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 310
    :cond_2
    new-instance v13, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v13}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 312
    .local v13, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    const/16 v28, 0x0

    move/from16 v0, v28

    iput-boolean v0, v13, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v13, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v13, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v13, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 319
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getSpaceNode()Lcom/android/systemui/recents/model/SpaceNode;

    move-result-object v17

    .line 321
    .local v17, "root":Lcom/android/systemui/recents/model/SpaceNode;
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    .line 322
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/SpaceNode;->getStacks()Ljava/util/ArrayList;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    .line 324
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/SpaceNode;->hasTasks()Z

    move-result v5

    .line 326
    .local v5, "hasTasks":Z
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v28, 0x0

    const-string v29, "true"

    aput-object v29, v19, v28

    .line 327
    .local v19, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v28

    const-string v29, "content://com.sec.knox.provider2/KioskMode"

    const-string v30, "isTaskManagerAllowed"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 329
    .local v11, "isKioskMode":I
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v11, v0, :cond_6

    const/16 v28, 0x1

    move/from16 v0, v28

    if-eq v11, v0, :cond_6

    .line 337
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v29, v0

    if-nez v5, :cond_7

    const/16 v28, 0x1

    :goto_2
    move/from16 v0, v28

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    .line 340
    new-instance v6, Landroid/content/Intent;

    const-string v28, "android.intent.action.MAIN"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 341
    .local v6, "homeIntent":Landroid/content/Intent;
    const-string v28, "android.intent.category.HOME"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const/high16 v28, 0x10200000

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 344
    new-instance v30, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    const v28, 0x7f050077

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    move/from16 v29, v0

    if-eqz v29, :cond_9

    const v29, 0x7f050078

    :goto_4
    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v28

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v6, v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;-><init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mFinishLaunchHomeRunnable:Lcom/android/systemui/multiwindow/SplitRecentsFragment$FinishRecentsRunnable;

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 353
    .local v25, "taskStackCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    .line 354
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    move/from16 v0, v25

    if-ge v7, v0, :cond_b

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recents/model/TaskStack;

    .line 356
    .local v20, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v26

    .line 357
    .local v26, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 358
    .local v24, "taskCount":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_6
    move/from16 v0, v24

    if-ge v12, v0, :cond_4

    .line 359
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/recents/model/Task;

    .line 360
    .local v21, "t":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 361
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 354
    .end local v21    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 288
    .end local v5    # "hasTasks":Z
    .end local v6    # "homeIntent":Landroid/content/Intent;
    .end local v7    # "i":I
    .end local v11    # "isKioskMode":I
    .end local v12    # "j":I
    .end local v13    # "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .end local v14    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .end local v16    # "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .end local v17    # "root":Lcom/android/systemui/recents/model/SpaceNode;
    .end local v19    # "selectionArgs":[Ljava/lang/String;
    .end local v20    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v24    # "taskCount":I
    .end local v25    # "taskStackCount":I
    .end local v26    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_5
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 332
    .restart local v5    # "hasTasks":Z
    .restart local v11    # "isKioskMode":I
    .restart local v13    # "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .restart local v14    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .restart local v16    # "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .restart local v17    # "root":Lcom/android/systemui/recents/model/SpaceNode;
    .restart local v19    # "selectionArgs":[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_3

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v28, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/SpaceNode;->getStacks()Ljava/util/ArrayList;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/recents/views/RecentsView;->setTaskStacks(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 337
    :cond_7
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 344
    .restart local v6    # "homeIntent":Landroid/content/Intent;
    :cond_8
    const v28, 0x7f050073

    goto/16 :goto_3

    :cond_9
    const v29, 0x7f050075

    goto/16 :goto_4

    .line 358
    .restart local v7    # "i":I
    .restart local v12    # "j":I
    .restart local v20    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v21    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v24    # "taskCount":I
    .restart local v25    # "taskStackCount":I
    .restart local v26    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 386
    .end local v7    # "i":I
    .end local v12    # "j":I
    .end local v20    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v21    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v24    # "taskCount":I
    .end local v26    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v28

    const-string v29, "multiwindow_facade"

    invoke-virtual/range {v28 .. v29}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/16 v29, 0xa

    const/16 v30, 0x7

    invoke-virtual/range {v28 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v18

    .line 389
    .local v18, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v22, 0x0

    .line 390
    .local v22, "targetTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recents/model/TaskStack;

    .line 391
    .restart local v20    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v26

    .line 392
    .restart local v26    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/recents/model/Task;

    .line 393
    .local v23, "task":Lcom/android/systemui/recents/model/Task;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 394
    .local v27, "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v28

    if-eqz v28, :cond_d

    move-object/from16 v0, v27

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v28, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    .line 396
    move-object/from16 v22, v23

    .line 397
    const/16 v28, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/model/TaskStack;->filterExcludeTask(Lcom/android/systemui/recents/model/Task;Z)V

    .line 401
    .end local v27    # "tinfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_e
    if-eqz v22, :cond_c

    .line 403
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v23    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_f
    const/16 v22, 0x0

    .line 404
    goto :goto_7

    .line 406
    .end local v20    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v26    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_10
    const/4 v15, 0x1

    .line 407
    .local v15, "noRecentTasks":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recents/model/TaskStack;

    .line 408
    .restart local v20    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    const/16 v28, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->filterSplitTasks(Z)V

    .line 409
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-eqz v28, :cond_11

    .line 410
    const/4 v15, 0x0

    goto :goto_8

    .line 414
    .end local v20    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->updateNoRecentTaskViews(Z)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-boolean v15, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    .line 422
    :cond_13
    return-void
.end method

.method public updateSelectedPackageName(Landroid/util/Pair;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1114
    .local p1, "selectedPackageInfoPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->updateStackByReload()V

    .line 1116
    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskStack;

    .line 1117
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    iget-object v6, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_1

    iget-object v6, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1118
    :cond_1
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->unfilterExcludeTask()V

    goto :goto_0

    .line 1121
    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 1122
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    .line 1123
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v6, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v7, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v6, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v7, v6, :cond_3

    .line 1124
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/android/systemui/recents/model/TaskStack;->filterExcludeTask(Lcom/android/systemui/recents/model/Task;Z)V

    goto :goto_0

    .line 1129
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v5    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_4
    const/4 v2, 0x1

    .line 1130
    .local v2, "noRecentTasks":Z
    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskStack;

    .line 1131
    .restart local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_5

    .line 1132
    const/4 v2, 0x0

    goto :goto_1

    .line 1136
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->updateNoRecentTaskViews(Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1137
    iget-object v6, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v6, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    .line 1139
    :cond_7
    return-void
.end method
