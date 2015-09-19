.class public Lcom/android/systemui/crop/KeyguardCropActivity;
.super Landroid/app/Activity;
.source "KeyguardCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/crop/KeyguardCropActivity$InterruptableOutputStream;,
        Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;,
        Lcom/android/systemui/crop/KeyguardCropActivity$OnBitmapCroppedHandler;
    }
.end annotation


# static fields
.field private static final BOTH_POSITION:I = 0x3

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x64

.field private static final HOMESCREEN_POSITION:I = 0x1

.field private static final LOCKSCREEN_POSITION:I = 0x2

.field public static final MAX_BMAP_IN_INTENT:I = 0xb71b0

.field private static final TAG:Ljava/lang/String; = "KeyguardCropActivity"

.field protected static final WALLPAPER_HEIGHT_KEY:Ljava/lang/String; = "wallpaper.height"

.field private static final WALLPAPER_SCREENS_SPAN:F = 2.0f

.field protected static final WALLPAPER_WIDTH_KEY:Ljava/lang/String; = "wallpaper.width"

.field public static mBmpHeight:I

.field public static mBmpWidth:I

.field public static mIsWBmp:Z

.field public static mLargeBmp:Z


# instance fields
.field private ACTION_PRIVATE_MODE_OFF:Ljava/lang/String;

.field private PRIVATE_MODE_FILE_PATH:Ljava/lang/String;

.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClockBack_Text1:Landroid/widget/TextView;

.field private mClock_Text1:Landroid/widget/TextView;

.field protected mCropTask:Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;

.field protected mCropView:Lcom/android/systemui/crop/CropView;

.field private mDate_Text1:Landroid/widget/TextView;

.field protected mHomePreview:Landroid/widget/ImageView;

.field private mImagePath:Ljava/lang/String;

.field protected mRootView:Landroid/widget/FrameLayout;

.field protected mScaleView:Lcom/android/systemui/crop/ScaledCropView;

.field protected mWallpaperBitmap:Landroid/graphics/Bitmap;

