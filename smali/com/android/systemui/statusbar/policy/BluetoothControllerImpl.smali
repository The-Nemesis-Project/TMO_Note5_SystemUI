.class public Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$BTConnectionDevice;,
        Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;,
        Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "BluetoothController"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectedDevList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$BTConnectionDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mConnecting:Z

.field private final mContext:Landroid/content/Context;

.field private final mDeviceInfo:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mLastDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mReceiver:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "BluetoothController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 61
    new-instance v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;

    .line 62
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevList:Ljava/util/ArrayList;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    .line 71
    const-string v1, "bluetooth"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 73
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 74
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 75
    const-string v1, "BluetoothController"

    const-string v2, "Default BT adapter not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$Receiver;->register()V

    .line 80
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setAdapterState(I)V

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateBondedBluetoothDevices()V

    goto :goto_0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateBondedBluetoothDevices()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setAdapterState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setConnecting(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private connect(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;Z)V
    .locals 18
    .param p1, "pd"    # Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
    .param p2, "connect"    # Z

    .prologue
    .line 184
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v15, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->tag:Ljava/lang/Object;

    if-nez v15, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->tag:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 186
    .local v6, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz p2, :cond_3

    const-string v3, "connect"

    .line 187
    .local v3, "action":Ljava/lang/String;
    :goto_1
    sget-boolean v15, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    if-eqz v15, :cond_2

    const-string v15, "BluetoothController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_2
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v14

    .line 189
    .local v14, "uuids":[Landroid/os/ParcelUuid;
    if-nez v14, :cond_4

    .line 190
    const-string v15, "BluetoothController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No uuids returned, aborting "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    .end local v3    # "action":Ljava/lang/String;
    .end local v14    # "uuids":[Landroid/os/ParcelUuid;
    :cond_3
    const-string v3, "disconnect"

    goto :goto_1

    .line 193
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v14    # "uuids":[Landroid/os/ParcelUuid;
    :cond_4
    new-instance v12, Landroid/util/SparseBooleanArray;

    invoke-direct {v12}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 194
    .local v12, "profiles":Landroid/util/SparseBooleanArray;
    move-object v4, v14

    .local v4, "arr$":[Landroid/os/ParcelUuid;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v9, :cond_9

    aget-object v13, v4, v8

    .line 195
    .local v13, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->uuidToProfile(Landroid/os/ParcelUuid;)I

    move-result v10

    .line 196
    .local v10, "profile":I
    if-nez v10, :cond_6

    .line 197
    const-string v15, "BluetoothController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Device "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " has an unsupported uuid: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->uuidToString(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 201
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v15, v10}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v11

    .line 202
    .local v11, "profileState":I
    sget-boolean v15, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    if-eqz v15, :cond_7

    invoke-virtual {v12, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "BluetoothController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Profile "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->profileToString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " state = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v11}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->profileStateToString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_7
    const/4 v15, 0x2

    if-ne v11, v15, :cond_8

    const/4 v5, 0x1

    .line 205
    .local v5, "connected":Z
    :goto_4
    move/from16 v0, p2

    if-eq v0, v5, :cond_5

    .line 206
    const/4 v15, 0x1

    invoke-virtual {v12, v10, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3

    .line 204
    .end local v5    # "connected":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_4

    .line 209
    .end local v10    # "profile":I
    .end local v11    # "profileState":I
    .end local v13    # "uuid":Landroid/os/ParcelUuid;
    :cond_9
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    if-ge v7, v15, :cond_0

    .line 210
    invoke-virtual {v12, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    .line 211
    .restart local v10    # "profile":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;ZLandroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1, v10}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 209
    add-int/lit8 v7, v7, 0x1

    goto :goto_5
.end method

.method private static connectionStateToPairedDeviceState(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 167
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTED:I

    .line 170
    :goto_0
    return v0

    .line 168
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTING:I

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    sget v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTING:I

    goto :goto_0

    .line 170
    :cond_2
    sget v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTED:I

    goto :goto_0
.end method

.method private firePairedDevicesChanged()V
    .locals 3

    .prologue
    .line 289
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 290
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothPairedDevicesChanged()V

    goto :goto_0

    .line 292
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    :cond_0
    return-void
.end method

.method private fireStateChange()V
    .locals 3

    .prologue
    .line 308
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 309
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->fireStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    goto :goto_0

    .line 311
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    :cond_0
    return-void
.end method

.method private fireStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnecting:Z

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothStateChange(ZZ)V

    .line 315
    return-void
.end method

.method private static infoToString(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "info"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .prologue
    .line 102
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionState:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",bonded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->bonded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setAdapterState(I)V
    .locals 2
    .param p1, "adapterState"    # I

    .prologue
    .line 295
    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 296
    .local v0, "enabled":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    if-ne v1, v0, :cond_1

    .line 299
    :goto_1
    return-void

    .line 295
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 297
    .restart local v0    # "enabled":Z
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 298
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->fireStateChange()V

    goto :goto_1
.end method

.method private setConnecting(Z)V
    .locals 1
    .param p1, "connecting"    # Z

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnecting:Z

    if-ne v0, p1, :cond_0

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnecting:Z

    .line 304
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->fireStateChange()V

    goto :goto_0
.end method

.method private updateBondedBluetoothDevices()V
    .locals 14

    .prologue
    const/4 v0, 0x5

    const/4 v2, 0x1

    const/4 v13, 0x0

    .line 255
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v9

    .line 257
    .local v9, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 258
    .local v11, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    iput-boolean v13, v11, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->bonded:Z

    goto :goto_1

    .line 260
    .end local v11    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    :cond_1
    const/4 v7, 0x0

    .line 261
    .local v7, "bondedCount":I
    const/4 v12, 0x0

    .line 265
    .local v12, "lastBonded":Landroid/bluetooth/BluetoothDevice;
    if-eqz v9, :cond_4

    .line 266
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 267
    .local v8, "bondedDevice":Landroid/bluetooth/BluetoothDevice;
    const-string v1, "BluetoothController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBondedBluetoothDevices : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BluetoothControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bluetooth Paired Device : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_3

    move v6, v2

    .line 274
    .local v6, "bonded":Z
    :goto_3
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    move-result-object v1

    iput-boolean v6, v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->bonded:Z

    .line 275
    if-eqz v6, :cond_2

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_2

    .line 276
    add-int/lit8 v7, v7, 0x1

    .line 277
    move-object v12, v8

    goto :goto_2

    .end local v6    # "bonded":Z
    :cond_3
    move v6, v13

    .line 273
    goto :goto_3

    .line 282
    .end local v8    # "bondedDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    iput-object v12, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    .line 285
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->firePairedDevicesChanged()V

    goto/16 :goto_0
.end method

.method private updateInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 406
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 407
    .local v0, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    if-eqz v0, :cond_0

    .line 408
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    return-object v0

    .line 407
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .end local v0    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;)V

    goto :goto_0
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->fireStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    .line 109
    return-void
.end method

.method public connect(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;)V
    .locals 1
    .param p1, "pd"    # Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;

    .prologue
    .line 175
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connect(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;Z)V

    .line 176
    return-void
.end method

.method public disconnect(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;)V
    .locals 1
    .param p1, "pd"    # Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connect(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;Z)V

    .line 181
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 85
    const-string v3, "BluetoothController state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string v3, "  mAdapter="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 87
    const-string v3, "  mEnabled="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 88
    const-string v3, "  mConnecting="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnecting:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 89
    const-string v3, "  mLastDevice="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 90
    const-string v3, "  mCallbacks.size="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 91
    const-string v3, "  mDeviceInfo.size="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 94
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 95
    .local v2, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->deviceToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    const/16 v3, 0x28

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothUtil;->uuidsToString(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x29

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 97
    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->infoToString(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    :cond_0
    return-void
.end method

.method public getLastDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 246
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 247
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 248
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevList:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$BTConnectionDevice;

    .line 249
    .local v0, "dev":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$BTConnectionDevice;
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$BTConnectionDevice;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v2

    .line 251
    .end local v0    # "dev":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$BTConnectionDevice;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPairedDevices()Landroid/util/ArraySet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 152
    .local v4, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 153
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 154
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mDeviceInfo:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;

    .line 155
    .local v2, "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->bonded:Z

    if-nez v5, :cond_0

    .line 152
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    new-instance v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;-><init>()V

    .line 157
    .local v3, "paired":Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->id:Ljava/lang/String;

    .line 158
    iput-object v0, v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->tag:Ljava/lang/Object;

    .line 159
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->name:Ljava/lang/String;

    .line 160
    iget v5, v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;->connectionState:I

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connectionStateToPairedDeviceState(I)I

    move-result v5

    iput v5, v3, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->state:I

    .line 161
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "info":Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$DeviceInfo;
    .end local v3    # "paired":Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
    :cond_1
    return-object v4
.end method

.method public bridge synthetic getPairedDevices()Ljava/util/Set;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getPairedDevices()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public isBluetoothConnected()Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothConnecting()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothSupported()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public setBluetoothEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 136
    if-eqz p1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method
