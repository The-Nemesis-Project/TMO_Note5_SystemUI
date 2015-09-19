.class public Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;
.super Ljava/lang/Object;
.source "TiledImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/crop/TiledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ImageRendererWrapper"
.end annotation


# instance fields
.field public centerX:F

.field public centerY:F

.field image:Lcom/android/systemui/crop/TiledImageRenderer;

.field isReadyCallback:Ljava/lang/Runnable;

.field public rotation:I

.field public scale:F

.field public source:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
