.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$9$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;)V
    .locals 0

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$702(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1019
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, -0x1

    # setter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$902(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I

    .line 1020
    return-void
.end method
