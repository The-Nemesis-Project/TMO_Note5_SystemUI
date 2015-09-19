.class Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;
.super Ljava/lang/Thread;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/crop/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileDecoder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/crop/TiledImageRenderer;


# direct methods
.method private constructor <init>(Lcom/android/systemui/crop/TiledImageRenderer;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/crop/TiledImageRenderer;Lcom/android/systemui/crop/TiledImageRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/crop/TiledImageRenderer;
    .param p2, "x1"    # Lcom/android/systemui/crop/TiledImageRenderer$1;

    .prologue
    .line 773
    invoke-direct {p0, p1}, Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;-><init>(Lcom/android/systemui/crop/TiledImageRenderer;)V

    return-void
.end method

.method private waitForTile()Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 785
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    # getter for: Lcom/android/systemui/crop/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/systemui/crop/TiledImageRenderer;->access$700(Lcom/android/systemui/crop/TiledImageRenderer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 787
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    # getter for: Lcom/android/systemui/crop/TiledImageRenderer;->mDecodeQueue:Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;
    invoke-static {v1}, Lcom/android/systemui/crop/TiledImageRenderer;->access$800(Lcom/android/systemui/crop/TiledImageRenderer;)Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/crop/TiledImageRenderer$TileQueue;->pop()Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    move-result-object v0

    .line 788
    .local v0, "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    if-eqz v0, :cond_0

    .line 789
    monitor-exit v2

    return-object v0

    .line 791
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    # getter for: Lcom/android/systemui/crop/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/systemui/crop/TiledImageRenderer;->access$700(Lcom/android/systemui/crop/TiledImageRenderer;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 793
    .end local v0    # "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public finishAndWait()V
    .locals 3

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;->interrupt()V

    .line 778
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :goto_0
    return-void

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "TiledImageRenderer"

    const-string v2, "Interrupted while waiting for TileDecoder thread to finish!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 799
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 800
    invoke-direct {p0}, Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;->waitForTile()Lcom/android/systemui/crop/TiledImageRenderer$Tile;

    move-result-object v0

    .line 801
    .local v0, "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    iget-object v1, p0, Lcom/android/systemui/crop/TiledImageRenderer$TileDecoder;->this$0:Lcom/android/systemui/crop/TiledImageRenderer;

    # invokes: Lcom/android/systemui/crop/TiledImageRenderer;->decodeTile(Lcom/android/systemui/crop/TiledImageRenderer$Tile;)V
    invoke-static {v1, v0}, Lcom/android/systemui/crop/TiledImageRenderer;->access$900(Lcom/android/systemui/crop/TiledImageRenderer;Lcom/android/systemui/crop/TiledImageRenderer$Tile;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 803
    .end local v0    # "tile":Lcom/android/systemui/crop/TiledImageRenderer$Tile;
    :catch_0
    move-exception v1

    .line 806
    :cond_0
    return-void
.end method
