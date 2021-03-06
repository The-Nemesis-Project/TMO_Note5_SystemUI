.class public Lcom/android/systemui/recents/views/RecentsView;
.super Landroid/widget/FrameLayout;
.source "RecentsView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;
.implements Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;
    }
.end annotation


# instance fields
.field private TW_TAG:Ljava/lang/String;

.field private mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

.field mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

.field mCloseAllButton:Landroid/view/View;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field private mFinishActivity:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mSearchBar:Landroid/view/View;

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 71
    const-string v0, "Recents_RecentsView"

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->TW_TAG:Ljava/lang/String;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllButton:Landroid/view/View;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    const-string v0, "Recents_RecentsView"

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->TW_TAG:Ljava/lang/String;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllButton:Landroid/view/View;

    .line 121
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mInflater:Landroid/view/LayoutInflater;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;
    .param p1, "x1"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "x2"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/views/RecentsView;->insertLogPair(Lcom/android/systemui/recents/model/Task;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/views/RecentsView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    return v0
.end method

.method private insertLogPair(Lcom/android/systemui/recents/model/Task;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 7
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 782
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    if-nez v2, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 786
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    const-string v3, "RCSV"

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 788
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 789
    new-array v1, v6, [Ljava/lang/String;

    .line 790
    .local v1, "features":[Ljava/lang/String;
    new-array v0, v6, [Ljava/lang/String;

    .line 792
    .local v0, "extras":[Ljava/lang/String;
    const-string v2, "RCSV"

    aput-object v2, v1, v4

    .line 793
    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 795
    const-string v2, "SPLW"

    aput-object v2, v1, v5

    .line 796
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSelectedAppPackageInfo()Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 798
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertMultipleStatusLog(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;[J)V

    goto :goto_0
.end method

.method private sendDiagnosticLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 1061
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1062
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    if-eqz p2, :cond_0

    .line 1065
    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1069
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1070
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1072
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1075
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->dismiss()V

    .line 999
    return-void
.end method

.method public dismissFocusedTask()V
    .locals 5

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 519
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 520
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 521
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_1

    move-object v3, v0

    .line 522
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 523
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->dismissFocusedTask()V

    .line 527
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    return-void

    .line 519
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public focusNextTask(Z)V
    .locals 5
    .param p1, "forward"    # Z

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 494
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 495
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 496
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_1

    .line 498
    instance-of v4, v0, Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v4, :cond_0

    move-object v3, v0

    .line 500
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 503
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZ)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllButton:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 505
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 506
    iget-object v4, v3, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    iput v4, v3, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 513
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    return-void

    .line 494
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public hasFocusTask()Z
    .locals 6

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 476
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 477
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 478
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    .line 479
    instance-of v4, v0, Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v4, :cond_1

    move-object v3, v0

    .line 480
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 481
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    iget v4, v3, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    .line 486
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :goto_1
    return v4

    .line 476
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 486
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public hasSearchBar()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCascadeRunning()Z
    .locals 11

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 1017
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1018
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1019
    .local v0, "child":Landroid/view/View;
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v10, :cond_1

    move-object v6, v0

    .line 1020
    check-cast v6, Lcom/android/systemui/recents/views/TaskStackView;

    .line 1021
    .local v6, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    iget-object v5, v6, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 1022
    .local v5, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 1025
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1026
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1027
    .local v8, "taskCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v8, :cond_1

    .line 1028
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/model/Task;

    iget-boolean v10, v10, Lcom/android/systemui/recents/model/Task;->isActive:Z

    if-eqz v10, :cond_0

    .line 1029
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/model/Task;

    .line 1030
    .local v7, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v7}, Lcom/android/systemui/recents/model/Task;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 1031
    .local v4, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1033
    const/4 v10, 0x1

    .line 1040
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "j":I
    .end local v4    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v5    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v6    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v7    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "taskCount":I
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :goto_2
    return v10

    .line 1027
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "j":I
    .restart local v5    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v6    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .restart local v8    # "taskCount":I
    .restart local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1017
    .end local v3    # "j":I
    .end local v5    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v6    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v8    # "taskCount":I
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1040
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public launchFocusedTask()Z
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v8

    .line 235
    .local v8, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_0

    .line 236
    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 237
    .local v7, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v7, v0, :cond_2

    move-object v1, v7

    .line 238
    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    .line 239
    .local v1, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    iget-object v3, v1, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 241
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v11

    .line 242
    .local v11, "taskCount":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v11, :cond_2

    .line 243
    invoke-virtual {v1, v10}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 244
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    .line 245
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move v6, v5

    .line 246
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZ)V

    .line 247
    const/4 v5, 0x1

    .line 252
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v7    # "child":Landroid/view/View;
    .end local v10    # "j":I
    .end local v11    # "taskCount":I
    :cond_0
    return v5

    .line 242
    .restart local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .restart local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v7    # "child":Landroid/view/View;
    .restart local v10    # "j":I
    .restart local v11    # "taskCount":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 235
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v10    # "j":I
    .end local v11    # "taskCount":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public launchPreviousTask(Ljava/util/concurrent/atomic/AtomicBoolean;)Z
    .locals 14
    .param p1, "launchedFromMW"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v8

    .line 259
    .local v8, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_5

    .line 260
    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 261
    .local v7, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v7, v0, :cond_4

    move-object v1, v7

    .line 262
    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    .line 263
    .local v1, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    iget-object v3, v1, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 264
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v13

    .line 267
    .local v13, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 268
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 269
    .local v12, "taskCount":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v12, :cond_4

    .line 270
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v0, :cond_3

    .line 271
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    .line 272
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v1, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    .line 275
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    .line 276
    .local v11, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/RecentsView;->onAltTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V

    .line 278
    if-eqz p1, :cond_1

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 289
    :cond_1
    :goto_2
    const/4 v0, 0x1

    .line 295
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v7    # "child":Landroid/view/View;
    .end local v10    # "j":I
    .end local v11    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v12    # "taskCount":I
    .end local v13    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :goto_3
    return v0

    .line 282
    .restart local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .restart local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v7    # "child":Landroid/view/View;
    .restart local v10    # "j":I
    .restart local v11    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v12    # "taskCount":I
    .restart local v13    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZ)V

    goto :goto_2

    .line 269
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v11    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 259
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v10    # "j":I
    .end local v12    # "taskCount":I
    .end local v13    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 295
    .end local v7    # "child":Landroid/view/View;
    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public onAllTaskViewsDismissed()V
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onAllTaskViewsDismissed()V

    .line 953
    return-void
.end method

.method public onAltTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V
    .locals 24
    .param p1, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p2, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p4, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p5, "lockToTask"    # Z

    .prologue
    .line 808
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v7, :cond_0

    .line 809
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v7}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onAltTaskViewClicked()V

    .line 813
    :cond_0
    new-instance v23, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct/range {v23 .. v23}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 815
    .local v23, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v5, 0x0

    .line 816
    .local v5, "offsetX":I
    const/4 v6, 0x0

    .line 817
    .local v6, "offsetY":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v22

    .line 818
    .local v22, "stackScroll":F
    if-nez p2, :cond_4

    .line 822
    move-object/from16 v3, p1

    .line 823
    .local v3, "sourceView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2, v8}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v23

    .line 824
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->left:I

    .line 825
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 832
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v14

    .line 834
    .local v14, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/16 v20, 0x0

    .line 835
    .local v20, "opts":Landroid/app/ActivityOptions;
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-lez v7, :cond_3

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-lez v7, :cond_3

    .line 838
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-eqz v7, :cond_5

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v7

    if-lez v7, :cond_5

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v7

    if-lez v7, :cond_5

    .line 842
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 843
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->unsetFocusedTask()V

    .line 846
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v21

    .line 847
    .local v21, "scale":F
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v21

    float-to-int v0, v7

    move/from16 v19, v0

    .line 848
    .local v19, "fromHeaderWidth":I
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v21

    float-to-int v0, v7

    move/from16 v18, v0

    .line 849
    .local v18, "fromHeaderHeight":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 854
    .local v4, "b":Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 855
    .local v17, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 856
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 857
    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 863
    .end local v17    # "c":Landroid/graphics/Canvas;
    .end local v18    # "fromHeaderHeight":I
    .end local v19    # "fromHeaderWidth":I
    .end local v21    # "scale":F
    :goto_1
    const/4 v10, 0x0

    .line 864
    .local v10, "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    if-eqz p5, :cond_2

    .line 865
    new-instance v10, Lcom/android/systemui/recents/views/RecentsView$4;

    .end local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/systemui/recents/views/RecentsView$4;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    .line 881
    .restart local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_2
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-static/range {v3 .. v10}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v20

    .line 886
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_3
    move-object/from16 v15, v20

    .line 887
    .local v15, "launchOpts":Landroid/app/ActivityOptions;
    new-instance v11, Lcom/android/systemui/recents/views/RecentsView$5;

    move-object/from16 v12, p0

    move-object/from16 v13, p4

    move/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/recents/views/RecentsView$5;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/app/ActivityOptions;Z)V

    .line 912
    .local v11, "launchRunnable":Ljava/lang/Runnable;
    if-nez p2, :cond_6

    .line 913
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    .line 925
    :goto_2
    return-void

    .line 827
    .end local v3    # "sourceView":Landroid/view/View;
    .end local v11    # "launchRunnable":Ljava/lang/Runnable;
    .end local v14    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v15    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v20    # "opts":Landroid/app/ActivityOptions;
    :cond_4
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    .line 828
    .restart local v3    # "sourceView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2, v8}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v23

    goto/16 :goto_0

    .line 861
    .restart local v14    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .restart local v20    # "opts":Landroid/app/ActivityOptions;
    :cond_5
    const/4 v7, 0x1

    const/4 v8, 0x1

    sget-object v9, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .restart local v4    # "b":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 915
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .restart local v11    # "launchRunnable":Ljava/lang/Runnable;
    .restart local v15    # "launchOpts":Landroid/app/ActivityOptions;
    :cond_6
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v7, :cond_7

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 918
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/systemui/recents/views/TaskStackView;->startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Z)V

    goto :goto_2

    .line 921
    :cond_7
    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/systemui/recents/views/TaskStackView;->startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Z)V

    .line 922
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->updateSystemInsets(Landroid/graphics/Rect;)V

    .line 451
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    .line 452
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public onChangeMultiwindowEnabled()V
    .locals 8

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 128
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 129
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, "child":Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v7, :cond_0

    move-object v4, v0

    .line 131
    check-cast v4, Lcom/android/systemui/recents/views/TaskStackView;

    .line 132
    .local v4, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v5

    .line 133
    .local v5, "taskCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 134
    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskView;

    .line 135
    .local v6, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 128
    .end local v3    # "j":I
    .end local v4    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v5    # "taskCount":I
    .end local v6    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 427
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 428
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 429
    .local v3, "searchBarSpaceBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 431
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 437
    .end local v3    # "searchBarSpaceBounds":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 438
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 439
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 440
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 441
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {v0, p2, p3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 438
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 389
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 390
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 393
    .local v2, "height":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 394
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 395
    .local v9, "searchBarSpaceBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 396
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 401
    .end local v9    # "searchBarSpaceBounds":Landroid/graphics/Rect;
    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 402
    .local v5, "taskStackBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/RecentsConfiguration;->getTaskStackBounds(IIIILandroid/graphics/Rect;)V

    .line 407
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v7

    .line 408
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 409
    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 410
    .local v6, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v6, v0, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    move-object v10, v6

    .line 411
    check-cast v10, Lcom/android/systemui/recents/views/TaskStackView;

    .line 413
    .local v10, "tsv":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v10, v5}, Lcom/android/systemui/recents/views/TaskStackView;->setStackInsetRect(Landroid/graphics/Rect;)V

    .line 414
    invoke-virtual {v10, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->measure(II)V

    .line 408
    .end local v10    # "tsv":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 418
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->setMeasuredDimension(II)V

    .line 419
    return-void
.end method

.method public onPackagesChanged(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V
    .locals 5
    .param p1, "monitor"    # Lcom/android/systemui/recents/model/RecentsPackageMonitor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1049
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 1050
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1051
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1052
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 1053
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 1054
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->onPackagesChanged(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    .line 1050
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1057
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onRecentsHidden()V
    .locals 5

    .prologue
    .line 958
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 959
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 960
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 961
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 962
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 963
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->onRecentsHidden()V

    .line 959
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 966
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onTaskStackFilterTriggered()V
    .locals 4

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->filteringCurrentViewsAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 980
    :cond_0
    return-void
.end method

.method public onTaskStackUnfilterTriggered()V
    .locals 4

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->filteringNewViewsAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 994
    :cond_0
    return-void
.end method

.method public onTaskViewAppInfoClicked(Lcom/android/systemui/recents/model/Task;)V
    .locals 6
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v5, 0x0

    .line 930
    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 931
    .local v0, "baseIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 933
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 934
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v5, v3}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 937
    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZ)V
    .locals 32
    .param p1, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p2, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p4, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p5, "lockToTask"    # Z
    .param p6, "toSplit"    # Z

    .prologue
    .line 553
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsConfiguration;->showOnlySplitTask()Z

    move-result v7

    if-nez v7, :cond_0

    .line 555
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    :goto_0
    invoke-interface {v8, v7}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V

    .line 559
    :cond_0
    new-instance v31, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct/range {v31 .. v31}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 561
    .local v31, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v5, 0x0

    .line 562
    .local v5, "offsetX":I
    const/4 v6, 0x0

    .line 563
    .local v6, "offsetY":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v30

    .line 564
    .local v30, "stackScroll":F
    if-nez p2, :cond_7

    .line 568
    move-object/from16 v3, p1

    .line 569
    .local v3, "sourceView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v7, v0, v1, v2, v8}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v31

    .line 570
    move-object/from16 v0, v31

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->left:I

    .line 571
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 578
    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v14

    .line 580
    .local v14, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/16 v28, 0x0

    .line 581
    .local v28, "opts":Landroid/app/ActivityOptions;
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-lez v7, :cond_3

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-lez v7, :cond_3

    .line 584
    if-eqz p2, :cond_8

    .line 586
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 587
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->unsetFocusedTask()V

    .line 590
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v29

    .line 591
    .local v29, "scale":F
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v29

    float-to-int v0, v7

    move/from16 v27, v0

    .line 592
    .local v27, "fromHeaderWidth":I
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v29

    float-to-int v0, v7

    move/from16 v26, v0

    .line 593
    .local v26, "fromHeaderHeight":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 598
    .local v4, "b":Landroid/graphics/Bitmap;
    new-instance v25, Landroid/graphics/Canvas;

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 599
    .local v25, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 600
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 601
    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 607
    .end local v25    # "c":Landroid/graphics/Canvas;
    .end local v26    # "fromHeaderHeight":I
    .end local v27    # "fromHeaderWidth":I
    .end local v29    # "scale":F
    :goto_2
    const/4 v10, 0x0

    .line 608
    .local v10, "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    if-eqz p5, :cond_2

    .line 609
    new-instance v10, Lcom/android/systemui/recents/views/RecentsView$1;

    .end local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/systemui/recents/views/RecentsView$1;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    .line 630
    .restart local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_2
    move-object/from16 v0, v31

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-static/range {v3 .. v10}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v28

    .line 635
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_3
    move-object/from16 v17, v28

    .line 637
    .local v17, "launchOpts":Landroid/app/ActivityOptions;
    new-instance v15, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 639
    .local v15, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    .line 640
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    if-eqz v7, :cond_a

    .line 641
    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 642
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v7}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 643
    const/16 v7, 0xc

    invoke-virtual {v15, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 660
    :cond_4
    :goto_3
    new-instance v11, Lcom/android/systemui/recents/views/RecentsView$2;

    move-object/from16 v12, p0

    move-object/from16 v13, p4

    move/from16 v16, p5

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/recents/views/RecentsView$2;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZLandroid/app/ActivityOptions;)V

    .line 738
    .local v11, "launchRunnable":Ljava/lang/Runnable;
    new-instance v18, Lcom/android/systemui/recents/views/RecentsView$3;

    move-object/from16 v19, p0

    move-object/from16 v20, p2

    move-object/from16 v21, v11

    move-object/from16 v22, p4

    move-object/from16 v23, p1

    move/from16 v24, p5

    invoke-direct/range {v18 .. v24}, Lcom/android/systemui/recents/views/RecentsView$3;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Z)V

    .line 768
    .local v18, "launch":Ljava/lang/Runnable;
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    .line 774
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsConfiguration;->showOnlySplitTask()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 776
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz p2, :cond_c

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    :goto_4
    invoke-interface {v8, v7}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V

    .line 779
    :cond_5
    return-void

    .line 555
    .end local v3    # "sourceView":Landroid/view/View;
    .end local v5    # "offsetX":I
    .end local v6    # "offsetY":I
    .end local v11    # "launchRunnable":Ljava/lang/Runnable;
    .end local v14    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v15    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v17    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v18    # "launch":Ljava/lang/Runnable;
    .end local v28    # "opts":Landroid/app/ActivityOptions;
    .end local v30    # "stackScroll":F
    .end local v31    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 573
    .restart local v5    # "offsetX":I
    .restart local v6    # "offsetY":I
    .restart local v30    # "stackScroll":F
    .restart local v31    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_7
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    .line 574
    .restart local v3    # "sourceView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v7, v0, v1, v2, v8}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v31

    goto/16 :goto_1

    .line 605
    .restart local v14    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .restart local v28    # "opts":Landroid/app/ActivityOptions;
    :cond_8
    const/4 v7, 0x1

    const/4 v8, 0x1

    sget-object v9, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .restart local v4    # "b":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 645
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .restart local v15    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v17    # "launchOpts":Landroid/app/ActivityOptions;
    :cond_9
    const/4 v7, 0x3

    invoke-virtual {v15, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 646
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    goto :goto_3

    .line 648
    :cond_a
    if-eqz p6, :cond_b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 650
    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 651
    const/4 v7, 0x3

    invoke-virtual {v15, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 652
    const/high16 v7, 0x2000000

    const/4 v8, 0x1

    invoke-virtual {v15, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_3

    .line 653
    :cond_b
    if-nez p6, :cond_4

    .line 654
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_4

    .line 655
    const-string v7, "RC01"

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/systemui/recents/views/RecentsView;->sendDiagnosticLogs(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 776
    .restart local v11    # "launchRunnable":Ljava/lang/Runnable;
    .restart local v18    # "launch":Ljava/lang/Runnable;
    :cond_c
    const/4 v7, 0x0

    goto :goto_4
.end method

.method public onTaskViewDismissed(Lcom/android/systemui/recents/model/Task;)V
    .locals 3
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 944
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 945
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V

    .line 947
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->removeTask(I)V

    .line 948
    return-void
.end method

.method public onTaskViewFocusSwitched(IZ)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "onlyFocusChange"    # Z

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewFocusSwitched(IZ)V

    .line 1010
    return-void
.end method

.method public onTaskViewMoved()V
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewMoved()V

    .line 1005
    return-void
.end method

.method public onUserInteraction()V
    .locals 5

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 459
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 460
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 461
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 462
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 463
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->onUserInteraction()V

    .line 459
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 466
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    .line 151
    return-void
.end method

.method public setCloseAllButton(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mCloseAllButton:Landroid/view/View;

    .line 472
    return-void
.end method

.method public setDebugOverlay(Lcom/android/systemui/recents/views/DebugOverlayView;)V
    .locals 0
    .param p1, "overlay"    # Lcom/android/systemui/recents/views/DebugOverlayView;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    .line 156
    return-void
.end method

.method public setMultiWindowActivity(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .line 145
    return-void
.end method

.method public setSearchBar(Landroid/view/View;)V
    .locals 0
    .param p1, "searchBar"    # Landroid/view/View;

    .prologue
    .line 368
    return-void
.end method

.method public setSearchBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 382
    :cond_0
    return-void
.end method

.method public setTaskStacks(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 163
    .local v3, "numStacks":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v7, "stackViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 165
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 166
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "child":Landroid/view/View;
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v10, :cond_0

    .line 168
    check-cast v0, Lcom/android/systemui/recents/views/TaskStackView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_1
    const/4 v4, 0x0

    .line 174
    .local v4, "numTaskStacksToKeep":I
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    if-eqz v10, :cond_2

    .line 175
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 177
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    :goto_1
    if-lt v2, v4, :cond_3

    .line 179
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskStackView;->destroyViewPool()V

    .line 181
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/views/RecentsView;->removeView(Landroid/view/View;)V

    .line 182
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 177
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 186
    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_4

    .line 187
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskStackView;

    .line 189
    .local v8, "tsv":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackView;->reset()V

    .line 190
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v8, v10}, Lcom/android/systemui/recents/views/TaskStackView;->setStack(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 194
    .end local v8    # "tsv":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_4
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v2, v3, :cond_6

    .line 196
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/model/TaskStack;

    .line 197
    .local v5, "stack":Lcom/android/systemui/recents/model/TaskStack;
    new-instance v6, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10, v5}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/model/TaskStack;)V

    .line 198
    .local v6, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v6, p0}, Lcom/android/systemui/recents/views/TaskStackView;->setCallbacks(Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;)V

    .line 200
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-nez v10, :cond_5

    .line 201
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->TW_TAG:Ljava/lang/String;

    const-string v11, "mConfig is null. Reinitializing mConfig value"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 207
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 217
    .end local v5    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v6    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_6
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v10, :cond_8

    .line 218
    add-int/lit8 v2, v1, -0x1

    :goto_4
    if-ltz v2, :cond_8

    .line 219
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 220
    .local v9, "v":Landroid/view/View;
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v9, v10, :cond_7

    move-object v6, v9

    .line 221
    check-cast v6, Lcom/android/systemui/recents/views/TaskStackView;

    .line 222
    .restart local v6    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v6, v10}, Lcom/android/systemui/recents/views/TaskStackView;->setDebugOverlay(Lcom/android/systemui/recents/views/DebugOverlayView;)V

    .line 218
    .end local v6    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 228
    .end local v9    # "v":Landroid/view/View;
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    .line 229
    return-void
.end method

.method public startCloseAllRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;

    .prologue
    .line 339
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 341
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 342
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 343
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 344
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 345
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 346
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    sub-int v4, v1, v2

    mul-int/lit8 v4, v4, 0x21

    iput v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->startOffset:I

    .line 347
    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskStackView;->startCloseAllAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V

    .line 342
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 351
    return-void
.end method

.method public startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    .prologue
    .line 302
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 305
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 306
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 307
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 308
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 309
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskStackView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 305
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 313
    return-void
.end method

.method public startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 319
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 321
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 322
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 323
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 324
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 325
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskStackView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 321
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 331
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v4}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onExitToHomeAnimationTriggered()V

    .line 332
    return-void
.end method

.method public unfilterFilteredStacks()Z
    .locals 5

    .prologue
    .line 531
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 533
    const/4 v3, 0x0

    .line 534
    .local v3, "stacksUnfiltered":Z
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 535
    .local v1, "numStacks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 536
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/TaskStack;

    .line 537
    .local v2, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->hasFilteredTasks()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 538
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->unfilterTasks()V

    .line 539
    const/4 v3, 0x1

    .line 535
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    .end local v0    # "i":I
    .end local v1    # "numStacks":I
    .end local v2    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v3    # "stacksUnfiltered":Z
    :cond_1
    const/4 v3, 0x0

    :cond_2
    return v3
.end method
