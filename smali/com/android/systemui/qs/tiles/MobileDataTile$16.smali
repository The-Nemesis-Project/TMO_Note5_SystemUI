.class Lcom/android/systemui/qs/tiles/MobileDataTile$16;
.super Ljava/lang/Object;
.source "MobileDataTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataAlert(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

.field final synthetic val$alert:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V
    .locals 0

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$16;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iput p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$16;->val$alert:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 868
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 869
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$16;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$16;->val$alert:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2600(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V

    .line 870
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$16;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1902(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 871
    return-void

    .line 869
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
