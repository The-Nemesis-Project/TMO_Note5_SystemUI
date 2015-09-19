.class Lcom/android/systemui/crop/TiledImageView$TileRenderer;
.super Ljava/lang/Object;
.source "TiledImageView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/crop/TiledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileRenderer"
.end annotation


# instance fields
.field private mCanvas:Lcom/android/systemui/crop/glrenderer/GLES20Canvas;

.field final synthetic this$0:Lcom/android/systemui/crop/TiledImageView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/crop/TiledImageView;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/crop/TiledImageView;Lcom/android/systemui/crop/TiledImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/crop/TiledImageView;
    .param p2, "x1"    # Lcom/android/systemui/crop/TiledImageView$1;

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/android/systemui/crop/TiledImageView$TileRenderer;-><init>(Lcom/android/systemui/crop/TiledImageView;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 285
    iget-object v2, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->mCanvas:Lcom/android/systemui/crop/glrenderer/GLES20Canvas;

    invoke-virtual {v2}, Lcom/android/systemui/crop/glrenderer/GLES20Canvas;->clearBuffer()V

    .line 287
    iget-object v2, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    iget-object v3, v2, Lcom/android/systemui/crop/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 288
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    iget-object v2, v2, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v1, v2, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->isReadyCallback:Ljava/lang/Runnable;

    .line 289
    .local v1, "readyCallback":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    iget-object v2, v2, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v2, v2, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->image:Lcom/android/systemui/crop/TiledImageRenderer;

    iget-object v4, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    iget-object v4, v4, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v4, v4, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    iget-object v5, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    iget-object v5, v5, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v5, v5, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->rotation:I

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/crop/TiledImageRenderer;->setModel(Lcom/android/systemui/crop/TiledImageRenderer$TileSource;I)V

    .line 290
    iget-object v2, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    iget-object v2, v2, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v2, v2, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->image:Lcom/android/systemui/crop/TiledImageRenderer;

    iget-object v4, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    iget-object v4, v4, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v4, v4, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->centerX:F

    iget-object v5, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    iget-object v5, v5, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v5, v5, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->centerY:F

    iget-object v6, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    iget-object v6, v6, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v6, v6, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/systemui/crop/TiledImageRenderer;->setPosition(FFF)V

    .line 292
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    iget-object v2, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    iget-object v2, v2, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v2, v2, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->image:Lcom/android/systemui/crop/TiledImageRenderer;

    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->mCanvas:Lcom/android/systemui/crop/glrenderer/GLES20Canvas;

    invoke-virtual {v2, v3}, Lcom/android/systemui/crop/TiledImageRenderer;->draw(Lcom/android/systemui/crop/glrenderer/GLCanvas;)Z

    move-result v0

    .line 294
    .local v0, "complete":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 295
    iget-object v2, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    iget-object v3, v2, Lcom/android/systemui/crop/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 298
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    iget-object v2, v2, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v2, v2, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->isReadyCallback:Ljava/lang/Runnable;

    if-ne v2, v1, :cond_0

    .line 299
    iget-object v2, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    iget-object v2, v2, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->isReadyCallback:Ljava/lang/Runnable;

    .line 301
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 302
    if-eqz v1, :cond_1

    .line 303
    iget-object v2, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/crop/TiledImageView;->post(Ljava/lang/Runnable;)Z

    .line 306
    :cond_1
    return-void

    .line 292
    .end local v0    # "complete":Z
    .end local v1    # "readyCallback":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 301
    .restart local v0    # "complete":Z
    .restart local v1    # "readyCallback":Ljava/lang/Runnable;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->mCanvas:Lcom/android/systemui/crop/glrenderer/GLES20Canvas;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/crop/glrenderer/GLES20Canvas;->setSize(II)V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    iget-object v0, v0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->image:Lcom/android/systemui/crop/TiledImageRenderer;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/crop/TiledImageRenderer;->setViewSize(II)V

    .line 281
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 272
    new-instance v0, Lcom/android/systemui/crop/glrenderer/GLES20Canvas;

    invoke-direct {v0}, Lcom/android/systemui/crop/glrenderer/GLES20Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->mCanvas:Lcom/android/systemui/crop/glrenderer/GLES20Canvas;

    .line 273
    invoke-static {}, Lcom/android/systemui/crop/glrenderer/BasicTexture;->invalidateAllTextures()V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    iget-object v0, v0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->image:Lcom/android/systemui/crop/TiledImageRenderer;

    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    iget-object v1, v1, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    iget-object v2, p0, Lcom/android/systemui/crop/TiledImageView$TileRenderer;->this$0:Lcom/android/systemui/crop/TiledImageView;

    iget-object v2, v2, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v2, v2, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->rotation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/crop/TiledImageRenderer;->setModel(Lcom/android/systemui/crop/TiledImageRenderer$TileSource;I)V

    .line 275
    return-void
.end method
