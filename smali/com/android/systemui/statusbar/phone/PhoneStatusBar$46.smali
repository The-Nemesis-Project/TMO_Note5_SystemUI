.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$currentAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 0

    .prologue
    .line 5431
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->val$currentAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->val$currentAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v0, :cond_0

    .line 5434
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->val$currentAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 5436
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelCoverDismissAction()V

    .line 5437
    return-void
.end method
