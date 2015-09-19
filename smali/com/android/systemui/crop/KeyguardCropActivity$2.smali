.class Lcom/android/systemui/crop/KeyguardCropActivity$2;
.super Ljava/lang/Object;
.source "KeyguardCropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$imageUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/systemui/crop/KeyguardCropActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$2;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    iput-object p2, p0, Lcom/android/systemui/crop/KeyguardCropActivity$2;->val$imageUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 236
    const/4 v0, 0x1

    .line 237
    .local v0, "finishActivityWhenDone":Z
    const-string v1, "KeyguardCropActivity"

    const-string v2, "click the save button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$2;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    iget-object v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity$2;->val$imageUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/crop/KeyguardCropActivity;->cropImageAndSetWallpaper(Landroid/net/Uri;Lcom/android/systemui/crop/KeyguardCropActivity$OnBitmapCroppedHandler;Z)V

    .line 239
    return-void
.end method
