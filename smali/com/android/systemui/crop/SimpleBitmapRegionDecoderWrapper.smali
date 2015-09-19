.class Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;
.super Ljava/lang/Object;
.source "BitmapRegionTileSource.java"

# interfaces
.implements Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;


# instance fields
.field mDecoder:Landroid/graphics/BitmapRegionDecoder;


# direct methods
.method private constructor <init>(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 0
    .param p1, "decoder"    # Landroid/graphics/BitmapRegionDecoder;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 66
    return-void
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "isShareable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 83
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 84
    .local v0, "d":Landroid/graphics/BitmapRegionDecoder;
    if-eqz v0, :cond_0

    .line 85
    new-instance v2, Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;

    invoke-direct {v2, v0}, Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;-><init>(Landroid/graphics/BitmapRegionDecoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    .end local v0    # "d":Landroid/graphics/BitmapRegionDecoder;
    :goto_0
    return-object v2

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "BitmapRegionTileSource"

    const-string v4, "getting decoder failed"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 89
    goto :goto_0

    .line 90
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    move-object v2, v3

    .line 93
    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;
    .locals 6
    .param p0, "pathName"    # Ljava/lang/String;
    .param p1, "isShareable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 70
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 71
    .local v0, "d":Landroid/graphics/BitmapRegionDecoder;
    if-eqz v0, :cond_0

    .line 72
    new-instance v2, Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;

    invoke-direct {v2, v0}, Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;-><init>(Landroid/graphics/BitmapRegionDecoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "d":Landroid/graphics/BitmapRegionDecoder;
    :goto_0
    return-object v2

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "BitmapRegionTileSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting decoder failed for path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 76
    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "d":Landroid/graphics/BitmapRegionDecoder;
    :cond_0
    move-object v2, v3

    .line 78
    goto :goto_0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "wantRegion"    # Landroid/graphics/Rect;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/crop/SimpleBitmapRegionDecoderWrapper;->mDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    return v0
.end method
