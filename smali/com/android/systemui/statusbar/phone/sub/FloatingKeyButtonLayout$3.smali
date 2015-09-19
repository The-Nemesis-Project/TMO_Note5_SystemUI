.class Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$3;
.super Ljava/lang/Object;
.source "FloatingKeyButtonLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->hideAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 347
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$3;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    # invokes: Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->hideAndRemoveExpandedWindow()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->access$200(Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;)V

    .line 343
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 338
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 334
    return-void
.end method
