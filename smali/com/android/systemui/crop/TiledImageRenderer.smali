.class public Lcom/android/systemui/crop/TiledImageRenderer;
.super Ljava/lang/Object;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/crop/TiledImageRenderer$1;,
        Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;,
        Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;,
        Lcom/android/systemui/crop/TiledImageRenderer$Tile;,
        Lcom/android/systemui/crop/TiledImageRenderer$TileSource;
    }
.end annotation


# static fields
.field public static final SIZE_UNKNOWN:I = -0x1

.field private static final STATE_ACTIVATED:I = 0x1

.field private static final STATE_DECODED:I = 0x8

.field private static final STATE_DECODE_FAIL:I = 0x10

.field private static final STATE_DECODING:I = 0x4

.field private static final STATE_IN_QUEUE:I = 0x2

.field private static final STATE_RECYCLED:I = 0x40

.field private static final STATE_RECYCLING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "TiledImageRenderer"

.field private static final UPLOAD_LIMIT:I = 0x1

.field private static sTilePool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveRange:[Landroid/graphics/Rect;

.field private final mActiveTiles:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/systemui/crop/TiledImageRenderer$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundTileUploaded:Z

.field protected mCenterX:F

.field protected mCenterY:F

.field private final mDecodeQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private mLayoutTiles:Z

.field private mLevel:I

.field protected mLevelCount:I

.field private mModel:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mParent:Landroid/view/View;

.field private mPreview:Lcom/android/systemui/crop/glrenderer/BasicTexture;

.field private final mQueueLock:Ljava/lang/Object;

.field private final mRecycledQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

.field private mRenderComplete:Z

.field protected mRotation:I

.field protected mScale:F

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private mTileDecoder:Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;

.field private final mTileRange:Landroid/graphics/Rect;

.field private mTileSize:I

.field private final mUploadQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

.field private mUploadQuota:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/crop/TiledImageRenderer;->sTilePool:Landroid/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v2, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mLevel:I

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mSourceRect:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mTargetRect:Landroid/graphics/RectF;

    .line 80
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    invoke-direct {v0, v3}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;-><init>(Lcom/android/systemui/crop/TiledImageRenderer$1;)V

    iput-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mRecycledQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    .line 85
    new-instance v0, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    invoke-direct {v0, v3}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;-><init>(Lcom/android/systemui/crop/TiledImageRenderer$1;)V

    iput-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mUploadQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    .line 86
    new-instance v0, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    invoke-direct {v0, v3}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;-><init>(Lcom/android/systemui/crop/TiledImageRenderer$1;)V

    iput-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mDecodeQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    .line 89
    iput v1, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mImageWidth:I

    .line 90
    iput v1, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mImageHeight:I

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mActiveRange:[Landroid/graphics/Rect;

    .line 158
    iput-object p1, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mParent:Landroid/view/View;

    .line 159
    new-instance v0, Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;-><init>(Lcom/android/systemui/crop/TiledImageRenderer;Lcom/android/systemui/crop/TiledImageRenderer$1;)V

    iput-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileDecoder:Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;

    .line 160
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileDecoder:Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;

    invoke-virtual {v0}, Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;->start()V

    .line 161
    return-void
.end method

.method static synthetic access$200()Landroid/util/Pools$Pool;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/systemui/crop/TiledImageRenderer;->sTilePool:Landroid/util/Pools$Pool;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/crop/TiledImageRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/crop/TiledImageRenderer;

    .prologue
    .line 23
    iget v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/crop/TiledImageRenderer;)Lcom/android/systemui/crop/TiledImageRenderer$TileSource;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/crop/TiledImageRenderer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mModel:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/crop/TiledImageRenderer;III)Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/crop/TiledImageRenderer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/crop/TiledImageRenderer;->getTile(III)Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/crop/TiledImageRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/crop/TiledImageRenderer;

    .prologue
    .line 23
    iget v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mLevel:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/crop/TiledImageRenderer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/crop/TiledImageRenderer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/crop/TiledImageRenderer;)Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/crop/TiledImageRenderer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mDecodeQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/crop/TiledImageRenderer;Lcom/android/systemui/crop/TiledImageRenderer$Tile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/crop/TiledImageRenderer;
    .param p1, "x1"    # Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/crop/TiledImageRenderer;->decodeTile(Lcom/android/systemui/crop/TiledImageRenderer$Tile;)V

    return-void
