.class Lcom/android/systemui/settings/ToggleSlider$7;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$7;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 624
    new-array v1, v2, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v1, v3

    .line 625
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$7;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider$7;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/settings/ToggleSlider;->access$400(Lcom/android/systemui/settings/ToggleSlider;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isSettingsChangesAllowed"

    # invokes: Lcom/android/systemui/settings/ToggleSlider;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    invoke-static {v4, v5, v6, v7, v1}, Lcom/android/systemui/settings/ToggleSlider;->access$500(Lcom/android/systemui/settings/ToggleSlider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 627
    .local v0, "isSettingsChangesAllowed":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    if-nez v0, :cond_0

    .line 628
    const-string v3, "ToggleSlider"

    const-string v4, "onTouch(): Change brightness was not allowed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method
