.class Lcom/android/systemui/crop/TiledImageView$1;
.super Ljava/lang/Object;
.source "TiledImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/crop/TiledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/crop/TiledImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/crop/TiledImageView;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/systemui/crop/TiledImageView$1;->this$0:Lcom/android/systemui/crop/TiledImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/crop/TiledImageView$1;->this$0:Lcom/android/systemui/crop/TiledImageView;

    iget-object v0, v0, Lcom/android/systemui/crop/TiledImageView;->mRenderer:Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/android/systemui/crop/TiledImageView$ImageRendererWrapper;->image:Lcom/android/systemui/crop/TiledImageRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/crop/TiledImageRenderer;->freeTextures()V

    .line 116
    return-void
.end method
