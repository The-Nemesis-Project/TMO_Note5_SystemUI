.class public Lcom/android/systemui/crop/CropView;
.super Lcom/android/systemui/crop/TiledImageView;
.source "CropView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/crop/CropView$TouchCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperCropView"


# instance fields
.field private final MAX_SCALE:F

.field private mCenterX:F

.field private mCenterY:F

.field private mFirstX:F

.field private mFirstY:F

.field mInverseRotateMatrix:Landroid/graphics/Matrix;

.field private mLastX:F

.field private mLastY:F

.field private mMinScale:F

.field mRotateMatrix:Landroid/graphics/Matrix;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mTempAdjustment:[F

.field private mTempCoef:[F

.field private mTempEdges:Landroid/graphics/RectF;

.field private mTempImageDims:[F

.field private mTempPoint:[F

.field private mTempRendererCenter:[F

.field mTouchCallback:Lcom/android/systemui/crop/CropView$TouchCallback;

.field private mTouchDownTime:J

.field private mTouchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/crop/CropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x2

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/crop/TiledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/systemui/crop/CropView;->MAX_SCALE:F

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/crop/CropView;->mTouchEnabled:Z

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/crop/CropView;->mTempEdges:Landroid/graphics/RectF;

    .line 31
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/crop/CropView;->mTempPoint:[F

    .line 32
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/systemui/crop/CropView;->mTempCoef:[F

    .line 33
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/systemui/crop/CropView;->mTempAdjustment:[F

    .line 34
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/systemui/crop/CropView;->mTempImageDims:[F

    .line 35
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/systemui/crop/CropView;->mTempRendererCenter:[F

    .line 52
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/crop/CropView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/crop/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/crop/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    .line 55
    return-void

    .line 31
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 33
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 34
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 35
    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getEdgesHelper(Landroid/graphics/RectF;)V
    .locals 19
    .param p1, "edgesOut"    # Landroid/graphics/RectF;

    .prologue
    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/CropView;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v15, v0

    .line 71
    .local v15, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/CropView;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v4, v0

    .line 72
    .local v4, "height":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/CropView;->getImageDims()[F

    move-result-object v5

    .line 73
    .local v5, "imageDims":[F
    const/16 v16, 0x0

    aget v7, v5, v16

    .line 74
    .local v7, "imageWidth":F
    const/16 v16, 0x1

    aget v6, v5, v16

    .line 76
    .local v6, "imageHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v8, v16, v17

    .line 77
    .local v8, "initialCenterX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v9, v16, v17

    .line 79
    .local v9, "initialCenterY":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/crop/CropView;->mTempRendererCenter:[F

    .line 80
    .local v11, "rendererCenter":[F
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/CropView;->mCenterX:F

    move/from16 v17, v0

    sub-float v17, v17, v8

    aput v17, v11, v16

    .line 81
    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/CropView;->mCenterY:F

    move/from16 v17, v0

    sub-float v17, v17, v9

    aput v17, v11, v16

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 83
    const/16 v16, 0x0

    aget v17, v11, v16

    const/high16 v18, 0x40000000    # 2.0f

    div-float v18, v7, v18

    add-float v17, v17, v18

    aput v17, v11, v16

    .line 84
    const/16 v16, 0x1

    aget v17, v11, v16

    const/high16 v18, 0x40000000    # 2.0f

    div-float v18, v6, v18

    add-float v17, v17, v18

    aput v17, v11, v16

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v13, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    .line 87
    .local v13, "scale":F
    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v15, v16

    const/16 v17, 0x0

    aget v17, v11, v17

    sub-float v16, v16, v17

    sub-float v17, v7, v15

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v16, v16, v17

    mul-float v16, v16, v13

    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, v15, v17

    add-float v2, v16, v17

    .line 89
    .local v2, "centerX":F
    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v4, v16

    const/16 v17, 0x1

    aget v17, v11, v17

    sub-float v16, v16, v17

    sub-float v17, v6, v4

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v16, v16, v17

    mul-float v16, v16, v13

    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, v4, v17

    add-float v3, v16, v17

    .line 91
    .local v3, "centerY":F
    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v7, v16

    mul-float v16, v16, v13

    sub-float v10, v2, v16

    .line 92
    .local v10, "leftEdge":F
    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v7, v16

    mul-float v16, v16, v13

    add-float v12, v2, v16

    .line 93
    .local v12, "rightEdge":F
    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v6, v16

    mul-float v16, v16, v13

    sub-float v14, v3, v16

    .line 94
    .local v14, "topEdge":F
    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v6, v16

    mul-float v16, v16, v13

    add-float v1, v3, v16

    .line 96
    .local v1, "bottomEdge":F
    move-object/from16 v0, p1

    iput v10, v0, Landroid/graphics/RectF;->left:F

    .line 97
    move-object/from16 v0, p1

    iput v12, v0, Landroid/graphics/RectF;->right:F

    .line 98
    move-object/from16 v0, p1

    iput v14, v0, Landroid/graphics/RectF;->top:F

    .line 99
    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 100
    return-void
.end method

.method private updateCenter()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v1, p0, Lcom/android/systemui/crop/CropView;->mCenterX:F

    iput v1, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->centerX:F

    .line 204
    iget-object v0, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v1, p0, Lcom/android/systemui/crop/CropView;->mCenterY:F

    iput v1, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->centerY:F

    .line 205
    return-void
.end method

.method private updateMinScale(IILcom/android/systemui/crop/TiledImageRenderer$TileSource;Z)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "source"    # Lcom/android/systemui/crop/TiledImageRenderer$TileSource;
    .param p4, "resetScale"    # Z

    .prologue
    .line 148
    iget-object v4, p0, Lcom/android/systemui/crop/CropView;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 149
    if-eqz p4, :cond_0

    .line 152
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    const v5, 0x3f333333    # 0.7f

    iput v5, v3, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    .line 154
    :cond_0
    if-eqz p3, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/crop/CropView;->getImageDims()[F

    move-result-object v0

    .line 156
    .local v0, "imageDims":[F
    const/4 v3, 0x0

    aget v2, v0, v3

    .line 157
    .local v2, "imageWidth":F
    const/4 v3, 0x1

    aget v1, v0, v3

    .line 158
    .local v1, "imageHeight":F
    int-to-float v3, p1

    div-float/2addr v3, v2

    int-to-float v5, p2

    div-float/2addr v5, v1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/crop/CropView;->mMinScale:F

    .line 159
    const-string v3, "WallpaperCropView"

    const-string v5, "|mMinScale = %f| / |mRrender.scale = %f|"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/systemui/crop/CropView;->mMinScale:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v8, v8, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v3, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v5, p0, Lcom/android/systemui/crop/CropView;->mMinScale:F

    iget-object v6, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v6, v6, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v3, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    .line 162
    .end local v0    # "imageDims":[F
    .end local v1    # "imageHeight":F
    .end local v2    # "imageWidth":F
    :cond_1
    monitor-exit v4

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public getCrop()Landroid/graphics/RectF;
    .locals 8

    .prologue
    .line 107
    iget-object v7, p0, Lcom/android/systemui/crop/CropView;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 108
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/crop/CropView;->mTempEdges:Landroid/graphics/RectF;

    .line 109
    .local v4, "edges":Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v6, v6, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    if-eqz v6, :cond_0

    .line 110
    invoke-direct {p0, v4}, Lcom/android/systemui/crop/CropView;->getEdgesHelper(Landroid/graphics/RectF;)V

    .line 111
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v5, v6, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    .line 113
    .local v5, "scale":F
    iget v6, v4, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    div-float v1, v6, v5

    .line 114
    .local v1, "cropLeft":F
    iget v6, v4, Landroid/graphics/RectF;->top:F

    neg-float v6, v6

    div-float v3, v6, v5

    .line 115
    .local v3, "cropTop":F
    invoke-virtual {p0}, Lcom/android/systemui/crop/CropView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float v2, v1, v6

    .line 116
    .local v2, "cropRight":F
    invoke-virtual {p0}, Lcom/android/systemui/crop/CropView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float v0, v3, v6

    .line 118
    .local v0, "cropBottom":F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v1, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    monitor-exit v7

    return-object v6

    .line 119
    .end local v0    # "cropBottom":F
    .end local v1    # "cropLeft":F
    .end local v2    # "cropRight":F
    .end local v3    # "cropTop":F
    .end local v4    # "edges":Landroid/graphics/RectF;
    .end local v5    # "scale":F
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method getImageDims()[F
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    iget-object v3, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v3, v3, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    invoke-interface {v3}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v3

    int-to-float v2, v3

    .line 59
    .local v2, "imageWidth":F
    iget-object v3, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v3, v3, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    invoke-interface {v3}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v3

    int-to-float v1, v3

    .line 60
    .local v1, "imageHeight":F
    iget-object v0, p0, Lcom/android/systemui/crop/CropView;->mTempImageDims:[F

    .line 61
    .local v0, "imageDims":[F
    aput v2, v0, v4

    .line 62
    aput v1, v0, v5

    .line 63
    iget-object v3, p0, Lcom/android/systemui/crop/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 64
    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v0, v4

    .line 65
    aget v3, v0, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v0, v5

    .line 66
    return-object v0
.end method

.method public getImageRotation()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->rotation:I

    return v0
.end method

.method public getSourceDimensions()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    invoke-interface {v1}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v2, v2, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    invoke-interface {v2}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public moveToLeft()V
    .locals 5

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/crop/CropView;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/crop/CropView;->getHeight()I

    move-result v3

    if-nez v3, :cond_1

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/crop/CropView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 188
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    new-instance v3, Lcom/android/systemui/crop/CropView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/crop/CropView$1;-><init>(Lcom/android/systemui/crop/CropView;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 195
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/crop/CropView;->mTempEdges:Landroid/graphics/RectF;

    .line 196
    .local v0, "edges":Landroid/graphics/RectF;
    invoke-direct {p0, v0}, Lcom/android/systemui/crop/CropView;->getEdgesHelper(Landroid/graphics/RectF;)V

    .line 197
    iget-object v3, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v2, v3, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    .line 198
    .local v2, "scale":F
    iget v3, p0, Lcom/android/systemui/crop/CropView;->mCenterX:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/crop/CropView;->mCenterX:F

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/crop/CropView;->updateCenter()V

    .line 200
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v1, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    .line 175
    iget-object v0, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v1, p0, Lcom/android/systemui/crop/CropView;->mMinScale:F

    iget-object v2, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v2, v2, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    .line 176
    iget-object v0, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    const/high16 v1, 0x42c80000    # 100.0f

    iget-object v2, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v2, v2, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/crop/CropView;->invalidate()V

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 183
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/crop/CropView;->updateMinScale(IILcom/android/systemui/crop/TiledImageRenderer$TileSource;Z)V

    .line 139
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 218
    .local v4, "action":I
    const/16 v24, 0x6

    move/from16 v0, v24

    if-ne v4, v0, :cond_0

    const/4 v15, 0x1

    .line 219
    .local v15, "pointerUp":Z
    :goto_0
    if-eqz v15, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v17

    .line 222
    .local v17, "skipIndex":I
    :goto_1
    const/16 v20, 0x0

    .local v20, "sumX":F
    const/16 v21, 0x0

    .line 223
    .local v21, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 224
    .local v8, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v8, :cond_3

    .line 225
    move/from16 v0, v17

    if-ne v0, v11, :cond_2

    .line 224
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 218
    .end local v8    # "count":I
    .end local v11    # "i":I
    .end local v15    # "pointerUp":Z
    .end local v17    # "skipIndex":I
    .end local v20    # "sumX":F
    .end local v21    # "sumY":F
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 219
    .restart local v15    # "pointerUp":Z
    :cond_1
    const/16 v17, -0x1

    goto :goto_1

    .line 227
    .restart local v8    # "count":I
    .restart local v11    # "i":I
    .restart local v17    # "skipIndex":I
    .restart local v20    # "sumX":F
    .restart local v21    # "sumY":F
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    add-float v20, v20, v24

    .line 228
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v24

    add-float v21, v21, v24

    goto :goto_3

    .line 230
    :cond_3
    if-eqz v15, :cond_5

    add-int/lit8 v9, v8, -0x1

    .line 231
    .local v9, "div":I
    :goto_4
    int-to-float v0, v9

    move/from16 v24, v0

    div-float v22, v20, v24

    .line 232
    .local v22, "x":F
    int-to-float v0, v9

    move/from16 v24, v0

    div-float v23, v21, v24

    .line 234
    .local v23, "y":F
    if-nez v4, :cond_6

    .line 235
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/crop/CropView;->mFirstX:F

    .line 236
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/crop/CropView;->mFirstY:F

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/crop/CropView;->mTouchDownTime:J

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mTouchCallback:Lcom/android/systemui/crop/CropView$TouchCallback;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mTouchCallback:Lcom/android/systemui/crop/CropView$TouchCallback;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/systemui/crop/CropView$TouchCallback;->onTouchDown()V

    .line 257
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/crop/CropView;->mTouchEnabled:Z

    move/from16 v24, v0

    if-nez v24, :cond_8

    .line 258
    const/16 v24, 0x1

    .line 309
    :goto_6
    return v24

    .end local v9    # "div":I
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_5
    move v9, v8

    .line 230
    goto :goto_4

    .line 241
    .restart local v9    # "div":I
    .restart local v22    # "x":F
    .restart local v23    # "y":F
    :cond_6
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v4, v0, :cond_4

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/CropView;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 244
    .local v7, "config":Landroid/view/ViewConfiguration;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/CropView;->mFirstX:F

    move/from16 v24, v0

    sub-float v24, v24, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/CropView;->mFirstX:F

    move/from16 v25, v0

    sub-float v25, v25, v22

    mul-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/CropView;->mFirstY:F

    move/from16 v25, v0

    sub-float v25, v25, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/CropView;->mFirstY:F

    move/from16 v26, v0

    sub-float v26, v26, v23

    mul-float v25, v25, v26

    add-float v19, v24, v25

    .line 245
    .local v19, "squaredDist":F
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v24

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v25

    mul-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v18, v0

    .line 246
    .local v18, "slop":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 247
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mTouchCallback:Lcom/android/systemui/crop/CropView$TouchCallback;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    .line 249
    cmpg-float v24, v19, v18

    if-gez v24, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/crop/CropView;->mTouchDownTime:J

    move-wide/from16 v24, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    cmp-long v24, v12, v24

    if-gez v24, :cond_7

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mTouchCallback:Lcom/android/systemui/crop/CropView$TouchCallback;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/systemui/crop/CropView$TouchCallback;->onTap()V

    .line 253
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mTouchCallback:Lcom/android/systemui/crop/CropView$TouchCallback;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/systemui/crop/CropView$TouchCallback;->onTouchUp()V

    goto/16 :goto_5

    .line 261
    .end local v7    # "config":Landroid/view/ViewConfiguration;
    .end local v12    # "now":J
    .end local v18    # "slop":F
    .end local v19    # "squaredDist":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 262
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 263
    packed-switch v4, :pswitch_data_0

    .line 274
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b

    .line 277
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/crop/CropView;->mTempEdges:Landroid/graphics/RectF;

    .line 278
    .local v10, "edges":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/systemui/crop/CropView;->getEdgesHelper(Landroid/graphics/RectF;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    move/from16 v16, v0

    .line 281
    .local v16, "scale":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/crop/CropView;->mTempCoef:[F

    .line 282
    .local v6, "coef":[F
    const/16 v24, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    aput v26, v6, v24

    .line 283
    const/16 v24, 0x1

    const/high16 v26, 0x3f800000    # 1.0f

    aput v26, v6, v24

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 285
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/crop/CropView;->mTempAdjustment:[F

    .line 286
    .local v5, "adjustment":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mTempAdjustment:[F

    move-object/from16 v24, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v27, v24, v26

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mTempAdjustment:[F

    move-object/from16 v24, v0

    const/16 v26, 0x1

    const/16 v27, 0x0

    aput v27, v24, v26

    .line 288
    iget v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    const/16 v26, 0x0

    cmpl-float v24, v24, v26

    if-lez v24, :cond_c

    .line 289
    const/16 v24, 0x0

    iget v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    div-float v26, v26, v16

    aput v26, v5, v24

    .line 293
    :cond_9
    :goto_8
    iget v0, v10, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    const/16 v26, 0x0

    cmpl-float v24, v24, v26

    if-lez v24, :cond_d

    .line 294
    const/16 v24, 0x1

    iget v0, v10, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    div-float v26, v26, v16

    aput v26, v5, v24

    .line 299
    :cond_a
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/CropView;->mCenterX:F

    move/from16 v24, v0

    const/16 v26, 0x0

    aget v26, v5, v26

    add-float v24, v24, v26

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/crop/CropView;->mCenterX:F

    .line 301
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/CropView;->mCenterY:F

    move/from16 v24, v0

    const/16 v26, 0x1

    aget v26, v5, v26

    add-float v24, v24, v26

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/crop/CropView;->mCenterY:F

    .line 302
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/crop/CropView;->updateCenter()V

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/CropView;->invalidate()V

    .line 305
    .end local v5    # "adjustment":[F
    .end local v6    # "coef":[F
    .end local v10    # "edges":Landroid/graphics/RectF;
    .end local v16    # "scale":F
    :cond_b
    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/crop/CropView;->mLastX:F

    .line 308
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/crop/CropView;->mLastY:F

    .line 309
    const/16 v24, 0x1

    goto/16 :goto_6

    .line 265
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/crop/CropView;->mTempPoint:[F

    .line 266
    .local v14, "point":[F
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/CropView;->mLastX:F

    move/from16 v26, v0

    sub-float v26, v26, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    move/from16 v27, v0

    div-float v26, v26, v27

    aput v26, v14, v24

    .line 267
    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/CropView;->mLastY:F

    move/from16 v26, v0

    sub-float v26, v26, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    move/from16 v27, v0

    div-float v26, v26, v27

    aput v26, v14, v24

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 269
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/CropView;->mCenterX:F

    move/from16 v24, v0

    const/16 v26, 0x0

    aget v26, v14, v26

    add-float v24, v24, v26

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/crop/CropView;->mCenterX:F

    .line 270
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/CropView;->mCenterY:F

    move/from16 v24, v0

    const/16 v26, 0x1

    aget v26, v14, v26

    add-float v24, v24, v26

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/crop/CropView;->mCenterY:F

    .line 271
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/crop/CropView;->updateCenter()V

    goto/16 :goto_7

    .line 305
    .end local v14    # "point":[F
    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v24

    .line 290
    .restart local v5    # "adjustment":[F
    .restart local v6    # "coef":[F
    .restart local v10    # "edges":Landroid/graphics/RectF;
    .restart local v16    # "scale":F
    :cond_c
    :try_start_2
    iget v0, v10, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/CropView;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpg-float v24, v24, v26

    if-gez v24, :cond_9

    .line 291
    const/16 v24, 0x0

    iget v0, v10, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/CropView;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v26, v26, v27

    div-float v26, v26, v16

    aput v26, v5, v24

    goto/16 :goto_8

    .line 295
    :cond_d
    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/CropView;->getHeight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpg-float v24, v24, v26

    if-gez v24, :cond_a

    .line 296
    const/16 v24, 0x1

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/CropView;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v26, v26, v27

    div-float v26, v26, v16

    aput v26, v5, v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_9

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/systemui/crop/CropView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iput p1, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->scale:F

    .line 144
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTileSource(Lcom/android/systemui/crop/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "source"    # Lcom/android/systemui/crop/TiledImageRenderer$TileSource;
    .param p2, "isReadyCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Lcom/android/systemui/crop/TiledImageView;->setTileSource(Lcom/android/systemui/crop/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->centerX:F

    iput v0, p0, Lcom/android/systemui/crop/CropView;->mCenterX:F

    .line 129
    iget-object v0, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->centerY:F

    iput v0, p0, Lcom/android/systemui/crop/CropView;->mCenterY:F

    .line 130
    iget-object v0, p0, Lcom/android/systemui/crop/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/crop/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v1, v1, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->rotation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/crop/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/crop/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/systemui/crop/CropView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget v1, v1, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->rotation:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/crop/CropView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/crop/CropView;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/systemui/crop/CropView;->updateMinScale(IILcom/android/systemui/crop/TiledImageRenderer$TileSource;Z)V

    .line 135
    return-void
.end method

.method public setTouchCallback(Lcom/android/systemui/crop/CropView$TouchCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/crop/CropView$TouchCallback;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/systemui/crop/CropView;->mTouchCallback:Lcom/android/systemui/crop/CropView$TouchCallback;

    .line 213
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/android/systemui/crop/CropView;->mTouchEnabled:Z

    .line 209
    return-void
.end method
