.class public Lcom/android/systemui/crop/HomeCropActivity;
.super Lcom/android/systemui/crop/KeyguardCropActivity;
.source "HomeCropActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeCropActivity"

.field static mPreCaptureTime:Ljava/lang/Long;

.field static mRealHomePreviewFile:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/crop/HomeCropActivity;->mPreCaptureTime:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/crop/KeyguardCropActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContentViewLayoutId()I
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f04001f

    return v0
.end method

.method public getHomeRealPreview()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 66
    const-string v0, "/storage/emulated/"

    .line 67
    .local v0, "STR_HOMEPREVIEW_PATH":Ljava/lang/String;
    const-string v1, "/Android/data/com.sec.android.app.launcher/cache/homescreenPreview.png"

    .line 69
    .local v1, "STR_HOMEPREVIEW_PATH2":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 71
    .local v3, "currentUserId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "homePreviewPath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/crop/HomeCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "homescreenPreview_capturetime"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 75
    .local v2, "captureTime":Ljava/lang/Long;
    sget-object v6, Lcom/android/systemui/crop/HomeCropActivity;->mPreCaptureTime:Ljava/lang/Long;

    invoke-virtual {v2, v6}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/systemui/crop/HomeCropActivity;->mRealHomePreviewFile:Landroid/graphics/Bitmap;

    if-nez v6, :cond_1

    .line 76
    :cond_0
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    sput-object v6, Lcom/android/systemui/crop/HomeCropActivity;->mRealHomePreviewFile:Landroid/graphics/Bitmap;

    .line 78
    sput-object v2, Lcom/android/systemui/crop/HomeCropActivity;->mPreCaptureTime:Ljava/lang/Long;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v2    # "captureTime":Ljava/lang/Long;
    :cond_1
    :goto_0
    sget-object v6, Lcom/android/systemui/crop/HomeCropActivity;->mRealHomePreviewFile:Landroid/graphics/Bitmap;

    return-object v6

    .line 80
    :catch_0
    move-exception v4

    .line 81
    .local v4, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v4}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected init_ScaleView()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/crop/HomeCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 39
    .local v0, "mIsEasyMode":Z
    :cond_0
    if-nez v0, :cond_1

    .line 40
    const v1, 0x7f0e010a

    invoke-virtual {p0, v1}, Lcom/android/systemui/crop/HomeCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/crop/HomeCropActivity;->mHomePreview:Landroid/widget/ImageView;

    .line 41
    iget-object v1, p0, Lcom/android/systemui/crop/HomeCropActivity;->mHomePreview:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/crop/HomeCropActivity;->getHomeRealPreview()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    :cond_1
    return-void
.end method

.method protected saveCroppedImage(Landroid/graphics/Bitmap;Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "tmpOut"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 47
    const-string v3, "HomeCropActivity"

    const-string v4, "save homescreen image"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, "wm":Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lcom/android/systemui/crop/HomeCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 53
    :try_start_0
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 54
    .local v1, "outByteArray":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 56
    iget-object v3, p0, Lcom/android/systemui/crop/HomeCropActivity;->mCropTask:Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;

    iget-object v3, v3, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOnBitmapCroppedHandler:Lcom/android/systemui/crop/KeyguardCropActivity$OnBitmapCroppedHandler;

    if-eqz v3, :cond_0

    .line 57
    iget-object v3, p0, Lcom/android/systemui/crop/HomeCropActivity;->mCropTask:Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;

    iget-object v3, v3, Lcom/android/systemui/crop/KeyguardCropActivity$BitmapCropTask;->mOnBitmapCroppedHandler:Lcom/android/systemui/crop/KeyguardCropActivity$OnBitmapCroppedHandler;

    invoke-interface {v3, v1}, Lcom/android/systemui/crop/KeyguardCropActivity$OnBitmapCroppedHandler;->onBitmapCropped([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v1    # "outByteArray":[B
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "HomeCropActivity"

    const-string v4, "cannot write stream to wallpaper"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