.field protected mWallpaperType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 111
    sput-boolean v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mLargeBmp:Z

    .line 112
    sput-boolean v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mIsWBmp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 118
    const-string v0, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    iput-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->ACTION_PRIVATE_MODE_OFF:Ljava/lang/String;

    .line 119
    invoke-static {p0}, Lcom/samsung/android/privatemode/PrivateModeManager;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->PRIVATE_MODE_FILE_PATH:Ljava/lang/String;

    .line 1069
    new-instance v0, Lcom/android/systemui/crop/KeyguardCropActivity$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/crop/KeyguardCropActivity$7;-><init>(Lcom/android/systemui/crop/KeyguardCropActivity;)V

    iput-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/crop/KeyguardCropActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/crop/KeyguardCropActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->getScaleValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/crop/KeyguardCropActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/crop/KeyguardCropActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->ACTION_PRIVATE_MODE_OFF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/crop/KeyguardCropActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/crop/KeyguardCropActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/crop/KeyguardCropActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/crop/KeyguardCropActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->PRIVATE_MODE_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method protected static convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 995
    const-string v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method protected static getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .prologue
    .line 395
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 396
    .local v5, "minDims":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 397
    .local v3, "maxDims":Landroid/graphics/Point;
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v5, v3}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 399
    iget v7, v3, Landroid/graphics/Point;->x:I

    iget v8, v3, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 400
    .local v2, "maxDim":I
    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v8, v5, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 402
    .local v4, "minDim":I
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_0

    .line 403
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 404
    .local v6, "realSize":Landroid/graphics/Point;
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 405
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 406
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 413
    .end local v6    # "realSize":Landroid/graphics/Point;
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->isScreenLarge(Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 414
    int-to-float v7, v2

    invoke-static {v2, v4}, Lcom/android/systemui/crop/KeyguardCropActivity;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v1, v7

    .line 415
    .local v1, "defaultWidth":I
    move v0, v2

    .line 420
    .local v0, "defaultHeight":I
    :goto_0
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v7

    .line 417
    .end local v0    # "defaultHeight":I
    .end local v1    # "defaultWidth":I
    :cond_1
    int-to-float v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 418
    .restart local v1    # "defaultWidth":I
    move v0, v2

    .restart local v0    # "defaultHeight":I
    goto :goto_0
.end method

.method protected static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "requestFormat"    # Ljava/lang/String;

    .prologue
    .line 999
    if-nez p0, :cond_1

    const-string v0, "jpg"

    .line 1002
    .local v0, "outputFormat":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1003
    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "png"

    :goto_1
    return-object v1

    .end local v0    # "outputFormat":Ljava/lang/String;
    :cond_1
    move-object v0, p0

    .line 999
    goto :goto_0

    .line 1003
    .restart local v0    # "outputFormat":Ljava/lang/String;
    :cond_2
    const-string v1, "jpg"

    goto :goto_1
.end method

.method protected static getMaxCropRect(IIIIZ)Landroid/graphics/RectF;
    .locals 6
    .param p0, "inWidth"    # I
    .param p1, "inHeight"    # I
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "leftAligned"    # Z

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 974
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 976
    .local v0, "cropRect":Landroid/graphics/RectF;
    int-to-float v1, p0

    int-to-float v2, p1

    div-float/2addr v1, v2

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 977
    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 978
    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 979
    int-to-float v1, p0

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    int-to-float v3, p1

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 980
    int-to-float v1, p0

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 981
    if-eqz p4, :cond_0

    .line 982
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 983
    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 991
    :cond_0
    :goto_0
    return-object v0

    .line 986
    :cond_1
    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 987
    int-to-float v1, p0

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 988
    int-to-float v1, p1

    int-to-float v2, p3

    int-to-float v3, p2

    div-float/2addr v2, v3

    int-to-float v3, p0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 989
    int-to-float v1, p1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public static getRotationFromExif(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 428
    const/4 v0, 0x0

    invoke-static {v1, v1, v0, p0, p1}, Lcom/android/systemui/crop/KeyguardCropActivity;->getRotationFromExifHelper(Ljava/lang/String;Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static getRotationFromExif(Landroid/content/res/Resources;I)I
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 432
    invoke-static {v0, p0, p1, v0, v0}, Lcom/android/systemui/crop/KeyguardCropActivity;->getRotationFromExifHelper(Ljava/lang/String;Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static getRotationFromExif(Ljava/lang/String;)I
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 424
    const/4 v0, 0x0

    invoke-static {p0, v1, v0, v1, v1}, Lcom/android/systemui/crop/KeyguardCropActivity;->getRotationFromExifHelper(Ljava/lang/String;Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method private static getRotationFromExifHelper(Ljava/lang/String;Landroid/content/res/Resources;ILandroid/content/Context;Landroid/net/Uri;)I
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 437
    new-instance v3, Lcom/android/systemui/crop/exif/ExifInterface;

    invoke-direct {v3}, Lcom/android/systemui/crop/exif/ExifInterface;-><init>()V

    .line 438
    .local v3, "ei":Lcom/android/systemui/crop/exif/ExifInterface;
    const/4 v4, 0x0

    .line 439
    .local v4, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 441
    .local v0, "bis":Ljava/io/BufferedInputStream;
    if-eqz p0, :cond_0

    .line 442
    :try_start_0
    invoke-virtual {v3, p0}, Lcom/android/systemui/crop/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 452
    :goto_0
    sget v6, Lcom/android/systemui/crop/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v3, v6}, Lcom/android/systemui/crop/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v5

    .line 453
    .local v5, "ori":Ljava/lang/Integer;
    if-eqz v5, :cond_2

    .line 454
    invoke-virtual {v5}, Ljava/lang/Integer;->shortValue()S

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/crop/exif/ExifInterface;->getRotationForOrientationValue(S)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 459
    invoke-static {v0}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 460
    invoke-static {v4}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 462
    .end local v5    # "ori":Ljava/lang/Integer;
    :goto_1
    return v6

    .line 443
    :cond_0
    if-eqz p4, :cond_1

    .line 444
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 445
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_2
    invoke-virtual {v3, v1}, Lcom/android/systemui/crop/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 448
    :cond_1
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 449
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 450
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :try_start_4
    invoke-virtual {v3, v1}, Lcom/android/systemui/crop/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 459
    .restart local v5    # "ori":Ljava/lang/Integer;
    :cond_2
    invoke-static {v0}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 460
    invoke-static {v4}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 462
    .end local v5    # "ori":Ljava/lang/Integer;
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 456
    :catch_0
    move-exception v2

    .line 457
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v6, "KeyguardCropActivity"

    const-string v7, "Getting exif data failed"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 459
    invoke-static {v0}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 460
    invoke-static {v4}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    .line 459
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    invoke-static {v0}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 460
    invoke-static {v4}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .line 459
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 456
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method private getScaleValue()F
    .locals 8

    .prologue
    .line 1083
    invoke-virtual {p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c052c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 1084
    .local v5, "width":F
    invoke-virtual {p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c052b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 1086
    .local v0, "height":F
    iget-object v6, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropView:Lcom/android/systemui/crop/CropView;

    invoke-virtual {v6}, Lcom/android/systemui/crop/CropView;->getImageDims()[F

    move-result-object v1

    .line 1087
    .local v1, "imageDims":[F
    const/4 v6, 0x0

    aget v3, v1, v6

    .line 1088
    .local v3, "imageWidth":F
    const/4 v6, 0x1

    aget v2, v1, v6

    .line 1089
    .local v2, "imageHeight":F
    div-float v6, v5, v3

    div-float v7, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1091
    .local v4, "scaleValue":F
    return v4
.end method

.method public static getSharedPreferencesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    const-class v0, Lcom/android/systemui/crop/KeyguardCropActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isScreenLarge(Landroid/content/res/Resources;)Z
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 467
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x2d0

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "lockscreen"    # Landroid/graphics/Bitmap;
    .param p2, "savePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "settingsPath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 934
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    .local v0, "candidate":Ljava/io/File;
    move-object v1, p0

    .line 937
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 944
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "cannot create file: saveLockScreenImage"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 938
    :catch_0
    move-exception v2

    .line 939
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "KeyguardCropActivity"

    const-string v6, "fail to create new file: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 970
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 947
    :cond_1
    invoke-virtual {v0, v8, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 948
    invoke-virtual {v0, v8, v6}, Ljava/io/File;->setWritable(ZZ)Z

    .line 950
    const/4 v3, 0x0

    .line 952
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 953
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen_wallpaper_transparent"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 954
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, v5, v4}, Lcom/android/systemui/crop/KeyguardCropActivity;->saveBitmapToOutputStream(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z

    .line 955
    invoke-virtual {p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p4, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 957
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v5

    if-eq v5, v8, :cond_2

    .line 958
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen_wallpaper"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 960
    :cond_2
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isOpenThemeWallpaperEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 961
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "opne_theme_effect_lockscreen_wallpaper"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 968
    :cond_3
    invoke-static {v4}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 963
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 964
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "KeyguardCropActivity"

    const-string v6, "fail to save image: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 965
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 968
    invoke-static {v3}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v3}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 963
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private saveLockScreenImage(Landroid/graphics/Bitmap;Z)V
    .locals 6
    .param p1, "lockscreen"    # Landroid/graphics/Bitmap;
    .param p2, "isRipple"    # Z

    .prologue
    .line 918
    const-string v4, "KeyguardCropActivity"

    const-string v5, "save lockscreen image"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-virtual {p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 920
    .local v2, "savePath":Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v1, "lockscreen_wallpaper_ripple.jpg"

    .line 922
    .local v1, "fileName":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    const-string v3, "lockscreen_wallpaper_path_ripple"

    .line 925
    .local v3, "settingsPath":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 926
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 930
    :goto_2
    return-void

    .line 920
    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "settingsPath":Ljava/lang/String;
    :cond_0
    const-string v1, "lockscreen_wallpaper.jpg"

    goto :goto_0

    .line 922
    .restart local v1    # "fileName":Ljava/lang/String;
    :cond_1
    const-string v3, "lockscreen_wallpaper_path"

    goto :goto_1

    .line 929
    .restart local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v3    # "settingsPath":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/systemui/crop/KeyguardCropActivity;->saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setCropViewTileSource(Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;Landroid/net/Uri;)V
    .locals 5
    .param p1, "bitmapSource"    # Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 280
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;->loadInBackground(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 282
    new-instance v1, Lcom/android/systemui/crop/BitmapRegionTileSource;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/crop/BitmapRegionTileSource;-><init>(Landroid/content/Context;Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;)V

    .line 283
    .local v1, "tileSource":Lcom/android/systemui/crop/BitmapRegionTileSource;
    iget-object v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropView:Lcom/android/systemui/crop/CropView;

    invoke-virtual {v2, v1, v4}, Lcom/android/systemui/crop/CropView;->setTileSource(Lcom/android/systemui/crop/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V

    .line 284
    iget-object v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropView:Lcom/android/systemui/crop/CropView;

    invoke-direct {p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->getScaleValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/crop/CropView;->setScale(F)V

    .line 285
    iget-object v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropView:Lcom/android/systemui/crop/CropView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/crop/CropView;->setTouchEnabled(Z)V

    .line 287
    invoke-virtual {v1}, Lcom/android/systemui/crop/BitmapRegionTileSource;->getBluredBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 288
    iget-object v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 289
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportBlendedFilter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/VignettingEffect;->applyBlendedFilter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 292
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 293
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 295
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private static wallpaperTravelToScreenWidthRatio(II)F
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 370
    int-to-float v7, p0

    int-to-float v8, p1

    div-float v4, v7, v8

    .line 377
    .local v4, "aspectRatio":F
    const v0, 0x3fcccccd    # 1.6f

    .line 378
    .local v0, "ASPECT_RATIO_LANDSCAPE":F
    const/high16 v1, 0x3f200000    # 0.625f

    .line 379
    .local v1, "ASPECT_RATIO_PORTRAIT":F
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 380
    .local v2, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_LANDSCAPE":F
    const v3, 0x3f99999a    # 1.2f

    .line 387
    .local v3, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_PORTRAIT":F
    const v5, 0x3e9d89d7

    .line 390
    .local v5, "x":F
    const v6, 0x3f80fc10

    .line 391
    .local v6, "y":F
    const v7, 0x3e9d89d7

    mul-float/2addr v7, v4

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method


# virtual methods
.method protected cropImageAndSetWallpaper(Landroid/net/Uri;Lcom/android/systemui/crop/KeyguardCropActivity$OnBitmapCroppedHandler;Z)V
    .locals 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "onBitmapCroppedHandler"    # Lcom/android/systemui/crop/KeyguardCropActivity$OnBitmapCroppedHandler;
    .param p3, "finishActivityWhenDone"    # Z

    .prologue
    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropView:Lcom/android/systemui/crop/CropView;

    invoke-virtual {v2}, Lcom/android/systemui/crop/CropView;->getLayoutDirection()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v19, 0x1

    .line 475
    .local v19, "ltr":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    .line 477
    .local v14, "d":Landroid/view/Display;
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .line 478
    .local v16, "displaySize":Landroid/graphics/Point;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 479
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-ge v2, v3, :cond_2

    const/16 v18, 0x1

    .line 481
    .local v18, "isPortrait":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/crop/KeyguardCropActivity;->getDefaultWallpaperSize(Landroid/content/res/Resources;Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v15

    .line 483
    .local v15, "defaultWallpaperSize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropView:Lcom/android/systemui/crop/CropView;

    invoke-virtual {v2}, Lcom/android/systemui/crop/CropView;->getCrop()Landroid/graphics/RectF;

    move-result-object v6

    .line 484
    .local v6, "cropRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropView:Lcom/android/systemui/crop/CropView;

    invoke-virtual {v2}, Lcom/android/systemui/crop/CropView;->getImageRotation()I

    move-result v7

    .line 485
    .local v7, "cropRotation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropView:Lcom/android/systemui/crop/CropView;

    invoke-virtual {v2}, Lcom/android/systemui/crop/CropView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v13, v2, v3

    .line 487
    .local v13, "cropScale":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropView:Lcom/android/systemui/crop/CropView;

    invoke-virtual {v2}, Lcom/android/systemui/crop/CropView;->getSourceDimensions()Landroid/graphics/Point;

    move-result-object v17

    .line 488
    .local v17, "inSize":Landroid/graphics/Point;
    new-instance v20, Landroid/graphics/Matrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    .line 489
    .local v20, "rotateMatrix":Landroid/graphics/Matrix;
    int-to-float v2, v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 490
    const/4 v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v21, v0

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v21, v2

    const/4 v2, 0x1

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v21, v2

    .line 491
    .local v21, "rotatedInSize":[F
    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 492
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v21, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v21, v2

    .line 493
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v21, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v21, v2

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->getContentViewLayoutId()I

    move-result v2

    const v3, 0x7f0400d7

    if-ne v2, v3, :cond_3

    .line 498
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 499
    .local v8, "outWidth":I
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 506
    .local v9, "outHeight":I
    :goto_2
    new-instance v12, Lcom/android/systemui/crop/KeyguardCropActivity$6;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v12, v0, v1}, Lcom/android/systemui/crop/KeyguardCropActivity$6;-><init>(Lcom/android/systemui/crop/KeyguardCropActivity;Z)V

    .line 514
    .local v12, "onEndCrop":Ljava/lang/Runnable;
    new-instance v2, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v12}, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;-><init>(Lcom/android/systemui/crop/KeyguardCropActivity;Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropTask:Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;

    .line 516
    if-eqz p2, :cond_0

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropTask:Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->setOnBitmapCropped(Lcom/android/systemui/crop/KeyguardCropActivity$OnBitmapCroppedHandler;)V

    .line 519
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropTask:Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 520
    return-void

    .line 473
    .end local v6    # "cropRect":Landroid/graphics/RectF;
    .end local v7    # "cropRotation":I
    .end local v8    # "outWidth":I
    .end local v9    # "outHeight":I
    .end local v12    # "onEndCrop":Ljava/lang/Runnable;
    .end local v13    # "cropScale":F
    .end local v14    # "d":Landroid/view/Display;
    .end local v15    # "defaultWallpaperSize":Landroid/graphics/Point;
    .end local v16    # "displaySize":Landroid/graphics/Point;
    .end local v17    # "inSize":Landroid/graphics/Point;
    .end local v18    # "isPortrait":Z
    .end local v19    # "ltr":Z
    .end local v20    # "rotateMatrix":Landroid/graphics/Matrix;
    .end local v21    # "rotatedInSize":[F
    :cond_1
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 479
    .restart local v14    # "d":Landroid/view/Display;
    .restart local v16    # "displaySize":Landroid/graphics/Point;
    .restart local v19    # "ltr":Z
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 502
    .restart local v6    # "cropRect":Landroid/graphics/RectF;
    .restart local v7    # "cropRotation":I
    .restart local v13    # "cropScale":F
    .restart local v15    # "defaultWallpaperSize":Landroid/graphics/Point;
    .restart local v17    # "inSize":Landroid/graphics/Point;
    .restart local v18    # "isPortrait":Z
    .restart local v20    # "rotateMatrix":Landroid/graphics/Matrix;
    .restart local v21    # "rotatedInSize":[F
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    .line 503
    .restart local v8    # "outWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    .restart local v9    # "outHeight":I
    goto :goto_2
.end method

.method public enableRotation()Z
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method protected getContentViewLayoutId()I
    .locals 1

    .prologue
    .line 275
    const v0, 0x7f04002a

    return v0
.end method

.method protected init()V
    .locals 21

    .prologue
    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->getContentViewLayoutId()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/crop/KeyguardCropActivity;->setContentView(I)V

    .line 153
    const v2, 0x7f0e0109

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/crop/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/crop/CropView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropView:Lcom/android/systemui/crop/CropView;

    .line 154
    const v2, 0x7f0e0102

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/crop/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mRootView:Landroid/widget/FrameLayout;

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->init_ScaleView()V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 159
    .local v13, "cropIntent":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 161
    .local v3, "imageUri":Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {v13}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "type"

    const-string v5, "lock"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 163
    .local v20, "type":Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 164
    const-string v2, "home"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mWallpaperType:I

    .line 174
    .end local v20    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v3, :cond_3

    .line 175
    const-string v2, "KeyguardCropActivity"

    const-string v4, "No URI passed in intent, exiting WallpaperCropActivity"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->finish()V

    .line 250
    :goto_1
    return-void

    .line 166
    .restart local v20    # "type":Ljava/lang/String;
    :cond_1
    const-string v2, "lock"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mWallpaperType:I

    goto :goto_0

    .line 168
    :cond_2
    const-string v2, "both"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mWallpaperType:I

    goto :goto_0

    .line 181
    .end local v20    # "type":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    .line 183
    .local v14, "cursor":Landroid/database/Cursor;
    const/16 v10, 0xa00

    .line 184
    .local v10, "Threshhold_width":I
    const/16 v9, 0xa00

    .line 189
    .local v9, "Threshhold_height":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 190
    if-eqz v14, :cond_8

    .line 191
    :cond_4
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 192
    const-string v2, "width"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 193
    .local v17, "img_width":I
    const-string v2, "height"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 194
    .local v16, "img_height":I
    const-string v2, "mime_type"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 195
    .local v8, "MimeType":Ljava/lang/String;
    const-string v2, "_data"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mImagePath:Ljava/lang/String;

    .line 197
    const-string v2, "bmp"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    mul-int v2, v17, v16

    const/high16 v4, 0x640000

    if-le v2, v4, :cond_6

    .line 198
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/systemui/crop/KeyguardCropActivity;->mLargeBmp:Z

    .line 199
    sput v17, Lcom/android/systemui/crop/KeyguardCropActivity;->mBmpWidth:I

    .line 200
    sput v16, Lcom/android/systemui/crop/KeyguardCropActivity;->mBmpHeight:I

    .line 204
    :goto_3
    const-string v2, "wbmp"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 205
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/systemui/crop/KeyguardCropActivity;->mIsWBmp:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 209
    .end local v8    # "MimeType":Ljava/lang/String;
    .end local v16    # "img_height":I
    .end local v17    # "img_width":I
    :catch_0
    move-exception v15

    .line 210
    .local v15, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    if-eqz v14, :cond_5

    .line 213
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 217
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    new-instance v11, Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;

    const/16 v2, 0x400

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3, v2}, Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 219
    .local v11, "bitmapSource":Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;
    new-instance v18, Lcom/android/systemui/crop/KeyguardCropActivity$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/android/systemui/crop/KeyguardCropActivity$1;-><init>(Lcom/android/systemui/crop/KeyguardCropActivity;Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;)V

    .line 229
    .local v18, "onLoad":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/systemui/crop/KeyguardCropActivity;->setCropViewTileSource(Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;Landroid/net/Uri;)V

    .line 231
    const v2, 0x7f0e0105

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/crop/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 232
    .local v19, "save":Landroid/widget/Button;
    new-instance v2, Lcom/android/systemui/crop/KeyguardCropActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/crop/KeyguardCropActivity$2;-><init>(Lcom/android/systemui/crop/KeyguardCropActivity;Landroid/net/Uri;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    const v2, 0x7f0e0104

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/crop/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 243
    .local v12, "cancel":Landroid/widget/Button;
    new-instance v2, Lcom/android/systemui/crop/KeyguardCropActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/crop/KeyguardCropActivity$3;-><init>(Lcom/android/systemui/crop/KeyguardCropActivity;)V

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 202
    .end local v11    # "bitmapSource":Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;
    .end local v12    # "cancel":Landroid/widget/Button;
    .end local v18    # "onLoad":Ljava/lang/Runnable;
    .end local v19    # "save":Landroid/widget/Button;
    .restart local v8    # "MimeType":Ljava/lang/String;
    .restart local v16    # "img_height":I
    .restart local v17    # "img_width":I
    :cond_6
    const/4 v2, 0x0

    :try_start_2
    sput-boolean v2, Lcom/android/systemui/crop/KeyguardCropActivity;->mLargeBmp:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 212
    .end local v8    # "MimeType":Ljava/lang/String;
    .end local v16    # "img_height":I
    .end local v17    # "img_width":I
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_7

    .line 213
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    .line 212
    :cond_8
    if-eqz v14, :cond_5

    .line 213
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_4
.end method

.method protected init_ScaleView()V
    .locals 7

    .prologue
    const v6, 0x3f4f5c29    # 0.81f

    const/4 v5, 0x0

    .line 253
    const v3, 0x7f0e0145

    invoke-virtual {p0, v3}, Lcom/android/systemui/crop/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/crop/ScaledCropView;

    iput-object v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mScaleView:Lcom/android/systemui/crop/ScaledCropView;

    .line 255
    iget-object v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mScaleView:Lcom/android/systemui/crop/ScaledCropView;

    iget-object v4, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropView:Lcom/android/systemui/crop/CropView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/crop/ScaledCropView;->setCropView(Lcom/android/systemui/crop/CropView;)V

    .line 257
    iget-object v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mScaleView:Lcom/android/systemui/crop/ScaledCropView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/crop/ScaledCropView;->setScaleX(F)V

    .line 258
    iget-object v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mScaleView:Lcom/android/systemui/crop/ScaledCropView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/crop/ScaledCropView;->setScaleY(F)V

    .line 260
    const v3, 0x7f0e01d7

    invoke-virtual {p0, v3}, Lcom/android/systemui/crop/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mClock_Text1:Landroid/widget/TextView;

    .line 261
    const v3, 0x7f0e01d8

    invoke-virtual {p0, v3}, Lcom/android/systemui/crop/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mClockBack_Text1:Landroid/widget/TextView;

    .line 262
    const v3, 0x7f0e01d9

    invoke-virtual {p0, v3}, Lcom/android/systemui/crop/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mDate_Text1:Landroid/widget/TextView;

    .line 264
    invoke-virtual {p0, p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->setCurrentDate(Landroid/content/Context;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 267
    .local v1, "rs":Landroid/content/res/Resources;
    const v3, 0x7f0c0530

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 269
    .local v2, "topMargin":I
    iget-object v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mScaleView:Lcom/android/systemui/crop/ScaledCropView;

    invoke-virtual {v3}, Lcom/android/systemui/crop/ScaledCropView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 270
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 271
    iget-object v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mScaleView:Lcom/android/systemui/crop/ScaledCropView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/crop/ScaledCropView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->init()V

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->enableRotation()Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/crop/KeyguardCropActivity;->setRequestedOrientation(I)V

    .line 131
    :cond_0
    const v3, 0x7f0e00f3

    invoke-virtual {p0, v3}, Lcom/android/systemui/crop/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 132
    .local v1, "container":Landroid/view/ViewGroup;
    const v3, 0x7f0e035a

    invoke-virtual {p0, v3}, Lcom/android/systemui/crop/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "adaptive":Landroid/view/View;
    const-string v3, "KeyguardCropActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v3, "KeyguardCropActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adaptive ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 139
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->ACTION_PRIVATE_MODE_OFF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/crop/KeyguardCropActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/crop/KeyguardCropActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    return-void
.end method

.method protected saveBitmapToOutputStream(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 1010
    new-instance v0, Lcom/android/systemui/crop/KeyguardCropActivity$InterruptableOutputStream;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/crop/KeyguardCropActivity$InterruptableOutputStream;-><init>(Lcom/android/systemui/crop/KeyguardCropActivity;Ljava/io/OutputStream;)V

    .line 1014
    .local v0, "ios":Lcom/android/systemui/crop/KeyguardCropActivity$InterruptableOutputStream;
    const/16 v2, 0x64

    :try_start_0
    invoke-virtual {p1, p2, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    .line 1015
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 1016
    const-string v2, "KeyguardCropActivity"

    const-string v3, "Bitmap write errror!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    :cond_0
    const/4 v2, 0x1

    .line 1021
    invoke-static {v0}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v2

    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method protected saveCroppedHomeImage(Landroid/graphics/Bitmap;Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "tmpOut"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 1147
    const-string v3, "KeyguardCropActivity"

    const-string v4, "save homescreen image"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const/4 v2, 0x0

    .line 1150
    .local v2, "wm":Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lcom/android/systemui/crop/KeyguardCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 1153
    :try_start_0
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1154
    .local v1, "outByteArray":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 1156
    iget-object v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropTask:Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;

    iget-object v3, v3, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOnBitmapCroppedHandler:Lcom/android/systemui/crop/KeyguardCropActivity$OnBitmapCroppedHandler;

    if-eqz v3, :cond_0

    .line 1157
    iget-object v3, p0, Lcom/android/systemui/crop/KeyguardCropActivity;->mCropTask:Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;

    iget-object v3, v3, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOnBitmapCroppedHandler:Lcom/android/systemui/crop/KeyguardCropActivity$OnBitmapCroppedHandler;

    invoke-interface {v3, v1}, Lcom/android/systemui/crop/KeyguardCropActivity$OnBitmapCroppedHandler;->onBitmapCropped([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    .end local v1    # "outByteArray":[B
    :cond_0
    :goto_0
    return-void

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "KeyguardCropActivity"

    const-string v4, "cannot write stream to wallpaper"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected saveCroppedImage(Landroid/graphics/Bitmap;Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "tmpOut"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 913
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/crop/KeyguardCropActivity;->saveLockScreenImage(Landroid/graphics/Bitmap;Z)V

    .line 914
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/crop/KeyguardCropActivity;->saveLockScreenImage(Landroid/graphics/Bitmap;Z)V

    .line 915
    return-void
.end method

.method public setCropViewTileSource(Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;ZZLjava/lang/Runnable;)V
    .locals 8
    .param p1, "bitmapSource"    # Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;
    .param p2, "touchEnabled"    # Z
    .param p3, "moveToLeft"    # Z
    .param p4, "postExecute"    # Ljava/lang/Runnable;

    .prologue
    .line 300
    move-object v3, p0

    .line 301
    .local v3, "context":Landroid/content/Context;
    const v1, 0x7f0e0107

    invoke-virtual {p0, v1}, Lcom/android/systemui/crop/KeyguardCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 302
    .local v4, "progressView":Landroid/view/View;
    new-instance v0, Lcom/android/systemui/crop/KeyguardCropActivity$4;

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/crop/KeyguardCropActivity$4;-><init>(Lcom/android/systemui/crop/KeyguardCropActivity;Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource;Landroid/content/Context;Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 349
    .local v0, "loadBitmapTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    new-instance v1, Lcom/android/systemui/crop/KeyguardCropActivity$5;

    invoke-direct {v1, p0, v0, v4}, Lcom/android/systemui/crop/KeyguardCropActivity$5;-><init>(Lcom/android/systemui/crop/KeyguardCropActivity;Landroid/os/AsyncTask;Landroid/view/View;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v1, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 356
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 357
    return-void
.end method

.method public setCurrentDate(Landroid/content/Context;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1095
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mClock_Text1:Landroid/widget/TextView;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mClockBack_Text1:Landroid/widget/TextView;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mDate_Text1:Landroid/widget/TextView;

    if-nez v13, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "homescreenPreview_capturetime"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1103
    .local v3, "captureTime":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_2

    .line 1104
    new-instance v9, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v9, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 1108
    .local v9, "now":Ljava/util/Date;
    :goto_1
    const-string v13, "KeyguardCropActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "captureTime : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    .end local v3    # "captureTime":Ljava/lang/Long;
    :goto_2
    const-string v4, ""

    .line 1115
    .local v4, "dateFormat":Ljava/lang/String;
    const-string v11, ""

    .line 1116
    .local v11, "timeFormat":Ljava/lang/String;
    const-string v12, ""

    .line 1118
    .local v12, "timeFormat_a":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    .line 1119
    .local v2, "b24HourFormat":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget-object v10, v13, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1121
    .local v10, "sysLocale":Ljava/util/Locale;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0586

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1123
    if-nez v2, :cond_3

    .line 1124
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "K:mm"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1125
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "a"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1130
    :goto_3
    const/4 v7, 0x0

    .line 1131
    .local v7, "formatter_time":Ljava/text/SimpleDateFormat;
    const/4 v8, 0x0

    .line 1132
    .local v8, "formatter_time_a":Ljava/text/SimpleDateFormat;
    const/4 v6, 0x0

    .line 1134
    .local v6, "formatter_date":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/text/SimpleDateFormat;

    .end local v7    # "formatter_time":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-direct {v7, v11, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1135
    .restart local v7    # "formatter_time":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/text/SimpleDateFormat;

    .end local v8    # "formatter_time_a":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-direct {v8, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1136
    .restart local v8    # "formatter_time_a":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/text/SimpleDateFormat;

    .end local v6    # "formatter_date":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-direct {v6, v4, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1138
    .restart local v6    # "formatter_date":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mClock_Text1:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mClockBack_Text1:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mDate_Text1:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mClockBack_Text1:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/crop/KeyguardCropActivity;->mDate_Text1:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1106
    .end local v2    # "b24HourFormat":Z
    .end local v4    # "dateFormat":Ljava/lang/String;
    .end local v6    # "formatter_date":Ljava/text/SimpleDateFormat;
    .end local v7    # "formatter_time":Ljava/text/SimpleDateFormat;
    .end local v8    # "formatter_time_a":Ljava/text/SimpleDateFormat;
    .end local v9    # "now":Ljava/util/Date;
    .end local v10    # "sysLocale":Ljava/util/Locale;
    .end local v11    # "timeFormat":Ljava/lang/String;
    .end local v12    # "timeFormat_a":Ljava/lang/String;
    .restart local v3    # "captureTime":Ljava/lang/Long;
    :cond_2
    :try_start_1
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v9    # "now":Ljava/util/Date;
    goto/16 :goto_1

    .line 1110
    .end local v3    # "captureTime":Ljava/lang/Long;
    .end local v9    # "now":Ljava/util/Date;
    :catch_0
    move-exception v5

    .line 1111
    .local v5, "e":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .restart local v9    # "now":Ljava/util/Date;
    goto/16 :goto_2

    .line 1127
    .end local v5    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v2    # "b24HourFormat":Z
    .restart local v4    # "dateFormat":Ljava/lang/String;
    .restart local v10    # "sysLocale":Ljava/util/Locale;
    .restart local v11    # "timeFormat":Ljava/lang/String;
    .restart local v12    # "timeFormat_a":Ljava/lang/String;
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "H:mm"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3
.end method
