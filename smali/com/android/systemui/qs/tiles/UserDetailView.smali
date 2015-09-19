.class public Lcom/android/systemui/qs/tiles/UserDetailView;
.super Lcom/android/systemui/qs/PseudoGridView;
.source "UserDetailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserDetailView"


# instance fields
.field private mAdapter:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/PseudoGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public static inflate(Landroid/content/Context;Landroid/view/ViewGroup;Z)Lcom/android/systemui/qs/tiles/UserDetailView;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attach"    # Z

    .prologue
    .line 44
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04007a

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/UserDetailView;

    return-object v0
.end method

.method private setFocus(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 56
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 57
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 60
    .local v3, "mFocusableChild":Landroid/view/View;
    if-nez v3, :cond_1

    .line 86
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "mFocusableChild":Landroid/view/View;
    :cond_0
    return-void

    .line 63
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "mFocusableChild":Landroid/view/View;
    :cond_1
    const/4 v4, 0x1

    if-lt v2, v4, :cond_2

    .line 64
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 69
    :goto_1
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v1, :cond_3

    .line 70
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 75
    :goto_2
    iget v4, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mNumColumns:I

    add-int/2addr v4, v2

    if-ge v4, v1, :cond_4

    .line 76
    iget v4, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mNumColumns:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 81
    :goto_3
    iget v4, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mNumColumns:I

    sub-int v4, v2, v4

    if-ltz v4, :cond_5

    .line 82
    iget v4, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mNumColumns:I

    sub-int v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 56
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_2
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_1

    .line 72
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_2

    .line 78
    :cond_4
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusDownId(I)V

    goto :goto_3

    .line 84
    :cond_5
    const v4, 0x102001a

    invoke-virtual {v3, v4}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_4
.end method


# virtual methods
.method public createAndSetAdapter(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .prologue
    .line 49
    new-instance v0, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mAdapter:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mAdapter:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->link(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V

    .line 51
    invoke-direct {p0, p0}, Lcom/android/systemui/qs/tiles/UserDetailView;->setFocus(Landroid/view/ViewGroup;)V

    .line 52
    return-void
.end method

.method public refreshAdapter()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UserDetailView;->mAdapter:Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->refresh()V

    .line 90
    return-void
.end method
