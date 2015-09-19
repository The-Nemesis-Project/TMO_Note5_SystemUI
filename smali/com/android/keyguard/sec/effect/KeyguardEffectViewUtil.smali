.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;
.super Ljava/lang/Object;
.source "KeyguardEffectViewUtil.java"


# static fields
.field public static final ACTION_UPDATE_LOCKSCREEN_WALLPAPER:Ljava/lang/String; = "edm.intent.action.internal.sec.LSO_CONFIG_CHANGED"

.field public static final ADMIN_WALLPAPER_PORTRAIT:Ljava/lang/String; = "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

.field public static final ADMIN_WALLPAPER_RIPPLE:Ljava/lang/String; = "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

.field public static final DEFAULT_CSC_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "//system/csc_contents/lockscreen_default_wallpaper.jpg"

.field public static final DEFAULT_CSC_WALLPAPER_IMAGE_PATH_PNG:Ljava/lang/String; = "//system/csc_contents/lockscreen_default_wallpaper.png"

.field public static final DEFAULT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "//system/wallpaper/lockscreen_default_wallpaper.jpg"

.field public static final DEFAULT_WALLPAPER_IMAGE_PATH_PNG:Ljava/lang/String; = "//system/wallpaper/lockscreen_default_wallpaper.png"

.field public static final KEY_CURRENT_WALLPAPER_FILE_PATH:Ljava/lang/String; = "keyguard_current_wallpaper_file_path"

.field public static final KEY_CURRENT_WALLPAPER_RES_ID:Ljava/lang/String; = "keyguard_current_wallpaper_res_id"

.field public static final KEY_CURRENT_WALLPAPER_TYPE:Ljava/lang/String; = "keyguard_current_wallpaper_type"

.field public static final KEY_DEFAULT_WALLPAPER_RES_ID:Ljava/lang/String; = "keyguard_default_wallpaper_res_id"

.field private static final KNOX_MODE_USER_ID:I = 0x64

.field public static final LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

.field public static final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

.field public static final RIPPLE_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

.field public static final SHARED_WALLPAPER_TYPE_FILE:I = 0x1

.field public static final SHARED_WALLPAPER_TYPE_NONE:I = 0x0

.field public static final SHARED_WALLPAPER_TYPE_RESOURCE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewUtil"

.field public static final WALLPAPER_TYPE_FILE:I = 0x1

.field public static final WALLPAPER_TYPE_HOME:I = 0x3

.field public static final WALLPAPER_TYPE_JUST_ON_LOCK_LIVE:I = 0x2

.field public static final WALLPAPER_TYPE_LIVE:I

.field private static mAdminWallpaper:Z

.field private static mUpdatedAdminWallpaperValue:Z

.field private static mWallpaperPath:Ljava/lang/String;

.field private static mWallpaperResId:I

