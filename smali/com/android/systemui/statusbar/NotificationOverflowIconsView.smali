.class public Lcom/android/systemui/statusbar/NotificationOverflowIconsView;
.super Lcom/android/systemui/statusbar/phone/IconMerger;
.source "NotificationOverflowIconsView.java"


# instance fields
.field private mIconSize:I

.field private mMoreText:Landroid/widget/TextView;

.field private mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mTintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/IconMerger;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method private applyColor(Landroid/app/Notification;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 2
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "view"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mTintColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 70
    return-void
.end method

.method private updateMoreText()V
    .locals 6

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildCount()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020330

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0340

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020331

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public addNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p1, "notification"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 61
    .local v0, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mIconSize:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->addView(Landroid/view/View;II)V

    .line 63
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 64
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->applyColor(Landroid/app/Notification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->updateMoreText()V

    .line 66
    return-void
.end method

.method public applyCoverState(Z)V
    .locals 7
    .param p1, "isCovered"    # Z

    .prologue
    .line 84
    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a005e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 91
    .local v0, "color":I
    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mTintColor:I

    if-eq v0, v4, :cond_3

    .line 92
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mTintColor:I

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildCount()I

    move-result v1

    .line 94
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 95
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 97
    .local v3, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->clearColorFilter()V

    .line 98
    const/4 v4, 0x0

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->applyColor(Landroid/app/Notification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 94
    .end local v3    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    .end local v0    # "color":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "color":I
    goto :goto_0

    .line 101
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreView:Landroid/view/View;

    instance-of v4, v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v4, :cond_3

    .line 102
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->clearColorFilter()V

    .line 103
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mTintColor:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 107
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->onFinishInflate()V

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mTintColor:I

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c04d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mIconSize:I

    .line 52
    return-void
.end method

.method public setMoreText(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "moreText"    # Landroid/widget/TextView;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->mMoreText:Landroid/widget/TextView;

    .line 56
    return-void
.end method
