.class public Lcom/android/systemui/crop/BitmapRegionTileSource;
.super Ljava/lang/Object;
.source "BitmapRegionTileSource.java"

# interfaces
.implements Lcom/android/systemui/crop/TiledImageRenderer$TileSource;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/crop/BitmapRegionTileSource$ResourceBitmapSource;,
        Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;,
        Lcom/android/systemui/crop/BitmapRegionTileSource$FilePathBitmapSource;,
        Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;
    }
.end annotation


# static fields
.field private static final GL_SIZE_LIMIT:I = 0x800

.field public static final MAX_PREVIEW_SIZE:I = 0x400

.field private static final REUSE_BITMAP:Z

.field private static final TAG:Ljava/lang/String; = "BitmapRegionTileSource"


# instance fields
.field private mBluredPreview:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field mDecoder:Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;

.field mHeight:I

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mOverlapRegion:Landroid/graphics/Rect;

.field private mPreview:Lcom/android/systemui/crop/glrenderer/BasicTexture;

.field private final mRotation:I

.field mTileSize:I

.field private mWantRegion:Landroid/graphics/Rect;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/crop/BitmapRegionTileSource;->REUSE_BITMAP:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;

    .prologue
    const/16 v4, 0x800

    const/4 v7, 0x1

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    .line 500
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    .line 507
    invoke-static {p1}, Lcom/android/systemui/crop/TiledImageRenderer;->suggestedTileSize(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mTileSize:I

    .line 508
    invoke-virtual {p2}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mRotation:I

    .line 509
    invoke-virtual {p2}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->getBitmapRegionDecoder()Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mDecoder:Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;

    .line 511
    iget-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mDecoder:Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;

    if-eqz v2, :cond_1

    .line 512
    iget-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mDecoder:Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;

    invoke-interface {v2}, Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mWidth:I

    .line 513
    iget-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mDecoder:Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;

    invoke-interface {v2}, Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mHeight:I

    .line 514
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 515
    iget-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 516
    iget-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 517
    iget-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/16 v3, 0x4000

    new-array v3, v3, [B

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 518
    invoke-virtual {p2}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->getPreviewSize()I

    move-result v1

    .line 519
    .local v1, "previewSize":I
    if-eqz v1, :cond_1

    .line 520
    const/16 v2, 0x400

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 524
    invoke-direct {p0, p2, v1}, Lcom/android/systemui/crop/BitmapRegionTileSource;->decodePreview(Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 525
    .local v0, "preview":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 526
    const/16 v2, 0x19

    invoke-static {p1, v0, v2}, Lcom/android/systemui/crop/BitmapRegionTileSource;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mBluredPreview:Landroid/graphics/Bitmap;

    .line 529
    :cond_0
    if-nez v0, :cond_2

    .line 530
    const-string v2, "BitmapRegionTileSource"

    const-string v3, "preview is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .end local v0    # "preview":Landroid/graphics/Bitmap;
    .end local v1    # "previewSize":I
    :cond_1
    :goto_0
    return-void

    .line 531
    .restart local v0    # "preview":Landroid/graphics/Bitmap;
    .restart local v1    # "previewSize":I
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v4, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v2, v4, :cond_3

    .line 532
    new-instance v2, Lcom/android/systemui/crop/glrenderer/BitmapTexture;

    invoke-direct {v2, v0}, Lcom/android/systemui/crop/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mPreview:Lcom/android/systemui/crop/glrenderer/BasicTexture;

    goto :goto_0

    .line 534
    :cond_3
    const-string v2, "BitmapRegionTileSource"

    const-string v3, "Failed to create preview of apropriate size!  in: %dx%d, out: %dx%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget v5, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static blur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    const/4 v10, 0x1

    .line 665
    if-nez p1, :cond_0

    .line 666
    const-string v7, "BitmapRegionTileSource"

    const-string v8, "bitmap is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v0, 0x0

    .line 685
    :goto_0
    return-object v0

    .line 669
    :cond_0
    const/high16 v7, 0x43000000    # 128.0f

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 672
    .local v5, "scale":F
    const/4 v7, 0x0

    invoke-static {p1, v5, v7}, Lcom/android/systemui/crop/util/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 673
    .local v1, "bitmap_origin":Landroid/graphics/Bitmap;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v7, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 675
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v4

    .line 676
    .local v4, "rs":Landroid/renderscript/RenderScript;
    sget-object v7, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v4, v0, v7, v10}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 678
    .local v2, "input":Landroid/renderscript/Allocation;
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 679
    .local v3, "output":Landroid/renderscript/Allocation;
    invoke-static {v4}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v6

    .line 680
    .local v6, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    int-to-float v7, p2

    invoke-virtual {v6, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 681
    invoke-virtual {v6, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 682
    invoke-virtual {v6, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 683
    invoke-virtual {v3, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 684
    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->destroy()V

    goto :goto_0
.end method

.method private decodePreview(Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "source"    # Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;
    .param p2, "targetSize"    # I

    .prologue
    .line 640
    invoke-virtual {p1}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 641
    .local v0, "result":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 642
    const/4 v2, 0x0

    .line 652
    :goto_0
    return-object v2

    .line 647
    :cond_0
    int-to-float v2, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 649
    .local v1, "scale":F
    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 650
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/crop/util/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 652
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/crop/BitmapRegionTileSource;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private static ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 656
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p0

    .line 661
    :goto_0
    return-object v0

    .line 659
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 660
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "level"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "tileSize"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 607
    shl-int v2, p4, p1

    .line 608
    .local v2, "t":I
    iget-object v3, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    add-int v4, p2, v2

    add-int v5, p3, v2

    invoke-virtual {v3, p2, p3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 610
    iget-object v3, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mWidth:I

    iget v5, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mHeight:I

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 612
    iget-object v3, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 613
    iget-object v3, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mDecoder:Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;

    iget-object v4, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 615
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 616
    const-string v3, "BitmapRegionTileSource"

    const-string v4, "fail in decoding region"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 632
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 623
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 624
    .local v1, "result":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    if-nez v3, :cond_2

    .line 625
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    .line 627
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 628
    iget-object v3, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    shr-int/2addr v4, p1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    shr-int/2addr v5, p1

    int-to-float v5, v5

    invoke-virtual {v3, v0, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 631
    iget-object v3, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 632
    goto :goto_0
.end method


# virtual methods
.method public getBluredBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mBluredPreview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mWidth:I

    return v0
.end method

.method public getPreview()Lcom/android/systemui/crop/glrenderer/BasicTexture;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mPreview:Lcom/android/systemui/crop/glrenderer/BasicTexture;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mRotation:I

    return v0
.end method

.method public getTile(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "level"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 575
    invoke-virtual {p0}, Lcom/android/systemui/crop/BitmapRegionTileSource;->getTileSize()I

    move-result v1

    .line 576
    .local v1, "tileSize":I
    sget-boolean v2, Lcom/android/systemui/crop/BitmapRegionTileSource;->REUSE_BITMAP:Z

    if-nez v2, :cond_0

    .line 577
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/systemui/crop/BitmapRegionTileSource;->getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 601
    :goto_0
    return-object v2

    .line 580
    :cond_0
    shl-int v0, v1, p1

    .line 581
    .local v0, "t":I
    iget-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    add-int v3, p2, v0

    add-int v4, p3, v0

    invoke-virtual {v2, p2, p3, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 583
    if-nez p4, :cond_1

    .line 584
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 587
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 588
    iget-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object p4, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 591
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mDecoder:Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;

    iget-object v3, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 593
    iget-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v2, p4, :cond_2

    iget-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 594
    iget-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 598
    :cond_2
    if-nez p4, :cond_3

    .line 599
    const-string v2, "BitmapRegionTileSource"

    const-string v3, "fail in decoding region"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v2, p4

    .line 601
    goto :goto_0

    .line 593
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v3, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v3, p4, :cond_4

    iget-object v3, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v3, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 594
    iget-object v3, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_4
    throw v2
.end method

.method public getTileSize()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/android/systemui/crop/BitmapRegionTileSource;->mTileSize:I

    return v0
.end method
