.class Lcom/android/systemui/qs/tiles/ApnTile$6;
.super Ljava/lang/Object;
.source "ApnTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ApnTile;->isSimReady()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ApnTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ApnTile;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ApnTile$6;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile$6;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    # invokes: Lcom/android/systemui/qs/tiles/ApnTile;->updateActivateStatus()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ApnTile;->access$200(Lcom/android/systemui/qs/tiles/ApnTile;)V

    .line 476
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 477
    return-void
.end method
