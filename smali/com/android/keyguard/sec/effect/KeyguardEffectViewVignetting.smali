.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewVignetting.java"


# static fields
.field private static BOTTOM_DIM_ALPHA:I = 0x0

.field private static final BOTTOM_TO_TOP:I = 0x1

.field private static final DEFAULT_COLOR:I = 0x6e

.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewVignetting"

.field private static TOP_DIM_ALPHA:I

.field private static final TOP_TO_BOTTOM:I

.field private static VIGNETTING_BOTTOM_RATIO:F

.field private static VIGNETTING_TOP_RATIO:F


# instance fields
.field private final LIMITTED_VALUE:I

.field private mDefaultColor:I

.field private mFilterImageView:Landroid/widget/ImageView;

.field private mWindowHeight:I

.field private mWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x4d

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->TOP_DIM_ALPHA:I

    .line 27
    const/16 v0, 0x33

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->BOTTOM_DIM_ALPHA:I

    .line 32
    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_TOP_RATIO:F

    .line 33
    const v0, 0x3def9db2    # 0.117f

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_BOTTOM_RATIO:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x6e

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->LIMITTED_VALUE:I

    .line 36
    const/16 v2, 0xff

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mDefaultColor:I

    .line 40
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mWindowWidth:I

    .line 41
    iput v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mWindowHeight:I

    .line 46
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 47
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 48
    .local v1, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 49
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mWindowWidth:I

    .line 50
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mWindowHeight:I

    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->init()V

    .line 54
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    .line 55
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 57
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 59
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->addView(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method private calcGradientArea(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 5
    .param p1, "bitmapCropRect"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 194
    .local v0, "gradientAreaRect":Landroid/graphics/Rect;
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 196
    .local v1, "height":I
    packed-switch p2, :pswitch_data_0

    .line 214
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    .line 199
    :pswitch_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 200
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 201
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 202
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v3, v1

    sget v4, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_TOP_RATIO:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 207
    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 208
    int-to-float v2, v1

    sget v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_BOTTOM_RATIO:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 209
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 210
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private convertToAlphaValue(I)I
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 72
    mul-int/lit16 v0, p1, 0xff

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private getBitmapCenterCropRect(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v9, 0x0

    .line 166
    const-string v7, "KeyguardEffectViewVignetting"

    const-string v8, "getCenterCropRect()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 169
    .local v3, "cropRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 170
    .local v2, "bitmapWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 171
    .local v0, "bitmapHeight":I
    int-to-float v7, p2

    int-to-float v8, p3

    div-float v4, v7, v8

    .line 172
    .local v4, "ratio":F
    int-to-float v7, v2

    int-to-float v8, v0

    div-float v1, v7, v8

    .line 174
    .local v1, "bitmapRatio":F
    cmpl-float v7, v1, v4

    if-lez v7, :cond_0

    .line 177
    const-string v7, "KeyguardEffectViewVignetting"

    const-string v8, "left and rigth are cropped"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    int-to-float v7, v0

    mul-float/2addr v7, v4

    float-to-int v6, v7

    .line 179
    .local v6, "targetWidth":I
    sub-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v3, v7, v9, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 188
    .end local v6    # "targetWidth":I
    :goto_0
    return-object v3

    .line 183
    :cond_0
    const-string v7, "KeyguardEffectViewVignetting"

    const-string v8, "top and bottom are cropped"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    int-to-float v7, v2

    div-float/2addr v7, v4

    float-to-int v5, v7

    .line 185
    .local v5, "targetHeight":I
    sub-int v7, v0, v5

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v3, v9, v7, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 42
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "region"    # Landroid/graphics/Rect;

    .prologue
    .line 223
    const/high16 v19, 0x3e800000    # 0.25f

    .line 225
    .local v19, "mLimitRatio":F
    const-wide/16 v36, 0x0

    .line 226
    .local v36, "sumR":J
    const-wide/16 v34, 0x0

    .line 227
    .local v34, "sumG":J
    const-wide/16 v32, 0x0

    .line 228
    .local v32, "sumB":J
    const-wide/16 v28, 0x0

    .line 230
    .local v28, "sampleCount":J
    const-wide/16 v24, 0x0

    .line 231
    .local v24, "lowestR":J
    const-wide/16 v22, 0x0

    .line 232
    .local v22, "lowestG":J
    const-wide/16 v20, 0x0

    .line 234
    .local v20, "lowestB":J
    const-wide/16 v10, 0x0

    .line 235
    .local v10, "curR":J
    const-wide/16 v8, 0x0

    .line 236
    .local v8, "curG":J
    const-wide/16 v6, 0x0

    .line 239
    .local v6, "curB":J
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v31

    .line 240
    .local v31, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 242
    .local v18, "h":I
    move/from16 v0, v31

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v40, v0

    const/high16 v41, 0x42c80000    # 100.0f

    div-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v30, v0

    .line 243
    .local v30, "step":I
    :goto_0
    if-gtz v30, :cond_0

    .line 244
    const/16 v30, 0x1

    .line 246
    :cond_0
    const/16 v38, 0x0

    .local v38, "x":I
    :goto_1
    move/from16 v0, v38

    move/from16 v1, v31

    if-ge v0, v1, :cond_a

    .line 247
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v39, v0

    .local v39, "y":I
    :goto_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_9

    .line 249
    if-eqz v38, :cond_1

    if-nez v39, :cond_3

    .line 247
    :cond_1
    :goto_3
    add-int v39, v39, v30

    goto :goto_2

    .line 242
    .end local v30    # "step":I
    .end local v38    # "x":I
    .end local v39    # "y":I
    :cond_2
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v40, v0

    const/high16 v41, 0x42c80000    # 100.0f

    div-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v30, v0

    goto :goto_0

    .line 252
    .restart local v30    # "step":I
    .restart local v38    # "x":I
    .restart local v39    # "y":I
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 254
    .local v4, "color":I
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v40

    move/from16 v0, v40

    int-to-long v10, v0

    .line 255
    add-long v36, v36, v10

    .line 257
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v40

    move/from16 v0, v40

    int-to-long v8, v0

    .line 258
    add-long v34, v34, v8

    .line 260
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v40

    move/from16 v0, v40

    int-to-long v6, v0

    .line 261
    add-long v32, v32, v6

    .line 263
    const-wide/16 v40, 0x1

    add-long v28, v28, v40

    .line 265
    cmp-long v40, v24, v10

    if-gtz v40, :cond_4

    const-wide/16 v40, 0x0

    cmp-long v40, v24, v40

    if-nez v40, :cond_5

    :cond_4
    move-wide/from16 v24, v10

    .line 266
    :cond_5
    cmp-long v40, v22, v8

    if-gtz v40, :cond_6

    const-wide/16 v40, 0x0

    cmp-long v40, v22, v40

    if-nez v40, :cond_7

    :cond_6
    move-wide/from16 v22, v8

    .line 267
    :cond_7
    cmp-long v40, v20, v6

    if-gtz v40, :cond_8

    const-wide/16 v40, 0x0

    cmp-long v40, v20, v40

    if-nez v40, :cond_1

    :cond_8
    move-wide/from16 v20, v6

    goto :goto_3

    .line 246
    .end local v4    # "color":I
    :cond_9
    add-int v38, v38, v30

    goto :goto_1

    .line 271
    .end local v39    # "y":I
    :cond_a
    const/4 v14, 0x0

    .local v14, "everageR":I
    const/4 v12, 0x0

    .local v12, "everageB":I
    const/4 v13, 0x0

    .line 272
    .local v13, "everageG":I
    const/16 v17, 0x0

    .local v17, "finalR":I
    const/16 v16, 0x0

    .local v16, "finalG":I
    const/4 v15, 0x0

    .line 279
    .local v15, "finalB":I
    div-long v40, v36, v28

    move-wide/from16 v0, v40

    long-to-int v14, v0

    .line 280
    div-long v40, v34, v28

    move-wide/from16 v0, v40

    long-to-int v13, v0

    .line 281
    div-long v40, v32, v28

    move-wide/from16 v0, v40

    long-to-int v12, v0

    .line 283
    const/16 v26, 0x0

    .line 285
    .local v26, "ratio":F
    int-to-long v0, v14

    move-wide/from16 v40, v0

    cmp-long v40, v40, v24

    if-lez v40, :cond_10

    .line 286
    int-to-long v0, v14

    move-wide/from16 v40, v0

    sub-long v40, v40, v24

    move-wide/from16 v0, v40

    long-to-float v0, v0

    move/from16 v40, v0

    int-to-float v0, v14

    move/from16 v41, v0

    div-float v26, v40, v41

    .line 287
    cmpl-float v40, v26, v19

    if-lez v40, :cond_b

    .line 288
    move/from16 v26, v19

    .line 290
    :cond_b
    const/16 v40, 0x0

    cmpl-float v40, v26, v40

    if-lez v40, :cond_f

    .line 291
    const/high16 v40, 0x3f800000    # 1.0f

    sub-float v40, v40, v26

    int-to-float v0, v14

    move/from16 v41, v0

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v17, v0

    .line 298
    :goto_4
    int-to-long v0, v13

    move-wide/from16 v40, v0

    cmp-long v40, v40, v22

    if-lez v40, :cond_12

    .line 299
    int-to-long v0, v13

    move-wide/from16 v40, v0

    sub-long v40, v40, v22

    move-wide/from16 v0, v40

    long-to-float v0, v0

    move/from16 v40, v0

    int-to-float v0, v13

    move/from16 v41, v0

    div-float v26, v40, v41

    .line 300
    cmpl-float v40, v26, v19

    if-lez v40, :cond_c

    .line 301
    move/from16 v26, v19

    .line 303
    :cond_c
    const/16 v40, 0x0

    cmpl-float v40, v26, v40

    if-lez v40, :cond_11

    .line 304
    const/high16 v40, 0x3f800000    # 1.0f

    sub-float v40, v40, v26

    int-to-float v0, v13

    move/from16 v41, v0

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v16, v0

    .line 311
    :goto_5
    int-to-long v0, v12

    move-wide/from16 v40, v0

    cmp-long v40, v40, v20

    if-lez v40, :cond_14

    .line 312
    int-to-long v0, v12

    move-wide/from16 v40, v0

    sub-long v40, v40, v20

    move-wide/from16 v0, v40

    long-to-float v0, v0

    move/from16 v40, v0

    int-to-float v0, v12

    move/from16 v41, v0

    div-float v26, v40, v41

    .line 313
    cmpl-float v40, v26, v19

    if-lez v40, :cond_d

    .line 314
    move/from16 v26, v19

    .line 316
    :cond_d
    const/16 v40, 0x0

    cmpl-float v40, v26, v40

    if-lez v40, :cond_13

    .line 317
    const/high16 v40, 0x3f800000    # 1.0f

    sub-float v40, v40, v26

    int-to-float v0, v12

    move/from16 v41, v0

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v15, v0

    .line 324
    :goto_6
    const/16 v40, 0xff

    move/from16 v0, v40

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v27

    .line 326
    .local v27, "resultColor":I
    const/16 v40, 0xc8

    move/from16 v0, v17

    move/from16 v1, v40

    if-le v0, v1, :cond_e

    const/16 v40, 0xc8

    move/from16 v0, v16

    move/from16 v1, v40

    if-le v0, v1, :cond_e

    const/16 v40, 0xc8

    move/from16 v0, v40

    if-le v15, v0, :cond_e

    .line 327
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mDefaultColor:I

    move/from16 v27, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v12    # "everageB":I
    .end local v13    # "everageG":I
    .end local v14    # "everageR":I
    .end local v15    # "finalB":I
    .end local v16    # "finalG":I
    .end local v17    # "finalR":I
    .end local v18    # "h":I
    .end local v26    # "ratio":F
    .end local v27    # "resultColor":I
    .end local v30    # "step":I
    .end local v31    # "w":I
    .end local v38    # "x":I
    :cond_e
    :goto_7
    return v27

    .line 293
    .restart local v12    # "everageB":I
    .restart local v13    # "everageG":I
    .restart local v14    # "everageR":I
    .restart local v15    # "finalB":I
    .restart local v16    # "finalG":I
    .restart local v17    # "finalR":I
    .restart local v18    # "h":I
    .restart local v26    # "ratio":F
    .restart local v30    # "step":I
    .restart local v31    # "w":I
    .restart local v38    # "x":I
    :cond_f
    move/from16 v17, v14

    goto/16 :goto_4

    .line 295
    :cond_10
    move/from16 v17, v14

    goto/16 :goto_4

    .line 306
    :cond_11
    move/from16 v16, v13

    goto :goto_5

    .line 308
    :cond_12
    move/from16 v16, v13

    goto :goto_5

    .line 319
    :cond_13
    move v15, v12

    goto :goto_6

    .line 321
    :cond_14
    move v15, v12

    goto :goto_6

    .line 332
    .end local v12    # "everageB":I
    .end local v13    # "everageG":I
    .end local v14    # "everageR":I
    .end local v15    # "finalB":I
    .end local v16    # "finalG":I
    .end local v17    # "finalR":I
    .end local v18    # "h":I
    .end local v26    # "ratio":F
    .end local v30    # "step":I
    .end local v31    # "w":I
    .end local v38    # "x":I
    :catch_0
    move-exception v5

    .line 333
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mDefaultColor:I

    move/from16 v27, v0

    goto :goto_7
.end method

.method private init()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->convertToAlphaValue(I)I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->TOP_DIM_ALPHA:I

    .line 65
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->convertToAlphaValue(I)I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->BOTTOM_DIM_ALPHA:I

    .line 66
    const v0, 0x3de147ae    # 0.11f

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_TOP_RATIO:F

    .line 67
    const v0, 0x3e0f5c29    # 0.14f

    sput v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_BOTTOM_RATIO:F

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public applyBlendedFilter(Landroid/graphics/Bitmap;)V
    .locals 17
    .param p1, "bgBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 95
    const-string v3, "KeyguardEffectViewVignetting"

    const-string v4, "applyBlendedFilter()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mWindowWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mWindowHeight:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->getBitmapCenterCropRect(Landroid/graphics/Bitmap;II)Landroid/graphics/Rect;

    move-result-object v11

    .line 102
    .local v11, "cropRect":Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/ImageFilterSet;

    invoke-direct {v13}, Landroid/graphics/ImageFilterSet;-><init>()V

    .line 103
    .local v13, "filterSet":Landroid/graphics/ImageFilterSet;
    const/16 v3, 0x34

    invoke-static {v3}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v2

    check-cast v2, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    .line 104
    .local v2, "topFilter":Landroid/graphics/ImageFilter$BitmapColorMaskFilter;
    const/16 v3, 0x34

    invoke-static {v3}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v10

    check-cast v10, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    .line 114
    .local v10, "bottomFilter":Landroid/graphics/ImageFilter$BitmapColorMaskFilter;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->calcGradientArea(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v14

    .line 115
    .local v14, "gradientAreaRect":Landroid/graphics/Rect;
    if-eqz v14, :cond_0

    .line 119
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v12

    .line 120
    .local v12, "extractColor":I
    const-string v3, "KeyguardEffectViewVignetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractedColor of top = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v12, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v2}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    .line 123
    shr-int/lit8 v3, v12, 0x10

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xc8

    if-le v3, v4, :cond_2

    .line 124
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    sget v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->TOP_DIM_ALPHA:I

    const/16 v6, 0x6e

    const/16 v7, 0x6e

    const/16 v8, 0x6e

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    sget v8, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_TOP_RATIO:F

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    const/16 v9, 0x6e

    const/16 v15, 0x6e

    const/16 v16, 0x6e

    move/from16 v0, v16

    invoke-static {v8, v9, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    .line 135
    :goto_1
    const/4 v14, 0x0

    .line 136
    const/4 v12, 0x0

    .line 139
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->calcGradientArea(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v14

    .line 140
    if-eqz v14, :cond_0

    .line 143
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v12

    .line 144
    const-string v3, "KeyguardEffectViewVignetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractedColor of bottom = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v12, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v10}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    .line 147
    shr-int/lit8 v3, v12, 0x10

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xc8

    if-le v3, v4, :cond_3

    .line 148
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->BOTTOM_DIM_ALPHA:I

    const/16 v6, 0x6e

    const/16 v7, 0x6e

    const/16 v8, 0x6e

    invoke-static {v3, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v7, 0x0

    sget v8, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_BOTTOM_RATIO:F

    const/4 v3, 0x0

    const/16 v9, 0x6e

    const/16 v15, 0x6e

    const/16 v16, 0x6e

    move/from16 v0, v16

    invoke-static {v3, v9, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    move-object v3, v10

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    .line 159
    :goto_2
    invoke-virtual {v13, v2}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    .line 160
    invoke-virtual {v13, v10}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    goto/16 :goto_0

    .line 129
    :cond_2
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    sget v5, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->TOP_DIM_ALPHA:I

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    sget v8, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_TOP_RATIO:F

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v15

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v16

    move/from16 v0, v16

    invoke-static {v8, v9, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    goto/16 :goto_1

    .line 153
    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->BOTTOM_DIM_ALPHA:I

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v3, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v7, 0x0

    sget v8, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->VIGNETTING_BOTTOM_RATIO:F

    const/4 v3, 0x0

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v15

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v16

    move/from16 v0, v16

    invoke-static {v3, v9, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    move-object v3, v10

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    goto :goto_2
.end method

.method public resetBlendedFilter()V
    .locals 6

    .prologue
    const/16 v5, 0x34

    .line 76
    const-string v3, "KeyguardEffectViewVignetting"

    const-string v4, "resetBlendedFilter()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 92
    :goto_0
    return-void

    .line 81
    :cond_0
    new-instance v1, Landroid/graphics/ImageFilterSet;

    invoke-direct {v1}, Landroid/graphics/ImageFilterSet;-><init>()V

    .line 82
    .local v1, "filterSet":Landroid/graphics/ImageFilterSet;
    invoke-static {v5}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v2

    check-cast v2, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    .line 83
    .local v2, "topFilter":Landroid/graphics/ImageFilter$BitmapColorMaskFilter;
    invoke-static {v5}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    .line 85
    .local v0, "bottomFilter":Landroid/graphics/ImageFilter$BitmapColorMaskFilter;
    invoke-virtual {v2}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    .line 86
    invoke-virtual {v0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    .line 88
    invoke-virtual {v1, v2}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    .line 89
    invoke-virtual {v1, v0}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    .line 91
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewVignetting;->mFilterImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    goto :goto_0
.end method
