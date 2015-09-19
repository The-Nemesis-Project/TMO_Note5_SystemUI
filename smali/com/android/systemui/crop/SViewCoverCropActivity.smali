.class public Lcom/android/systemui/crop/SViewCoverCropActivity;
.super Lcom/android/systemui/crop/KeyguardCropActivity;
.source "SViewCoverCropActivity.java"


# static fields
.field public static final ACTION_CHANGE_COVER_BACKGROUND:Ljava/lang/String; = "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

.field public static final SETTINGS_COVER_WALLPAPER_FILE_PATH:Ljava/lang/String; = "sview_bg_wallpaper_path"

.field public static final SETTINGS_COVER_WALLPAPER_INDEX:Ljava/lang/String; = "sview_color_wallpaper"

.field public static final SETTINGS_CURRENT_ACTIVE_THEMEPACKAGE_NAME:Ljava/lang/String; = "current_sec_active_themepackage"

.field private static final TAG:Ljava/lang/String; = "SViewCoverCropActivity"

.field public static final USER_WALLPAPER_IMAGES_FOLDER_NAME:Ljava/lang/String; = "wallpaper_images"

.field public static final WALLPAPER_FILE_NAME:Ljava/lang/String; = "/cover_wallpaper.jpg"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/systemui/crop/KeyguardCropActivity;-><init>()V

    return-void
.end method

.method private isOpenThemeEnabled()Z
    .locals 4

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/crop/SViewCoverCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_sec_active_themepackage"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "currentPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 83
    .local v1, "isOpenThemeEnabled":Z
    :goto_0
    return v1

    .line 81
    .end local v1    # "isOpenThemeEnabled":Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getContentViewLayoutId()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f0400d7

    return v0
.end method

.method protected saveCroppedImage(Landroid/graphics/Bitmap;Ljava/io/ByteArrayOutputStream;)V
    .locals 9
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "tmpOut"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 40
    const-string v6, "SViewCoverCropActivity"

    const-string v7, "save sview cover image"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/crop/SViewCoverCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sview_bg_wallpaper_path"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, "savePath":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/systemui/crop/SViewCoverCropActivity;->isOpenThemeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 47
    const-string v6, "SViewCoverCropActivity"

    const-string v7, "Set internal to Cover wallpaper path"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/crop/SViewCoverCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "wallpaper_images"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51
    :cond_0
    const-string v2, "/cover_wallpaper.jpg"

    .line 53
    .local v2, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .local v0, "candidate":Ljava/io/File;
    const/4 v3, 0x0

    .line 57
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, v6, v4}, Lcom/android/systemui/crop/SViewCoverCropActivity;->saveBitmapToOutputStream(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z

    .line 60
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 61
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/crop/SViewCoverCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sview_color_wallpaper"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/crop/SViewCoverCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sview_bg_wallpaper_path"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/crop/SViewCoverCropActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    invoke-static {v4}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 74
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v6, "SViewCoverCropActivity"

    const-string v7, "fail to save image: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    invoke-static {v3}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v3}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 68
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
