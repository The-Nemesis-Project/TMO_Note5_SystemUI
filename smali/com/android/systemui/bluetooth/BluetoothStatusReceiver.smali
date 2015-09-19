.class public Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothStatusReceiver.java"


# static fields
.field private static final LAUNCH_SCAN_DIALOG:Ljava/lang/String; = "android.intent.action.BLUETOOTH_SCAN_DIALOG"

.field private static final MSG_LAUNCH_SCAN_DIALOG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothStatusReceiver"

.field private static mQuickPanelOn:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mScanDialogHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;->mQuickPanelOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    new-instance v0, Lcom/android/systemui/bluetooth/BluetoothStatusReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/bluetooth/BluetoothStatusReceiver$1;-><init>(Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;)V

    iput-object v0, p0, Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;->mScanDialogHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 25
    const-string v2, "BluetoothStatusReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput-object p1, p0, Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 31
    .local v1, "state":I
    const-string v2, "BluetoothStatusReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdapterStateChanged :: BluetoothAdapter.ACTION_STATE_CHANGED, state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;->mQuickPanelOn:Z

    if-eqz v2, :cond_0

    .line 33
    sput-boolean v5, Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;->mQuickPanelOn:Z

    .line 34
    iget-object v2, p0, Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;->mScanDialogHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;->mScanDialogHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 40
    .end local v1    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    if-eqz v0, :cond_0

    const-string v2, "com.samsung.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const-string v2, "BluetoothStatusReceiver"

    const-string v3, "QuickPanelBluetoothON :: com.samsung.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/systemui/bluetooth/BluetoothStatusReceiver;->mQuickPanelOn:Z

    goto :goto_0
.end method
