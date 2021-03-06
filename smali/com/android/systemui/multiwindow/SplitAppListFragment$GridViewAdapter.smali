.class public Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SplitAppListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/SplitAppListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridViewAdapter"
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field mViewPagerNum:I

.field final synthetic this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/multiwindow/SplitAppListFragment;I)V
    .locals 2
    .param p2, "position"    # I

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 171
    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowItemNum:I
    invoke-static {p1}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$200(Lcom/android/systemui/multiwindow/SplitAppListFragment;)I

    move-result v0

    mul-int/2addr v0, p2

    iput v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->mViewPagerNum:I

    .line 172
    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    invoke-static {p1}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$300(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 173
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 196
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040003

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "convertView":Landroid/view/View;
    new-instance v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;

    invoke-direct {v1}, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;-><init>()V

    .line 200
    .local v1, "holder":Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;
    const v2, 0x7f0e00ae

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    .line 201
    iget-object v2, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 202
    const v2, 0x7f0e00b0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    .line 203
    iget-object v2, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 204
    iput p2, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->position:I

    .line 206
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    iget-object v2, v2, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mViewPagerIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    iget-object v2, v2, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mViewPagerIconTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 209
    return-object v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$300(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getViewPagerAppListCnt()I

    move-result v0

    .line 178
    .local v0, "appcnt":I
    iget v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->mViewPagerNum:I

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowItemNum:I
    invoke-static {v2}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$200(Lcom/android/systemui/multiwindow/SplitAppListFragment;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mMultiWindowItemNum:I
    invoke-static {v1}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$200(Lcom/android/systemui/multiwindow/SplitAppListFragment;)I

    move-result v1

    .line 181
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->mViewPagerNum:I

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$300(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->mViewPagerNum:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getViewPagerAppListItem(I)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 192
    iget v0, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->mViewPagerNum:I

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 214
    if-nez p2, :cond_0

    .line 215
    move-object/from16 v0, p3

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->createView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 217
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Recycled child has parent"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 220
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Recycled child has parent"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;

    .line 224
    .local v8, "holder":Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$300(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowAppListInfo()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->mViewPagerNum:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getViewPagerAppListItem(I)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    move-result-object v11

    .line 226
    .local v11, "launchItem":Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    invoke-virtual {v11}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    .line 227
    .local v10, "label":Ljava/lang/CharSequence;
    iget-object v1, v8, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    iget-boolean v1, v1, Lcom/android/systemui/multiwindow/SplitAppListFragment;->mNeedDarkFont:Z

    if-eqz v1, :cond_5

    .line 230
    iget-object v1, v8, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    iget-object v1, v8, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mAppListStrokeOpacity:F
    invoke-static {v4}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$400(Lcom/android/systemui/multiwindow/SplitAppListFragment;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 232
    iget-object v1, v8, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    const/high16 v2, 0x42b40000    # 90.0f

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mAppListShadowDistance:F
    invoke-static {v3}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$500(Lcom/android/systemui/multiwindow/SplitAppListFragment;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v13, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mAppListShadowOpacity:F
    invoke-static {v13}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$600(Lcom/android/systemui/multiwindow/SplitAppListFragment;)F

    move-result v13

    sub-float/2addr v6, v13

    invoke-virtual/range {v1 .. v6}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    .line 237
    :goto_0
    iget-object v1, v8, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {v11}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 240
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v9, :cond_2

    .line 241
    invoke-virtual {v11}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->refreshItemIcon()V

    .line 242
    invoke-virtual {v11}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 244
    :cond_2
    iget-object v1, v8, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    invoke-virtual {v11}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 247
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$300(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v12, :cond_7

    iget-object v1, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mSelectedAppPackage:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$700(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 249
    iget-object v1, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_6

    iget-object v1, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 250
    .local v7, "applicationMetaData":Landroid/os/Bundle;
    :goto_1
    if-eqz v7, :cond_3

    const-string v1, "com.samsung.android.sdk.multiwindow.multiinstance.enable"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$800(Lcom/android/systemui/multiwindow/SplitAppListFragment;)Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v1

    iget-object v2, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 252
    iget-object v1, v8, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 253
    iget-object v1, v8, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v2, v8, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 254
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 261
    .end local v7    # "applicationMetaData":Landroid/os/Bundle;
    :cond_4
    :goto_2
    iget-object v1, v8, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 262
    return-object p2

    .line 234
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    iget-object v1, v8, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x1000000

    iget-object v4, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mAppListStrokeOpacity:F
    invoke-static {v4}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$400(Lcom/android/systemui/multiwindow/SplitAppListFragment;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    .line 235
    iget-object v1, v8, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    const/high16 v2, 0x42b40000    # 90.0f

    iget-object v3, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mAppListShadowDistance:F
    invoke-static {v3}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$500(Lcom/android/systemui/multiwindow/SplitAppListFragment;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x1000000

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v13, p0, Lcom/android/systemui/multiwindow/SplitAppListFragment$GridViewAdapter;->this$0:Lcom/android/systemui/multiwindow/SplitAppListFragment;

    # getter for: Lcom/android/systemui/multiwindow/SplitAppListFragment;->mAppListShadowOpacity:F
    invoke-static {v13}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->access$600(Lcom/android/systemui/multiwindow/SplitAppListFragment;)F

    move-result v13

    sub-float/2addr v6, v13

    invoke-virtual/range {v1 .. v6}, Landroid/widget/TextView;->addOuterShadowTextEffect(FFFIF)I

    goto/16 :goto_0

    .line 249
    .restart local v9    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 257
    :cond_7
    iget-object v1, v8, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 258
    iget-object v1, v8, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v2, v8, Lcom/android/systemui/multiwindow/SplitAppListFragment$AppListItemGridViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 259
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2
.end method