.end method

.method private activateTile(III)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 531
    invoke-static {p1, p2, p3}, Lcom/android/systemui/crop/TiledImageRenderer;->makeTileKey(III)J

    move-result-wide v0

    .line 532
    .local v0, "key":J
    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    .line 533
    .local v2, "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    if-eqz v2, :cond_1

    .line 534
    iget v3, v2, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 535
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/crop/TiledImageRenderer;->obtainTile(III)Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    move-result-object v2

    .line 540
    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method private calculateLevelCount()V
    .locals 6

    .prologue
    .line 187
    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mPreview:Lcom/android/systemui/crop/glrenderer/BasicTexture;

    if-eqz v3, :cond_0

    .line 188
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mImageWidth:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mPreview:Lcom/android/systemui/crop/glrenderer/BasicTexture;

    invoke-virtual {v5}, Lcom/android/systemui/crop/glrenderer/BasicTexture;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/systemui/crop/util/Utils;->ceilLog2(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mLevelCount:I

    .line 200
    :goto_0
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x1

    .line 192
    .local v0, "levels":I
    iget v3, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mImageWidth:I

    iget v4, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mImageHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 193
    .local v1, "maxDim":I
    iget v2, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I

    .line 194
    .local v2, "t":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 195
    shl-int/lit8 v2, v2, 0x1

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_1
    iput v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mLevelCount:I

    goto :goto_0
.end method

.method private decodeTile(Lcom/android/systemui/crop/TiledImageRenderer$Tile;)V
    .locals 4
    .param p1, "tile"    # Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    .prologue
    .line 477
    iget-object v2, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 478
    :try_start_0
    iget v1, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 479
    monitor-exit v2

    .line 501
    :goto_0
    return-void

    .line 481
    :cond_0
    const/4 v1, 0x4

    iput v1, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    .line 482
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 483
    invoke-virtual {p1}, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->decode()Z

    move-result v0

    .line 484
    .local v0, "decodeComplete":Z
    iget-object v2, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 485
    :try_start_1
    iget v1, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    const/16 v3, 0x20

    if-ne v1, v3, :cond_2

    .line 486
    const/16 v1, 0x40

    iput v1, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    .line 487
    iget-object v1, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 488
    sget-object v1, Lcom/android/systemui/crop/TiledImageRenderer;->sTilePool:Landroid/util/Pools$Pool;

    iget-object v3, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 489
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 491
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mRecycledQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    invoke-virtual {v1, p1}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->push(Lcom/android/systemui/crop/TiledImageRenderer$Tile;)Z

    .line 492
    monitor-exit v2

    goto :goto_0

    .line 499
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 482
    .end local v0    # "decodeComplete":Z
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 494
    .restart local v0    # "decodeComplete":Z
    :cond_2
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    :goto_1
    :try_start_3
    iput v1, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    .line 495
    if-nez v0, :cond_4

    .line 496
    monitor-exit v2

    goto :goto_0

    .line 494
    :cond_3
    const/16 v1, 0x10

    goto :goto_1

    .line 498
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mUploadQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    invoke-virtual {v1, p1}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->push(Lcom/android/systemui/crop/TiledImageRenderer$Tile;)Z

    .line 499
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 500
    invoke-direct {p0}, Lcom/android/systemui/crop/TiledImageRenderer;->invalidate()V

    goto :goto_0
.end method

.method private drawTile(Lcom/android/systemui/crop/glrenderer/GLCanvas;IIIFFF)V
    .locals 12
    .param p1, "canvas"    # Lcom/android/systemui/crop/glrenderer/GLCanvas;
    .param p2, "tx"    # I
    .param p3, "ty"    # I
    .param p4, "level"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "length"    # F

    .prologue
    .line 582
    iget-object v5, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mSourceRect:Landroid/graphics/RectF;

    .line 583
    .local v5, "source":Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mTargetRect:Landroid/graphics/RectF;

    .line 584
    .local v6, "target":Landroid/graphics/RectF;
    add-float v8, p5, p7

    add-float v9, p6, p7

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v6, v0, v1, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 585
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I

    int-to-float v11, v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 587
    move/from16 v0, p4

    invoke-direct {p0, p2, p3, v0}, Lcom/android/systemui/crop/TiledImageRenderer;->getTile(III)Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    move-result-object v7

    .line 588
    .local v7, "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    if-eqz v7, :cond_4

    .line 589
    invoke-virtual {v7}, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v8

    if-nez v8, :cond_0

    .line 590
    iget v8, v7, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_3

    .line 591
    iget v8, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mUploadQuota:I

    if-lez v8, :cond_2

    .line 592
    iget v8, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mUploadQuota:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mUploadQuota:I

    .line 593
    invoke-virtual {v7, p1}, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->updateContent(Lcom/android/systemui/crop/glrenderer/GLCanvas;)V

    .line 602
    :cond_0
    :goto_0
    invoke-direct {p0, v7, p1, v5, v6}, Lcom/android/systemui/crop/TiledImageRenderer;->drawTile(Lcom/android/systemui/crop/TiledImageRenderer$Tile;Lcom/android/systemui/crop/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 614
    :cond_1
    :goto_1
    return-void

    .line 595
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mRenderComplete:Z

    goto :goto_0

    .line 597
    :cond_3
    iget v8, v7, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    const/16 v9, 0x10

    if-eq v8, v9, :cond_0

    .line 598
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mRenderComplete:Z

    .line 599
    invoke-direct {p0, v7}, Lcom/android/systemui/crop/TiledImageRenderer;->queueForDecode(Lcom/android/systemui/crop/TiledImageRenderer$Tile;)V

    goto :goto_0

    .line 606
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mPreview:Lcom/android/systemui/crop/glrenderer/BasicTexture;

    if-eqz v8, :cond_1

    .line 607
    iget v8, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I

    shl-int v4, v8, p4

    .line 608
    .local v4, "size":I
    iget-object v8, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mPreview:Lcom/android/systemui/crop/glrenderer/BasicTexture;

    invoke-virtual {v8}, Lcom/android/systemui/crop/glrenderer/BasicTexture;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mImageWidth:I

    int-to-float v9, v9

    div-float v2, v8, v9

    .line 609
    .local v2, "scaleX":F
    iget-object v8, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mPreview:Lcom/android/systemui/crop/glrenderer/BasicTexture;

    invoke-virtual {v8}, Lcom/android/systemui/crop/glrenderer/BasicTexture;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mImageHeight:I

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 610
    .local v3, "scaleY":F
    int-to-float v8, p2

    mul-float/2addr v8, v2

    int-to-float v9, p3

    mul-float/2addr v9, v3

    add-int v10, p2, v4

    int-to-float v10, v10

    mul-float/2addr v10, v2

    add-int v11, p3, v4

    int-to-float v11, v11

    mul-float/2addr v11, v3

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 612
    iget-object v8, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mPreview:Lcom/android/systemui/crop/glrenderer/BasicTexture;

    invoke-interface {p1, v8, v5, v6}, Lcom/android/systemui/crop/glrenderer/GLCanvas;->drawTexture(Lcom/android/systemui/crop/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method private drawTile(Lcom/android/systemui/crop/TiledImageRenderer$Tile;Lcom/android/systemui/crop/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4
    .param p1, "tile"    # Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    .param p2, "canvas"    # Lcom/android/systemui/crop/glrenderer/GLCanvas;
    .param p3, "source"    # Landroid/graphics/RectF;
    .param p4, "target"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 619
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    invoke-interface {p2, p1, p3, p4}, Lcom/android/systemui/crop/glrenderer/GLCanvas;->drawTexture(Lcom/android/systemui/crop/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 621
    const/4 v1, 0x1

    .line 627
    :goto_1
    return v1

    .line 625
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->getParentTile()Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    move-result-object v0

    .line 626
    .local v0, "parent":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    if-nez v0, :cond_1

    .line 627
    const/4 v1, 0x0

    goto :goto_1

    .line 629
    :cond_1
    iget v1, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mX:I

    iget v2, v0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mX:I

    if-ne v1, v2, :cond_2

    .line 630
    iget v1, p3, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->left:F

    .line 631
    iget v1, p3, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->right:F

    .line 636
    :goto_2
    iget v1, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mY:I

    iget v2, v0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mY:I

    if-ne v1, v2, :cond_3

    .line 637
    iget v1, p3, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->top:F

    .line 638
    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->bottom:F

    .line 643
    :goto_3
    move-object p1, v0

    .line 644
    goto :goto_0

    .line 633
    :cond_2
    iget v1, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->left:F

    .line 634
    iget v1, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 640
    :cond_3
    iget v1, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->top:F

    .line 641
    iget v1, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->bottom:F

    goto :goto_3
.end method

.method private getRange(Landroid/graphics/Rect;FFIFI)V
    .locals 26
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "cX"    # F
    .param p3, "cY"    # F
    .param p4, "level"    # I
    .param p5, "scale"    # F
    .param p6, "rotation"    # I

    .prologue
    .line 346
    move/from16 v0, p6

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 347
    .local v10, "radians":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mViewWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 348
    .local v16, "w":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mViewHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v6, v0

    .line 350
    .local v6, "h":D
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 351
    .local v4, "cos":D
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 352
    .local v12, "sin":D
    mul-double v20, v4, v16

    mul-double v22, v12, v6

    sub-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    mul-double v22, v4, v16

    mul-double v24, v12, v6

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v18, v0

    .line 354
    .local v18, "width":I
    mul-double v20, v12, v16

    mul-double v22, v4, v6

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    mul-double v22, v12, v16

    mul-double v24, v4, v6

    sub-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v3, v0

    .line 357
    .local v3, "height":I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v20, v20, p5

    div-float v19, v19, v20

    sub-float v19, p2, v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v8, v0

    .line 358
    .local v8, "left":I
    int-to-float v0, v3

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v20, v20, p5

    div-float v19, v19, v20

    sub-float v19, p3, v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v15, v0

    .line 359
    .local v15, "top":I
    int-to-float v0, v8

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v9, v0

    .line 360
    .local v9, "right":I
    int-to-float v0, v15

    move/from16 v19, v0

    int-to-float v0, v3

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v2, v0

    .line 363
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I

    move/from16 v19, v0

    shl-int v14, v19, p4

    .line 364
    .local v14, "size":I
    const/16 v19, 0x0

    div-int v20, v8, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 365
    const/16 v19, 0x0

    div-int v20, v15, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 366
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mImageWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 367
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mImageHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 369
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v15, v9, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 370
    return-void
.end method

.method private getRange(Landroid/graphics/Rect;FFII)V
    .locals 7
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "cX"    # F
    .param p3, "cY"    # F
    .param p4, "level"    # I
    .param p5, "rotation"    # I

    .prologue
    .line 334
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    add-int/lit8 v2, p4, 0x1

    shl-int/2addr v1, v2

    int-to-float v1, v1

    div-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/crop/TiledImageRenderer;->getRange(Landroid/graphics/Rect;FFIFI)V

    .line 335
    return-void
.end method

.method private getTile(III)Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-static {p1, p2, p3}, Lcom/android/systemui/crop/TiledImageRenderer;->makeTileKey(III)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    return-object v0
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 173
    return-void
.end method

.method private invalidateTiles()V
    .locals 5

    .prologue
    .line 319
    iget-object v4, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 320
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mDecodeQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    invoke-virtual {v3}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->clean()V

    .line 321
    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mUploadQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    invoke-virtual {v3}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->clean()V

    .line 324
    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 325
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 326
    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    .line 327
    .local v2, "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    invoke-direct {p0, v2}, Lcom/android/systemui/crop/TiledImageRenderer;->recycleTile(Lcom/android/systemui/crop/TiledImageRenderer$Tile;)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    .end local v2    # "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    .line 330
    monitor-exit v4

    .line 331
    return-void

    .line 330
    .end local v0    # "i":I
    .end local v1    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static isHighResolution(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x800

    .line 150
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 151
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 153
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 154
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v2, v3, :cond_0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private layoutTiles()V
    .locals 22

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mViewWidth:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mViewHeight:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mLayoutTiles:Z

    if-nez v3, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mLayoutTiles:Z

    .line 254
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mScale:F

    div-float/2addr v3, v5

    invoke-static {v3}, Lcom/android/systemui/crop/util/Utils;->floorLog2(F)I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mLevelCount:I

    invoke-static {v3, v5, v6}, Lcom/android/systemui/crop/util/Utils;->clamp(III)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mLevel:I

    .line 259
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mLevel:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mLevelCount:I

    if-eq v3, v5, :cond_3

    .line 260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    .line 261
    .local v4, "range":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mCenterX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mCenterY:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mLevel:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mScale:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mRotation:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/crop/TiledImageRenderer;->getRange(Landroid/graphics/Rect;FFIFI)V

    .line 262
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mViewWidth:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mCenterX:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mScale:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mOffsetX:I

    .line 263
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mViewHeight:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mCenterY:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mScale:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mOffsetY:I

    .line 264
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mScale:F

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mLevel:I

    shl-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v3, v5

    const/high16 v5, 0x3f400000    # 0.75f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mLevel:I

    add-int/lit8 v13, v3, -0x1

    .line 272
    .end local v4    # "range":Landroid/graphics/Rect;
    .local v13, "fromLevel":I
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mLevelCount:I

    add-int/lit8 v5, v5, -0x2

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 273
    add-int/lit8 v3, v13, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mLevelCount:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 275
    .local v12, "endLevel":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mActiveRange:[Landroid/graphics/Rect;

    .line 276
    .local v4, "range":[Landroid/graphics/Rect;
    move v9, v13

    .local v9, "i":I
    :goto_2
    if-ge v9, v12, :cond_4

    .line 277
    sub-int v3, v9, v13

    aget-object v6, v4, v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mCenterX:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mCenterY:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mRotation:I

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/crop/TiledImageRenderer;->getRange(Landroid/graphics/Rect;FFII)V

    .line 276
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 264
    .end local v9    # "i":I
    .end local v12    # "endLevel":I
    .end local v13    # "fromLevel":I
    .local v4, "range":Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mLevel:I

    goto :goto_1

    .line 267
    .end local v4    # "range":Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mLevel:I

    add-int/lit8 v13, v3, -0x2

    .line 268
    .restart local v13    # "fromLevel":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mViewWidth:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mCenterX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mOffsetX:I

    .line 269
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mViewHeight:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mCenterY:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mOffsetY:I

    goto :goto_1

    .line 281
    .local v4, "range":[Landroid/graphics/Rect;
    .restart local v9    # "i":I
    .restart local v12    # "endLevel":I
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mRotation:I

    rem-int/lit8 v3, v3, 0x5a

    if-nez v3, :cond_0

    .line 285
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    .line 286
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mDecodeQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    invoke-virtual {v3}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->clean()V

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mUploadQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    invoke-virtual {v3}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->clean()V

    .line 288
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mBackgroundTileUploaded:Z

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v15

    .line 293
    .local v15, "n":I
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v15, :cond_7

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    .line 295
    .local v19, "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    move-object/from16 v0, v19

    iget v14, v0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileLevel:I

    .line 296
    .local v14, "level":I
    if-lt v14, v13, :cond_5

    if-ge v14, v12, :cond_5

    sub-int v3, v14, v13

    aget-object v3, v4, v3

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mX:I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mY:I

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 298
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 299
    add-int/lit8 v9, v9, -0x1

    .line 300
    add-int/lit8 v15, v15, -0x1

    .line 301
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/crop/TiledImageRenderer;->recycleTile(Lcom/android/systemui/crop/TiledImageRenderer$Tile;)V

    .line 293
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 304
    .end local v14    # "level":I
    .end local v19    # "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    :cond_7
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    move v9, v13

    :goto_4
    if-ge v9, v12, :cond_a

    .line 307
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I

    shl-int v18, v3, v9

    .line 308
    .local v18, "size":I
    sub-int v3, v9, v13

    aget-object v16, v4, v3

    .line 309
    .local v16, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .local v21, "y":I
    move-object/from16 v0, v16

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .local v11, "bottom":I
    :goto_5
    move/from16 v0, v21

    if-ge v0, v11, :cond_9

    .line 310
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    .local v20, "x":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    .local v17, "right":I
    :goto_6
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 311
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui/crop/TiledImageRenderer;->activateTile(III)V

    .line 310
    add-int v20, v20, v18

    goto :goto_6

    .line 304
    .end local v11    # "bottom":I
    .end local v15    # "n":I
    .end local v16    # "r":Landroid/graphics/Rect;
    .end local v17    # "right":I
    .end local v18    # "size":I
    .end local v20    # "x":I
    .end local v21    # "y":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 309
    .restart local v11    # "bottom":I
    .restart local v15    # "n":I
    .restart local v16    # "r":Landroid/graphics/Rect;
    .restart local v17    # "right":I
    .restart local v18    # "size":I
    .restart local v20    # "x":I
    .restart local v21    # "y":I
    :cond_8
    add-int v21, v21, v18

    goto :goto_5

    .line 306
    .end local v17    # "right":I
    .end local v20    # "x":I
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 315
    .end local v11    # "bottom":I
    .end local v16    # "r":Landroid/graphics/Rect;
    .end local v18    # "size":I
    .end local v21    # "y":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/crop/TiledImageRenderer;->invalidate()V

    goto/16 :goto_0
.end method

.method private static makeTileKey(III)J
    .locals 7
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "level"    # I

    .prologue
    const/16 v6, 0x10

    .line 548
    int-to-long v0, p0

    .line 549
    .local v0, "result":J
    shl-long v2, v0, v6

    int-to-long v4, p1

    or-long v0, v2, v4

    .line 550
    shl-long v2, v0, v6

    int-to-long v4, p2

    or-long v0, v2, v4

    .line 551
    return-wide v0
.end method

.method private obtainTile(III)Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 504
    iget-object v2, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 505
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mRecycledQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    invoke-virtual {v1}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->pop()Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    move-result-object v0

    .line 506
    .local v0, "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    if-eqz v0, :cond_0

    .line 507
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    .line 508
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->update(III)V

    .line 509
    monitor-exit v2

    .line 511
    .end local v0    # "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    :goto_0
    return-object v0

    .restart local v0    # "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    :cond_0
    new-instance v0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    .end local v0    # "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/crop/TiledImageRenderer$Tile;-><init>(Lcom/android/systemui/crop/TiledImageRenderer;III)V

    monitor-exit v2

    goto :goto_0

    .line 512
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private queueForDecode(Lcom/android/systemui/crop/TiledImageRenderer$Tile;)V
    .locals 3
    .param p1, "tile"    # Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    .prologue
    .line 466
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 467
    :try_start_0
    iget v0, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 468
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    .line 469
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mDecodeQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->push(Lcom/android/systemui/crop/TiledImageRenderer$Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 473
    :cond_0
    monitor-exit v1

    .line 474
    return-void

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private recycleTile(Lcom/android/systemui/crop/TiledImageRenderer$Tile;)V
    .locals 3
    .param p1, "tile"    # Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    .prologue
    .line 516
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 517
    :try_start_0
    iget v0, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 518
    const/16 v0, 0x20

    iput v0, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    .line 519
    monitor-exit v1

    .line 528
    :goto_0
    return-void

    .line 521
    :cond_0
    const/16 v0, 0x40

    iput v0, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    .line 522
    iget-object v0, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 523
    sget-object v0, Lcom/android/systemui/crop/TiledImageRenderer;->sTilePool:Landroid/util/Pools$Pool;

    iget-object v2, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-interface {v0, v2}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 524
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mRecycledQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->push(Lcom/android/systemui/crop/TiledImageRenderer$Tile;)Z

    .line 527
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static suggestedTileSize(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-static {p0}, Lcom/android/systemui/crop/TiledImageRenderer;->isHighResolution(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x100

    goto :goto_0
.end method

.method private uploadBackgroundTiles(Lcom/android/systemui/crop/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/android/systemui/crop/glrenderer/GLCanvas;

    .prologue
    .line 455
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mBackgroundTileUploaded:Z

    .line 456
    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 457
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 458
    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    .line 459
    .local v2, "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    invoke-virtual {v2}, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 460
    invoke-direct {p0, v2}, Lcom/android/systemui/crop/TiledImageRenderer;->queueForDecode(Lcom/android/systemui/crop/TiledImageRenderer$Tile;)V

    .line 457
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    .end local v2    # "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    :cond_1
    return-void
.end method

.method private uploadTiles(Lcom/android/systemui/crop/glrenderer/GLCanvas;)V
    .locals 5
    .param p1, "canvas"    # Lcom/android/systemui/crop/glrenderer/GLCanvas;

    .prologue
    .line 555
    const/4 v0, 0x1

    .line 556
    .local v0, "quota":I
    const/4 v1, 0x0

    .line 557
    .local v1, "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 558
    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 559
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mUploadQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    invoke-virtual {v2}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->pop()Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    move-result-object v1

    .line 560
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    if-nez v1, :cond_3

    .line 573
    :cond_1
    if-eqz v1, :cond_2

    .line 574
    invoke-direct {p0}, Lcom/android/systemui/crop/TiledImageRenderer;->invalidate()V

    .line 576
    :cond_2
    return-void

    .line 560
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 564
    :cond_3
    invoke-virtual {v1}, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 565
    iget v2, v1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 566
    invoke-virtual {v1, p1}, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->updateContent(Lcom/android/systemui/crop/glrenderer/GLCanvas;)V

    .line 567
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 569
    :cond_4
    const-string v2, "TiledImageRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tile in upload queue has invalid state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/android/systemui/crop/glrenderer/GLCanvas;)Z
    .locals 24
    .param p1, "canvas"    # Lcom/android/systemui/crop/glrenderer/GLCanvas;

    .prologue
    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/crop/TiledImageRenderer;->layoutTiles()V

    .line 399
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/crop/TiledImageRenderer;->uploadTiles(Lcom/android/systemui/crop/glrenderer/GLCanvas;)V

    .line 401
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mUploadQuota:I

    .line 402
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mRenderComplete:Z

    .line 404
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mLevel:I

    .line 405
    .local v6, "level":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mRotation:I

    move/from16 v22, v0

    .line 406
    .local v22, "rotation":I
    const/16 v18, 0x0

    .line 407
    .local v18, "flags":I
    if-eqz v22, :cond_0

    .line 408
    or-int/lit8 v18, v18, 0x2

    .line 411
    :cond_0
    if-eqz v18, :cond_1

    .line 412
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/android/systemui/crop/glrenderer/GLCanvas;->save(I)V

    .line 413
    if-eqz v22, :cond_1

    .line 414
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mViewWidth:I

    div-int/lit8 v16, v2, 0x2

    .local v16, "centerX":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mViewHeight:I

    div-int/lit8 v17, v2, 0x2

    .line 415
    .local v17, "centerY":I
    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/crop/glrenderer/GLCanvas;->translate(FF)V

    .line 416
    move/from16 v0, v22

    int-to-float v2, v0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v10, v11}, Lcom/android/systemui/crop/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 417
    move/from16 v0, v16

    neg-int v2, v0

    int-to-float v2, v2

    move/from16 v0, v17

    neg-int v3, v0

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/crop/glrenderer/GLCanvas;->translate(FF)V

    .line 421
    .end local v16    # "centerX":I
    .end local v17    # "centerY":I
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mLevelCount:I

    if-eq v6, v2, :cond_3

    .line 422
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I

    shl-int v23, v2, v6

    .line 423
    .local v23, "size":I
    move/from16 v0, v23

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mScale:F

    mul-float v9, v2, v3

    .line 424
    .local v9, "length":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 426
    .local v21, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .local v5, "ty":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v2, :cond_4

    .line 427
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mOffsetY:I

    int-to-float v2, v2

    move/from16 v0, v19

    int-to-float v3, v0

    mul-float/2addr v3, v9

    add-float v8, v2, v3

    .line 428
    .local v8, "y":F
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->left:I

    .local v4, "tx":I
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_1
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-ge v4, v2, :cond_2

    .line 429
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mOffsetX:I

    int-to-float v2, v2

    move/from16 v0, v20

    int-to-float v3, v0

    mul-float/2addr v3, v9

    add-float v7, v2, v3

    .local v7, "x":F
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 430
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/crop/TiledImageRenderer;->drawTile(Lcom/android/systemui/crop/glrenderer/GLCanvas;IIIFFF)V

    .line 428
    add-int v4, v4, v23

    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 426
    .end local v7    # "x":F
    :cond_2
    add-int v5, v5, v23

    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 433
    .end local v4    # "tx":I
    .end local v5    # "ty":I
    .end local v8    # "y":F
    .end local v9    # "length":F
    .end local v19    # "i":I
    .end local v20    # "j":I
    .end local v21    # "r":Landroid/graphics/Rect;
    .end local v23    # "size":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mPreview:Lcom/android/systemui/crop/glrenderer/BasicTexture;

    if-eqz v2, :cond_4

    .line 434
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mPreview:Lcom/android/systemui/crop/glrenderer/BasicTexture;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mOffsetX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mOffsetY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mImageWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mImageHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v15

    move-object/from16 v11, p1

    invoke-virtual/range {v10 .. v15}, Lcom/android/systemui/crop/glrenderer/BasicTexture;->draw(Lcom/android/systemui/crop/glrenderer/GLCanvas;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    :cond_4
    if-eqz v18, :cond_5

    .line 440
    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/crop/glrenderer/GLCanvas;->restore()V

    .line 444
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mRenderComplete:Z

    if-eqz v2, :cond_9

    .line 445
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mBackgroundTileUploaded:Z

    if-nez v2, :cond_6

    .line 446
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/crop/TiledImageRenderer;->uploadBackgroundTiles(Lcom/android/systemui/crop/glrenderer/GLCanvas;)V

    .line 451
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mRenderComplete:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/crop/TiledImageRenderer;->mPreview:Lcom/android/systemui/crop/glrenderer/BasicTexture;

    if-eqz v2, :cond_a

    :cond_7
    const/4 v2, 0x1

    :goto_3
    return v2

    .line 439
    :catchall_0
    move-exception v2

    if-eqz v18, :cond_8

    .line 440
    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/crop/glrenderer/GLCanvas;->restore()V

    :cond_8
    throw v2

    .line 449
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/crop/TiledImageRenderer;->invalidate()V

    goto :goto_2

    .line 451
    :cond_a
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public freeTextures()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 373
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mLayoutTiles:Z

    .line 375
    iget-object v4, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileDecoder:Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;

    invoke-virtual {v4}, Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;->finishAndWait()V

    .line 376
    iget-object v5, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    .line 377
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mUploadQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    invoke-virtual {v4}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->clean()V

    .line 378
    iget-object v4, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mDecodeQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    invoke-virtual {v4}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->clean()V

    .line 379
    iget-object v4, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mRecycledQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    invoke-virtual {v4}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->pop()Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    move-result-object v3

    .line 380
    .local v3, "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    :goto_0
    if-eqz v3, :cond_0

    .line 381
    invoke-virtual {v3}, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->recycle()V

    .line 382
    iget-object v4, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mRecycledQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    invoke-virtual {v4}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->pop()Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    move-result-object v3

    goto :goto_0

    .line 384
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    iget-object v4, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 387
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 388
    iget-object v4, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    .line 389
    .local v2, "texture":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    invoke-virtual {v2}, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->recycle()V

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 384
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "texture":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    .end local v3    # "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 391
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    .restart local v3    # "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->clear()V

    .line 392
    iget-object v4, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 394
    :cond_2
    sget-object v4, Lcom/android/systemui/crop/TiledImageRenderer;->sTilePool:Landroid/util/Pools$Pool;

    invoke-interface {v4}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 395
    return-void
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mViewHeight:I

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mViewWidth:I

    return v0
.end method

.method public notifyModelInvalidated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/crop/TiledImageRenderer;->invalidateTiles()V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mModel:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    if-nez v0, :cond_0

    .line 205
    iput v1, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mImageWidth:I

    .line 206
    iput v1, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mImageHeight:I

    .line 207
    iput v1, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mLevelCount:I

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mPreview:Lcom/android/systemui/crop/glrenderer/BasicTexture;

    .line 216
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mLayoutTiles:Z

    .line 217
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mModel:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mImageWidth:I

    .line 211
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mModel:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mImageHeight:I

    .line 212
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mModel:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getPreview()Lcom/android/systemui/crop/glrenderer/BasicTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mPreview:Lcom/android/systemui/crop/glrenderer/BasicTexture;

    .line 213
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mModel:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getTileSize()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/crop/TiledImageRenderer;->calculateLevelCount()V

    goto :goto_0
.end method

.method public setModel(Lcom/android/systemui/crop/TiledImageRenderer$TileSource;I)V
    .locals 1
    .param p1, "model"    # Lcom/android/systemui/crop/TiledImageRenderer$TileSource;
    .param p2, "rotation"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mModel:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    if-eq v0, p1, :cond_0

    .line 177
    iput-object p1, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mModel:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/crop/TiledImageRenderer;->notifyModelInvalidated()V

    .line 180
    :cond_0
    iget v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mRotation:I

    if-eq v0, p2, :cond_1

    .line 181
    iput p2, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mRotation:I

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mLayoutTiles:Z

    .line 184
    :cond_1
    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "scale"    # F

    .prologue
    .line 225
    iget v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mCenterX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mCenterY:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mScale:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_0
    iput p1, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mCenterX:F

    .line 230
    iput p2, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mCenterY:F

    .line 231
    iput p3, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mScale:F

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mLayoutTiles:Z

    goto :goto_0
.end method

.method public setViewSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 220
    iput p1, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mViewWidth:I

    .line 221
    iput p2, p0, Lcom/android/systemui/crop/TiledImageRenderer;->mViewHeight:I

    .line 222
    return-void
.end method