.field private static mWallpaperType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 91
    const/4 v0, -0x1

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResId:I

    .line 92
    sput v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 142
    sput-boolean v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mUpdatedAdminWallpaperValue:Z

    .line 143
    sput-boolean v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mAdminWallpaper:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wallpaperDrawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 428
    if-nez p0, :cond_0

    .line 455
    .end local p1    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object p1

    .line 432
    .restart local p1    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    if-eqz p1, :cond_1

    .line 433
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 435
    .local v3, "pBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eqz v4, :cond_1

    .line 436
    const/4 v3, 0x0

    .line 437
    invoke-static {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->writeWallpaperInfoAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    goto :goto_0

    .line 442
    .end local v3    # "pBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 443
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 445
    .local v2, "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_2

    .line 446
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 449
    .restart local v2    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :cond_2
    :goto_1
    invoke-static {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->writeWallpaperInfoAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static checkWhiteLockscreenWallpaper(Landroid/graphics/drawable/BitmapDrawable;)Z
    .locals 17
    .param p0, "bd"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .local v9, "sumSaturation":F
    const/4 v10, 0x0

    .local v10, "sumValue":F
    const/4 v1, 0x0

    .local v1, "curSaturation":F
    const/4 v2, 0x0

    .line 189
    .local v2, "curValue":F
    const/4 v15, 0x3

    :try_start_0
    new-array v5, v15, [F

    .line 190
    .local v5, "pixelHSV":[F
    const/4 v6, 0x0

    .line 192
    .local v6, "sampleCount":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 193
    .local v12, "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    div-int/lit8 v3, v15, 0x2

    .line 195
    .local v3, "h":I
    if-le v12, v3, :cond_1

    int-to-float v15, v3

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    float-to-int v8, v15

    .line 196
    .local v8, "step":I
    :goto_0
    if-gtz v8, :cond_0

    .line 197
    const/4 v8, 0x1

    .line 199
    :cond_0
    const/4 v13, 0x0

    .local v13, "x":I
    :goto_1
    if-ge v13, v12, :cond_3

    .line 200
    const/4 v14, 0x0

    .local v14, "y":I
    :goto_2
    if-ge v14, v3, :cond_2

    .line 201
    invoke-virtual {v0, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    invoke-static {v15, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 202
    const/4 v15, 0x1

    aget v15, v5, v15

    add-float/2addr v9, v15

    .line 203
    const/4 v15, 0x2

    aget v15, v5, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v10, v15

    .line 204
    add-int/lit8 v6, v6, 0x1

    .line 200
    add-int/2addr v14, v8

    goto :goto_2

    .line 195
    .end local v8    # "step":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_1
    int-to-float v15, v12

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    float-to-int v8, v15

    goto :goto_0

    .line 199
    .restart local v8    # "step":I
    .restart local v13    # "x":I
    .restart local v14    # "y":I
    :cond_2
    add-int/2addr v13, v8

    goto :goto_1

    .line 207
    .end local v14    # "y":I
    :cond_3
    int-to-float v15, v6

    div-float v7, v9, v15

    .line 208
    .local v7, "sat":F
    int-to-float v15, v6

    div-float v11, v10, v15

    .line 210
    .local v11, "val":F
    const v15, 0x3d75c28f    # 0.06f

    cmpg-float v15, v7, v15

    if-gez v15, :cond_4

    const v15, 0x3f733333    # 0.95f

    cmpl-float v15, v11, v15

    if-ltz v15, :cond_4

    .line 211
    const/4 v15, 0x1

    .line 244
    .end local v3    # "h":I
    .end local v5    # "pixelHSV":[F
    .end local v6    # "sampleCount":I
    .end local v7    # "sat":F
    .end local v8    # "step":I
    .end local v11    # "val":F
    .end local v12    # "w":I
    .end local v13    # "x":I
    :goto_3
    return v15

    .line 213
    :catch_0
    move-exception v15

    .line 217
    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 218
    const/4 v15, 0x3

    :try_start_1
    new-array v5, v15, [F

    .line 219
    .restart local v5    # "pixelHSV":[F
    const/4 v6, 0x0

    .line 221
    .restart local v6    # "sampleCount":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 222
    .restart local v12    # "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    div-int/lit8 v4, v15, 0x2

    .line 223
    .local v4, "m":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 225
    .restart local v3    # "h":I
    if-le v12, v4, :cond_6

    int-to-float v15, v4

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    float-to-int v8, v15

    .line 226
    .restart local v8    # "step":I
    :goto_4
    if-gtz v8, :cond_5

    .line 227
    const/4 v8, 0x1

    .line 229
    :cond_5
    const/4 v13, 0x0

    .restart local v13    # "x":I
    :goto_5
    if-ge v13, v12, :cond_8

    .line 230
    move v14, v4

    .restart local v14    # "y":I
    :goto_6
    if-ge v14, v3, :cond_7

    .line 231
    invoke-virtual {v0, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v15

    invoke-static {v15, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 232
    const/4 v15, 0x1

    aget v15, v5, v15

    add-float/2addr v9, v15

    .line 233
    const/4 v15, 0x2

    aget v15, v5, v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-float/2addr v10, v15

    .line 234
    add-int/lit8 v6, v6, 0x1

    .line 230
    add-int/2addr v14, v8

    goto :goto_6

    .line 225
    .end local v8    # "step":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_6
    int-to-float v15, v12

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    float-to-int v8, v15

    goto :goto_4

    .line 229
    .restart local v8    # "step":I
    .restart local v13    # "x":I
    .restart local v14    # "y":I
    :cond_7
    add-int/2addr v13, v8

    goto :goto_5

    .line 237
    .end local v14    # "y":I
    :cond_8
    int-to-float v15, v6

    div-float v7, v9, v15

    .line 238
    .restart local v7    # "sat":F
    int-to-float v15, v6

    div-float v11, v10, v15

    .line 240
    .restart local v11    # "val":F
    const v15, 0x3d75c28f    # 0.06f

    cmpg-float v15, v7, v15

    if-gez v15, :cond_9

    const v15, 0x3f733333    # 0.95f

    cmpl-float v15, v11, v15

    if-ltz v15, :cond_9

    .line 241
    const/4 v15, 0x1

    goto :goto_3

    .line 243
    .end local v3    # "h":I
    .end local v4    # "m":I
    .end local v5    # "pixelHSV":[F
    .end local v6    # "sampleCount":I
    .end local v7    # "sat":F
    .end local v8    # "step":I
    .end local v11    # "val":F
    .end local v12    # "w":I
    .end local v13    # "x":I
    :catch_1
    move-exception v15

    .line 244
    :cond_9
    const/4 v15, 0x0

    goto :goto_3
.end method

.method public static getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen_wallpaper_path"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "wallpaperPath":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 168
    .local v0, "bmpDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 169
    :cond_0
    const-string v6, "KeyguardEffectViewUtil"

    const-string v7, "checkWhiteLockscreenWallpaper() start"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWhiteLockscreenWallpaper(Landroid/graphics/drawable/BitmapDrawable;)Z

    move-result v1

    .line 171
    .local v1, "newVal":Z
    const-string v6, "KeyguardEffectViewUtil"

    const-string v7, "checkWhiteLockscreenWallpaper() end"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "white_lockscreen_wallpaper"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v2, v4

    .line 173
    .local v2, "oldVal":Z
    :goto_0
    if-eq v2, v1, :cond_1

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "white_lockscreen_wallpaper"

    if-eqz v1, :cond_3

    :goto_1
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    const-string v4, "KeyguardEffectViewUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "whiteLockscreenWallpaper : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v1    # "newVal":Z
    .end local v2    # "oldVal":Z
    :cond_1
    return-object v0

    .restart local v1    # "newVal":Z
    :cond_2
    move v2, v5

    .line 172
    goto :goto_0

    .restart local v2    # "oldVal":Z
    :cond_3
    move v4, v5

    .line 174
    goto :goto_1
.end method

.method public static getCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "galleryWallpaperFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 248
    if-nez p0, :cond_0

    .line 312
    :goto_0
    return-object v6

    .line 251
    :cond_0
    sput-object p1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 252
    const-string v7, "KeyguardEffectViewUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCurrentWallpaper() mWallpaperPath : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 255
    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultLonglifeInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v3

    .line 256
    .local v3, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 257
    .local v4, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const-string v6, "KeyguardEffectViewUtil"

    const-string v7, "EmergencyMode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-eqz v3, :cond_1

    .line 260
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 262
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_1
    :goto_1
    invoke-static {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 270
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isAdminWallpaper()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 271
    const-string v7, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    sput-object v7, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 274
    :try_start_1
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 276
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v7, 0x1

    sput v7, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 278
    invoke-static {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_0

    .line 279
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_1
    move-exception v1

    .line 280
    .local v1, "ex":Ljava/lang/Exception;
    const-string v7, "KeyguardEffectViewUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loading Admin wallpaper EX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    sput-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 282
    const/4 v6, 0x0

    sput v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 286
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    sget-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    const-string v7, "com.sec.android.slidingGallery"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 288
    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getScaledBitmapDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 290
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sput v10, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 292
    invoke-static {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto/16 :goto_0

    .line 295
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    sget-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    if-nez v6, :cond_5

    .line 296
    const-string v6, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    sput-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 298
    :cond_5
    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v2, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 302
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 304
    :try_start_2
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 305
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v5, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v6, 0x1

    :try_start_3
    sput v6, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 307
    invoke-static {p0, v5}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v6

    goto/16 :goto_0

    .line 308
    .end local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_2
    move-exception v1

    .line 309
    .restart local v1    # "ex":Ljava/lang/Exception;
    :goto_2
    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto/16 :goto_0

    .line 312
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_6
    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    goto/16 :goto_0

    .line 308
    .end local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_2
.end method

.method public static getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 408
    if-nez p0, :cond_0

    .line 409
    const/4 v0, 0x0

    .line 414
    :goto_0
    return-object v0

    .line 411
    :cond_0
    sget v0, Lcom/android/keyguard/R$drawable;->keyguard_default_wallpaper:I

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResId:I

    .line 412
    const/4 v0, 0x2

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 414
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultLonglifeInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 418
    if-nez p0, :cond_0

    .line 419
    const/4 v0, 0x0

    .line 424
    :goto_0
    return-object v0

    .line 421
    :cond_0
    sget v0, Lcom/android/keyguard/R$drawable;->keyguard_longlife_wallpaper_black:I

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResId:I

    .line 422
    const/4 v0, 0x2

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    .line 424
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 317
    if-nez p0, :cond_0

    .line 318
    const/16 v17, 0x0

    .line 404
    :goto_0
    return-object v17

    .line 320
    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v4, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    .local v5, "fileMultiCSC":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.png"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    .local v7, "filePng":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.png"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v6, "fileMultiCSCPng":Ljava/io/File;
    const/4 v10, 0x0

    .line 326
    .local v10, "is":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 328
    .local v15, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 329
    .local v2, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 331
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 333
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v10    # "is":Ljava/io/InputStream;
    .local v11, "is":Ljava/io/InputStream;
    :try_start_1
    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.png"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 336
    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.png"

    sput-object v17, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 337
    const/16 v17, 0x1

    sput v17, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-object v10, v11

    .line 373
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_1
    if-nez v10, :cond_2

    .line 374
    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v10

    .line 375
    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 378
    :cond_2
    if-eqz v10, :cond_4

    .line 379
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 380
    .local v12, "metrics":Landroid/util/DisplayMetrics;
    const-string v17, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 381
    .local v16, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 383
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 384
    .local v8, "imageHeight":I
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 385
    .local v9, "imageWidth":I
    iget v0, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    div-int v17, v9, v17

    iget v0, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    div-int v18, v8, v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 388
    .local v13, "scaleFactor":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    const/4 v13, 0x1

    .line 390
    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 391
    iput v13, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 392
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 394
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v10, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 395
    .local v14, "wallpaperBitmap":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    .end local v15    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 398
    .restart local v15    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 404
    .end local v8    # "imageHeight":I
    .end local v9    # "imageWidth":I
    .end local v12    # "metrics":Landroid/util/DisplayMetrics;
    .end local v13    # "scaleFactor":I
    .end local v14    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "wm":Landroid/view/WindowManager;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v17

    goto/16 :goto_0

    .line 338
    :catch_0
    move-exception v3

    .line 339
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    const/4 v10, 0x0

    .line 340
    goto :goto_1

    .line 341
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 343
    :try_start_3
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 344
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :try_start_4
    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 346
    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    sput-object v17, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 347
    const/16 v17, 0x1

    sput v17, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-object v10, v11

    .line 350
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 348
    :catch_1
    move-exception v3

    .line 349
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_4
    const/4 v10, 0x0

    .line 350
    goto/16 :goto_1

    .line 351
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 353
    :try_start_5
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 354
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :try_start_6
    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.png"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 356
    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.png"

    sput-object v17, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 357
    const/16 v17, 0x1

    sput v17, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v10, v11

    .line 360
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 358
    :catch_2
    move-exception v3

    .line 359
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_5
    const/4 v10, 0x0

    .line 360
    goto/16 :goto_1

    .line 361
    .end local v3    # "e":Ljava/io/IOException;
    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 363
    :try_start_7
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 364
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :try_start_8
    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 366
    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    sput-object v17, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    .line 367
    const/16 v17, 0x1

    sput v17, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    move-object v10, v11

    .line 370
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 368
    :catch_3
    move-exception v3

    .line 369
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_6
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 399
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v8    # "imageHeight":I
    .restart local v9    # "imageWidth":I
    .restart local v12    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v13    # "scaleFactor":I
    .restart local v14    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "wm":Landroid/view/WindowManager;
    :catch_4
    move-exception v3

    .line 400
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 368
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "imageHeight":I
    .end local v9    # "imageWidth":I
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v12    # "metrics":Landroid/util/DisplayMetrics;
    .end local v13    # "scaleFactor":I
    .end local v14    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "wm":Landroid/view/WindowManager;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v3

    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 358
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_6
    move-exception v3

    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 348
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v3

    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 338
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_8
    move-exception v3

    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public static getPreferredConfigBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "srcBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 514
    if-nez p0, :cond_1

    move-object p0, v4

    .line 532
    .end local p0    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 517
    .restart local p0    # "srcBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-eq v5, p1, :cond_0

    .line 520
    const-string v5, "KeyguardEffectViewUtil"

    const-string v6, "start to convert album art"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 522
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 524
    .local v2, "height":I
    if-lez v3, :cond_2

    if-gtz v2, :cond_3

    :cond_2
    move-object p0, v4

    .line 525
    goto :goto_0

    .line 527
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 529
    .local v0, "destBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 530
    .local v1, "destCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, p0, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p0, v0

    .line 532
    goto :goto_0
.end method

.method public static getWallpaperType(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 132
    if-nez p0, :cond_0

    .line 138
    :goto_0
    return v0

    .line 135
    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncherWithoutSecure(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    .line 136
    const/4 v0, 0x3

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method public static isAdminWallpaper()Z
    .locals 1

    .prologue
    .line 145
    sget-boolean v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mUpdatedAdminWallpaperValue:Z

    if-nez v0, :cond_0

    .line 146
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->updateIsAdminWallpaper()V

    .line 149
    :cond_0
    sget-boolean v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mAdminWallpaper:Z

    return v0
.end method

.method public static isHomeWallpaper(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v0

    .line 128
    .local v0, "wallpaperType":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKeyguardEffectViewWallpaper(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-static {}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isAdminWallpaper()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->isHomeWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLiveWallpaper(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v0

    .line 120
    .local v0, "wallpaperType":I
    const-string v1, "KeyguardEffectViewUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wallpaperType :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOpenThemeWallpaperEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 497
    if-nez p0, :cond_1

    .line 510
    :cond_0
    :goto_0
    return v0

    .line 501
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "opne_theme_effect_lockscreen_wallpaper"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 503
    .local v0, "isEnabled":Z
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_sec_theme_package_open_theme"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 506
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZoomPanningEffectEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 487
    invoke-static {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isPowerSavingMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 493
    :goto_0
    return v0

    .line 491
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_zoom_panning_effect"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 493
    .local v0, "isZoomPanningEffect":Z
    :goto_1
    goto :goto_0

    .end local v0    # "isZoomPanningEffect":Z
    :cond_2
    move v0, v1

    .line 491
    goto :goto_1
.end method

.method public static updateIsAdminWallpaper()V
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mUpdatedAdminWallpaperValue:Z

    .line 154
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mAdminWallpaper:Z

    .line 155
    return-void
.end method

.method public static writeKeyguardCurrentWallpaperInfo(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    .line 465
    if-nez p0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 468
    :cond_0
    const-string v0, "KeyguardEffectViewUtil"

    const-string v1, "set current wallpaper info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_type"

    sget v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperType:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 471
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_file_path"

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_res_id"

    sget v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->mWallpaperResId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public static writeKeyguardDefaultWallpaperResId(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 478
    if-nez p0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 481
    :cond_0
    const-string v0, "KeyguardEffectViewUtil"

    const-string v1, "set resource id"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_default_wallpaper_res_id"

    sget v2, Lcom/android/keyguard/R$drawable;->keyguard_default_wallpaper:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private static writeWallpaperInfoAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wallpaperDrawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 459
    invoke-static {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->writeKeyguardCurrentWallpaperInfo(Landroid/content/Context;)V

    .line 461
    return-object p1
.end method
