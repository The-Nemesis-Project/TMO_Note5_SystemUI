.class Lcom/android/systemui/crop/KeyguardCropActivity$6;
.super Ljava/lang/Object;
.source "KeyguardCropActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/crop/KeyguardCropActivity;->cropImageAndSetWallpaper(Landroid/net/Uri;Lcom/android/systemui/crop/KeyguardCropActivity$OnBitmapCroppedHandler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

.field final synthetic val$finishActivityWhenDone:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/crop/KeyguardCropActivity;Z)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$6;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    iput-boolean p2, p0, Lcom/android/systemui/crop/KeyguardCropActivity$6;->val$finishActivityWhenDone:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$6;->val$finishActivityWhenDone:Z

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$6;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/crop/KeyguardCropActivity;->setResult(I)V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$6;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/android/systemui/crop/KeyguardCropActivity;->finish()V

    .line 512
    :cond_0
    return-void
.end method
