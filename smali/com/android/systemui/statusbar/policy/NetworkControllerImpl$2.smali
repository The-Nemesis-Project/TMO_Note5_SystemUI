.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 1176
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 1183
    if-nez p1, :cond_0

    .line 1184
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDisplayState:I

    .line 1185
    .local v0, "oldState":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDisplayState:I

    .line 1186
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDisplayState:I

    if-eq v1, v0, :cond_0

    .line 1187
    if-eq v0, v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDisplayState:I

    if-ne v1, v3, :cond_1

    .line 1189
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "onDisplayChanged - STATE_ON "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isUpdateSignalForced:Z

    .line 1201
    .end local v0    # "oldState":I
    :cond_0
    :goto_0
    return-void

    .line 1191
    .restart local v0    # "oldState":I
    :cond_1
    if-eq v0, v3, :cond_2

    if-nez v0, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDisplayState:I

    if-eq v1, v3, :cond_0

    .line 1193
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isUpdateSignalForced:Z

    .line 1194
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "onDisplayChanged - STATE_OFF "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 1179
    return-void
.end method
