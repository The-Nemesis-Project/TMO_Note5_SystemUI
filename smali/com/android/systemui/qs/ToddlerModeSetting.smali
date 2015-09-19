.class public Lcom/android/systemui/qs/ToddlerModeSetting;
.super Lcom/android/systemui/qs/SystemSetting;
.source "ToddlerModeSetting.java"


# instance fields
.field public mToddlerModeOn:I

.field private toastAlert:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 31
    const-string v0, "toddler_mode_switch"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/ToddlerModeSetting;->toastAlert:Landroid/widget/Toast;

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/qs/ToddlerModeSetting;->getValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/ToddlerModeSetting;->mToddlerModeOn:I

    .line 36
    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui/qs/ToddlerModeSetting;->mToddlerModeOn:I

    .line 41
    return-void
.end method

.method public isActivated()Z
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/systemui/qs/ToddlerModeSetting;->mToddlerModeOn:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showToast(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/ToddlerModeSetting;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/ToddlerModeSetting;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 50
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/ToddlerModeSetting;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/ToddlerModeSetting;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 55
    return-void
.end method
