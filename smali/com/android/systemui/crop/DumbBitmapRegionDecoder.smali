.class Lcom/android/systemui/crop/DumbBitmapRegionDecoder;
.super Ljava/lang/Object;
.source "BitmapRegionTileSource.java"

# interfaces
.implements Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;


# instance fields
.field mBuffer:Landroid/graphics/Bitmap;

.field mTempCanvas:Landroid/graphics/Canvas;

.field mTempPaint:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->mBuffer:Landroid/graphics/Bitmap;

    .line 112
    return-void
.end method

.method public static newInstance(Ljava/io/InputStream;)Lcom/android/systemui/crop/DumbBitmapRegionDecoder;
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v5, 0x0

    .line 141
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 142
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 143
    sget-boolean v4, Lcom/android/systemui/crop/KeyguardCropActivity;->mLargeBmp:Z

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 144
    const/high16 v4, 0x44800000    # 1024.0f

    sget v6, Lcom/android/systemui/crop/KeyguardCropActivity;->mBmpWidth:I

    sget v7, Lcom/android/systemui/crop/KeyguardCropActivity;->mBmpHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float v3, v4, v6

    .line 145
    .local v3, "scale":F
    invoke-static {v3}, Lcom/android/systemui/crop/util/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 147
    .end local v3    # "scale":F
    :cond_0
    const/4 v4, 0x0

    invoke-static {p0, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 149
    new-instance v4, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;

    invoke-direct {v4, v0}, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v4

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1
    :goto_1
    move-object v4, v5

    .line 156
    goto :goto_0

    .line 153
    :catch_1
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/systemui/crop/DumbBitmapRegionDecoder;
    .locals 7
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "b":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 118
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 119
    sget-boolean v4, Lcom/android/systemui/crop/KeyguardCropActivity;->mLargeBmp:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 120
    const/high16 v4, 0x44800000    # 1024.0f

    sget v5, Lcom/android/systemui/crop/KeyguardCropActivity;->mBmpWidth:I

    sget v6, Lcom/android/systemui/crop/KeyguardCropActivity;->mBmpHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 121
    .local v3, "scale":F
    invoke-static {v3}, Lcom/android/systemui/crop/util/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 123
    .end local v3    # "scale":F
    :cond_0
    const-string v4, ".golf"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 124
    new-instance v4, Lcom/android/systemui/crop/golf/GolfMgr;

    invoke-direct {v4}, Lcom/android/systemui/crop/golf/GolfMgr;-><init>()V

    invoke-virtual {v4, p0}, Lcom/android/systemui/crop/golf/GolfMgr;->CreateThumbnails(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    :goto_0
    if-eqz v0, :cond_2

    .line 129
    new-instance v4, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;

    invoke-direct {v4, v0}, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;-><init>(Landroid/graphics/Bitmap;)V

    .line 136
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v4

    .line 126
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 131
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 136
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 133
    :catch_1
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "wantRegion"    # Landroid/graphics/Rect;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v3, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 165
    iget-object v2, p0, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->mTempCanvas:Landroid/graphics/Canvas;

    if-nez v2, :cond_0

    .line 166
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->mTempCanvas:Landroid/graphics/Canvas;

    .line 167
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->mTempPaint:Landroid/graphics/Paint;

    .line 168
    iget-object v2, p0, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 170
    :cond_0
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 171
    .local v1, "sampleSize":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->mTempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 176
    iget-object v2, p0, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->mTempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 177
    iget-object v2, p0, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->mTempCanvas:Landroid/graphics/Canvas;

    int-to-float v3, v1

    div-float v3, v5, v3

    int-to-float v4, v1

    div-float v4, v5, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 178
    iget-object v2, p0, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->mTempCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->mBuffer:Landroid/graphics/Bitmap;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 179
    iget-object v2, p0, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->mTempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 180
    iget-object v2, p0, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->mTempCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/crop/DumbBitmapRegionDecoder;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method
