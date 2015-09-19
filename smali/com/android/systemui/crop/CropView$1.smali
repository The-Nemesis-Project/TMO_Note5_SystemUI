.class Lcom/android/systemui/crop/CropView$1;
.super Ljava/lang/Object;
.source "CropView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/crop/CropView;->moveToLeft()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/crop/CropView;


# direct methods
.method constructor <init>(Lcom/android/systemui/crop/CropView;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/systemui/crop/CropView$1;->this$0:Lcom/android/systemui/crop/CropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/systemui/crop/CropView$1;->this$0:Lcom/android/systemui/crop/CropView;

    invoke-virtual {v0}, Lcom/android/systemui/crop/CropView;->moveToLeft()V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/crop/CropView$1;->this$0:Lcom/android/systemui/crop/CropView;

    invoke-virtual {v0}, Lcom/android/systemui/crop/CropView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 192
    return-void
.end method
