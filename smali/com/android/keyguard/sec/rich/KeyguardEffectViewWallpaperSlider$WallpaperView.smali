.class Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;
.super Landroid/widget/ImageView;
.source "KeyguardEffectViewWallpaperSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperView"
.end annotation


# instance fields
.field public path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    .line 265
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 266
    return-void
.end method


# virtual methods
.method public clearView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->path:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public copyView(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;)V
    .locals 1
    .param p1, "copyV"    # Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;

    .prologue
    .line 276
    invoke-virtual {p1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    iget-object v0, p1, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->path:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->clearView()V

    .line 279
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    # invokes: Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->getCurrentWallpaperPath()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->access$300(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->path:Ljava/lang/String;

    .line 272
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 273
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 282
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->setX(F)V

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->setY(F)V

    .line 284
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$WallpaperView;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
