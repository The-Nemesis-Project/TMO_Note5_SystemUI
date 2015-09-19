.class public Lcom/android/systemui/recent/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "Recents"

.field static mLock:Ljava/lang/Object;

.field static sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;


# instance fields
.field mBootCompleted:Z

.field mUseAlternateRecents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/recent/Recents;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mBootCompleted:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/Recents;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/Recents;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/Recents;->sendBroadcastSafely(Landroid/content/Intent;)V

    return-void
.end method

.method public static getRecentsComponent(Landroid/content/Context;Z)Lcom/android/systemui/recents/AlternateRecentsComponent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forceInitialize"    # Z

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/recent/Recents;->getRecentsComponent(Landroid/content/Context;ZZ)Lcom/android/systemui/recents/AlternateRecentsComponent;

    move-result-object v0

    return-object v0
.end method

.method public static getRecentsComponent(Landroid/content/Context;ZZ)Lcom/android/systemui/recents/AlternateRecentsComponent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forceInitialize"    # Z
    .param p2, "seperatedProcess"    # Z

    .prologue
    .line 64
    sget-object v1, Lcom/android/systemui/recent/Recents;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/AlternateRecentsComponent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    .line 67
    if-eqz p1, :cond_0

    .line 68
    sget-object v0, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onStart()V

    .line 71
    :cond_0
    if-eqz p2, :cond_1

    .line 72
    sget-object v0, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->initInSeperatedProcess()V

    .line 76
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    sget-object v0, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendBroadcastSafely(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mBootCompleted:Z

    if-nez v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private startActivitySafely(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "opts"    # Landroid/os/Bundle;

    .prologue
    .line 354
    iget-boolean v1, p0, Lcom/android/systemui/recent/Recents;->mBootCompleted:Z

    if-nez v1, :cond_0

    .line 360
    :goto_0
    return-void

    .line 356
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 3

    .prologue
    .line 303
    iget-boolean v1, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v1, :cond_0

    .line 304
    sget-object v1, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onCancelPreloadingRecents()V

    .line 313
    :goto_0
    return-void

    .line 306
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.CANCEL_PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recent.RecentsPreloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/Recents;->sendBroadcastSafely(Landroid/content/Intent;)V

    .line 311
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelPreloadingFirstTask()V

    goto :goto_0
.end method

.method public dismissHelpPopup()V
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->dismissHelpPopup()V

    .line 341
    :cond_0
    return-void
.end method

.method public hideRecents(ZZ)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 116
    iget-boolean v1, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v1, :cond_0

    .line 117
    sget-object v1, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onHideRecents(ZZ)V

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.action.CLOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/Recents;->sendBroadcastSafely(Landroid/content/Intent;)V

    .line 123
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelPreloadingFirstTask()V

    goto :goto_0
.end method

.method isUserSetupComplete()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 363
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onBootCompleted()V
    .locals 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onBootCompleted(Z)V

    .line 104
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mBootCompleted:Z

    .line 105
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v0, :cond_0

    .line 283
    sget-object v0, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 285
    :cond_0
    return-void
.end method

.method public preloadRecents()V
    .locals 3

    .prologue
    .line 289
    iget-boolean v1, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v1, :cond_0

    .line 290
    sget-object v1, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onPreloadRecents()V

    .line 299
    :goto_0
    return-void

    .line 292
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.action.PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recent.RecentsPreloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/Recents;->sendBroadcastSafely(Landroid/content/Intent;)V

    .line 297
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->preloadFirstTask()V

    goto :goto_0
.end method

.method public setCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/RecentsComponent$Callbacks;

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v0, :cond_0

    .line 332
    sget-object v0, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->setRecentsComponentCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V

    .line 334
    :cond_0
    return-void
.end method

.method public showNextAffiliatedTask()V
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v0, :cond_0

    .line 318
    sget-object v0, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onShowNextAffiliatedTask()V

    .line 320
    :cond_0
    return-void
.end method

.method public showPrevAffiliatedTask()V
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onShowPrevAffiliatedTask()V

    .line 327
    :cond_0
    return-void
.end method

.method public showRecents(ZLandroid/view/View;)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "statusBarView"    # Landroid/view/View;

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onShowRecents(Z)V

    .line 112
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    if-eqz v0, :cond_1

    .line 83
    sget-object v1, Lcom/android/systemui/recent/Recents;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/recent/Recents;->getRecentsComponent(Landroid/content/Context;Z)Lcom/android/systemui/recents/AlternateRecentsComponent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    .line 87
    :cond_0
    sget-object v0, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onStart()V

    .line 89
    sget-object v0, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->bindToRecentsService()V

    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_1
    const-class v0, Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/recent/Recents;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 95
    return-void

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toggleRecents(Landroid/view/Display;ILandroid/view/View;)V
    .locals 38
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "layoutDirection"    # I
    .param p3, "statusBarView"    # Landroid/view/View;

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/Recents;->mUseAlternateRecents:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1

    .line 131
    sget-object v34, Lcom/android/systemui/recent/Recents;->sAlternateRecents:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/recents/AlternateRecentsComponent;->onToggleRecents()V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/Recents;->isUserSetupComplete()Z

    move-result v34

    if-eqz v34, :cond_0

    .line 139
    const-string v34, "Recents"

    const-string v35, "toggle recents panel"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/recent/RecentTasksLoader;->getFirstTask()Lcom/android/systemui/recent/TaskDescription;

    move-result-object v13

    .line 143
    .local v13, "firstTask":Lcom/android/systemui/recent/TaskDescription;
    new-instance v15, Landroid/content/Intent;

    const-string v34, "com.android.systemui.recent.action.TOGGLE_RECENTS"

    move-object/from16 v0, v34

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v15, "intent":Landroid/content/Intent;
    const-string v34, "com.android.systemui"

    const-string v35, "com.android.systemui.recent.RecentsActivity"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const/high16 v34, 0x10800000

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    if-nez v13, :cond_3

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/systemui/recent/RecentsActivity;->forceOpaqueBackground(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const v35, 0x7f050068

    const v36, 0x7f050069

    invoke-static/range {v34 .. v36}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v18

    .line 154
    .local v18, "opts":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v35

    new-instance v36, Landroid/os/UserHandle;

    const/16 v37, -0x2

    invoke-direct/range {v36 .. v37}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    .end local v13    # "firstTask":Lcom/android/systemui/recent/TaskDescription;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v18    # "opts":Landroid/app/ActivityOptions;
    :catch_0
    move-exception v11

    .line 276
    .local v11, "e":Landroid/content/ActivityNotFoundException;
    const-string v34, "Recents"

    const-string v35, "Failed to launch RecentAppsIntent"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 158
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v13    # "firstTask":Lcom/android/systemui/recent/TaskDescription;
    .restart local v15    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    new-instance v35, Landroid/os/UserHandle;

    const/16 v36, -0x2

    invoke-direct/range {v35 .. v36}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 163
    :cond_3
    const/4 v12, 0x0

    .line 164
    .local v12, "first":Landroid/graphics/Bitmap;
    invoke-virtual {v13}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v34

    move-object/from16 v0, v34

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v34, v0

    if-eqz v34, :cond_4

    .line 165
    invoke-virtual {v13}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v34

    check-cast v34, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 171
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 173
    .local v23, "res":Landroid/content/res/Resources;
    const v34, 0x7f0c02ec

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v30, v0

    .line 175
    .local v30, "thumbWidth":F
    const v34, 0x7f0c02ed

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v27, v0

    .line 177
    .local v27, "thumbHeight":F
    if-nez v12, :cond_5

    .line 178
    new-instance v34, Ljava/lang/RuntimeException;

    const-string v35, "Recents thumbnail is null"

    invoke-direct/range {v34 .. v35}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 167
    .end local v23    # "res":Landroid/content/res/Resources;
    .end local v27    # "thumbHeight":F
    .end local v30    # "thumbWidth":F
    :cond_4
    const/16 v34, 0x1

    const/16 v35, 0x1

    sget-object v36, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v34 .. v36}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/recent/RecentTasksLoader;->getDefaultThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 169
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    new-instance v34, Landroid/graphics/Canvas;

    move-object/from16 v0, v34

    invoke-direct {v0, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 180
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v23    # "res":Landroid/content/res/Resources;
    .restart local v27    # "thumbHeight":F
    .restart local v30    # "thumbWidth":F
    :cond_5
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    cmpl-float v34, v34, v30

    if-nez v34, :cond_6

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    cmpl-float v34, v34, v27

    if-eqz v34, :cond_7

    .line 181
    :cond_6
    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v12, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 183
    if-nez v12, :cond_7

    .line 184
    new-instance v34, Ljava/lang/RuntimeException;

    const-string v35, "Recents thumbnail is null"

    invoke-direct/range {v34 .. v35}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 189
    :cond_7
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 190
    .local v10, "dm":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 193
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 196
    .local v6, "config":Landroid/content/res/Configuration;
    iget v0, v6, Landroid/content/res/Configuration;->orientation:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_9

    .line 197
    const v34, 0x7f0c02f7

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v4, v0

    .line 199
    .local v4, "appLabelLeftMargin":F
    const v34, 0x7f0c02f6

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v5, v0

    .line 201
    .local v5, "appLabelWidth":F
    const v34, 0x7f0c02f4

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v28, v0

    .line 203
    .local v28, "thumbLeftMargin":F
    const v34, 0x7f0c02ee

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v26, v0

    .line 206
    .local v26, "thumbBgPadding":F
    add-float v34, v4, v5

    add-float v34, v34, v28

    add-float v34, v34, v30

    const/high16 v35, 0x40000000    # 2.0f

    mul-float v35, v35, v26

    add-float v31, v34, v35

    .line 212
    .local v31, "width":F
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sub-float v34, v34, v31

    const/high16 v35, 0x40000000    # 2.0f

    div-float v34, v34, v35

    add-float v34, v34, v4

    add-float v34, v34, v5

    add-float v34, v34, v26

    add-float v34, v34, v28

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v32, v0

    .line 214
    .local v32, "x":I
    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v34, v0

    const v35, 0x7f0c02ed

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sub-float v34, v34, v26

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v33, v0

    .line 217
    .local v33, "y":I
    const/16 v34, 0x1

    move/from16 v0, p2

    move/from16 v1, v34

    if-ne v0, v1, :cond_8

    .line 218
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v34, v0

    sub-int v34, v34, v32

    const v35, 0x7f0c02ec

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    sub-int v32, v34, v35

    .line 261
    .end local v4    # "appLabelLeftMargin":F
    .end local v5    # "appLabelWidth":F
    .end local v28    # "thumbLeftMargin":F
    .end local v31    # "width":F
    :cond_8
    :goto_2
    new-instance v34, Lcom/android/systemui/recent/Recents$1;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/Recents$1;-><init>(Lcom/android/systemui/recent/Recents;)V

    move-object/from16 v0, p3

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v12, v1, v2, v3}, Landroid/app/ActivityOptions;->makeThumbnailScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v18

    .line 272
    .restart local v18    # "opts":Landroid/app/ActivityOptions;
    const-string v34, "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    invoke-virtual/range {v18 .. v18}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v15, v1}, Lcom/android/systemui/recent/Recents;->startActivitySafely(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 223
    .end local v18    # "opts":Landroid/app/ActivityOptions;
    .end local v26    # "thumbBgPadding":F
    .end local v32    # "x":I
    .end local v33    # "y":I
    :cond_9
    const v34, 0x7f0c050a

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v29, v0

    .line 225
    .local v29, "thumbTopMargin":F
    const v34, 0x7f0c02ee

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v26, v0

    .line 227
    .restart local v26    # "thumbBgPadding":F
    const v34, 0x7f0c02f5

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v25, v0

    .line 229
    .local v25, "textPadding":F
    const v34, 0x7f0c02ef

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v17, v0

    .line 231
    .local v17, "labelTextSize":F
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 232
    .local v19, "p":Landroid/graphics/Paint;
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 233
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v34, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v16, v0

    .line 235
    .local v16, "labelTextHeight":F
    const v34, 0x7f0c02f0

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v9, v0

    .line 237
    .local v9, "descriptionTextSize":F
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 238
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v34, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v8, v0

    .line 241
    .local v8, "descriptionTextHeight":F
    const v34, 0x1050011

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v24, v0

    .line 243
    .local v24, "statusBarHeight":F
    move/from16 v21, v24

    .line 245
    .local v21, "recentsItemTopPadding":F
    add-float v34, v29, v27

    const/high16 v35, 0x40000000    # 2.0f

    mul-float v35, v35, v26

    add-float v34, v34, v35

    add-float v34, v34, v25

    add-float v34, v34, v16

    add-float v34, v34, v21

    add-float v34, v34, v25

    add-float v14, v34, v8

    .line 249
    .local v14, "height":F
    const v34, 0x7f0c02f8

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v20, v0

    .line 251
    .local v20, "recentsItemRightPadding":F
    const v34, 0x7f0c02f3

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v22, v0

    .line 253
    .local v22, "recentsScrollViewRightPadding":F
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v34, v0

    const v35, 0x7f0c02ec

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    sub-int v34, v34, v35

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sub-float v34, v34, v26

    sub-float v34, v34, v20

    sub-float v34, v34, v22

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v32, v0

    .line 257
    .restart local v32    # "x":I
    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v34, v0
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    sub-float v34, v34, v24

    sub-float v34, v34, v14

    const/high16 v35, 0x40000000    # 2.0f

    div-float v34, v34, v35

    add-float v34, v34, v29

    add-float v34, v34, v21

    add-float v34, v34, v26

    add-float v34, v34, v24

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v33, v0

    .restart local v33    # "y":I
    goto/16 :goto_2
.end method
