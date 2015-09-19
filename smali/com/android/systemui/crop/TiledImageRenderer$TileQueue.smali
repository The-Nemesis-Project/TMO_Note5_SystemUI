.class Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;
.super Ljava/lang/Object;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/crop/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileQueue"
.end annotation


# instance fields
.field private mHead:Lcom/android/systemui/crop/TiledImageRenderer$Tile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/crop/TiledImageRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/crop/TiledImageRenderer$1;

    .prologue
    .line 735
    invoke-direct {p0}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;-><init>()V

    return-void
.end method

.method private contains(Lcom/android/systemui/crop/TiledImageRenderer$Tile;)Z
    .locals 2
    .param p1, "tile"    # Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->mHead:Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    .line 759
    .local v0, "other":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    :goto_0
    if-eqz v0, :cond_1

    .line 760
    if-ne v0, p1, :cond_0

    .line 761
    const/4 v1, 0x1

    .line 765
    :goto_1
    return v1

    .line 763
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mNext:Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    goto :goto_0

    .line 765
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 769
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->mHead:Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    .line 770
    return-void
.end method

.method public pop()Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->mHead:Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    .line 740
    .local v0, "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    if-eqz v0, :cond_0

    .line 741
    iget-object v1, v0, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mNext:Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    iput-object v1, p0, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->mHead:Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    .line 743
    :cond_0
    return-object v0
.end method

.method public push(Lcom/android/systemui/crop/TiledImageRenderer$Tile;)Z
    .locals 3
    .param p1, "tile"    # Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    .prologue
    const/4 v0, 0x0

    .line 747
    invoke-direct {p0, p1}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->contains(Lcom/android/systemui/crop/TiledImageRenderer$Tile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    const-string v1, "TiledImageRenderer"

    const-string v2, "Attempting to add a tile already in the queue!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :goto_0
    return v0

    .line 751
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->mHead:Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 752
    .local v0, "wasEmpty":Z
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->mHead:Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    iput-object v1, p1, Lcom/android/systemui/crop/TiledImageRenderer$Tile;->mNext:Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    .line 753
    iput-object p1, p0, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->mHead:Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    goto :goto_0
.end method
