.class public Lcom/android/systemui/crop/BitmapRegionTileSource$FilePathBitmapSource;
.super Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;
.source "BitmapRegionTileSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/crop/BitmapRegionTileSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilePathBitmapSource"
.end annotation


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "previewSize"    # I

    .prologue
    .line 329
    invoke-direct {p0, p2}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;-><init>(I)V

    .line 330
    iput-object p1, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$FilePathBitmapSource;->mPath:Ljava/lang/String;

    .line 331
    return-void
.end method


# virtual methods
.method public loadBitmapRegionDecoder()Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;
    .locals 3

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$FilePathBitmapSource;->mPath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;->newInstance(Ljava/lang/String;Z)Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;

    move-result-object v0

    .line 336
    .local v0, "d":Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;
    if-nez v0, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$FilePathBitmapSource;->mPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->newInstance(Ljava/lang/String;)Lcom/android/systemui/crop/DumbBitmapRegionDecoder;

    move-result-object v0

    .line 339
    :cond_0
    return-object v0
.end method

.method public loadBitmapRegionDecoder(Ljava/lang/String;)Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadPreviewBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$FilePathBitmapSource;->mPath:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public readExif(Lcom/android/systemui/crop/exif/ExifInterface;)Z
    .locals 4
    .param p1, "ei"    # Lcom/android/systemui/crop/exif/ExifInterface;

    .prologue
    const/4 v1, 0x0

    .line 348
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$FilePathBitmapSource;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/systemui/crop/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 349
    const/4 v1, 0x1

    .line 354
    :goto_0
    return v1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BitmapRegionTileSource"

    const-string v3, "getting decoder failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 353
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/NegativeArraySizeException;
    goto :goto_0
.end method
