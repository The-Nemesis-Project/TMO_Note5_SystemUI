.class public Lcom/android/systemui/recents/views/DualScreenViewControl;
.super Ljava/lang/Object;
.source "DualScreenViewControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/DualScreenViewControl$AnimationStartedListener;,
        Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_VIEW_MOVEMENT:Z = false

.field public static final DIM_AMOUNT:I = 0x4c

.field public static final DIM_DURATION:I = 0x14a

.field public static final DIM_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_RECENTS_DISPLAY:I = 0x0

.field public static final SUB_RECENTS_DISPLAY:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DualScreenViewControl"

.field private static mLaunchRunnable:Ljava/lang/Runnable;

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/android/systemui/recents/views/DualScreenViewControl;


# instance fields
.field private mInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    .line 51
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl$1;

    const-string v1, "dim"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/DualScreenViewControl$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->DIM_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    .line 205
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/views/DualScreenViewControl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/DualScreenViewControl;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static getInstance()Lcom/android/systemui/recents/views/DualScreenViewControl;
    .locals 2

    .prologue
    .line 83
    sget-object v1, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->sInstance:Lcom/android/systemui/recents/views/DualScreenViewControl;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/DualScreenViewControl;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->sInstance:Lcom/android/systemui/recents/views/DualScreenViewControl;

    .line 87
    :cond_0
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->sInstance:Lcom/android/systemui/recents/views/DualScreenViewControl;

    monitor-exit v1

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static launchTask()V
    .locals 2

    .prologue
    .line 213
    sget-object v1, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 216
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    .line 218
    :cond_0
    monitor-exit v1

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addRootView(ILandroid/view/ViewGroup;)V
    .locals 6
    .param p1, "fromScreen"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 92
    sget-object v3, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 93
    :try_start_0
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;-><init>(Lcom/android/systemui/recents/views/DualScreenViewControl;)V

    .line 94
    .local v0, "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    iput-object p2, v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    .line 95
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 96
    .local v1, "iv":Landroid/widget/ImageView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v2, v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    iput-object v1, v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    .line 100
    iget-object v2, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    monitor-exit v3

    .line 102
    return-void

    .line 101
    .end local v0    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .end local v1    # "iv":Landroid/widget/ImageView;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public canTaskBeMoved(Lcom/samsung/android/dualscreen/TaskInfo;)Z
    .locals 3
    .param p1, "tInfo"    # Lcom/samsung/android/dualscreen/TaskInfo;

    .prologue
    .line 314
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 316
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/dualscreen/TaskInfo;->isCoupled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/samsung/android/dualscreen/TaskInfo;->canMoveTaskToScreen:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/dualscreen/TaskInfo;->getScreen()Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getMultipleScreenState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSetLauchTask()Z
    .locals 2

    .prologue
    .line 222
    sget-object v1, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public moveAnimationView(Landroid/view/View;IZ)V
    .locals 10
    .param p1, "moveView"    # Landroid/view/View;
    .param p2, "swipeDireciton"    # I
    .param p3, "isMove"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 270
    sget-object v7, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 271
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 272
    .local v1, "fromScreen":I
    if-nez v1, :cond_4

    .line 273
    .local v4, "toScreen":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 274
    .local v2, "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    if-eqz v2, :cond_3

    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    .line 275
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 276
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    :cond_0
    const/4 v5, 0x0

    .line 280
    .local v5, "translate":F
    if-nez p2, :cond_5

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v5

    .line 282
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    iget v8, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startX:F

    add-float/2addr v8, v5

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 288
    :goto_1
    sget-boolean v6, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 292
    :cond_1
    if-eqz p3, :cond_6

    .line 293
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v6, :cond_2

    .line 294
    iget-object v8, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    move-object v6, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v9}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 296
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 297
    .local v3, "oppositeInfo":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    if-eqz v3, :cond_3

    iget-object v6, v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v6, :cond_3

    .line 298
    iget-object v6, v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "moveView":Landroid/view/View;
    const/4 v8, 0x1

    invoke-virtual {v6, p1, v8}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 310
    .end local v3    # "oppositeInfo":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .end local v5    # "translate":F
    :cond_3
    :goto_2
    monitor-exit v7

    .line 311
    return-void

    .end local v2    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .end local v4    # "toScreen":I
    .restart local p1    # "moveView":Landroid/view/View;
    :cond_4
    move v4, v6

    .line 272
    goto :goto_0

    .line 284
    .restart local v2    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .restart local v4    # "toScreen":I
    .restart local v5    # "translate":F
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .line 285
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    iget v8, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startY:F

    add-float/2addr v8, v5

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_1

    .line 310
    .end local v1    # "fromScreen":I
    .end local v2    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .end local v4    # "toScreen":I
    .end local v5    # "translate":F
    .end local p1    # "moveView":Landroid/view/View;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 301
    .restart local v1    # "fromScreen":I
    .restart local v2    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .restart local v4    # "toScreen":I
    .restart local v5    # "translate":F
    .restart local p1    # "moveView":Landroid/view/View;
    :cond_6
    :try_start_1
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v6, :cond_7

    .line 302
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 304
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 305
    .restart local v3    # "oppositeInfo":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    if-eqz v3, :cond_3

    iget-object v6, v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v6, :cond_3

    .line 306
    iget-object v6, v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public resetAllAnimationView()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/DualScreenViewControl;->resetAnimationView(I)V

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/DualScreenViewControl;->resetAnimationView(I)V

    .line 116
    return-void
