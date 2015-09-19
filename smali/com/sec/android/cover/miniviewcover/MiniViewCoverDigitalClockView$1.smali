.class Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "MiniViewCoverDigitalClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateTime()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V

    .line 58
    return-void
.end method

.method public onContentChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    invoke-virtual {v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mIs24HTime:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->access$102(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;Z)Z

    .line 67
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateTime()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://settings/system/date_format"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateTime()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V

    .line 73
    :cond_1
    return-void
.end method

.method public onDateFormatChanged()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateTime()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V

    .line 54
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateTime()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V

    .line 50
    return-void
.end method

.method public onUserSwitched(II)V
    .locals 1
    .param p1, "newUserId"    # I
    .param p2, "oldUserId"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateTime()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V

    .line 62
    return-void
.end method
