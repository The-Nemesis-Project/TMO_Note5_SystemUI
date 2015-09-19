.class Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "KeyguardPreviewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardPreviewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardCirclePreviewDrawable"
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mShader:Landroid/graphics/BitmapShader;

.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 344
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 345
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->mRectF:Landroid/graphics/RectF;

    .line 346
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    .line 347
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 348
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 349
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 354
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 371
    const/4 v0, -0x3

    return v0
.end method

.method public isShaderReady()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->mShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 360
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->invalidateSelf()V

    .line 362
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 367
    return-void
.end method

.method public setPreViewBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->mShader:Landroid/graphics/BitmapShader;

    .line 380
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->mShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 382
    return-void

    .line 378
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->mShader:Landroid/graphics/BitmapShader;

    goto :goto_0
.end method

.method public setPreviewRect(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->mRectF:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 386
    return-void
.end method
