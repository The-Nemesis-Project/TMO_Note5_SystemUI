.class Lcom/android/systemui/settings/ToggleSlider$10;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/ToggleSlider;->showConfirmPopup()V
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
    .line 996
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$10;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 999
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$10;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/settings/ToggleSlider;->setOutdoorMode(ZZ)V

    .line 1000
    return-void
.end method
