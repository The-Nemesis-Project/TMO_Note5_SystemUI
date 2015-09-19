.class public Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;
.super Landroid/os/AsyncTask;
.source "KeyguardCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/crop/KeyguardCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BitmapCropTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mCropBounds:Landroid/graphics/RectF;

.field mCroppedBitmap:Landroid/graphics/Bitmap;

.field mInFilePath:Ljava/lang/String;

.field mInImageBytes:[B

.field mInResId:I

.field mInUri:Landroid/net/Uri;

.field mNoCrop:Z

.field mOnBitmapCroppedHandler:Lcom/android/systemui/crop/KeyguardCropActivity$OnBitmapCroppedHandler;

.field mOnEndRunnable:Ljava/lang/Runnable;

.field mOutHeight:I

.field mOutWidth:I

.field mOutputFormat:Ljava/lang/String;

.field mResources:Landroid/content/res/Resources;

.field mRotation:I

.field mSaveCroppedBitmap:Z

.field final synthetic this$0:Lcom/android/systemui/crop/KeyguardCropActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/crop/KeyguardCropActivity;Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V
    .locals 8
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "inUri"    # Landroid/net/Uri;
    .param p4, "cropBounds"    # Landroid/graphics/RectF;
    .param p5, "rotation"    # I
    .param p6, "outWidth"    # I
    .param p7, "outHeight"    # I
    .param p8, "setWallpaper"    # Z
    .param p9, "saveCroppedBitmap"    # Z
    .param p10, "onEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    .line 531
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInResId:I

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 535
    const-string v0, "jpg"

    iput-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOutputFormat:Ljava/lang/String;

    .line 546
    iput-object p2, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mContext:Landroid/content/Context;

    .line 547
    iput-object p3, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p10

    .line 548
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->init(Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    .line 550
    return-void
.end method

.method private init(Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "cropBounds"    # Landroid/graphics/RectF;
    .param p2, "rotation"    # I
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .param p5, "setWallpaper"    # Z
    .param p6, "saveCroppedBitmap"    # Z
    .param p7, "onEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 555
    iput p2, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mRotation:I

    .line 556
    iput p3, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOutWidth:I

    .line 557
    iput p4, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOutHeight:I

    .line 558
    iput-boolean p6, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mSaveCroppedBitmap:Z

    .line 559
    iput-object p7, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOnEndRunnable:Ljava/lang/Runnable;

    .line 560
    return-void
.end method

.method private regenerateInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 576
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInResId:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInFilePath:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInImageBytes:[B

    if-nez v1, :cond_0

    .line 577
    const-string v1, "KeyguardCropActivity"

    const-string v2, "cannot read original file, no input URI, resource ID, or image byte array given"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 581
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 582
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "KeyguardCropActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot read file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 584
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInFilePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 585
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    goto :goto_1

    .line 586
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInImageBytes:[B

    if-eqz v1, :cond_3

    .line 587
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInImageBytes:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    .line 589
    :cond_3
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mResources:Landroid/content/res/Resources;

    iget v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public cropBitmap()Z
    .locals 39

    .prologue
    .line 656
    const/16 v16, 0x0

    .line 659
    .local v16, "failure":Z
    new-instance v30, Landroid/graphics/Rect;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Rect;-><init>()V

    .line 660
    .local v30, "roundedTrueCrop":Landroid/graphics/Rect;
    new-instance v28, Landroid/graphics/Matrix;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Matrix;-><init>()V

    .line 661
    .local v28, "rotateMatrix":Landroid/graphics/Matrix;
    new-instance v18, Landroid/graphics/Matrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Matrix;-><init>()V

    .line 662
    .local v18, "inverseRotateMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mRotation:I

    move/from16 v35, v0

    if-lez v35, :cond_1

    .line 663
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mRotation:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 664
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mRotation:I

    move/from16 v35, v0

    move/from16 v0, v35

    neg-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v18

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 667
    new-instance v35, Landroid/graphics/RectF;

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->getImageBounds()Landroid/graphics/Point;

    move-result-object v5

    .line 670
    .local v5, "bounds":Landroid/graphics/Point;
    if-nez v5, :cond_0

    .line 671
    const-string v35, "KeyguardCropActivity"

    const-string v36, "cannot get bounds for image"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/16 v16, 0x1

    .line 673
    const/16 v35, 0x0

    .line 888
    .end local v5    # "bounds":Landroid/graphics/Point;
    :goto_0
    return v35

    .line 676
    .restart local v5    # "bounds":Landroid/graphics/Point;
    :cond_0
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v29, v0

    const/16 v35, 0x0

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    aput v36, v29, v35

    const/16 v35, 0x1

    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    aput v36, v29, v35

    .line 677
    .local v29, "rotatedBounds":[F
    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 678
    const/16 v35, 0x0

    const/16 v36, 0x0

    aget v36, v29, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->abs(F)F

    move-result v36

    aput v36, v29, v35

    .line 679
    const/16 v35, 0x1

    const/16 v36, 0x1

    aget v36, v29, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->abs(F)F

    move-result v36

    aput v36, v29, v35

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aget v36, v29, v36

    move/from16 v0, v36

    neg-float v0, v0

    move/from16 v36, v0

    const/high16 v37, 0x40000000    # 2.0f

    div-float v36, v36, v37

    const/16 v37, 0x1

    aget v37, v29, v37

    move/from16 v0, v37

    neg-float v0, v0

    move/from16 v37, v0

    const/high16 v38, 0x40000000    # 2.0f

    div-float v37, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroid/graphics/RectF;->offset(FF)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v37, v0

    div-int/lit8 v37, v37, 0x2

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroid/graphics/RectF;->offset(FF)V

    .line 687
    .end local v5    # "bounds":Landroid/graphics/Point;
    .end local v29    # "rotatedBounds":[F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 689
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    if-gez v35, :cond_3

    const/16 v35, 0x0

    :goto_1
    move/from16 v0, v35

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 690
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    if-gez v35, :cond_4

    const/16 v35, 0x0

    :goto_2
    move/from16 v0, v35

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 692
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v35

    if-lez v35, :cond_2

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v35

    if-gtz v35, :cond_5

    .line 693
    :cond_2
    const-string v35, "KeyguardCropActivity"

    const-string v36, "crop has bad values for full size image"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/16 v16, 0x1

    .line 695
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 689
    :cond_3
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    goto :goto_1

    .line 690
    :cond_4
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    goto :goto_2

    .line 699
    :cond_5
    const/16 v32, 0x1

    .line 700
    .local v32, "scaleDownSampleSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOutWidth:I

    move/from16 v35, v0

    if-eqz v35, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOutHeight:I

    move/from16 v35, v0

    if-eqz v35, :cond_6

    .line 701
    const/16 v35, 0x1

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOutWidth:I

    move/from16 v37, v0

    div-int v36, v36, v37

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOutHeight:I

    move/from16 v38, v0

    div-int v37, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->min(II)I

    move-result v36

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 705
    :cond_6
    const/4 v12, 0x0

    .line 706
    .local v12, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/16 v19, 0x0

    .line 708
    .local v19, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v19

    .line 709
    if-nez v19, :cond_f

    .line 710
    const-string v35, "KeyguardCropActivity"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "cannot get input stream for uri="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/16 v16, 0x1

    .line 717
    :goto_3
    invoke-static/range {v19 .. v19}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    invoke-static/range {v19 .. v19}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 722
    const/16 v19, 0x0

    .line 725
    :goto_4
    const/4 v10, 0x0

    .line 727
    .local v10, "crop":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_8

    .line 729
    :try_start_1
    new-instance v25, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 730
    .local v25, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v35, 0x1

    move/from16 v0, v32

    move/from16 v1, v35

    if-le v0, v1, :cond_7

    .line 731
    move/from16 v0, v32

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 733
    :cond_7
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 734
    invoke-virtual {v12}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 737
    .end local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_8
    if-nez v10, :cond_e

    .line 738
    const/16 v17, 0x0

    .line 740
    .local v17, "fullSize":Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v19

    .line 741
    if-eqz v19, :cond_a

    .line 742
    new-instance v25, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 743
    .restart local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    sget-boolean v35, Lcom/android/systemui/crop/KeyguardCropActivity;->mLargeBmp:Z

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_10

    .line 744
    const/high16 v35, 0x44800000    # 1024.0f

    sget v36, Lcom/android/systemui/crop/KeyguardCropActivity;->mBmpWidth:I

    sget v37, Lcom/android/systemui/crop/KeyguardCropActivity;->mBmpHeight:I

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v31, v35, v36

    .line 745
    .local v31, "scale":F
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/crop/util/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 751
    .end local v31    # "scale":F
    :cond_9
    :goto_5
    const/16 v35, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 754
    .end local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_a
    if-nez v17, :cond_c

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInFilePath:Ljava/lang/String;

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInFilePath:Ljava/lang/String;

    move-object/from16 v35, v0

    if-eqz v35, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInFilePath:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_c

    .line 757
    new-instance v25, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 758
    .restart local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    sget-boolean v35, Lcom/android/systemui/crop/KeyguardCropActivity;->mLargeBmp:Z

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_11

    .line 759
    const/high16 v35, 0x44800000    # 1024.0f

    sget v36, Lcom/android/systemui/crop/KeyguardCropActivity;->mBmpWidth:I

    sget v37, Lcom/android/systemui/crop/KeyguardCropActivity;->mBmpHeight:I

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    div-float v31, v35, v36

    .line 760
    .restart local v31    # "scale":F
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/crop/util/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 766
    .end local v31    # "scale":F
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInFilePath:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, ".golf"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_12

    .line 767
    new-instance v35, Lcom/android/systemui/crop/golf/GolfMgr;

    invoke-direct/range {v35 .. v35}, Lcom/android/systemui/crop/golf/GolfMgr;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInFilePath:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lcom/android/systemui/crop/golf/GolfMgr;->CreateThumbnails(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 774
    .end local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_c
    :goto_7
    if-eqz v17, :cond_e

    .line 775
    sget-boolean v35, Lcom/android/systemui/crop/KeyguardCropActivity;->mIsWBmp:Z

    if-eqz v35, :cond_d

    .line 776
    const/16 v32, 0x1

    .line 778
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v36, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v36, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v36, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 784
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    if-gez v35, :cond_13

    const/16 v35, 0x0

    :goto_8
    move/from16 v0, v35

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 785
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    if-gez v35, :cond_14

    const/16 v35, 0x0

    :goto_9
    move/from16 v0, v35

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 786
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_15

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    :goto_a
    move/from16 v0, v35

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 787
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_16

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    :goto_b
    move/from16 v0, v35

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 788
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v36, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v37

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v38

    move-object/from16 v0, v17

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v10

    .line 798
    .end local v17    # "fullSize":Landroid/graphics/Bitmap;
    :cond_e
    invoke-static/range {v19 .. v19}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 801
    :goto_c
    if-nez v10, :cond_17

    .line 802
    const-string v35, "KeyguardCropActivity"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "cannot decode file: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/16 v16, 0x1

    .line 804
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 715
    .end local v10    # "crop":Landroid/graphics/Bitmap;
    :cond_f
    const/16 v35, 0x0

    :try_start_2
    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-static {v0, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    goto/16 :goto_3

    .line 718
    :catch_0
    move-exception v14

    .line 719
    .local v14, "e":Ljava/io/IOException;
    :try_start_3
    const-string v35, "KeyguardCropActivity"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "cannot open region decoder for file: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInUri:Landroid/net/Uri;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 721
    invoke-static/range {v19 .. v19}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 722
    const/16 v19, 0x0

    .line 723
    goto/16 :goto_4

    .line 721
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v35

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 722
    const/16 v19, 0x0

    throw v35

    .line 747
    .restart local v10    # "crop":Landroid/graphics/Bitmap;
    .restart local v17    # "fullSize":Landroid/graphics/Bitmap;
    .restart local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_10
    const/16 v35, 0x1

    move/from16 v0, v32

    move/from16 v1, v35

    if-le v0, v1, :cond_9

    .line 748
    :try_start_4
    move/from16 v0, v32

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_5

    .line 793
    .end local v17    # "fullSize":Landroid/graphics/Bitmap;
    .end local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v14

    .line 794
    .local v14, "e":Ljava/lang/OutOfMemoryError;
    :try_start_5
    invoke-virtual {v14}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 798
    invoke-static/range {v19 .. v19}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_c

    .line 762
    .end local v14    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v17    # "fullSize":Landroid/graphics/Bitmap;
    .restart local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_11
    const/16 v35, 0x1

    move/from16 v0, v32

    move/from16 v1, v35

    if-le v0, v1, :cond_b

    .line 763
    :try_start_6
    move/from16 v0, v32

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_6

    .line 795
    .end local v17    # "fullSize":Landroid/graphics/Bitmap;
    .end local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v14

    .line 796
    .local v14, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 798
    invoke-static/range {v19 .. v19}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_c

    .line 769
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v17    # "fullSize":Landroid/graphics/Bitmap;
    .restart local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_12
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mInFilePath:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v17

    goto/16 :goto_7

    .line 784
    .end local v25    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_13
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    goto/16 :goto_8

    .line 785
    :cond_14
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    goto/16 :goto_9

    .line 786
    :cond_15
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    goto/16 :goto_a

    .line 787
    :cond_16
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_b

    .line 798
    .end local v17    # "fullSize":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v35

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v35

    .line 807
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOutWidth:I

    move/from16 v35, v0

    if-lez v35, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOutHeight:I

    move/from16 v35, v0

    if-gtz v35, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mRotation:I

    move/from16 v35, v0

    if-lez v35, :cond_1c

    .line 808
    :cond_19
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v13, v0, [F

    const/16 v35, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    aput v36, v13, v35

    const/16 v35, 0x1

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    aput v36, v13, v35

    .line 809
    .local v13, "dimsAfter":[F
    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 810
    const/16 v35, 0x0

    const/16 v36, 0x0

    aget v36, v13, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->abs(F)F

    move-result v36

    aput v36, v13, v35

    .line 811
    const/16 v35, 0x1

    const/16 v36, 0x1

    aget v36, v13, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->abs(F)F

    move-result v36

    aput v36, v13, v35

    .line 813
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOutWidth:I

    move/from16 v35, v0

    if-lez v35, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOutHeight:I

    move/from16 v35, v0

    if-gtz v35, :cond_1b

    .line 814
    :cond_1a
    const/16 v35, 0x0

    aget v35, v13, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOutWidth:I

    .line 815
    const/16 v35, 0x1

    aget v35, v13, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOutHeight:I

    .line 818
    :cond_1b
    new-instance v11, Landroid/graphics/RectF;

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    aget v37, v13, v37

    const/16 v38, 0x1

    aget v38, v13, v38

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 819
    .local v11, "cropRect":Landroid/graphics/RectF;
    new-instance v27, Landroid/graphics/RectF;

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOutWidth:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOutHeight:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, v27

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 821
    .local v27, "returnRect":Landroid/graphics/RectF;
    new-instance v20, Landroid/graphics/Matrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    .line 822
    .local v20, "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mRotation:I

    move/from16 v35, v0

    if-nez v35, :cond_20

    .line 823
    sget-object v35, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v35

    invoke-virtual {v0, v11, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 842
    :goto_d
    :try_start_9
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v36

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    sget-object v37, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v35 .. v37}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v33

    .line 844
    .local v33, "tmp":Landroid/graphics/Bitmap;
    if-eqz v33, :cond_1c

    .line 845
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v33

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 846
    .local v6, "c":Landroid/graphics/Canvas;
    new-instance v26, Landroid/graphics/Paint;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Paint;-><init>()V

    .line 847
    .local v26, "p":Landroid/graphics/Paint;
    const/16 v35, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 848
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v6, v10, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 849
    move-object/from16 v10, v33

    .line 859
    .end local v6    # "c":Landroid/graphics/Canvas;
    .end local v11    # "cropRect":Landroid/graphics/RectF;
    .end local v13    # "dimsAfter":[F
    .end local v20    # "m":Landroid/graphics/Matrix;
    .end local v26    # "p":Landroid/graphics/Paint;
    .end local v27    # "returnRect":Landroid/graphics/RectF;
    .end local v33    # "tmp":Landroid/graphics/Bitmap;
    :cond_1c
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mSaveCroppedBitmap:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1d

    .line 860
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mCroppedBitmap:Landroid/graphics/Bitmap;

    .line 864
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOutputFormat:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/systemui/crop/KeyguardCropActivity;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/systemui/crop/KeyguardCropActivity;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v9

    .line 868
    .local v9, "cf":Landroid/graphics/Bitmap$CompressFormat;
    new-instance v34, Ljava/io/ByteArrayOutputStream;

    const/16 v35, 0x800

    invoke-direct/range {v34 .. v35}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 869
    .local v34, "tmpOut":Ljava/io/ByteArrayOutputStream;
    const/16 v35, 0x64

    move/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v10, v9, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v35

    if-eqz v35, :cond_21

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v10, v1}, Lcom/android/systemui/crop/KeyguardCropActivity;->saveCroppedImage(Landroid/graphics/Bitmap;Ljava/io/ByteArrayOutputStream;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mWallpaperType:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1e

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v10, v1}, Lcom/android/systemui/crop/KeyguardCropActivity;->saveCroppedHomeImage(Landroid/graphics/Bitmap;Ljava/io/ByteArrayOutputStream;)V

    .line 882
    :cond_1e
    :goto_f
    if-eqz v34, :cond_1f

    .line 883
    :try_start_a
    invoke-virtual/range {v34 .. v34}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 888
    :cond_1f
    :goto_10
    if-nez v16, :cond_22

    const/16 v35, 0x1

    goto/16 :goto_0

    .line 825
    .end local v9    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    .end local v34    # "tmpOut":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "cropRect":Landroid/graphics/RectF;
    .restart local v13    # "dimsAfter":[F
    .restart local v20    # "m":Landroid/graphics/Matrix;
    .restart local v27    # "returnRect":Landroid/graphics/RectF;
    :cond_20
    new-instance v21, Landroid/graphics/Matrix;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Matrix;-><init>()V

    .line 826
    .local v21, "m1":Landroid/graphics/Matrix;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    move/from16 v0, v35

    neg-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x40000000    # 2.0f

    div-float v35, v35, v36

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v36

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    const/high16 v37, 0x40000000    # 2.0f

    div-float v36, v36, v37

    move-object/from16 v0, v21

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 827
    new-instance v22, Landroid/graphics/Matrix;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Matrix;-><init>()V

    .line 828
    .local v22, "m2":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mRotation:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 829
    new-instance v23, Landroid/graphics/Matrix;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Matrix;-><init>()V

    .line 830
    .local v23, "m3":Landroid/graphics/Matrix;
    const/16 v35, 0x0

    aget v35, v13, v35

    const/high16 v36, 0x40000000    # 2.0f

    div-float v35, v35, v36

    const/16 v36, 0x1

    aget v36, v13, v36

    const/high16 v37, 0x40000000    # 2.0f

    div-float v36, v36, v37

    move-object/from16 v0, v23

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 831
    new-instance v24, Landroid/graphics/Matrix;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Matrix;-><init>()V

    .line 832
    .local v24, "m4":Landroid/graphics/Matrix;
    sget-object v35, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v35

    invoke-virtual {v0, v11, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 834
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 835
    .local v7, "c1":Landroid/graphics/Matrix;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 836
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 837
    .local v8, "c2":Landroid/graphics/Matrix;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 838
    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v7}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    goto/16 :goto_d

    .line 852
    .end local v7    # "c1":Landroid/graphics/Matrix;
    .end local v8    # "c2":Landroid/graphics/Matrix;
    .end local v21    # "m1":Landroid/graphics/Matrix;
    .end local v22    # "m2":Landroid/graphics/Matrix;
    .end local v23    # "m3":Landroid/graphics/Matrix;
    .end local v24    # "m4":Landroid/graphics/Matrix;
    :catch_3
    move-exception v14

    .line 853
    .local v14, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v14}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_e

    .line 854
    .end local v14    # "e":Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v14

    .line 855
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e

    .line 877
    .end local v11    # "cropRect":Landroid/graphics/RectF;
    .end local v13    # "dimsAfter":[F
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v20    # "m":Landroid/graphics/Matrix;
    .end local v27    # "returnRect":Landroid/graphics/RectF;
    .restart local v9    # "cf":Landroid/graphics/Bitmap$CompressFormat;
    .restart local v34    # "tmpOut":Ljava/io/ByteArrayOutputStream;
    :cond_21
    const-string v35, "KeyguardCropActivity"

    const-string v36, "cannot compress bitmap"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const/16 v16, 0x1

    goto/16 :goto_f

    .line 884
    :catch_5
    move-exception v15

    .line 885
    .local v15, "e2":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_10

    .line 888
    .end local v15    # "e2":Ljava/io/IOException;
    :cond_22
    const/16 v35, 0x0

    goto/16 :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->cropBitmap()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 526
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getCroppedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mCroppedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 621
    const/4 v1, 0x0

    .line 622
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 623
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 625
    const/4 v2, 0x0

    .line 631
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v2

    .line 627
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .end local v0    # "file":Ljava/io/File;
    :goto_1
    move-object v2, v1

    .line 631
    goto :goto_0

    .line 629
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getImageBounds()Landroid/graphics/Point;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 599
    invoke-direct {p0}, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 600
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 601
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 602
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 603
    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 604
    invoke-static {v0}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 605
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v3, :cond_0

    .line 606
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 609
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return-object v2
.end method

.method public getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 635
    const/4 v6, 0x0

    .line 636
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 639
    .local v8, "path":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 640
    if-eqz v6, :cond_0

    .line 641
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    goto :goto_0

    .line 649
    :cond_0
    if-eqz v6, :cond_1

    .line 650
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v9, v8

    .line 652
    .end local v8    # "path":Ljava/lang/String;
    .local v9, "path":Ljava/lang/String;
    :goto_1
    return-object v9

    .line 646
    .end local v9    # "path":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 647
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    if-eqz v6, :cond_2

    .line 650
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v9, v8

    .line 652
    .end local v8    # "path":Ljava/lang/String;
    .restart local v9    # "path":Ljava/lang/String;
    goto :goto_1

    .line 649
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "path":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 650
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOnEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOnEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 903
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask$1;-><init>(Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 909
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 526
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setCropBounds(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "cropBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mCropBounds:Landroid/graphics/RectF;

    .line 614
    return-void
.end method

.method public setNoCrop(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 567
    iput-boolean p1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mNoCrop:Z

    .line 568
    return-void
.end method

.method public setOnBitmapCropped(Lcom/android/systemui/crop/KeyguardCropActivity$OnBitmapCroppedHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/android/systemui/crop/KeyguardCropActivity$OnBitmapCroppedHandler;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOnBitmapCroppedHandler:Lcom/android/systemui/crop/KeyguardCropActivity$OnBitmapCroppedHandler;

    .line 564
    return-void
.end method

.method public setOnEndRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOnEndRunnable:Ljava/lang/Runnable;

    .line 572
    return-void
.end method
