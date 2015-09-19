.class public Lcom/android/systemui/recents/RecentsAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "RecentsAppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;
    }
.end annotation


# instance fields
.field mCb:Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mContext:Landroid/content/Context;

.field mIsListening:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostId"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 46
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 54
    return-void
.end method


# virtual methods
.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    const/4 v3, -0x1

    .line 77
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mCb:Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;

    if-nez v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 80
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-le p1, v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-ne p1, v1, :cond_0

    .line 82
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->unbindSearchAppWidget(Landroid/appwidget/AppWidgetHost;I)V

    .line 84
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/RecentsConfiguration;->updateSearchBarAppWidgetId(Landroid/content/Context;I)V

    .line 85
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mCb:Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;

    invoke-interface {v1}, Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;->refreshSearchWidget()V

    goto :goto_0
.end method

.method public startListening(Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mCb:Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;

    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mIsListening:Z

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mIsListening:Z

    .line 60
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    .line 62
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mIsListening:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 70
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mCb:Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;

    .line 71
    iput-object v1, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mContext:Landroid/content/Context;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsAppWidgetHost;->mIsListening:Z

    .line 73
    return-void
.end method
