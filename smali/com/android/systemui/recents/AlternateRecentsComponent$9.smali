.class Lcom/android/systemui/recents/AlternateRecentsComponent$9;
.super Ljava/lang/Object;
.source "AlternateRecentsComponent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/AlternateRecentsComponent;->makeRecentHelpPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V
    .locals 0

    .prologue
    .line 1494
    iput-object p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$9;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 1499
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$9;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1500
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$9;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recent_menukey_dialog_do_not_show"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1507
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$9;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->dismissHelpPopup()V

    .line 1508
    return-void

    .line 1502
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$9;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    # getter for: Lcom/android/systemui/recents/AlternateRecentsComponent;->mDisableAlertCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/systemui/recents/AlternateRecentsComponent;->access$100(Lcom/android/systemui/recents/AlternateRecentsComponent;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$9;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    iget-object v0, v0, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recent_menukey_dialog_do_not_show"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method
