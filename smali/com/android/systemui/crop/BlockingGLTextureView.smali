.class public Lcom/android/systemui/crop/BlockingGLTextureView;
.super Landroid/view/TextureView;
.source "BlockingGLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/crop/BlockingGLTextureView$1;,
        Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;,
        Lcom/android/systemui/crop/BlockingGLTextureView$EglHelper;
    }
.end annotation


# instance fields
.field private mRenderThread:Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0, p0}, Lcom/android/systemui/crop/BlockingGLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 45
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/crop/BlockingGLTextureView;->mRenderThread:Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/systemui/crop/BlockingGLTextureView;->mRenderThread:Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;

    invoke-virtual {v0}, Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;->finish()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/crop/BlockingGLTextureView;->mRenderThread:Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;

    .line 63
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/crop/BlockingGLTextureView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 98
    return-void

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/crop/BlockingGLTextureView;->mRenderThread:Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;

    invoke-virtual {v0, p1}, Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;->setSurface(Landroid/graphics/SurfaceTexture;)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/crop/BlockingGLTextureView;->mRenderThread:Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;->setSize(II)V

    .line 70
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/crop/BlockingGLTextureView;->mRenderThread:Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/systemui/crop/BlockingGLTextureView;->mRenderThread:Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;->setSurface(Landroid/graphics/SurfaceTexture;)V

    .line 83
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/crop/BlockingGLTextureView;->mRenderThread:Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;->setSize(II)V

    .line 76
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 88
    return-void
.end method

.method public render()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/crop/BlockingGLTextureView;->mRenderThread:Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;

    invoke-virtual {v0}, Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;->render()V

    .line 56
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/crop/BlockingGLTextureView;->mRenderThread:Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Renderer already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    new-instance v0, Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;

    invoke-direct {v0, p1}, Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;-><init>(Landroid/opengl/GLSurfaceView$Renderer;)V

    iput-object v0, p0, Lcom/android/systemui/crop/BlockingGLTextureView;->mRenderThread:Lcom/android/systemui/crop/BlockingGLTextureView$RenderThread;

    .line 52
    return-void
.end method
