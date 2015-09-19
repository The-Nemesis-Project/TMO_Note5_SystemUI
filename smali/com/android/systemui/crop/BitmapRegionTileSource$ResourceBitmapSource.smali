.class public Lcom/android/systemui/crop/BitmapRegionTileSource$ResourceBitmapSource;
.super Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;
.source "BitmapRegionTileSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/crop/BitmapRegionTileSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceBitmapSource"
.end annotation


# instance fields
.field private mRes:Landroid/content/res/Resources;

.field private mResId:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "previewSize"    # I

    .prologue
    .line 445
    invoke-direct {p0, p3}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;-><init>(I)V

    .line 446
    iput-object p1, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$ResourceBitmapSource;->mRes:Landroid/content/res/Resources;

    .line 447
    iput p2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$ResourceBitmapSource;->mResId:I

    .line 448
    return-void
.end method

.method private regenerateInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 450
    iget-object v1, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$ResourceBitmapSource;->mRes:Landroid/content/res/Resources;

    iget v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$ResourceBitmapSource;->mResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 451
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method


# virtual methods
.method public loadBitmapRegionDecoder()Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;
    .locals 3

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/android/systemui/crop/BitmapRegionTileSource$ResourceBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 456
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;->newInstance(Ljava/io/InputStream;Z)Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;

    move-result-object v1

    .line 458
    .local v1, "regionDecoder":Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;
    invoke-static {v0}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 459
    if-nez v1, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/android/systemui/crop/BitmapRegionTileSource$ResourceBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 461
    invoke-static {v0}, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->newInstance(Ljava/io/InputStream;)Lcom/android/systemui/crop/DumbBitmapRegionDecoder;

    move-result-object v1

    .line 462
    invoke-static {v0}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 464
    :cond_0
    return-object v1
.end method

.method public loadBitmapRegionDecoder(Ljava/lang/String;)Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 487
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadPreviewBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$ResourceBitmapSource;->mRes:Landroid/content/res/Resources;

    iget v1, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$ResourceBitmapSource;->mResId:I

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public readExif(Lcom/android/systemui/crop/exif/ExifInterface;)Z
    .locals 5
    .param p1, "ei"    # Lcom/android/systemui/crop/exif/ExifInterface;

    .prologue
    const/4 v2, 0x0

    .line 473
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/crop/BitmapRegionTileSource$ResourceBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 474
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p1, v1}, Lcom/android/systemui/crop/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 475
    invoke-static {v1}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 476
    const/4 v2, 0x1

    .line 481
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return v2

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "BitmapRegionTileSource"

    const-string v4, "Error reading resource"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 480
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/NegativeArraySizeException;
    goto :goto_0
.end method
