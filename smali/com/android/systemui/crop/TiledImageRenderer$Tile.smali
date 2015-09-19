.class Lcom/android/systemui/crop/TiledImageRenderer$Tile;
.super Lcom/android/systemui/crop/glrenderer/UploadedTexture;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/crop/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tile"
.end annotation


# instance fields
.field public mDecodedTile:Landroid/graphics/Bitmap;

.field public mNext:Lcom/android/systemui/crop/TiledImageRenderer$Tile;

.field public mTileLevel:I

.field public volatile mTileState:I

.field public mX:I

.field public mY:I

.field final synthetic this$0:Lcom/android/systemui/crop/TiledImageRenderer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/crop/TiledImageRenderer;III)V
    .locals 1
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "level"    # I

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    invoke-direct {p0}, Lcom/android/systemui/crop/glrenderer/UploadedTexture;-><init>()V

    .line 653
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    .line 656
    iput p2, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mX:I

    .line 657
    iput p3, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mY:I

    .line 658
    iput p4, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileLevel:I

    .line 659
    return-void
.end method


# virtual methods
.method decode()Z
    .locals 6

    .prologue
    .line 670
    :try_start_0
    # getter for: Lcom/android/systemui/crop/TiledImageRenderer;->sTilePool:Landroid/util/Pools$Pool;
    invoke-static {}, Lcom/android/systemui/crop/TiledImageRenderer;->access$200()Landroid/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 671
    .local v0, "reuse":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    # getter for: Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I
    invoke-static {v3}, Lcom/android/systemui/crop/TiledImageRenderer;->access$300(Lcom/android/systemui/crop/TiledImageRenderer;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 672
    const/4 v0, 0x0

    .line 674
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    # getter for: Lcom/android/systemui/crop/TiledImageRenderer;->mModel:Lcom/android/systemui/crop/TiledImageRenderer$TileSource;
    invoke-static {v2}, Lcom/android/systemui/crop/TiledImageRenderer;->access$400(Lcom/android/systemui/crop/TiledImageRenderer;)Lcom/android/systemui/crop/TiledImageRenderer$TileSource;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileLevel:I

    iget v4, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mX:I

    iget v5, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mY:I

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/android/systemui/crop/TiledImageRenderer$TileSource;->getTile(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .end local v0    # "reuse":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 675
    :catch_0
    move-exception v1

    .line 676
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "TiledImageRenderer"

    const-string v3, "fail to decode tile"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 678
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getParentTile()Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    .locals 5

    .prologue
    .line 719
    iget v3, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileLevel:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    iget v4, v4, Lcom/android/systemui/crop/TiledImageRenderer;->mLevelCount:I

    if-ne v3, v4, :cond_0

    .line 720
    const/4 v3, 0x0

    .line 725
    :goto_0
    return-object v3

    .line 722
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    # getter for: Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I
    invoke-static {v3}, Lcom/android/systemui/crop/TiledImageRenderer;->access$300(Lcom/android/systemui/crop/TiledImageRenderer;)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    shl-int v0, v3, v4

    .line 723
    .local v0, "size":I
    iget v3, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mX:I

    div-int/2addr v3, v0

    mul-int v1, v0, v3

    .line 724
    .local v1, "x":I
    iget v3, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mY:I

    div-int/2addr v3, v0

    mul-int v2, v0, v3

    .line 725
    .local v2, "y":I
    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    iget v4, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    # invokes: Lcom/android/systemui/crop/TiledImageRenderer;->getTile(III)Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    invoke-static {v3, v1, v2, v4}, Lcom/android/systemui/crop/TiledImageRenderer;->access$500(Lcom/android/systemui/crop/TiledImageRenderer;III)Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    move-result-object v3

    goto :goto_0
.end method

.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    # getter for: Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I
    invoke-static {v0}, Lcom/android/systemui/crop/TiledImageRenderer;->access$300(Lcom/android/systemui/crop/TiledImageRenderer;)I

    move-result v0

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    # getter for: Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I
    invoke-static {v0}, Lcom/android/systemui/crop/TiledImageRenderer;->access$300(Lcom/android/systemui/crop/TiledImageRenderer;)I

    move-result v0

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 663
    # getter for: Lcom/android/systemui/crop/TiledImageRenderer;->sTilePool:Landroid/util/Pools$Pool;
    invoke-static {}, Lcom/android/systemui/crop/TiledImageRenderer;->access$200()Landroid/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 664
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 683
    iget v3, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    const/16 v5, 0x8

    if-ne v3, v5, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/android/systemui/crop/util/Utils;->assertTrue(Z)V

    .line 687
    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    iget v3, v3, Lcom/android/systemui/crop/TiledImageRenderer;->mImageWidth:I

    iget v5, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mX:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileLevel:I

    shr-int v2, v3, v5

    .line 688
    .local v2, "rightEdge":I
    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    iget v3, v3, Lcom/android/systemui/crop/TiledImageRenderer;->mImageHeight:I

    iget v5, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mY:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileLevel:I

    shr-int v1, v3, v5

    .line 689
    .local v1, "bottomEdge":I
    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    # getter for: Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I
    invoke-static {v3}, Lcom/android/systemui/crop/TiledImageRenderer;->access$300(Lcom/android/systemui/crop/TiledImageRenderer;)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    # getter for: Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I
    invoke-static {v5}, Lcom/android/systemui/crop/TiledImageRenderer;->access$300(Lcom/android/systemui/crop/TiledImageRenderer;)I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->setSize(II)V

    .line 691
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 692
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 693
    iput v4, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileState:I

    .line 694
    return-object v0

    .line 683
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bottomEdge":I
    .end local v2    # "rightEdge":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 730
    const-string v0, "tile(%s, %s, %s / %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mX:I

    iget-object v4, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    # getter for: Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I
    invoke-static {v4}, Lcom/android/systemui/crop/TiledImageRenderer;->access$300(Lcom/android/systemui/crop/TiledImageRenderer;)I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mY:I

    iget-object v4, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    # getter for: Lcom/android/systemui/crop/TiledImageRenderer;->mTileSize:I
    invoke-static {v4}, Lcom/android/systemui/crop/TiledImageRenderer;->access$300(Lcom/android/systemui/crop/TiledImageRenderer;)I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    # getter for: Lcom/android/systemui/crop/TiledImageRenderer;->mLevel:I
    invoke-static {v3}, Lcom/android/systemui/crop/TiledImageRenderer;->access$600(Lcom/android/systemui/crop/TiledImageRenderer;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    iget v3, v3, Lcom/android/systemui/crop/TiledImageRenderer;->mLevelCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 712
    iput p1, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mX:I

    .line 713
    iput p2, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mY:I

    .line 714
    iput p3, p0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mTileLevel:I

    .line 715
    invoke-virtual {p0}, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->invalidateContent()V

    .line 716
    return-void
.end method
