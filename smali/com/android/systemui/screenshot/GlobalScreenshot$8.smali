.class Lcom/android/systemui/screenshot/GlobalScreenshot$8;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimationForShutterAndMoveEffect(Ljava/lang/Runnable;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    .prologue
    .line 1726
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1730
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mTakeMainDisplay:Z
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # invokes: Lcom/android/systemui/screenshot/GlobalScreenshot;->playCaptureSound()V
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    .line 1734
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1735
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1736
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->buildLayer()V

    .line 1737
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubCaptureEffectViewForShutterAndMove:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$8;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mSubScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->show(Landroid/widget/ImageView;)V

    .line 1739
    :cond_1
    monitor-exit v1

    .line 1740
    return-void

    .line 1739
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
