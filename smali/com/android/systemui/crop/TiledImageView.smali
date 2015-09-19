.class public Lcom/android/systemui/crop/TiledImageView;
.super Landroid/widget/FrameLayout;
.source "TiledImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/crop/TiledImageView$ColoredTiles;,
        Lcom/android/systemui/crop/TiledImageView$TileRenderer;,
        Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;
    }
.end annotation


# static fields
.field private static final IS_SUPPORTED:Z

.field private static final USE_CHOREOGRAPHER:Z

.field private static final USE_TEXTURE_VIEW:Z


# instance fields
.field private mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mFreeTextures:Ljava/lang/Runnable;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mInvalPending:Z

.field protected mLock:Ljava/lang/Object;

.field protected mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

.field private mTempRectF:Landroid/graphics/RectF;

.field private mTextureView:Lcom/android/systemui/crop/BlockingGLTextureView;

.field private mValues:[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/crop/TiledImageView;->IS_SUPPORTED:Z

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/systemui/crop/TiledImageView;->USE_CHOREOGRAPHER:Z

    return-void

    :cond_0
    move v0, v2

    .line 37
    goto :goto_0

    :cond_1
    move v1, v2

    .line 39
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/crop/TiledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v5, p0, Lcom/android/systemui/crop/TiledImageView;->mInvalPending:Z

    .line 59
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/systemui/crop/TiledImageView;->mValues:[F

    .line 64
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/crop/TiledImageView;->mLock:Ljava/lang/Object;

    .line 111
    new-instance v1, Lcom/android/systemui/crop/TiledImageView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/crop/TiledImageView$1;-><init>(Lcom/android/systemui/crop/TiledImageView;)V

    iput-object v1, p0, Lcom/android/systemui/crop/TiledImageView;->mFreeTextures:Ljava/lang/Runnable;

    .line 229
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/crop/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    .line 77
    sget-boolean v1, Lcom/android/systemui/crop/TiledImageView;->IS_SUPPORTED:Z

    if-nez v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 81
    :cond_0
    new-instance v1, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    invoke-direct {v1}, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    .line 82
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    new-instance v2, Lcom/android/systemui/crop/TiledImageRenderer;

    invoke-direct {v2, p0}, Lcom/android/systemui/crop/TiledImageRenderer;-><init>(Landroid/view/View;)V

    iput-object v2, v1, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->image:Lcom/android/systemui/crop/TiledImageRenderer;

    .line 89
    new-instance v1, Landroid/opengl/GLSurfaceView;

    invoke-direct {v1, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/crop/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 90
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 91
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Lcom/android/systemui/crop/TiledImageView$TileRenderer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/crop/TiledImageView$TileRenderer;-><init>(Lcom/android/systemui/crop/TiledImageView;Lcom/android/systemui/crop/TiledImageView$1;)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 92
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v5}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 95
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/crop/TiledImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic access$102(Lcom/android/systemui/crop/TiledImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/crop/TiledImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/systemui/crop/TiledImageView;->mInvalPending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/crop/TiledImageView;)Landroid/opengl/GLSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/crop/TiledImageView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method private invalOnVsync()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/android/systemui/crop/TiledImageView;->mInvalPending:Z

    if-nez v0, :cond_1

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/crop/TiledImageView;->mInvalPending:Z

    .line 216
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/android/systemui/crop/TiledImageView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/crop/TiledImageView$2;-><init>(Lcom/android/systemui/crop/TiledImageView;)V

    iput-object v0, p0, Lcom/android/systemui/crop/TiledImageView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 225
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 227
    :cond_1
    return-void
.end method

.method public static isTilingSupported()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/systemui/crop/TiledImageView;->IS_SUPPORTED:Z

    return v0
.end method

.method private updateScaleIfNecessaryLocked(Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;)V
    .locals 3
    .param p1, "renderer"    # Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    .prologue
    .line 166
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/crop/TiledImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/crop/TiledImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    invoke-interface {v1}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/crop/TiledImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    invoke-interface {v2}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 101
    sget-boolean v0, Lcom/android/systemui/crop/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageView;->mFreeTextures:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 177
    sget-boolean v0, Lcom/android/systemui/crop/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 197
    sget-boolean v0, Lcom/android/systemui/crop/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 204
    :cond_0
    sget-boolean v0, Lcom/android/systemui/crop/TiledImageView;->USE_CHOREOGRAPHER:Z

    if-eqz v0, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/crop/TiledImageView;->invalOnVsync()V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 156
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 157
    sget-boolean v0, Lcom/android/systemui/crop/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    invoke-direct {p0, v0}, Lcom/android/systemui/crop/TiledImageView;->updateScaleIfNecessaryLocked(Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;)V

    .line 162
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/systemui/crop/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lcom/android/systemui/crop/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    goto :goto_0
.end method

.method public positionFromMatrix(Landroid/graphics/Matrix;)V
    .locals 14
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 231
    sget-boolean v9, Lcom/android/systemui/crop/TiledImageView;->IS_SUPPORTED:Z

    if-nez v9, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v9, v9, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    if-eqz v9, :cond_0

    .line 235
    iget-object v9, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v9, v9, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    invoke-interface {v9}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getRotation()I

    move-result v3

    .line 236
    .local v3, "rotation":I
    rem-int/lit16 v9, v3, 0xb4

    if-eqz v9, :cond_4

    const/4 v5, 0x1

    .line 237
    .local v5, "swap":Z
    :goto_1
    if-eqz v5, :cond_5

    iget-object v9, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v9, v9, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    invoke-interface {v9}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v6

    .line 239
    .local v6, "width":I
    :goto_2
    if-eqz v5, :cond_6

    iget-object v9, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v9, v9, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    invoke-interface {v9}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v2

    .line 241
    .local v2, "height":I
    :goto_3
    iget-object v9, p0, Lcom/android/systemui/crop/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    int-to-float v12, v6

    int-to-float v13, v2

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 242
    iget-object v9, p0, Lcom/android/systemui/crop/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 243
    iget-object v9, p0, Lcom/android/systemui/crop/TiledImageView;->mValues:[F

    invoke-virtual {p1, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 244
    div-int/lit8 v0, v6, 0x2

    .line 245
    .local v0, "cx":I
    div-int/lit8 v1, v2, 0x2

    .line 246
    .local v1, "cy":I
    iget-object v9, p0, Lcom/android/systemui/crop/TiledImageView;->mValues:[F

    const/4 v10, 0x0

    aget v4, v9, v10

    .line 247
    .local v4, "scale":F
    invoke-virtual {p0}, Lcom/android/systemui/crop/TiledImageView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/systemui/crop/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    div-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 248
    .local v7, "xoffset":I
    invoke-virtual {p0}, Lcom/android/systemui/crop/TiledImageView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/systemui/crop/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    div-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 249
    .local v8, "yoffset":I
    const/16 v9, 0x5a

    if-eq v3, v9, :cond_2

    const/16 v9, 0xb4

    if-ne v3, v9, :cond_7

    .line 250
    :cond_2
    int-to-float v9, v0

    iget-object v10, p0, Lcom/android/systemui/crop/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    div-float/2addr v10, v4

    int-to-float v11, v7

    sub-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v0, v9

    .line 254
    :goto_4
    const/16 v9, 0xb4

    if-eq v3, v9, :cond_3

    const/16 v9, 0x10e

    if-ne v3, v9, :cond_8

    .line 255
    :cond_3
    int-to-float v9, v1

    iget-object v10, p0, Lcom/android/systemui/crop/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    div-float/2addr v10, v4

    int-to-float v11, v8

    sub-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v1, v9

    .line 259
    :goto_5
    iget-object v9, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iput v4, v9, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    .line 260
    iget-object v10, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    if-eqz v5, :cond_9

    int-to-float v9, v1

    :goto_6
    iput v9, v10, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->centerX:F

    .line 261
    iget-object v10, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    if-eqz v5, :cond_a

    int-to-float v9, v0

    :goto_7
    iput v9, v10, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->centerY:F

    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/crop/TiledImageView;->invalidate()V

    goto/16 :goto_0

    .line 236
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    .end local v2    # "height":I
    .end local v4    # "scale":F
    .end local v5    # "swap":Z
    .end local v6    # "width":I
    .end local v7    # "xoffset":I
    .end local v8    # "yoffset":I
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 237
    .restart local v5    # "swap":Z
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v9, v9, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    invoke-interface {v9}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v6

    goto/16 :goto_2

    .line 239
    .restart local v6    # "width":I
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v9, v9, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    invoke-interface {v9}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v2

    goto/16 :goto_3

    .line 252
    .restart local v0    # "cx":I
    .restart local v1    # "cy":I
    .restart local v2    # "height":I
    .restart local v4    # "scale":F
    .restart local v7    # "xoffset":I
    .restart local v8    # "yoffset":I
    :cond_7
    int-to-float v9, v0

    iget-object v10, p0, Lcom/android/systemui/crop/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    div-float/2addr v10, v4

    int-to-float v11, v7

    sub-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v0, v9

    goto :goto_4

    .line 257
    :cond_8
    int-to-float v9, v1

    iget-object v10, p0, Lcom/android/systemui/crop/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    div-float/2addr v10, v4

    int-to-float v11, v8

    sub-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v1, v9

    goto :goto_5

    .line 260
    :cond_9
    int-to-float v9, v0

    goto :goto_6

    .line 261
    :cond_a
    int-to-float v9, v1

    goto :goto_7
.end method

.method public setTileSource(Lcom/android/systemui/crop/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "source"    # Lcom/android/systemui/crop/TiledImageRenderer$TileSource;
    .param p2, "isReadyCallback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x0

    .line 138
    sget-boolean v1, Lcom/android/systemui/crop/TiledImageView;->IS_SUPPORTED:Z

    if-nez v1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/crop/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iput-object p1, v1, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    .line 143
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iput-object p2, v1, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->isReadyCallback:Ljava/lang/Runnable;

    .line 144
    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    :goto_1
    iput v1, v3, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->centerX:F

    .line 145
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    :cond_1
    iput v0, v1, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->centerY:F

    .line 146
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getRotation()I

    move-result v0

    :goto_2
    iput v0, v1, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->rotation:I

    .line 147
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    .line 148
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    invoke-direct {p0, v0}, Lcom/android/systemui/crop/TiledImageView;->updateScaleIfNecessaryLocked(Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;)V

    .line 149
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/crop/TiledImageView;->invalidate()V

    goto :goto_0

    :cond_2
    move v1, v0

    .line 144
    goto :goto_1

    .line 146
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 149
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setTranslationX(F)V
    .locals 1
    .param p1, "translationX"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 189
    sget-boolean v0, Lcom/android/systemui/crop/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_0
.end method
