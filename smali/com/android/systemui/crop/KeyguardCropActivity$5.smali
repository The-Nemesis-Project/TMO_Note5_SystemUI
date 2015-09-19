.class Lcom/android/systemui/crop/KeyguardCropActivity$5;
.super Ljava/lang/Object;
.source "KeyguardCropActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/crop/KeyguardCropActivity;->setCropViewTileSource(Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;ZZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

.field final synthetic val$loadBitmapTask:Landroid/os/AsyncTask;

.field final synthetic val$progressView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/crop/KeyguardCropActivity;Landroid/os/AsyncTask;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$5;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    iput-object p2, p0, Lcom/android/systemui/crop/KeyguardCropActivity$5;->val$loadBitmapTask:Landroid/os/AsyncTask;

    iput-object p3, p0, Lcom/android/systemui/crop/KeyguardCropActivity$5;->val$progressView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$5;->val$loadBitmapTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$5;->val$progressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 354
    :cond_0
    return-void
.end method
