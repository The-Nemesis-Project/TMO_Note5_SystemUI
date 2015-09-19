.class Lcom/android/systemui/crop/KeyguardCropActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/crop/KeyguardCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/crop/KeyguardCropActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/crop/KeyguardCropActivity;)V
    .locals 0

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$7;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1071
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "action":Ljava/lang/String;
    const-string v1, "KeyguardCropActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$7;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    # getter for: Lcom/android/systemui/crop/KeyguardCropActivity;->ACTION_PRIVATE_MODE_OFF:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/crop/KeyguardCropActivity;->access$100(Lcom/android/systemui/crop/KeyguardCropActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$7;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    # getter for: Lcom/android/systemui/crop/KeyguardCropActivity;->mImagePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/crop/KeyguardCropActivity;->access$200(Lcom/android/systemui/crop/KeyguardCropActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1074
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$7;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    # getter for: Lcom/android/systemui/crop/KeyguardCropActivity;->mImagePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/crop/KeyguardCropActivity;->access$200(Lcom/android/systemui/crop/KeyguardCropActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity$7;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    # getter for: Lcom/android/systemui/crop/KeyguardCropActivity;->PRIVATE_MODE_FILE_PATH:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/crop/KeyguardCropActivity;->access$300(Lcom/android/systemui/crop/KeyguardCropActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1075
    const-string v1, "KeyguardCropActivity"

    const-string v2, "private image is showing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$7;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    invoke-virtual {v1}, Lcom/android/systemui/crop/KeyguardCropActivity;->finish()V

    .line 1079
    :cond_0
    return-void
.end method
