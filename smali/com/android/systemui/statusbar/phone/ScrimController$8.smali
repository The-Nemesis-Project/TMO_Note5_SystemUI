.class Lcom/android/systemui/statusbar/phone/ScrimController$8;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$8;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$8;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/ScrimController;->mDozing:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$500(Lcom/android/systemui/statusbar/phone/ScrimController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$8;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    const-wide/16 v2, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J
    invoke-static {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$702(Lcom/android/systemui/statusbar/phone/ScrimController;J)J

    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$8;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$802(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z

    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$8;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$8;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/ScrimController;->mPulseOutFinished:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1300(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;

    move-result-object v1

    # setter for: Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$202(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$8;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$8;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1000(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/ScrimView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    # invokes: Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimColor(Lcom/android/systemui/statusbar/ScrimView;F)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1100(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/ScrimView;F)V

    goto :goto_0
.end method
