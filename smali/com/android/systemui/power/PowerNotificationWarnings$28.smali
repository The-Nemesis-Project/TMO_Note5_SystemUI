.class Lcom/android/systemui/power/PowerNotificationWarnings$28;
.super Landroid/service/notification/NotificationListenerService;
.source "PowerNotificationWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    .prologue
    .line 2766
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$28;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/4 v3, 0x0

    .line 2769
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$28;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z
    invoke-static {v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1200(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2770
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 2771
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    .line 2772
    .local v0, "id":I
    const-string v2, "low_battery"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    .line 2773
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$28;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # setter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z
    invoke-static {v2, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1202(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z

    .line 2774
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$28;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # setter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mRemainTime:I
    invoke-static {v2, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1702(Lcom/android/systemui/power/PowerNotificationWarnings;I)I

    .line 2775
    const-string v2, "PowerUI.Notification"

    const-string v3, "Low battery noti is dismissed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    .end local v0    # "id":I
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    return-void
.end method
