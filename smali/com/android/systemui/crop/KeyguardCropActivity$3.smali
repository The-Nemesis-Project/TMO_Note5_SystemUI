.class Lcom/android/systemui/crop/KeyguardCropActivity$3;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/crop/KeyguardCropActivity;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$3;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$3;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/android/systemui/crop/KeyguardCropActivity;->finish()V

    .line 248
    return-void
.end method
