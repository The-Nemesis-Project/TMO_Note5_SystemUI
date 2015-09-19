.class public abstract Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;
.super Ljava/lang/Object;
.source "BitmapRegionTileSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/crop/BitmapRegionTileSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BitmapSource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;
    }
.end annotation


# instance fields
.field private mDecoder:Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;

.field private mPreview:Landroid/graphics/Bitmap;

.field private mPreviewSize:I

.field private mRotation:I

.field private mState:Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "previewSize"    # I

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    sget-object v0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;->NOT_LOADED:Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;

    iput-object v0, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mState:Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;

    .line 209
    iput p1, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mPreviewSize:I

    .line 210
    return-void
.end method


# virtual methods
.method public getBitmapRegionDecoder()Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mDecoder:Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;

    return-object v0
.end method

.method public getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v2, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    const/4 v2, 0x0

    .line 276
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v2

    .line 272
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .end local v0    # "file":Ljava/io/File;
    :goto_1
    move-object v2, v1

    .line 276
    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getLoadingState()Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mState:Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;

    return-object v0
.end method

.method public getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 280
    const/4 v6, 0x0

    .line 281
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 284
    .local v8, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 285
    if-eqz v6, :cond_0

    .line 286
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    goto :goto_0

    .line 294
    :cond_0
    if-eqz v6, :cond_1

    .line 295
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v9, v8

    .line 297
    .end local v8    # "path":Ljava/lang/String;
    .local v9, "path":Ljava/lang/String;
    :goto_1
    return-object v9

    .line 291
    .end local v9    # "path":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 292
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    if-eqz v6, :cond_2

    .line 295
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v9, v8

    .line 297
    .end local v8    # "path":Ljava/lang/String;
    .restart local v9    # "path":Ljava/lang/String;
    goto :goto_1

    .line 294
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "path":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 295
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mPreview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPreviewSize()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mPreviewSize:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mRotation:I

    return v0
.end method

.method public abstract loadBitmapRegionDecoder()Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;
.end method

.method public abstract loadBitmapRegionDecoder(Ljava/lang/String;)Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;
.end method

.method public loadInBackground(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 212
    new-instance v0, Lcom/android/systemui/crop/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/systemui/crop/exif/ExifInterface;-><init>()V

    .line 213
    .local v0, "ei":Lcom/android/systemui/crop/exif/ExifInterface;
    invoke-virtual {p0, v0}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->readExif(Lcom/android/systemui/crop/exif/ExifInterface;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 214
    sget v10, Lcom/android/systemui/crop/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v0, v10}, Lcom/android/systemui/crop/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v3

    .line 215
    .local v3, "ori":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 216
    invoke-virtual {v3}, Ljava/lang/Integer;->shortValue()S

    move-result v10

    invoke-static {v10}, Lcom/android/systemui/crop/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mRotation:I

    .line 219
    .end local v3    # "ori":Ljava/lang/Integer;
    :cond_0
    const-string v4, ""

    .line 220
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->loadBitmapRegionDecoder()Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mDecoder:Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;

    .line 221
    iget-object v10, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mDecoder:Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;

    if-nez v10, :cond_1

    if-eqz p2, :cond_1

    .line 222
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 223
    if-eqz v4, :cond_1

    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 224
    invoke-virtual {p0, v4}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->loadBitmapRegionDecoder(Ljava/lang/String;)Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mDecoder:Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;

    .line 227
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mDecoder:Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;

    if-nez v10, :cond_2

    .line 228
    sget-object v9, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;->ERROR_LOADING:Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;

    iput-object v9, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mState:Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;

    .line 261
    :goto_0
    return v8

    .line 231
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mDecoder:Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;

    invoke-interface {v10}, Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;->getWidth()I

    move-result v7

    .line 232
    .local v7, "width":I
    iget-object v10, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mDecoder:Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;

    invoke-interface {v10}, Lcom/android/systemui/crop/SimpleBitmapRegionDecoder;->getHeight()I

    move-result v1

    .line 233
    .local v1, "height":I
    iget v10, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mPreviewSize:I

    if-eqz v10, :cond_3

    .line 234
    iget v10, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mPreviewSize:I

    const/16 v11, 0x400

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 235
    .local v5, "previewSize":I
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 236
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 237
    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 240
    sget-boolean v10, Lcom/android/systemui/crop/KeyguardCropActivity;->mLargeBmp:Z

    if-ne v10, v9, :cond_4

    .line 241
    const/high16 v10, 0x44800000    # 1024.0f

    sget v11, Lcom/android/systemui/crop/KeyguardCropActivity;->mBmpWidth:I

    sget v12, Lcom/android/systemui/crop/KeyguardCropActivity;->mBmpHeight:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v11, v11

    div-float v6, v10, v11

    .line 242
    .local v6, "scale":F
    invoke-static {v6}, Lcom/android/systemui/crop/util/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v10

    iput v10, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 247
    :goto_1
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 248
    invoke-virtual {p0, v2}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->loadPreviewBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mPreview:Landroid/graphics/Bitmap;

    .line 249
    iget-object v8, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mPreview:Landroid/graphics/Bitmap;

    if-nez v8, :cond_3

    .line 250
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 251
    if-eqz v4, :cond_3

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 252
    const-string v8, ".golf"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 253
    new-instance v8, Lcom/android/systemui/crop/golf/GolfMgr;

    invoke-direct {v8}, Lcom/android/systemui/crop/golf/GolfMgr;-><init>()V

    invoke-virtual {v8, v4}, Lcom/android/systemui/crop/golf/GolfMgr;->CreateThumbnails(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mPreview:Landroid/graphics/Bitmap;

    .line 260
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "previewSize":I
    .end local v6    # "scale":F
    :cond_3
    :goto_2
    sget-object v8, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;->LOADED:Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;

    iput-object v8, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mState:Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;

    move v8, v9

    .line 261
    goto :goto_0

    .line 244
    .restart local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "previewSize":I
    :cond_4
    int-to-float v10, v5

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v11, v11

    div-float v6, v10, v11

    .line 245
    .restart local v6    # "scale":F
    invoke-static {v6}, Lcom/android/systemui/crop/util/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v10

    iput v10, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 255
    :cond_5
    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->mPreview:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method public abstract loadPreviewBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public abstract readExif(Lcom/android/systemui/crop/exif/ExifInterface;)Z
.end method
