.class Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity$preview_pagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SViewCoverStylizedClockSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "preview_pagerAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity$preview_pagerAdapter;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;

    .line 124
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 125
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity$preview_pagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 126
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 144
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 145
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity$preview_pagerAdapter;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->STYLIZED_CLOCK_PREVIEW_DRAWABLES:[I
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->access$000(Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 133
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity$preview_pagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_clock_preview:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, "view":Landroid/view/View;
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity$preview_pagerAdapter;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->STYLIZED_CLOCK_PREVIEW_DRAWABLES:[I
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->access$000(Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;)[I

    move-result-object v1

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity$preview_pagerAdapter;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->STYLIZED_CLOCK_PREVIEW_DRAWABLES:[I
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;->access$000(Lcom/sec/android/cover/sviewcover/SViewCoverStylizedClockSettingsActivity;)[I

    move-result-object v1

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    invoke-virtual {p1, v0, v3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 148
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
