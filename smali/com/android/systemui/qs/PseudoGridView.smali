.class public Lcom/android/systemui/qs/PseudoGridView;
.super Landroid/view/ViewGroup;
.source "PseudoGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;
    }
.end annotation


# instance fields
.field private mBottomSpacing:I

.field private mHorizontalSpacing:I

.field protected mNumColumns:I

.field private mSideSpacing:I

.field private mTopSpacing:I

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v6, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    .line 48
    sget-object v4, Lcom/android/systemui/R$styleable;->PseudoGridView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 50
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 51
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 52
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 53
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 51
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :pswitch_0
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    goto :goto_1

    .line 58
    :pswitch_1
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    goto :goto_1

    .line 61
    :pswitch_2
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 64
    :pswitch_3
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mTopSpacing:I

    goto :goto_1

    .line 67
    :pswitch_4
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mBottomSpacing:I

    goto :goto_1

    .line 70
    :pswitch_5
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/PseudoGridView;->mSideSpacing:I

    goto :goto_1

    .line 75
    .end local v2    # "attr":I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getGridViewHeight()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 158
    iget v3, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    .line 159
    .local v3, "mLocalNumColumns":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/PseudoGridView;->getChildCount()I

    move-result v2

    .line 160
    .local v2, "children":I
    iget v7, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    if-le v7, v2, :cond_0

    move v3, v2

    .line 162
    :cond_0
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 163
    .local v1, "childWidthSpec":I
    iget v6, p0, Lcom/android/systemui/qs/PseudoGridView;->mTopSpacing:I

    .line 165
    .local v6, "totalHeight":I
    add-int v7, v2, v3

    add-int/lit8 v7, v7, -0x1

    div-int v5, v7, v3

    .line 166
    .local v5, "rows":I
    const/4 v4, 0x0

    .line 168
    .local v4, "maxHeight":I
    if-lez v2, :cond_1

    .line 169
    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v1, v8}, Landroid/view/View;->measure(II)V

    .line 171
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 174
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget v7, p0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    add-int/2addr v7, v4

    mul-int/2addr v7, v5

    add-int/2addr v6, v7

    .line 175
    iget v7, p0, Lcom/android/systemui/qs/PseudoGridView;->mBottomSpacing:I

    add-int/2addr v6, v7

    .line 177
    return v6
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->isLayoutRtl()Z

    move-result v6

    .line 123
    .local v6, "isRtl":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getChildCount()I

    move-result v2

    .line 124
    .local v2, "children":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/2addr v15, v2

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    move/from16 v16, v0

    div-int v10, v15, v16

    .line 125
    .local v10, "rows":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/qs/PseudoGridView;->mTopSpacing:I

    .line 127
    .local v14, "y":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    .line 128
    .local v7, "mLocalNumColumns":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    if-le v15, v2, :cond_0

    move v7, v2

    .line 130
    :cond_0
    const/4 v9, 0x0

    .local v9, "row":I
    :goto_0
    if-ge v9, v10, :cond_5

    .line 131
    if-eqz v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mSideSpacing:I

    move/from16 v16, v0

    sub-int v13, v15, v16

    .line 132
    .local v13, "x":I
    :goto_1
    const/4 v8, 0x0

    .line 133
    .local v8, "maxHeight":I
    mul-int v11, v9, v7

    .line 134
    .local v11, "startOfRow":I
    add-int v15, v11, v7

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 135
    .local v3, "endOfRow":I
    move v5, v11

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_4

    .line 136
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 137
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 138
    .local v12, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 139
    .local v4, "height":I
    if-eqz v6, :cond_1

    .line 140
    sub-int/2addr v13, v12

    .line 142
    :cond_1
    add-int v15, v13, v12

    add-int v16, v14, v4

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 143
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 144
    if-eqz v6, :cond_3

    .line 145
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    sub-int/2addr v13, v15

    .line 135
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 131
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "endOfRow":I
    .end local v4    # "height":I
    .end local v5    # "i":I
    .end local v8    # "maxHeight":I
    .end local v11    # "startOfRow":I
    .end local v12    # "width":I
    .end local v13    # "x":I
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/PseudoGridView;->mSideSpacing:I

    goto :goto_1

    .line 147
    .restart local v1    # "child":Landroid/view/View;
    .restart local v3    # "endOfRow":I
    .restart local v4    # "height":I
    .restart local v5    # "i":I
    .restart local v8    # "maxHeight":I
    .restart local v11    # "startOfRow":I
    .restart local v12    # "width":I
    .restart local v13    # "x":I
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    add-int/2addr v15, v12

    add-int/2addr v13, v15

    goto :goto_3

    .line 150
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "height":I
    .end local v12    # "width":I
    :cond_4
    add-int/2addr v14, v8

    .line 152
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    add-int/2addr v14, v15

    .line 130
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 155
    .end local v3    # "endOfRow":I
    .end local v5    # "i":I
    .end local v8    # "maxHeight":I
    .end local v11    # "startOfRow":I
    .end local v13    # "x":I
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 80
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    if-nez v16, :cond_0

    .line 81
    new-instance v16, Ljava/lang/UnsupportedOperationException;

    const-string v17, "Needs a maximum width"

    invoke-direct/range {v16 .. v17}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 83
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 85
    .local v15, "width":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    .line 86
    .local v8, "mLocalNumColumns":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getChildCount()I

    move-result v5

    .line 87
    .local v5, "children":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v0, v5, :cond_1

    move v8, v5

    .line 89
    :cond_1
    add-int/lit8 v16, v8, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    sub-int v16, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mSideSpacing:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    sub-int v16, v16, v17

    div-int v3, v16, v8

    .line 90
    .local v3, "childWidth":I
    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v16

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 91
    .local v4, "childWidthSpec":I
    const/4 v2, 0x0

    .line 92
    .local v2, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/qs/PseudoGridView;->mTopSpacing:I

    .line 93
    .local v14, "totalHeight":I
    add-int v16, v5, v8

    add-int/lit8 v16, v16, -0x1

    div-int v12, v16, v8

    .line 94
    .local v12, "rows":I
    const/4 v11, 0x0

    .local v11, "row":I
    :goto_0
    if-ge v11, v12, :cond_5

    .line 95
    mul-int v13, v11, v8

    .line 96
    .local v13, "startOfRow":I
    add-int v16, v13, v8

    move/from16 v0, v16

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 97
    .local v6, "endOfRow":I
    const/4 v9, 0x0

    .line 98
    .local v9, "maxHeight":I
    move v7, v13

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_2

    .line 99
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 100
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1, v4, v2}, Landroid/view/View;->measure(II)V

    .line 101
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 98
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 103
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v16

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 104
    .local v10, "maxHeightSpec":I
    move v7, v13

    :goto_2
    if-ge v7, v6, :cond_4

    .line 105
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 106
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v9, :cond_3

    .line 107
    invoke-virtual {v1, v4, v10}, Landroid/view/View;->measure(II)V

    .line 104
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 110
    .end local v1    # "child":Landroid/view/View;
    :cond_4
    add-int/2addr v14, v9

    .line 112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    move/from16 v16, v0

    add-int v14, v14, v16

    .line 94
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 116
    .end local v6    # "endOfRow":I
    .end local v7    # "i":I
    .end local v9    # "maxHeight":I
    .end local v10    # "maxHeightSpec":I
    .end local v13    # "startOfRow":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/PseudoGridView;->mBottomSpacing:I

    move/from16 v16, v0

    add-int v14, v14, v16

    .line 117
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/qs/PseudoGridView;->setMeasuredDimension(II)V

    .line 118
    return-void
.end method
