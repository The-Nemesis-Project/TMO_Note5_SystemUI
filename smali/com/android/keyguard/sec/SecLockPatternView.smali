.class public Lcom/android/keyguard/sec/SecLockPatternView;
.super Lcom/android/internal/widget/LockPatternView;
.source "SecLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecLockPatternView$1;,
        Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;,
        Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;
    }
.end annotation


# static fields
.field private static final TYPE_COLORFUL:I = 0x3

.field private static final TYPE_DOT:I = 0x1

.field private static final TYPE_MORPHING:I = 0x2

.field private static final TYPE_NONE:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

.field private mBitmapBtnDefault:Landroid/graphics/Bitmap;

.field private mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field private mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mBtnDefaultForNone:Landroid/graphics/Bitmap;

.field private mBtnTouchedForCandy:[[Landroid/graphics/Bitmap;

.field private mBtnTouchedForNone:Landroid/graphics/Bitmap;

.field private mCircleDefaultForCandy:[[Landroid/graphics/Bitmap;

.field private mCircleDefaultForMorphing:Landroid/graphics/Bitmap;

.field private mCircleDefaultForNone:Landroid/graphics/Bitmap;

.field private mCircleDefaultForPattern:Landroid/graphics/Bitmap;

.field private mCircleGreenForCandy:[[Landroid/graphics/Bitmap;

.field private mCircleGreenForMorphing:Landroid/graphics/Bitmap;

.field private mCircleGreenForNone:Landroid/graphics/Bitmap;

.field private mCircleGreenForPattern:Landroid/graphics/Bitmap;

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private mCircleRedForCandy:Landroid/graphics/Bitmap;

.field private mCircleRedForMorphing:Landroid/graphics/Bitmap;

.field private mCircleRedForNone:Landroid/graphics/Bitmap;

.field private mCircleRedForPattern:Landroid/graphics/Bitmap;

.field private mDiameterFactor:F

.field private mIsThemeCircleDefaultApplied:Z

.field private mIsThemeCircleGreenApplied:Z

.field private mIsThemeCircleRedApplied:Z

.field private mPatternCallback:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

.field private final mStrokeAlpha:I

.field private final morphAnimationStartThreshold:F

.field private final morphColor:I

.field private morphEffectPath:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

.field private morphEffectScale:F

.field private morphEffectScaleForPhone:F

.field private morphEffectScaleForTablet:F

.field private final morphLineRatio:F

.field private morphPaint:Landroid/graphics/Paint;

.field private morphRatio:F

.field private final offsetForCircleLineInvalidateRect:I

.field private pathTotal:I

.field private patternType:I

.field private sx:F

.field private sy:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v10, 0x1c

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const-string v5, "SecLockPatternView"

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    .line 49
    const v5, 0x3dcccccd    # 0.1f

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mDiameterFactor:F

    .line 50
    iput v10, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mStrokeAlpha:I

    .line 64
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 98
    iput v6, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    .line 99
    sget-object v5, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->WithinThreshold:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    .line 101
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphColor:I

    .line 102
    const/16 v5, 0x14

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->offsetForCircleLineInvalidateRect:I

    .line 103
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphAnimationStartThreshold:F

    .line 104
    const v5, 0x3e4ccccd    # 0.2f

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphLineRatio:F

    .line 106
    const v5, 0x3f6b851f    # 0.92f

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScaleForPhone:F

    .line 107
    const v5, 0x3f1f3b64    # 0.622f

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScaleForTablet:F

    .line 108
    iput v6, p0, Lcom/android/keyguard/sec/SecLockPatternView;->sx:F

    .line 109
    iput v6, p0, Lcom/android/keyguard/sec/SecLockPatternView;->sy:F

    .line 124
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_pattern_type"

    const/4 v7, -0x2

    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    .line 126
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "patternType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 130
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$bool;->theme_use_pattern_normal_image:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleDefaultApplied:Z

    .line 132
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$bool;->theme_use_pattern_success_image:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleGreenApplied:Z

    .line 133
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$bool;->theme_use_pattern_failed_image:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleRedApplied:Z

    .line 140
    :goto_0
    sget v5, Lcom/android/keyguard/R$drawable;->btn_code_lock_default_holo:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 141
    sget v5, Lcom/android/keyguard/R$drawable;->btn_code_lock_default_holo_marked:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 142
    sget v5, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_holo:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 143
    sget v5, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_holo:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 144
    sget v5, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_holo:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 146
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->loadResource()V

    .line 149
    const/4 v5, 0x5

    new-array v2, v5, [Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    aput-object v5, v2, v8

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    aput-object v6, v2, v5

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v5, v2, v9

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v6, v2, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v6, v2, v5

    .line 152
    .local v2, "bitmaps":[Landroid/graphics/Bitmap;
    move-object v0, v2

    .local v0, "arr$":[Landroid/graphics/Bitmap;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 153
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    .line 154
    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 135
    .end local v0    # "arr$":[Landroid/graphics/Bitmap;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "bitmaps":[Landroid/graphics/Bitmap;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    iput-boolean v8, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleDefaultApplied:Z

    .line 136
    iput-boolean v8, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleGreenApplied:Z

    .line 137
    iput-boolean v8, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleRedApplied:Z

    goto :goto_0

    .line 157
    .restart local v0    # "arr$":[Landroid/graphics/Bitmap;
    .restart local v2    # "bitmaps":[Landroid/graphics/Bitmap;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    if-ne v5, v9, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->setForMorphing()V

    .line 158
    :cond_2
    return-void
.end method

.method private checkDistance(FFFF)V
    .locals 11
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "targetX"    # F
    .param p4, "targetY"    # F

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 661
    sub-float v0, p1, p3

    .line 662
    .local v0, "diffX":F
    sub-float v1, p2, p4

    .line 663
    .local v1, "diffY":F
    float-to-double v4, v0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v6, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 664
    .local v2, "distance":D
    iget v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareWidth:F

    mul-float/2addr v4, v10

    float-to-double v4, v4

    div-double v4, v2, v4

    double-to-float v4, v4

    iput v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    .line 666
    iget v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    cmpl-float v4, v4, v10

    if-ltz v4, :cond_0

    .line 667
    sget-object v4, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->StuckLine:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/SecLockPatternView;->setStatus(Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;)V

    .line 668
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    .line 670
    :cond_0
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZII)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "leftX"    # I
    .param p3, "topY"    # I
    .param p4, "partOfPattern"    # Z
    .param p5, "i"    # I
    .param p6, "j"    # I

    .prologue
    .line 277
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getImagesForCircle(II)V

    .line 282
    if-eqz p4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInStealthMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 284
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 285
    .local v14, "outerCircle":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleDefaultApplied:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    const/4 v10, 0x0

    .line 303
    .local v10, "innerCircle":Landroid/graphics/Bitmap;
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    move/from16 v18, v0

    .line 304
    .local v18, "width":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    .line 306
    .local v9, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareWidth:F

    move/from16 v17, v0

    .line 307
    .local v17, "squareWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareHeight:F

    move/from16 v16, v0

    .line 309
    .local v16, "squareHeight":F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v17, v19

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    .line 310
    .local v12, "offsetX":I
    int-to-float v0, v9

    move/from16 v19, v0

    sub-float v19, v16, v19

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v13, v0

    .line 312
    .local v13, "offsetY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareWidth:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/SecLockPatternView;->sx:F

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareHeight:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/SecLockPatternView;->sy:F

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    add-int v20, p2, v12

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-int v21, p3, v13

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->sx:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->sy:F

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 320
    if-eqz v10, :cond_1

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 322
    :cond_1
    if-eqz v14, :cond_2

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v14, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 328
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternInProgress:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 329
    sget-object v19, Lcom/android/keyguard/sec/SecLockPatternView$1;->$SwitchMap$com$android$keyguard$sec$SecLockPatternView$MorphStatus:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 347
    :cond_3
    :goto_1
    return-void

    .line 285
    .end local v9    # "height":I
    .end local v10    # "innerCircle":Landroid/graphics/Bitmap;
    .end local v12    # "offsetX":I
    .end local v13    # "offsetY":I
    .end local v16    # "squareHeight":F
    .end local v17    # "squareWidth":F
    .end local v18    # "width":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 286
    .end local v14    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternInProgress:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 288
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 289
    .restart local v14    # "outerCircle":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleGreenApplied:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    const/4 v10, 0x0

    .restart local v10    # "innerCircle":Landroid/graphics/Bitmap;
    :goto_2
    goto/16 :goto_0

    .end local v10    # "innerCircle":Landroid/graphics/Bitmap;
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 290
    .end local v14    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 292
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 293
    .restart local v14    # "outerCircle":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleRedApplied:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    const/4 v10, 0x0

    .restart local v10    # "innerCircle":Landroid/graphics/Bitmap;
    :goto_3
    goto/16 :goto_0

    .end local v10    # "innerCircle":Landroid/graphics/Bitmap;
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 294
    .end local v14    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 297
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 298
    .restart local v14    # "outerCircle":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleGreenApplied:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    const/4 v10, 0x0

    .restart local v10    # "innerCircle":Landroid/graphics/Bitmap;
    :goto_4
    goto/16 :goto_0

    .end local v10    # "innerCircle":Landroid/graphics/Bitmap;
    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    goto :goto_4

    .line 300
    .end local v14    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_c
    new-instance v19, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "unknown display mode "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 331
    .restart local v9    # "height":I
    .restart local v10    # "innerCircle":Landroid/graphics/Bitmap;
    .restart local v12    # "offsetX":I
    .restart local v13    # "offsetY":I
    .restart local v14    # "outerCircle":Landroid/graphics/Bitmap;
    .restart local v16    # "squareHeight":F
    .restart local v17    # "squareWidth":F
    .restart local v18    # "width":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 332
    .local v8, "count":I
    if-lez v8, :cond_3

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v8, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 334
    .local v11, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v19

    move/from16 v0, p5

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v19

    move/from16 v0, p6

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 335
    add-int v19, p2, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v6, v0

    .line 336
    .local v6, "centerX":F
    add-int v19, p3, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v7, v0

    .line 337
    .local v7, "centerY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/android/keyguard/sec/SecLockPatternView;->getDegree(FFFF)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v15, v0

    .line 338
    .local v15, "rotation":F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7, v15}, Lcom/android/keyguard/sec/SecLockPatternView;->drawMorph(Landroid/graphics/Canvas;FFF)V

    goto/16 :goto_1

    .line 343
    .end local v6    # "centerX":F
    .end local v7    # "centerY":F
    .end local v8    # "count":I
    .end local v11    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v15    # "rotation":F
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/keyguard/sec/SecLockPatternView;->drawSmallCircle(Landroid/graphics/Canvas;FFZ)V

    goto/16 :goto_1

    .line 329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private drawLastLine(Landroid/graphics/Path;FFFF)V
    .locals 2
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "targetX"    # F
    .param p5, "targetY"    # F

    .prologue
    .line 649
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternView$1;->$SwitchMap$com$android$keyguard$sec$SecLockPatternView$MorphStatus:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 658
    :goto_0
    return-void

    .line 651
    :pswitch_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/keyguard/sec/SecLockPatternView;->checkDistance(FFFF)V

    goto :goto_0

    .line 655
    :pswitch_1
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 649
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private drawMorph(Landroid/graphics/Canvas;FFF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "rotation"    # F

    .prologue
    .line 673
    iget v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 674
    iget v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->pathTotal:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 675
    .local v0, "frame":I
    const/high16 v3, 0x42b40000    # 90.0f

    add-float v2, p4, v3

    .line 676
    .local v2, "tRotation":F
    iget-object v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectPath:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

    invoke-virtual {v3, v0, p2, p3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v1

    .line 677
    .local v1, "path":Landroid/graphics/Path;
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 678
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 679
    iget-object v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 680
    neg-float v3, v2

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 681
    neg-float v3, p2

    neg-float v4, p3

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 683
    .end local v0    # "frame":I
    .end local v1    # "path":Landroid/graphics/Path;
    .end local v2    # "tRotation":F
    :cond_0
    return-void
.end method

.method private drawSmallCircle(Landroid/graphics/Canvas;FFZ)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "isForGuideCircle"    # Z

    .prologue
    .line 686
    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 690
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v0, p2, v2

    .line 688
    .local v0, "tx":F
    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v1, p3, v2

    .line 689
    .local v1, "ty":F
    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getColor()I
    .locals 3

    .prologue
    .line 712
    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/16 v0, 0xb2

    .line 713
    .local v0, "color":I
    :goto_0
    return v0

    .line 712
    .end local v0    # "color":I
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method private getDegree(FFFF)D
    .locals 8
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 698
    const-wide/16 v0, 0x0

    .line 699
    .local v0, "degree":D
    sub-float v6, p3, p1

    float-to-double v2, v6

    .line 700
    .local v2, "dx":D
    sub-float v6, p4, p2

    float-to-double v4, v6

    .line 701
    .local v4, "dy":D
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 702
    return-wide v0
.end method

.method private getImagesForCircle(II)V
    .locals 8
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 350
    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    packed-switch v5, :pswitch_data_0

    .line 384
    :goto_0
    const/4 v5, 0x5

    new-array v2, v5, [Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    aput-object v5, v2, v6

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    aput-object v7, v2, v5

    const/4 v5, 0x2

    iget-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v7, v2, v5

    const/4 v5, 0x3

    iget-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v7, v2, v5

    const/4 v5, 0x4

    iget-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v7, v2, v5

    .line 389
    .local v2, "bitmaps":[Landroid/graphics/Bitmap;
    move-object v0, v2

    .local v0, "arr$":[Landroid/graphics/Bitmap;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 390
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    if-nez v1, :cond_0

    move v5, v6

    :goto_2
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    .line 391
    iget v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    if-nez v1, :cond_1

    move v5, v6

    :goto_3
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    .line 389
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 352
    .end local v0    # "arr$":[Landroid/graphics/Bitmap;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "bitmaps":[Landroid/graphics/Bitmap;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :pswitch_0
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnDefaultForNone:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 353
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnTouchedForNone:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 354
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForNone:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 355
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForNone:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 356
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForNone:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 359
    :pswitch_1
    iput-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 360
    iput-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 361
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForPattern:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 362
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForPattern:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 363
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForPattern:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 366
    :pswitch_2
    iput-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 367
    iput-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 368
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForMorphing:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 369
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForMorphing:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 370
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForMorphing:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 373
    :pswitch_3
    iput-object v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 374
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnTouchedForCandy:[[Landroid/graphics/Bitmap;

    aget-object v5, v5, p1

    aget-object v5, v5, p2

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 375
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForCandy:[[Landroid/graphics/Bitmap;

    aget-object v5, v5, p1

    aget-object v5, v5, p2

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 376
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForCandy:[[Landroid/graphics/Bitmap;

    aget-object v5, v5, p1

    aget-object v5, v5, p2

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 377
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForCandy:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 390
    .restart local v0    # "arr$":[Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmaps":[Landroid/graphics/Bitmap;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    goto :goto_2

    .line 391
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    goto :goto_3

    .line 393
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    return-void

    .line 350
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getLineRadius()F
    .locals 3

    .prologue
    .line 706
    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareWidth:F

    iget v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mDiameterFactor:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v1, v2

    .line 707
    .local v0, "radius":F
    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    .line 708
    :cond_0
    return v0
.end method

.method private getScaledBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 546
    .local v1, "orgBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->keyguard_pattern_dot_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 548
    .local v0, "dot_size":I
    const/4 v2, 0x1

    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private loadResource()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 552
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    packed-switch v0, :pswitch_data_0

    .line 641
    :goto_0
    return-void

    .line 554
    :pswitch_0
    sget v0, Lcom/android/keyguard/R$drawable;->btn_code_lock_default_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnDefaultForNone:Landroid/graphics/Bitmap;

    .line 555
    sget v0, Lcom/android/keyguard/R$drawable;->btn_code_lock_default_holo_marked:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnTouchedForNone:Landroid/graphics/Bitmap;

    .line 556
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleDefaultApplied:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleGreenApplied:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleRedApplied:Z

    if-eqz v0, :cond_1

    .line 558
    :cond_0
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForNone:Landroid/graphics/Bitmap;

    .line 559
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForNone:Landroid/graphics/Bitmap;

    .line 560
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForNone:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 562
    :cond_1
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForNone:Landroid/graphics/Bitmap;

    .line 563
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForNone:Landroid/graphics/Bitmap;

    .line 564
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForNone:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 569
    :pswitch_1
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_pattern:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForPattern:Landroid/graphics/Bitmap;

    .line 570
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_pattern:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForPattern:Landroid/graphics/Bitmap;

    .line 571
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_pattern:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForPattern:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 575
    :pswitch_2
    new-array v0, v6, [[Landroid/graphics/Bitmap;

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_01:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_02:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_03:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_04:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_05:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_06:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_07:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_08:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_09:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnTouchedForCandy:[[Landroid/graphics/Bitmap;

    .line 593
    new-array v0, v6, [[Landroid/graphics/Bitmap;

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_01:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_02:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_03:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_04:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_05:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_06:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_07:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_08:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_09:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForCandy:[[Landroid/graphics/Bitmap;

    .line 611
    new-array v0, v6, [[Landroid/graphics/Bitmap;

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_01:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_02:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_03:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_04:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_05:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_06:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_07:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_08:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_09:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForCandy:[[Landroid/graphics/Bitmap;

    .line 629
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_candy:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForCandy:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 633
    :pswitch_3
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_holo_interaction:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForMorphing:Landroid/graphics/Bitmap;

    .line 634
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_holo_interaction:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForMorphing:Landroid/graphics/Bitmap;

    .line 635
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_holo_interaction:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForMorphing:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 552
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private setForMorphing()V
    .locals 8

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 163
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 164
    .local v4, "screenWidth":I
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 165
    .local v3, "screenHeight":I
    if-le v4, v3, :cond_1

    move v1, v4

    .line 167
    .local v1, "longestWidth":I
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reolution : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "longestWidth : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 171
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "morphEffectScaleForTablet : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScaleForTablet:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScaleForTablet:F

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    .line 173
    const/16 v5, 0xa00

    if-eq v1, v5, :cond_0

    .line 174
    int-to-float v5, v1

    const/high16 v6, 0x45200000    # 2560.0f

    div-float v2, v5, v6

    .line 175
    .local v2, "ratio":F
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ratio : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    mul-float/2addr v5, v2

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    .line 187
    .end local v2    # "ratio":F
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "morphEffectScale : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v5, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

    iget v6, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    invoke-direct {v5, v6}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;-><init>(F)V

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectPath:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

    .line 190
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectPath:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->getPathTotal()I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->pathTotal:I

    .line 192
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    .line 193
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 194
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    return-void

    .end local v1    # "longestWidth":I
    :cond_1
    move v1, v3

    .line 165
    goto/16 :goto_0

    .line 179
    .restart local v1    # "longestWidth":I
    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "morphEffectScaleForPhone : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScaleForPhone:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScaleForPhone:F

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    .line 181
    const/16 v5, 0x780

    if-eq v1, v5, :cond_0

    .line 182
    int-to-float v5, v1

    const/high16 v6, 0x44f00000    # 1920.0f

    div-float v2, v5, v6

    .line 183
    .restart local v2    # "ratio":F
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ratio : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    mul-float/2addr v5, v2

    iput v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    goto/16 :goto_1
.end method

.method private setStatus(Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    .prologue
    .line 693
    iput-object p1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    .line 694
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Morphing current status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-void
.end method


# virtual methods
.method protected addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 2
    .param p1, "newCell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 200
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->WithinThreshold:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->setStatus(Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;)V

    .line 201
    :cond_0
    return-void
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;)V
    .locals 30
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getLineRadius()F

    move-result v19

    .line 208
    .local v19, "radius":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    .line 209
    .local v7, "historySize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->setEmpty()V

    .line 210
    const/4 v12, 0x0

    .line 211
    .local v12, "invalidateNow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    add-int/lit8 v25, v7, 0x1

    move/from16 v0, v25

    if-ge v11, v0, :cond_7

    .line 212
    if-ge v11, v7, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v23

    .line 213
    .local v23, "x":F
    :goto_1
    if-ge v11, v7, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v24

    .line 214
    .local v24, "y":F
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v8

    .line 215
    .local v8, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 216
    .local v18, "patternSize":I
    if-eqz v8, :cond_0

    const/16 v25, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 217
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternInProgress:Z

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->notifyPatternStarted()V

    .line 221
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    move/from16 v25, v0

    sub-float v25, v23, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 222
    .local v4, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    move/from16 v25, v0

    sub-float v25, v24, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 223
    .local v5, "dy":F
    const/16 v25, 0x0

    cmpl-float v25, v4, v25

    if-gtz v25, :cond_1

    const/16 v25, 0x0

    cmpl-float v25, v5, v25

    if-lez v25, :cond_2

    .line 224
    :cond_1
    const/4 v12, 0x1

    .line 227
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternInProgress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    if-lez v18, :cond_4

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 229
    .local v17, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    add-int/lit8 v25, v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 230
    .local v13, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v0, v13, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 231
    .local v14, "lastCellCenterX":F
    iget v0, v13, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 234
    .local v15, "lastCellCenterY":F
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v25, v25, v19

    const/high16 v26, 0x41a00000    # 20.0f

    sub-float v16, v25, v26

    .line 235
    .local v16, "left":F
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v25, v25, v19

    const/high16 v26, 0x41a00000    # 20.0f

    add-float v20, v25, v26

    .line 236
    .local v20, "right":F
    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v25, v25, v19

    const/high16 v26, 0x41a00000    # 20.0f

    sub-float v21, v25, v26

    .line 237
    .local v21, "top":F
    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v25, v25, v19

    const/high16 v26, 0x41a00000    # 20.0f

    add-float v3, v25, v26

    .line 240
    .local v3, "bottom":F
    if-eqz v8, :cond_3

    .line 241
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareWidth:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v22, v25, v26

    .line 242
    .local v22, "width":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareHeight:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v6, v25, v26

    .line 243
    .local v6, "height":F
    iget v0, v8, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v9

    .line 244
    .local v9, "hitCellCenterX":F
    iget v0, v8, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterYForRow(I)F

    move-result v10

    .line 246
    .local v10, "hitCellCenterY":F
    sub-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 247
    add-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 248
    sub-float v25, v10, v6

    move/from16 v0, v25

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 249
    add-float v25, v10, v6

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 253
    .end local v6    # "height":F
    .end local v9    # "hitCellCenterX":F
    .end local v10    # "hitCellCenterY":F
    .end local v22    # "width":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v26

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v27

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v28

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v29

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/Rect;->union(IIII)V

    .line 211
    .end local v3    # "bottom":F
    .end local v13    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v14    # "lastCellCenterX":F
    .end local v15    # "lastCellCenterY":F
    .end local v16    # "left":F
    .end local v17    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v20    # "right":F
    .end local v21    # "top":F
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 212
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v8    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v18    # "patternSize":I
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    goto/16 :goto_1

    .line 213
    .restart local v23    # "x":F
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    goto/16 :goto_2

    .line 257
    .end local v23    # "x":F
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    .line 258
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    .line 261
    if-eqz v12, :cond_8

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternCallback:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternCallback:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;->invalidateParentView()V

    .line 269
    :cond_8
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    .line 399
    .local v33, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 400
    .local v18, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDrawLookup:[[Z

    move-object/from16 v20, v0

    .line 402
    .local v20, "drawLookup":[[Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v6, :cond_2

    .line 407
    add-int/lit8 v2, v18, 0x1

    mul-int/lit16 v0, v2, 0x2bc

    move/from16 v30, v0

    .line 408
    .local v30, "oneCycle":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v6, v8

    long-to-int v2, v6

    rem-int v36, v2, v30

    .line 410
    .local v36, "spotInCycle":I
    move/from16 v0, v36

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v29, v0

    .line 412
    .local v29, "numCircles":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->clearPatternDrawLookup()V

    .line 413
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, v29

    if-ge v11, v0, :cond_0

    .line 414
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 415
    .local v14, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    aget-object v2, v20, v2

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v6

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 413
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 420
    .end local v14    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_0
    if-lez v29, :cond_8

    move/from16 v0, v29

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    const/16 v27, 0x1

    .line 423
    .local v27, "needToUpdateInProgressPoint":Z
    :goto_1
    if-eqz v27, :cond_1

    .line 424
    move/from16 v0, v36

    rem-int/lit16 v2, v0, 0x2bc

    int-to-float v2, v2

    const/high16 v6, 0x442f0000    # 700.0f

    div-float v34, v2, v6

    .line 428
    .local v34, "percentageOfNextCircle":F
    add-int/lit8 v2, v29, -0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 429
    .local v19, "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v15

    .line 430
    .local v15, "centerX":F
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterYForRow(I)F

    move-result v16

    .line 432
    .local v16, "centerY":F
    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 433
    .local v28, "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v2

    sub-float/2addr v2, v15

    mul-float v22, v34, v2

    .line 435
    .local v22, "dx":F
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterYForRow(I)F

    move-result v2

    sub-float v2, v2, v16

    mul-float v23, v34, v2

    .line 437
    .local v23, "dy":F
    add-float v2, v15, v22

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    .line 438
    add-float v2, v16, v23

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    .line 441
    .end local v15    # "centerX":F
    .end local v16    # "centerY":F
    .end local v19    # "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v22    # "dx":F
    .end local v23    # "dy":F
    .end local v28    # "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v34    # "percentageOfNextCircle":F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->invalidate()V

    .line 444
    .end local v11    # "i":I
    .end local v27    # "needToUpdateInProgressPoint":Z
    .end local v29    # "numCircles":I
    .end local v30    # "oneCycle":I
    .end local v36    # "spotInCycle":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareWidth:F

    move/from16 v38, v0

    .line 445
    .local v38, "squareWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareHeight:F

    move/from16 v37, v0

    .line 447
    .local v37, "squareHeight":F
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getLineRadius()F

    move-result v35

    .line 448
    .local v35, "radius":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 449
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getColor()I

    move-result v17

    .line 450
    .local v17, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 453
    .local v3, "currentPath":Landroid/graphics/Path;
    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 458
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInStealthMode:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v6, :cond_9

    :cond_3
    const/16 v21, 0x1

    .line 459
    .local v21, "drawPath":Z
    :goto_2
    if-eqz v21, :cond_4

    .line 460
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/android/keyguard/R$bool;->theme_use_pattern_line_color:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$color;->theme_pattern_line_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 464
    :cond_4
    if-eqz v21, :cond_7

    .line 465
    const/4 v13, 0x0

    .line 466
    .local v13, "anyCircles":Z
    const/16 v24, 0x0

    .line 467
    .local v24, "lastX":F
    const/16 v25, 0x0

    .line 468
    .local v25, "lastY":F
    const/4 v4, 0x0

    .line 469
    .local v4, "lastCellCenterX":F
    const/4 v5, 0x0

    .line 470
    .local v5, "lastCellCenterY":F
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    move/from16 v0, v18

    if-ge v11, v0, :cond_5

    .line 471
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 476
    .restart local v14    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v2, v14, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v2, v20, v2

    iget v6, v14, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v2, v2, v6

    if-nez v2, :cond_a

    .line 503
    .end local v14    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternInProgress:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v6, :cond_7

    :cond_6
    if-eqz v13, :cond_7

    .line 505
    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 506
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 507
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_e

    .line 508
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/sec/SecLockPatternView;->drawLastLine(Landroid/graphics/Path;FFFF)V

    .line 514
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 519
    .end local v4    # "lastCellCenterX":F
    .end local v5    # "lastCellCenterY":F
    .end local v11    # "i":I
    .end local v13    # "anyCircles":Z
    .end local v24    # "lastX":F
    .end local v25    # "lastY":F
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPaddingTop:I

    move/from16 v32, v0

    .line 520
    .local v32, "paddingTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPaddingLeft:I

    move/from16 v31, v0

    .line 522
    .local v31, "paddingLeft":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5
    const/4 v2, 0x3

    if-ge v11, v2, :cond_10

    .line 523
    move/from16 v0, v32

    int-to-float v2, v0

    int-to-float v6, v11

    mul-float v6, v6, v37

    add-float v40, v2, v6

    .line 525
    .local v40, "topY":F
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_6
    const/4 v2, 0x3

    if-ge v12, v2, :cond_f

    .line 526
    move/from16 v0, v31

    int-to-float v2, v0

    int-to-float v6, v12

    mul-float v6, v6, v38

    add-float v26, v2, v6

    .line 527
    .local v26, "leftX":F
    move/from16 v0, v26

    float-to-int v8, v0

    move/from16 v0, v40

    float-to-int v9, v0

    aget-object v2, v20, v11

    aget-boolean v10, v2, v12

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/android/keyguard/sec/SecLockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZII)V

    .line 525
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 420
    .end local v3    # "currentPath":Landroid/graphics/Path;
    .end local v12    # "j":I
    .end local v17    # "color":I
    .end local v21    # "drawPath":Z
    .end local v26    # "leftX":F
    .end local v31    # "paddingLeft":I
    .end local v32    # "paddingTop":I
    .end local v35    # "radius":F
    .end local v37    # "squareHeight":F
    .end local v38    # "squareWidth":F
    .end local v40    # "topY":F
    .restart local v29    # "numCircles":I
    .restart local v30    # "oneCycle":I
    .restart local v36    # "spotInCycle":I
    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 458
    .end local v11    # "i":I
    .end local v29    # "numCircles":I
    .end local v30    # "oneCycle":I
    .end local v36    # "spotInCycle":I
    .restart local v3    # "currentPath":Landroid/graphics/Path;
    .restart local v17    # "color":I
    .restart local v35    # "radius":F
    .restart local v37    # "squareHeight":F
    .restart local v38    # "squareWidth":F
    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 479
    .restart local v4    # "lastCellCenterX":F
    .restart local v5    # "lastCellCenterY":F
    .restart local v11    # "i":I
    .restart local v13    # "anyCircles":Z
    .restart local v14    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v21    # "drawPath":Z
    .restart local v24    # "lastX":F
    .restart local v25    # "lastY":F
    :cond_a
    const/4 v13, 0x1

    .line 481
    iget v2, v14, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v15

    .line 482
    .restart local v15    # "centerX":F
    iget v2, v14, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterYForRow(I)F

    move-result v16

    .line 483
    .restart local v16    # "centerY":F
    if-eqz v11, :cond_b

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iget v6, v14, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v2, v2, v6

    iget v6, v14, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v39, v2, v6

    .line 485
    .local v39, "state":Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 486
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 487
    move-object/from16 v0, v39

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    const/4 v6, 0x1

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_d

    move-object/from16 v0, v39

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    const/4 v6, 0x1

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_d

    .line 488
    move-object/from16 v0, v39

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    move-object/from16 v0, v39

    iget v6, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    invoke-virtual {v3, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 492
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 494
    .end local v39    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_b
    move/from16 v24, v15

    .line 495
    move/from16 v25, v16

    .line 496
    add-int/lit8 v2, v18, -0x1

    if-ne v11, v2, :cond_c

    .line 497
    move v4, v15

    .line 498
    move/from16 v5, v16

    .line 470
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 490
    .restart local v39    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_d
    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_7

    .line 510
    .end local v14    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v15    # "centerX":F
    .end local v16    # "centerY":F
    .end local v39    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    invoke-virtual {v3, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_4

    .line 522
    .end local v4    # "lastCellCenterX":F
    .end local v5    # "lastCellCenterY":F
    .end local v13    # "anyCircles":Z
    .end local v24    # "lastX":F
    .end local v25    # "lastY":F
    .restart local v12    # "j":I
    .restart local v31    # "paddingLeft":I
    .restart local v32    # "paddingTop":I
    .restart local v40    # "topY":F
    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 531
    .end local v12    # "j":I
    .end local v40    # "topY":F
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_11

    .line 532
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternView$1;->$SwitchMap$com$android$keyguard$sec$SecLockPatternView$MorphStatus:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->ordinal()I

    move-result v6

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_0

    .line 538
    :cond_11
    :goto_8
    return-void

    .line 534
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->invalidate()V

    goto :goto_8

    .line 532
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setPatternCallback(Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternCallback:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

    .line 273
    return-void
.end method
