.class Lcom/android/systemui/qs/tiles/CellularTile$1;
.super Ljava/lang/Object;
.source "CellularTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CellularTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;)V
    .locals 2

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/CellularTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 205
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    # invokes: Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$600(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public onMobileDataEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$700(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->setMobileDataEnabled(Z)V

    .line 210
    return-void
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "mobileSignalIconId"    # I
    .param p3, "mobileSignalContentDescriptionId"    # Ljava/lang/String;
    .param p4, "dataTypeIconId"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "dataTypeContentDescriptionId"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "isDataTypeIconWide"    # Z

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    .line 175
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput p2, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    .line 176
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-object p3, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->signalContentDescription:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput p4, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    .line 178
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-object p7, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataContentDescription:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityIn:Z

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityOut:Z

    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-object p8, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p9, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isDataTypeIconWide:Z

    .line 183
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    # invokes: Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$300(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public onNoSimVisibleChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    .line 189
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    .line 192
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    .line 194
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    .line 195
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$400(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->signalContentDescription:Ljava/lang/String;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    # invokes: Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$500(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method public onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "connected"    # Z
    .param p3, "wifiSignalIconId"    # I
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "wifiSignalContentDescriptionId"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiEnabled:Z

    .line 163
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    iput-boolean p2, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiConnected:Z

    .line 164
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mInfo:Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    # invokes: Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile;->access$200(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    .line 165
    return-void
.end method