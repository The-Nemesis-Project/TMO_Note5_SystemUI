.class public Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;
.super Ljava/lang/Object;
.source "KeyguardLongShadowEffectWrapper.java"


# static fields
.field private static final DRAW_DELAYED:I = 0x18

.field private static final SHADOW_ALPHA:I = 0x46

.field private static final SHADOW_ANGLE:F = 315.0f

.field private static final SHADOW_DEPTH:I = 0x96

.field private static final SHADOW_LENGHT:I = 0x19

.field private static final SHADOW_RADIUS:I = 0x46

.field private static final SLOPESHADOW_DEPTH:I = 0x16

.field private static final TAG:Ljava/lang/String; = "KeyguardLongShadowEffectWrapper"


# instance fields
.field private mAlphaMask:Landroid/graphics/Bitmap;

.field mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

.field private mShadowView:Landroid/widget/ImageView;

.field private mTargetView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/widget/TextView;
    .param p3, "background"    # Landroid/widget/ImageView;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mHandler:Landroid/os/Handler;

    .line 53
    const-string v0, "KeyguardLongShadowEffectWrapper"

    const-string v1, "KeyguardLongShadowEffectWrapper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mTargetView:Landroid/widget/TextView;

    .line 56
    iput-object p3, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mShadowView:Landroid/widget/ImageView;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mTargetView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;)Ldmc/surface/uiShadow/LongShadowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mShadowView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public intialize()V
    .locals 9

    .prologue
    const/16 v8, 0x46

    .line 60
    const-string v0, "KeyguardLongShadowEffectWrapper"

    const-string v1, "intitialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mShadowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mShadowView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    .line 65
    .local v7, "width":I
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mShadowView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    .line 66
    .local v6, "height":I
    if-eqz v7, :cond_0

    if-nez v6, :cond_2

    .line 67
    :cond_0
    const-string v0, "KeyguardLongShadowEffectWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v6    # "height":I
    .end local v7    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 71
    .restart local v6    # "height":I
    .restart local v7    # "width":I
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$drawable;->r150_f125:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mAlphaMask:Landroid/graphics/Bitmap;

    .line 72
    new-instance v0, Ldmc/surface/uiShadow/LongShadowManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mShadowView:Landroid/widget/ImageView;

    const/16 v3, 0x96

    const/16 v4, 0x19

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mAlphaMask:Landroid/graphics/Bitmap;

    invoke-direct/range {v0 .. v5}, Ldmc/surface/uiShadow/LongShadowManager;-><init>(Landroid/content/Context;Landroid/widget/ImageView;IILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

    .line 73
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

    invoke-virtual {v0, v8}, Ldmc/surface/uiShadow/LongShadowManager;->setShadowAlpha(I)V

    .line 74
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

    invoke-virtual {v0, v8}, Ldmc/surface/uiShadow/LongShadowManager;->setShadowAlphaRadius(I)V

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Ldmc/surface/uiShadow/LongShadowManager;->setSlopeShadowDepth(I)V

    .line 76
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

    const v1, 0x439d8000    # 315.0f

    invoke-virtual {v0, v1}, Ldmc/surface/uiShadow/LongShadowManager;->setAngle(F)V

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper$1;-><init>(Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public updateImageViews()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mShadowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mShadowView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mShadowView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 111
    const-string v0, "KeyguardLongShadowEffectWrapper"

    const-string v1, "updateImageViews()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper$3;-><init>(Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v0, "KeyguardLongShadowEffectWrapper"

    const-string v1, "mShadowView\'s width and height must be > 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateShadowViews()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mTargetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 95
    const-string v0, "KeyguardLongShadowEffectWrapper"

    const-string v1, "updateShadowViews()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper$2;-><init>(Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v0, "KeyguardLongShadowEffectWrapper"

    const-string v1, "mTargetView\'s width and height must be > 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateViews()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->updateImageViews()V

    .line 89
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->updateShadowViews()V

    .line 90
    return-void
.end method

.method public viewToShadow()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mLongShadowManager:Ldmc/surface/uiShadow/LongShadowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mTargetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mTargetView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 127
    const-string v0, "KeyguardLongShadowEffectWrapper"

    const-string v1, "viewToShadow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper$4;-><init>(Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const-string v0, "KeyguardLongShadowEffectWrapper"

    const-string v1, "mTargetView\'s width and height must be > 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
