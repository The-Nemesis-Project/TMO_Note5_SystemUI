.class Lcom/android/systemui/ImageWallpaper$ExtractColor;
.super Ljava/lang/Object;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExtractColor"
.end annotation


# static fields
.field static mDefaultColor:I

.field static mLimittedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0xc8

    const/16 v0, 0x6e

    .line 1337
    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/systemui/ImageWallpaper$ExtractColor;->mDefaultColor:I

    .line 1338
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/systemui/ImageWallpaper$ExtractColor;->mLimittedColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorHSV(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)[F
    .locals 26
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "region"    # [Landroid/graphics/Rect;

    .prologue
    .line 1350
    const/16 v16, 0x0

    .local v16, "sumHue":F
    const/16 v17, 0x0

    .local v17, "sumSaturation":F
    const/16 v18, 0x0

    .line 1351
    .local v18, "sumValue":F
    const/4 v4, 0x0

    .local v4, "curHue":F
    const/4 v5, 0x0

    .local v5, "curSaturation":F
    const/4 v6, 0x0

    .line 1358
    .local v6, "curValue":F
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v11, v0, [F

    .line 1359
    .local v11, "pixelHSV":[F
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v12, v0, [F

    .line 1361
    .local v12, "result":[F
    const/4 v14, 0x0

    .line 1363
    .local v14, "sampleCount":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 1364
    .local v20, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 1366
    .local v8, "h":I
    move/from16 v0, v20

    if-le v0, v8, :cond_1

    int-to-float v0, v8

    move/from16 v23, v0

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v15, v0

    .line 1367
    .local v15, "step":I
    :goto_0
    if-gtz v15, :cond_0

    .line 1368
    const/4 v15, 0x1

    .line 1370
    :cond_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_4

    .line 1371
    aget-object v23, p1, v9

    move-object/from16 v0, v23

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 1372
    .local v10, "left":I
    aget-object v23, p1, v9

    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->right:I

    .line 1373
    .local v13, "right":I
    aget-object v23, p1, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    .line 1374
    .local v19, "top":I
    aget-object v23, p1, v9

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1376
    .local v3, "bottom":I
    move/from16 v21, v10

    .local v21, "x":I
    :goto_2
    move/from16 v0, v21

    if-ge v0, v13, :cond_3

    .line 1377
    move/from16 v22, v19

    .local v22, "y":I
    :goto_3
    move/from16 v0, v22

    if-ge v0, v3, :cond_2

    .line 1378
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v23

    move/from16 v0, v23

    invoke-static {v0, v11}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1379
    const/16 v23, 0x0

    aget v23, v11, v23

    add-float v16, v16, v23

    .line 1380
    const/16 v23, 0x1

    aget v23, v11, v23

    add-float v17, v17, v23

    .line 1381
    const/16 v23, 0x2

    aget v23, v11, v23

    add-float v18, v18, v23

    .line 1382
    add-int/lit8 v14, v14, 0x1

    .line 1377
    add-int v22, v22, v15

    goto :goto_3

    .line 1366
    .end local v3    # "bottom":I
    .end local v9    # "i":I
    .end local v10    # "left":I
    .end local v13    # "right":I
    .end local v15    # "step":I
    .end local v19    # "top":I
    .end local v21    # "x":I
    .end local v22    # "y":I
    :cond_1
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v15, v0

    goto :goto_0

    .line 1376
    .restart local v3    # "bottom":I
    .restart local v9    # "i":I
    .restart local v10    # "left":I
    .restart local v13    # "right":I
    .restart local v15    # "step":I
    .restart local v19    # "top":I
    .restart local v21    # "x":I
    .restart local v22    # "y":I
    :cond_2
    add-int v21, v21, v15

    goto :goto_2

    .line 1370
    .end local v22    # "y":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1387
    .end local v3    # "bottom":I
    .end local v10    # "left":I
    .end local v13    # "right":I
    .end local v19    # "top":I
    .end local v21    # "x":I
    :cond_4
    const/16 v23, 0x0

    int-to-float v0, v14

    move/from16 v24, v0

    div-float v24, v16, v24

    aput v24, v12, v23

    .line 1388
    const/16 v23, 0x1

    int-to-float v0, v14

    move/from16 v24, v0

    div-float v24, v17, v24

    aput v24, v12, v23

    .line 1389
    const/16 v23, 0x2

    int-to-float v0, v14

    move/from16 v24, v0

    div-float v24, v18, v24

    aput v24, v12, v23
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    .end local v8    # "h":I
    .end local v9    # "i":I
    .end local v12    # "result":[F
    .end local v15    # "step":I
    .end local v20    # "w":I
    :goto_4
    return-object v12

    .line 1393
    .restart local v12    # "result":[F
    :catch_0
    move-exception v7

    .line 1394
    .local v7, "e":Ljava/lang/Exception;
    const-string v23, "ImageWallpaper"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    const/4 v12, 0x0

    goto :goto_4
.end method

.method public static getDefaultColor()I
    .locals 1

    .prologue
    .line 1346
    sget v0, Lcom/android/systemui/ImageWallpaper$ExtractColor;->mDefaultColor:I

    return v0
.end method

.method public static setDefaultColor(I)V
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 1341
    sget v0, Lcom/android/systemui/ImageWallpaper$ExtractColor;->mDefaultColor:I

    if-eq p0, v0, :cond_0

    .line 1342
    sput p0, Lcom/android/systemui/ImageWallpaper$ExtractColor;->mDefaultColor:I

    .line 1343
    :cond_0
    return-void
.end method
