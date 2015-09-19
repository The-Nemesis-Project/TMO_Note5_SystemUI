.class Lcom/android/systemui/crop/KeyguardCropActivity$1;
.super Ljava/lang/Object;
.source "KeyguardCropActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/crop/KeyguardCropActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

.field final synthetic val$bitmapSource:Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;


# direct methods
.method constructor <init>(Lcom/android/systemui/crop/KeyguardCropActivity;Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$1;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    iput-object p2, p0, Lcom/android/systemui/crop/KeyguardCropActivity$1;->val$bitmapSource:Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$1;->val$bitmapSource:Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;

    invoke-virtual {v0}, Lcom/android/systemui/crop/BitmapRegionTileSource$UriBitmapSource;->getLoadingState()Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;->LOADED:Lcom/android/systemui/crop/BitmapRegionTileSource$BitmapSource$State;

    if-eq v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$1;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/android/systemui/crop/KeyguardCropActivity;->finish()V

    .line 224
    :cond_0
    return-void
.end method
