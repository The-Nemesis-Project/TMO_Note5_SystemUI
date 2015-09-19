.class Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity$2;
.super Ljava/lang/Object;
.source "SViewCoverSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->initValues()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    .line 145
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->finish()V

    .line 146
    return-void
.end method
