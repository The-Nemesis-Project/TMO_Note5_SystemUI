.class Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$3;
.super Ljava/lang/Object;
.source "ClearCoverNoblePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    const/4 v3, 0x0

    # setter for: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v2, v3}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$702(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 140
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mUnreadMessageCountTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$800(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)Landroid/widget/TextView;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 141
    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onItemClick - mUnreadMessageCountTextView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;->OPEN_COVER_TO_VIEW_MESSAGE:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

    # invokes: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->showCoverOpenPopup(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;)V
    invoke-static {v2, v3}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$900(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;)V

    .line 144
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$1000(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v2

    const-string v3, "new_message"

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v1

    .line 147
    .local v1, "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    if-eqz v1, :cond_0

    .line 148
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    iget-object v3, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    # setter for: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v2, v3}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$702(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 161
    .end local v1    # "messageRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onItemClick - mMissedCallCountTextView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;->OPEN_COVER_TO_VIEW_CALL:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

    # invokes: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->showCoverOpenPopup(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;)V
    invoke-static {v2, v3}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$900(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;)V

    .line 154
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$1100(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v2

    const-string v3, "missed_call"

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v0

    .line 157
    .local v0, "callRemoteViewInfo":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    if-eqz v0, :cond_0

    .line 158
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;

    iget-object v3, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mPendingIntent:Landroid/app/PendingIntent;

    # setter for: Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v2, v3}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;->access$702(Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    goto :goto_0
.end method
