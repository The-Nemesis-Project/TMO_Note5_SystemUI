.class Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "RecentsMultiWindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpiltPagerAdapter"
.end annotation


# instance fields
.field private mFragmentList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    .line 732
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 729
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->mFragmentList:Landroid/util/SparseArray;

    .line 733
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->mFragmentList:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 771
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 772
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I
    invoke-static {v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 753
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->mFragmentList:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 754
    .local v1, "fr":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_1

    .line 756
    if-nez p1, :cond_0

    .line 757
    new-instance v2, Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-direct {v2}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;-><init>()V

    .line 765
    :goto_0
    return-object v2

    .line 759
    :cond_0
    new-instance v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;

    invoke-direct {v0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;-><init>()V

    .line 760
    .local v0, "appList":Lcom/android/systemui/multiwindow/SplitAppListFragment;
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v3}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->setPageNum(I)V

    .line 761
    move-object v2, v0

    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .end local v0    # "appList":Lcom/android/systemui/multiwindow/SplitAppListFragment;
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    move-object v2, v1

    .line 765
    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 741
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 746
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 747
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->mFragmentList:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 748
    return-object v0
.end method
