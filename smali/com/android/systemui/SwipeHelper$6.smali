.class Lcom/android/systemui/SwipeHelper$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SwipeHelper;->snapContentView(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SwipeHelper;

.field final synthetic val$contentView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 806
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$6;->this$0:Lcom/android/systemui/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper$6;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/SwipeHelper$6;->val$contentView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$6;->this$0:Lcom/android/systemui/SwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$6;->val$view:Landroid/view/View;

    # invokes: Lcom/android/systemui/SwipeHelper;->updateSidesSwipeProgressFromOffset(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/systemui/SwipeHelper;->access$700(Lcom/android/systemui/SwipeHelper;Landroid/view/View;)V

    .line 809
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$6;->this$0:Lcom/android/systemui/SwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$6;->val$view:Landroid/view/View;

    const/16 v2, 0x8

    # invokes: Lcom/android/systemui/SwipeHelper;->setSidesVisibility(Landroid/view/View;I)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->access$800(Lcom/android/systemui/SwipeHelper;Landroid/view/View;I)V

    .line 810
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$6;->val$contentView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 811
    return-void
.end method
