.class Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;
.super Landroid/database/ContentObserver;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickSettingButtonNumberObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/qs/QSPanel;

    .line 1043
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1044
    # invokes: Lcom/android/systemui/qs/QSPanel;->getButtonNumberFromDB()I
    invoke-static {p1}, Lcom/android/systemui/qs/QSPanel;->access$1700(Lcom/android/systemui/qs/QSPanel;)I

    move-result v0

    # setter for: Lcom/android/systemui/qs/QSPanel;->mVisibleButtonNum:I
    invoke-static {p1, v0}, Lcom/android/systemui/qs/QSPanel;->access$1602(Lcom/android/systemui/qs/QSPanel;I)I

    .line 1045
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 1049
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1050
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/qs/QSPanel;

    # invokes: Lcom/android/systemui/qs/QSPanel;->getButtonNumberFromDB()I
    invoke-static {v1}, Lcom/android/systemui/qs/QSPanel;->access$1700(Lcom/android/systemui/qs/QSPanel;)I

    move-result v1

    # setter for: Lcom/android/systemui/qs/QSPanel;->mVisibleButtonNum:I
    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSPanel;->access$1602(Lcom/android/systemui/qs/QSPanel;I)I

    .line 1051
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/qs/QSPanel;

    # getter for: Lcom/android/systemui/qs/QSPanel;->mSingleLine:Z
    invoke-static {v1}, Lcom/android/systemui/qs/QSPanel;->access$1800(Lcom/android/systemui/qs/QSPanel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setSingleLine(Z)I

    .line 1052
    return-void
.end method