.end method

.method public resetAnimationView(I)V
    .locals 8
    .param p1, "fromScreen"    # I

    .prologue
    const/4 v3, 0x0

    .line 119
    sget-object v5, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 120
    if-nez p1, :cond_0

    const/4 v3, 0x1

    .line 121
    .local v3, "toScreen":I
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 123
    .local v1, "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    sget-boolean v4, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "DualScreenViewControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetAnimationView - fromScreen : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  info : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    if-eqz v1, :cond_6

    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    iget v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->semaphore:I

    if-lez v4, :cond_6

    iget v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->semaphore:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->semaphore:I

    if-nez v4, :cond_6

    .line 125
    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 127
    .local v0, "bg":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 128
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    :cond_2
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startX:F

    .line 131
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startY:F

    .line 132
    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->transform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 133
    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->headerBM:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 134
    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->headerBM:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->headerBM:Landroid/graphics/Bitmap;

    .line 137
    :cond_3
    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v4, :cond_4

    .line 138
    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 140
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 141
    .local v2, "oppositeInfo":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    if-eqz v2, :cond_5

    iget-object v4, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v4, :cond_5

    .line 142
    iget-object v4, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 144
    :cond_5
    iget-object v4, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 146
    .end local v0    # "bg":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "oppositeInfo":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    :cond_6
    monitor-exit v5

    .line 147
    return-void

    .line 146
    .end local v1    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setLaunchTask(IIZLjava/lang/String;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 7
    .param p1, "fromScreen"    # I
    .param p2, "taskId"    # I
    .param p3, "isActive"    # Z
    .param p4, "taskName"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 234
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/DualScreenViewControl$2;-><init>(Lcom/android/systemui/recents/views/DualScreenViewControl;IIZLjava/lang/String;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    .line 267
    return-void
.end method

.method public setLaunchTask(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "launchRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 228
    sget-object v1, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_0
    sput-object p1, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    .line 230
    monitor-exit v1

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTaskStackView(ILcom/android/systemui/recents/views/TaskStackView;)V
    .locals 3
    .param p1, "fromScreen"    # I
    .param p2, "taskStackView"    # Lcom/android/systemui/recents/views/TaskStackView;

    .prologue
    .line 105
    sget-object v2, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 107
    .local v0, "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    if-eqz v0, :cond_0

    .line 108
    iput-object p2, v0, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 110
    :cond_0
    monitor-exit v2

    .line 111
    return-void

    .line 110
    .end local v0    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showAnimationView(ILcom/android/systemui/recents/views/TaskView;II)V
    .locals 17
    .param p1, "fromScreen"    # I
    .param p2, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "swipeDireciton"    # I
    .param p4, "rotation"    # I

    .prologue
    .line 150
    sget-object v14, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 151
    :try_start_0
    sget-boolean v13, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "DualScreenViewControl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "showAnimationView - fromScreen : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  Task : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    if-nez p1, :cond_3

    const/4 v11, 0x1

    .line 153
    .local v11, "toScreen":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 155
    .local v6, "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    if-eqz v6, :cond_2

    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    if-eqz v13, :cond_2

    .line 156
    iget v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->semaphore:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->semaphore:I

    .line 157
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 158
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->captureView()Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 159
    if-nez p3, :cond_5

    .line 160
    iget v12, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 161
    .local v12, "width":I
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getX()F

    move-result v15

    if-nez p1, :cond_4

    .end local v12    # "width":I
    :goto_1
    int-to-float v0, v12

    move/from16 v16, v0

    add-float v15, v15, v16

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setX(F)V

    .line 162
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getY()F

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setY(F)V

    .line 172
    :goto_2
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 173
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 175
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getX()F

    move-result v13

    iput v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startX:F

    .line 176
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getY()F

    move-result v13

    iput v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startY:F

    .line 178
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/TaskStackView;

    .line 179
    .local v9, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 180
    .local v10, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v8

    .line 182
    .local v8, "stackScroll":F
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v13

    iget-object v15, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->transform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v10, v8, v15, v0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v13

    iput-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->transform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 184
    iget-object v13, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_1

    iget-object v13, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-lez v13, :cond_1

    iget-object v13, v10, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-lez v13, :cond_1

    .line 186
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v7

    .line 187
    .local v7, "scale":F
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v7

    float-to-int v4, v13

    .line 188
    .local v4, "fromHeaderWidth":I
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v7

    float-to-int v3, v13

    .line 189
    .local v3, "fromHeaderHeight":I
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    iput-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->headerBM:Landroid/graphics/Bitmap;

    .line 194
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->headerBM:Landroid/graphics/Bitmap;

    invoke-direct {v1, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 195
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v15

    invoke-virtual {v1, v13, v15}, Landroid/graphics/Canvas;->scale(FF)V

    .line 196
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v13, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 197
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v3    # "fromHeaderHeight":I
    .end local v4    # "fromHeaderWidth":I
    .end local v7    # "scale":F
    :cond_1
    sget-boolean v13, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    if-eqz v13, :cond_2

    const-string v13, "DualScreenViewControl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "showAnimationView - update : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v8    # "stackScroll":F
    .end local v9    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v10    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_2
    monitor-exit v14

    .line 203
    return-void

    .line 152
    .end local v6    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .end local v11    # "toScreen":I
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 161
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    .restart local v6    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .restart local v11    # "toScreen":I
    .restart local v12    # "width":I
    :cond_4
    neg-int v12, v12

    goto/16 :goto_1

    .line 164
    .end local v12    # "width":I
    :cond_5
    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 165
    .local v5, "height":I
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getX()F

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setX(F)V

    .line 166
    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_7

    .line 167
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getY()F

    move-result v15

    if-nez p1, :cond_6

    neg-int v5, v5

    .end local v5    # "height":I
    :cond_6
    int-to-float v0, v5

    move/from16 v16, v0

    add-float v15, v15, v16

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setY(F)V

    goto/16 :goto_2

    .line 202
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v6    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .end local v11    # "toScreen":I
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 169
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    .restart local v5    # "height":I
    .restart local v6    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .restart local v11    # "toScreen":I
    :cond_7
    :try_start_1
    iget-object v13, v6, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getY()F

    move-result v15

    if-nez p1, :cond_8

    .end local v5    # "height":I
    :goto_3
    int-to-float v0, v5

    move/from16 v16, v0

    add-float v15, v15, v16

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setY(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .restart local v5    # "height":I
    :cond_8
    neg-int v5, v5

    goto :goto_3
.end method
