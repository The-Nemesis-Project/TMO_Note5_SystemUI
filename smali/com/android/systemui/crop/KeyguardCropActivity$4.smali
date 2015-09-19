.class Lcom/android/systemui/crop/KeyguardCropActivity$4;
.super Landroid/os/AsyncTask;
.source "KeyguardCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/crop/KeyguardCropActivity;->setCropViewTileSource(Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;ZZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

.field final synthetic val$bitmapSource:Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$moveToLeft:Z

.field final synthetic val$postExecute:Ljava/lang/Runnable;

.field final synthetic val$progressView:Landroid/view/View;

.field final synthetic val$touchEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/crop/KeyguardCropActivity;Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;Landroid/content/Context;Landroid/view/View;ZZLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    iput-object p2, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->val$bitmapSource:Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;

    iput-object p3, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->val$progressView:Landroid/view/View;

    iput-boolean p5, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->val$touchEnabled:Z

    iput-boolean p6, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->val$moveToLeft:Z

    iput-object p7, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->val$postExecute:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 302
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/crop/KeyguardCropActivity$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/crop/KeyguardCropActivity$4;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->val$bitmapSource:Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;

    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->loadInBackground(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 307
    :cond_0
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 302
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/crop/KeyguardCropActivity$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "arg"    # Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 310
    invoke-virtual {p0}, Lcom/android/systemui/crop/KeyguardCropActivity$4;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 311
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->val$progressView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 313
    const-string v1, "KeyguardCropActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitmap roation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->val$bitmapSource:Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;

    invoke-virtual {v3}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->getRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->val$bitmapSource:Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;

    invoke-virtual {v1}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->getRotation()I

    move-result v1

    if-lez v1, :cond_0

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->val$bitmapSource:Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;

    invoke-virtual {v1}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->getLoadingState()Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;->LOADED:Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;

    if-ne v1, v2, :cond_1

    .line 322
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    iget-object v1, v1, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropView:Lcom/android/systemui/crop/CropView;

    new-instance v2, Lcom/android/systemui/crop/BitmapRegionTileSource;

    iget-object v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->val$bitmapSource:Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/crop/BitmapRegionTileSource;-><init>(Landroid/content/Context;Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;)V

    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/crop/CropView;->setTileSource(Lcom/android/systemui/crop/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V

    .line 324
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    iget-object v1, v1, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropView:Lcom/android/systemui/crop/CropView;

    iget-object v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    # invokes: Lcom/android/systemui/crop/KeyguardCropActivity;->getScaleValue()F
    invoke-static {v2}, Lcom/android/systemui/crop/KeyguardCropActivity;->access$000(Lcom/android/systemui/crop/KeyguardCropActivity;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/crop/CropView;->setScale(F)V

    .line 325
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    iget-object v1, v1, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropView:Lcom/android/systemui/crop/CropView;

    iget-boolean v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->val$touchEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/crop/CropView;->setTouchEnabled(Z)V

    .line 326
    iget-boolean v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->val$moveToLeft:Z

    if-eqz v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    iget-object v1, v1, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropView:Lcom/android/systemui/crop/CropView;

    invoke-virtual {v1}, Lcom/android/systemui/crop/CropView;->moveToLeft()V

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    iget-object v1, v1, Lcom/android/systemui/crop/KeyguardCropActivity;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 334
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportBlendedFilter()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    iget-object v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    iget-object v2, v2, Lcom/android/systemui/crop/KeyguardCropActivity;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/VignettingEffect;->applyBlendedFilter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/crop/KeyguardCropActivity;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 337
    :cond_2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    iget-object v1, v1, Lcom/android/systemui/crop/KeyguardCropActivity;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 338
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    iget-object v1, v1, Lcom/android/systemui/crop/KeyguardCropActivity;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 341
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->val$postExecute:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 342
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$4;->val$postExecute:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 344
    :cond_4
    return-void
.end method
