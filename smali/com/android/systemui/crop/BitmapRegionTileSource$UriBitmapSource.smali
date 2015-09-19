.class public Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;
.super Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;
.source "BitmapRegionTileSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/crop/BitmapRegionTileSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriBitmapSource"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "previewSize"    # I

    .prologue
    .line 368
    invoke-direct {p0, p3}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;-><init>(I)V

    .line 369
    iput-object p1, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;->mContext:Landroid/content/Context;

    .line 370
    iput-object p2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;->mUri:Landroid/net/Uri;

    .line 371
    return-void
.end method

.method private regenerateInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 373
    iget-object v1, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 374
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method


# virtual methods
.method public loadBitmapRegionDecoder()Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;
    .locals 6

    .prologue
    .line 379
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 380
    .local v1, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;->newInstance(Ljava/io/InputStream;Z)Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;

    move-result-object v2

    .line 382
    .local v2, "regionDecoder":Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;
    invoke-static {v1}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 383
    if-nez v2, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 385
    invoke-static {v1}, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->newInstance(Ljava/io/InputStream;)Lcom/android/systemui/crop/DumbBitmapRegionDecoder;

    move-result-object v2

    .line 386
    invoke-static {v1}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "regionDecoder":Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;
    :cond_0
    :goto_0
    return-object v2

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "BitmapRegionTileSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadBitmapRegionDecoder(Ljava/lang/String;)Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 397
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;->newInstance(Ljava/lang/String;Z)Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;

    move-result-object v0

    .line 398
    .local v0, "regionDecoder":Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;
    if-nez v0, :cond_0

    .line 399
    invoke-static {p1}, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->newInstance(Ljava/lang/String;)Lcom/android/systemui/crop/DumbBitmapRegionDecoder;

    move-result-object v0

    .line 401
    :cond_0
    return-object v0
.end method

.method public loadPreviewBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v3, 0x0

    .line 407
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 408
    .local v2, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    invoke-static {v2, v4, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 409
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 417
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 411
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v4, "BitmapRegionTileSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 413
    goto :goto_0

    .line 414
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 415
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v0, v3

    .line 417
    goto :goto_0
.end method

.method public readExif(Lcom/android/systemui/crop/exif/ExifInterface;)Z
    .locals 6
    .param p1, "ei"    # Lcom/android/systemui/crop/exif/ExifInterface;

    .prologue
    const/4 v2, 0x0

    .line 421
    const/4 v1, 0x0

    .line 423
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 424
    invoke-virtual {p1, v1}, Lcom/android/systemui/crop/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 425
    invoke-static {v1}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    const/4 v2, 0x1

    .line 436
    invoke-static {v1}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return v2

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v3, "BitmapRegionTileSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    invoke-static {v1}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 430
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 431
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "BitmapRegionTileSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 436
    invoke-static {v1}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 433
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/NegativeArraySizeException;
    invoke-static {v1}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NegativeArraySizeException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method
