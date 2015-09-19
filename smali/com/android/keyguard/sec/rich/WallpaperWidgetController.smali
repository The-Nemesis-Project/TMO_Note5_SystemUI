.class public Lcom/android/keyguard/sec/rich/WallpaperWidgetController;
.super Ljava/lang/Object;
.source "WallpaperWidgetController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperWidgetController"

.field private static mInstance:Lcom/android/keyguard/sec/rich/WallpaperWidgetController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWallpaperSlider:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

.field private mWidgetContainer:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/rich/WallpaperWidgetController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-object v0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mInstance:Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mInstance:Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    .line 25
    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mInstance:Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    return-object v0
.end method


# virtual methods
.method public handleUpdateEnd()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mWidgetContainer:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mWidgetContainer:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setWidgetEnabled(Z)V

    .line 46
    :cond_0
    return-void
.end method

.method public handleUpdateStart()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mWidgetContainer:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mWidgetContainer:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setWidgetEnabled(Z)V

    .line 40
    :cond_0
    return-void
.end method

.method public notifyWallpaperStateChanged()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mWidgetContainer:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mWidgetContainer:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->init()V

    .line 52
    :cond_0
    return-void
.end method

.method public setContainer(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mWidgetContainer:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    .line 30
    return-void
.end method

.method public setSlider(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)V
    .locals 0
    .param p1, "slider"    # Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mWallpaperSlider:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    .line 34
    return-void
.end method
