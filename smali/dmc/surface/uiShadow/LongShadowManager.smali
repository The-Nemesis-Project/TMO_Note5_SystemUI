.class public Ldmc/surface/uiShadow/LongShadowManager;
.super Ljava/lang/Object;
.source "LongShadowManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LongShadowManager"


# instance fields
.field private mAlphaMask:Landroid/graphics/Bitmap;

.field private mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

.field private mAlphaMaskPaint:Landroid/graphics/Paint;

.field private mAlphaMaskRadius_DP:I

.field private mAlphaMaskRadius_PX:I

.field private mAnimationAngle:F

.field private mContext:Landroid/content/Context;

.field private mOuterBlurFilter:Landroid/graphics/BlurMaskFilter;

.field private mOuterBlurPaint:Landroid/graphics/Paint;

.field private mShadowAlpha:I

.field private mShadowAlphaPaint:Landroid/graphics/Paint;

.field private mShadowDepth:I

.field private mShadowDepthInteval:F

.field private mShadowEffectBitmap:[Landroid/graphics/Bitmap;

.field private mShadowEffectRect:[Landroid/graphics/Rect;

.field private mShadowImageCanvas:Landroid/graphics/Canvas;

.field private mShadowImageMap:Landroid/graphics/Bitmap;

.field private mShadowImageRect:Landroid/graphics/Rect;

.field private mShadowImageView:Landroid/widget/ImageView;

.field private mSlopeShadowDepth:I

.field private mSlopeShadowDepthAlpha:I

.field private mSplitTextBitmap:[Landroid/graphics/Bitmap;

.field private mSplitTextRect:[Landroid/graphics/Rect;

.field private mTextLength:I

.field private mTextView:Landroid/widget/TextView;

.field private mTextViewBitmap:Landroid/graphics/Bitmap;

.field private mTextViewRect:Landroid/graphics/Rect;

.field private mbitResolution:I

.field private mbitResolutionF:F

.field private mdpShadowLength:I

.field private misNumeric:[Z

.field private mpxShadowLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;IILandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imgView"    # Landroid/widget/ImageView;
    .param p3, "ShadowDepth"    # I
    .param p4, "ShadowLength_DP"    # I
    .param p5, "alphamask"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v6, 0x32

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-nez p1, :cond_0

    .line 94
    const-string v0, "LongShadowManager"

    const-string v1, "Context NULL."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void

    .line 99
    :cond_0
    iput-object p1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mContext:Landroid/content/Context;

    .line 102
    if-nez p2, :cond_1

    .line 104
    const-string v0, "LongShadowManager"

    const-string v1, "imgView NULL."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_1
    invoke-direct {p0, p2}, Ldmc/surface/uiShadow/LongShadowManager;->CreateVeiwCanvas(Landroid/widget/ImageView;)V

    .line 112
    if-nez p5, :cond_3

    .line 114
    const-string v0, "LongShadowManager"

    const-string v1, "AlphaMask NULL."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMask:Landroid/graphics/Bitmap;

    .line 123
    :goto_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Ldmc/surface/uiShadow/LongShadowManager;->setSlopeShadowDepth(I)V

    .line 124
    iput p3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowDepth:I

    .line 125
    iput p4, p0, Ldmc/surface/uiShadow/LongShadowManager;->mdpShadowLength:I

    .line 126
    iget v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mdpShadowLength:I

    invoke-static {p1, v0}, Ldmc/surface/uiShadow/Utilities;->getDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mpxShadowLength:I

    .line 128
    invoke-static {p1, v3}, Ldmc/surface/uiShadow/Utilities;->getDpToPixel(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowDepthInteval:F

    .line 129
    iget v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowDepthInteval:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 130
    iput v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowDepthInteval:F

    .line 132
    :cond_2
    const-string v0, "LongShadowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ShadowDepth Interval "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowDepthInteval:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x2

    iput v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolution:I

    .line 135
    iput v4, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolutionF:F

    .line 137
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mOuterBlurPaint:Landroid/graphics/Paint;

    .line 138
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const v1, 0x3dcccccd    # 0.1f

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mOuterBlurFilter:Landroid/graphics/BlurMaskFilter;

    .line 139
    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mOuterBlurPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mOuterBlurFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 140
    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mOuterBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskPaint:Landroid/graphics/Paint;

    .line 144
    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 145
    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlphaPaint:Landroid/graphics/Paint;

    .line 149
    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlphaPaint:Landroid/graphics/Paint;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 150
    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 152
    iput v5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    goto/16 :goto_0

    .line 119
    :cond_3
    iput-object p5, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMask:Landroid/graphics/Bitmap;

    goto/16 :goto_1
.end method

.method private CreateVeiwCanvas(Landroid/widget/ImageView;)V
    .locals 6
    .param p1, "imgView"    # Landroid/widget/ImageView;

    .prologue
    .line 161
    iput-object p1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageView:Landroid/widget/ImageView;

    .line 163
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 164
    .local v0, "location":[I
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 165
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    .line 167
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageMap:Landroid/graphics/Bitmap;

    .line 168
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageMap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageCanvas:Landroid/graphics/Canvas;

    .line 169
    return-void
.end method


# virtual methods
.method public UpdateImageViews(Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "imgView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v4, 0x0

    .line 177
    iget-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->left:I

    .line 178
    .local v0, "diff_x":I
    iget-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 180
    .local v1, "diff_y":I
    iget-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageMap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 181
    iput-object v4, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageMap:Landroid/graphics/Bitmap;

    .line 182
    iput-object v4, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    .line 184
    invoke-direct {p0, p1}, Ldmc/surface/uiShadow/LongShadowManager;->CreateVeiwCanvas(Landroid/widget/ImageView;)V

    .line 186
    iget-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    .line 187
    iget-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    .line 189
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    if-lt v2, v3, :cond_0

    .line 196
    invoke-virtual {p0}, Ldmc/surface/uiShadow/LongShadowManager;->draw()V

    .line 197
    return-void

    .line 191
    :cond_0
    iget-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v2

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 192
    iget-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v2

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 193
    iget-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v2

    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 194
    iget-object v3, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v2

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public UpdateShadowViews(Landroid/widget/TextView;)Z
    .locals 10
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 355
    iget-object v6, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    if-eq v6, p1, :cond_0

    .line 357
    invoke-virtual {p0, p1}, Ldmc/surface/uiShadow/LongShadowManager;->viewToShadow(Landroid/widget/TextView;)V

    .line 358
    const-string v5, "LongShadowManager"

    const-string v6, "this TextView is different."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :goto_0
    return v4

    .line 362
    :cond_0
    iget v6, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 364
    invoke-virtual {p0, p1}, Ldmc/surface/uiShadow/LongShadowManager;->viewToShadow(Landroid/widget/TextView;)V

    move v4, v5

    .line 365
    goto :goto_0

    .line 368
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v6, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 369
    .local v2, "canvas":Landroid/graphics/Canvas;
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 370
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 372
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v6, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    if-lt v3, v6, :cond_2

    .line 382
    invoke-virtual {p0}, Ldmc/surface/uiShadow/LongShadowManager;->draw()V

    move v4, v5

    .line 384
    goto :goto_0

    .line 374
    :cond_2
    iget-object v6, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolution:I

    div-int v1, v6, v7

    .line 375
    .local v1, "ResolutionWidth":I
    iget-object v6, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolution:I

    div-int v0, v6, v7

    .line 377
    .local v0, "ResolutionHeight":I
    iget-object v6, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v3

    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 378
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 379
    iget-object v6, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    aget-object v7, v7, v3

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v4, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 372
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 510
    iput-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageView:Landroid/widget/ImageView;

    .line 511
    iput-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    .line 512
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageMap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageMap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageMap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 515
    iput-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageMap:Landroid/graphics/Bitmap;

    .line 518
    :cond_0
    iput-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    .line 519
    iput-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewRect:Landroid/graphics/Rect;

    .line 520
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 522
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 523
    iput-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    .line 526
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    if-lt v0, v1, :cond_2

    .line 552
    iput-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    .line 553
    iput-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    .line 555
    iput-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    .line 556
    iput-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    .line 557
    iput-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    .line 559
    iput-object v2, p0, Ldmc/surface/uiShadow/LongShadowManager;->misNumeric:[Z

    .line 561
    const/4 v1, 0x0

    iput v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    .line 563
    return-void

    .line 528
    :cond_2
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    aput-object v2, v1, v0

    .line 530
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 532
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 533
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    .line 536
    :cond_3
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aput-object v2, v1, v0

    .line 538
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 540
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 541
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    .line 544
    :cond_4
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 546
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 547
    iget-object v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    .line 526
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public draw()V
    .locals 15

    .prologue
    .line 394
    iget v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAnimationAngle:F

    float-to-double v8, v7

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v7, v8

    iget v8, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowDepthInteval:F

    iget v9, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolutionF:F

    div-float/2addr v8, v9

    mul-float v5, v7, v8

    .line 395
    .local v5, "x":F
    iget v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAnimationAngle:F

    float-to-double v8, v7

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    neg-double v8, v8

    double-to-float v7, v8

    iget v8, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowDepthInteval:F

    iget v9, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolutionF:F

    div-float/2addr v8, v9

    mul-float v6, v7, v8

    .line 398
    .local v6, "y":F
    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageCanvas:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 400
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 401
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    if-lt v2, v7, :cond_0

    .line 444
    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageView:Landroid/widget/ImageView;

    iget-object v8, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageMap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 445
    return-void

    .line 404
    :cond_0
    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->misNumeric:[Z

    aget-boolean v7, v7, v2

    if-eqz v7, :cond_2

    .line 406
    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v2

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 407
    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 408
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_1
    iget v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowDepth:I

    if-le v3, v7, :cond_1

    .line 413
    iget v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskRadius_PX:I

    int-to-float v7, v7

    iget v8, p0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolutionF:F

    div-float v4, v7, v8

    .line 415
    .local v4, "radius":F
    const v1, 0x3f70a3d7    # 0.94f

    .line 416
    .local v1, "delta":F
    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v2

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 417
    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 418
    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 419
    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Ldmc/surface/uiShadow/LongShadowManager;->mOuterBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 420
    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMask:Landroid/graphics/Bitmap;

    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMask:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget-object v12, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMask:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 421
    new-instance v9, Landroid/graphics/RectF;

    neg-float v10, v4

    neg-float v11, v4

    iget-object v12, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v12, v12, v2

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float/2addr v11, v12

    iget-object v12, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v12, v12, v2

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3f87ae14    # 1.06f

    mul-float/2addr v13, v1

    mul-float/2addr v12, v13

    iget-object v13, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3e99999a    # 0.3f

    mul-float/2addr v14, v1

    mul-float/2addr v13, v14

    add-float/2addr v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v10, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskPaint:Landroid/graphics/Paint;

    .line 420
    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 423
    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v8, v8, v2

    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v12, v12, v2

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    iget-object v13, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v10, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v10, v10, v2

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 401
    .end local v1    # "delta":F
    .end local v4    # "radius":F
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 410
    :cond_1
    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v2

    int-to-float v8, v3

    mul-float/2addr v8, v5

    int-to-float v9, v3

    mul-float/2addr v9, v6

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 408
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 428
    .end local v3    # "j":I
    :cond_2
    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v2

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 429
    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 430
    const/4 v3, 0x1

    .restart local v3    # "j":I
    :goto_3
    iget v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSlopeShadowDepth:I

    if-le v3, v7, :cond_3

    .line 436
    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlphaPaint:Landroid/graphics/Paint;

    iget v8, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlpha:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 437
    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v8, v8, v2

    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v12, v12, v2

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    iget-object v13, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v10, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v10, v10, v2

    iget-object v11, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 432
    :cond_3
    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlphaPaint:Landroid/graphics/Paint;

    iget v8, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSlopeShadowDepthAlpha:I

    mul-int/2addr v8, v3

    rsub-int v8, v8, 0x82

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 433
    iget-object v7, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v2

    int-to-float v8, v3

    mul-float/2addr v8, v5

    int-to-float v9, v3

    mul-float/2addr v9, v6

    iget-object v10, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 430
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public setAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 500
    iput p1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAnimationAngle:F

    .line 501
    return-void
.end method

.method public setShadowAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 453
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 455
    :cond_0
    const/4 p1, 0x0

    .line 458
    :cond_1
    iput p1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlpha:I

    .line 459
    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlphaPaint:Landroid/graphics/Paint;

    iget v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 460
    return-void
.end method

.method public setShadowAlphaRadius(I)V
    .locals 2
    .param p1, "dpRadius"    # I

    .prologue
    .line 490
    iput p1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskRadius_DP:I

    .line 491
    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mContext:Landroid/content/Context;

    iget v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskRadius_DP:I

    invoke-static {v0, v1}, Ldmc/surface/uiShadow/Utilities;->getDpToPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskRadius_PX:I

    .line 492
    return-void
.end method

.method public setShadowEdgeAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 477
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 479
    :cond_0
    const/4 p1, 0x0

    .line 482
    :cond_1
    iget-object v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mOuterBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 483
    return-void
.end method

.method public setSlopeShadowDepth(I)V
    .locals 2
    .param p1, "slopeDepth"    # I

    .prologue
    .line 468
    iput p1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSlopeShadowDepth:I

    .line 469
    const/16 v0, 0x82

    iget v1, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSlopeShadowDepth:I

    div-int/2addr v0, v1

    iput v0, p0, Ldmc/surface/uiShadow/LongShadowManager;->mSlopeShadowDepthAlpha:I

    .line 470
    return-void
.end method

.method public viewToShadow(Landroid/widget/TextView;)V
    .locals 20
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getWidth()I

    move-result v13

    if-lez v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getHeight()I

    move-result v13

    if-gtz v13, :cond_1

    .line 208
    :cond_0
    const-string v13, "LongShadowManager"

    const-string v14, " width and height must be > 0 "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_0
    return-void

    .line 213
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_2

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    .line 219
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    if-lt v5, v13, :cond_3

    .line 244
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    .line 245
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    .line 247
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    .line 248
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    .line 249
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    .line 251
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->misNumeric:[Z

    .line 254
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    .line 255
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    .line 257
    move-object/from16 v0, p0

    iget v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    const/4 v14, 0x1

    if-ge v13, v14, :cond_7

    .line 259
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    .line 260
    const-string v13, "LongShadowManager"

    const-string v14, "this TextView is blank."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aput-object v14, v13, v5

    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v13, v13, v5

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_4

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    const/4 v14, 0x0

    aput-object v14, v13, v5

    .line 229
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aput-object v14, v13, v5

    .line 231
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v13, v13, v5

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_5

    .line 233
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 234
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    const/4 v14, 0x0

    aput-object v14, v13, v5

    .line 237
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v13, v13, v5

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_6

    .line 239
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 240
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    const/4 v14, 0x0

    aput-object v14, v13, v5

    .line 219
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 265
    :cond_7
    const/4 v13, 0x2

    new-array v6, v13, [I

    .line 266
    .local v6, "location":[I
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 268
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewRect:Landroid/graphics/Rect;

    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewRect:Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget v14, v6, v14

    iput v14, v13, Landroid/graphics/Rect;->left:I

    .line 270
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewRect:Landroid/graphics/Rect;

    const/4 v14, 0x1

    aget v14, v6, v14

    iput v14, v13, Landroid/graphics/Rect;->top:I

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewRect:Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget v14, v6, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v13, Landroid/graphics/Rect;->right:I

    .line 272
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewRect:Landroid/graphics/Rect;

    const/4 v14, 0x1

    aget v14, v6, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getHeight()I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    .line 274
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getHeight()I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    .line 275
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 276
    .local v4, "canvas":Landroid/graphics/Canvas;
    const-string v13, "LongShadowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "At ["

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    aget v15, v6, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget v15, v6, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 277
    const-string v15, "], TextView["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 278
    const-string v15, "], Bitmap["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 279
    const-string v15, "], Canvas["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 276
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 284
    move-object/from16 v0, p0

    iget v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    new-array v11, v13, [F

    .line 285
    .local v11, "widths":[F
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    .line 286
    .local v10, "tp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-virtual {v10, v13, v14, v15, v11}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 287
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-virtual {v10, v13, v14, v15}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v9

    .line 291
    .local v9, "string_width":F
    move-object/from16 v0, p0

    iget v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    new-array v13, v13, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    .line 292
    move-object/from16 v0, p0

    iget v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    new-array v13, v13, [Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    .line 294
    move-object/from16 v0, p0

    iget v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    new-array v13, v13, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    .line 295
    move-object/from16 v0, p0

    iget v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    new-array v13, v13, [Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    .line 296
    move-object/from16 v0, p0

    iget v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    new-array v13, v13, [Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    .line 300
    const/4 v7, 0x0

    .line 301
    .local v7, "padding":F
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getGravity()I

    move-result v13

    const/16 v14, 0x11

    if-ne v13, v14, :cond_8

    .line 303
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v9

    const/high16 v14, 0x40000000    # 2.0f

    div-float v7, v13, v14

    .line 307
    :cond_8
    const/4 v13, 0x0

    aget v13, v6, v13

    int-to-float v13, v13

    add-float/2addr v13, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    sub-float v12, v13, v14

    .line 309
    .local v12, "x":F
    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    if-lt v5, v13, :cond_9

    .line 333
    move-object/from16 v0, p0

    iget v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    new-array v13, v13, [Z

    move-object/from16 v0, p0

    iput-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->misNumeric:[Z

    .line 334
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 335
    .local v8, "str":Ljava/lang/String;
    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextLength:I

    if-lt v5, v13, :cond_a

    .line 346
    invoke-virtual/range {p0 .. p0}, Ldmc/surface/uiShadow/LongShadowManager;->draw()V

    goto/16 :goto_0

    .line 312
    .end local v8    # "str":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    new-instance v14, Landroid/graphics/Rect;

    float-to-int v15, v7

    const/16 v16, 0x0

    aget v17, v11, v5

    add-float v17, v17, v7

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getHeight()I

    move-result v18

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v14, v13, v5

    .line 314
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolution:I

    div-int v3, v13, v14

    .line 315
    .local v3, "ResolutionWidth":I
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolution:I

    div-int v2, v13, v14

    .line 317
    .local v2, "ResolutionHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    sget-object v14, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    aput-object v14, v13, v5

    .line 318
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextBitmap:[Landroid/graphics/Bitmap;

    aget-object v13, v13, v5

    invoke-virtual {v4, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v14, v0, Ldmc/surface/uiShadow/LongShadowManager;->mSplitTextRect:[Landroid/graphics/Rect;

    aget-object v14, v14, v5

    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v15, v0, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 321
    aget v13, v11, v5

    add-float/2addr v7, v13

    .line 324
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    new-instance v14, Landroid/graphics/Rect;

    float-to-int v15, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    aget v17, v11, v5

    add-float v17, v17, v12

    move-object/from16 v0, p0

    iget v0, v0, Ldmc/surface/uiShadow/LongShadowManager;->mpxShadowLength:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ldmc/surface/uiShadow/LongShadowManager;->mTextViewRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Ldmc/surface/uiShadow/LongShadowManager;->mpxShadowLength:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x8

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowImageRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v14, v13, v5

    .line 325
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectBitmap:[Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v14, v0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v14, v14, v5

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolution:I

    div-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v15, v15, v5

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolution:I

    move/from16 v16, v0

    div-int v15, v15, v16

    sget-object v16, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    aput-object v14, v13, v5

    .line 326
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->mAlphaMaskBitmap:[Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v14, v0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v14, v14, v5

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolution:I

    div-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Ldmc/surface/uiShadow/LongShadowManager;->mShadowEffectRect:[Landroid/graphics/Rect;

    aget-object v15, v15, v5

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Ldmc/surface/uiShadow/LongShadowManager;->mbitResolution:I

    move/from16 v16, v0

    div-int v15, v15, v16

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    aput-object v14, v13, v5

    .line 328
    aget v13, v11, v5

    add-float/2addr v12, v13

    .line 309
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 337
    .end local v2    # "ResolutionHeight":I
    .end local v3    # "ResolutionWidth":I
    .restart local v8    # "str":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->misNumeric:[Z

    const/4 v14, 0x1

    aput-boolean v14, v13, v5

    .line 338
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x30

    if-lt v13, v14, :cond_b

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x39

    if-le v13, v14, :cond_c

    .line 340
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Ldmc/surface/uiShadow/LongShadowManager;->misNumeric:[Z

    const/4 v14, 0x0

    aput-boolean v14, v13, v5

    .line 341
    const-string v13, "TextView"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "CharAt(i) : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3
.end method
