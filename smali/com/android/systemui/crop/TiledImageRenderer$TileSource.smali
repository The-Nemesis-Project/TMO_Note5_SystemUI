.class public interface abstract Lcom/android/systemui/crop/TiledImageRenderer$TileSource;
.super Ljava/lang/Object;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/crop/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TileSource"
.end annotation


# virtual methods
.method public abstract getImageHeight()I
.end method

.method public abstract getImageWidth()I
.end method

.method public abstract getPreview()Lcom/android/systemui/crop/glrenderer/BasicTexture;
.end method

.method public abstract getRotation()I
.end method

.method public abstract getTile(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public abstract getTileSize()I
.end method
