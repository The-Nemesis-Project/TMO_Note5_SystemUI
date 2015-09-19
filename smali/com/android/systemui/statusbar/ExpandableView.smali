.class public abstract Lcom/android/systemui/statusbar/ExpandableView;
.super Landroid/widget/FrameLayout;
.source "ExpandableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
    }
.end annotation


# instance fields
.field private isNotification:Z

.field private isNotificationContainer:Z

.field private mActualHeight:I

.field private mActualHeightInitialized:Z

.field protected mClipTopAmount:I

.field private mDark:Z

.field private mMatchParentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxNotificationHeight:I

.field private mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

.field private shouldSidePaddingAdded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->isNotification:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->isNotificationContainer:Z

    .line 39
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->shouldSidePaddingAdded:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0306

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMaxNotificationHeight:I

    .line 52
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->filterMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected filterMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActualHeight()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    return v0
.end method

.method public getClipTopAmount()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 321
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 322
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 323
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 324
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 325
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 326
    return-void
.end method

.method protected getInitialHeight()I
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public isContentExpandable()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public isDark()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mDark:Z

    return v0
.end method

.method public isNotification()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->isNotification:Z

    return v0
.end method

.method public isNotificationContainer()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->isNotificationContainer:Z

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public notifyHeightChanged()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 255
    :cond_0
    return-void
.end method

.method public onHeightReset()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onReset(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 308
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 101
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 102
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeightInitialized:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getInitialHeight()I

    move-result v0

    .line 104
    .local v0, "initialHeight":I
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(I)V

    .line 108
    .end local v0    # "initialHeight":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMaxNotificationHeight:I

    move/from16 v16, v0

    .line 57
    .local v16, "ownMaxHeight":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 58
    .local v8, "heightMode":I
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-ne v8, v0, :cond_3

    const/4 v7, 0x1

    .line 59
    .local v7, "hasFixedHeight":Z
    :goto_0
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v8, v0, :cond_4

    const/4 v11, 0x1

    .line 60
    .local v11, "isHeightLimited":Z
    :goto_1
    if-nez v7, :cond_0

    if-eqz v11, :cond_1

    .line 61
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 62
    .local v17, "size":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 64
    .end local v17    # "size":I
    :cond_1
    const/high16 v19, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 65
    .local v14, "newHeightSpec":I
    const/4 v13, 0x0

    .line 66
    .local v13, "maxChildHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/ExpandableView;->getChildCount()I

    move-result v4

    .line 67
    .local v4, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v4, :cond_7

    .line 68
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/ExpandableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 69
    .local v3, "child":Landroid/view/View;
    move v6, v14

    .line 70
    .local v6, "childHeightSpec":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 71
    .local v12, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 72
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    if-ltz v19, :cond_2

    .line 74
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v16

    if-le v0, v1, :cond_5

    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 78
    :cond_2
    :goto_3
    const/16 v19, 0x0

    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->getChildMeasureSpec(III)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v3, v0, v6}, Landroid/view/View;->measure(II)V

    .line 81
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 82
    .local v5, "childHeight":I
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 67
    .end local v5    # "childHeight":I
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 58
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v6    # "childHeightSpec":I
    .end local v7    # "hasFixedHeight":Z
    .end local v9    # "i":I
    .end local v11    # "isHeightLimited":Z
    .end local v12    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v13    # "maxChildHeight":I
    .end local v14    # "newHeightSpec":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 59
    .restart local v7    # "hasFixedHeight":Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 74
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "childCount":I
    .restart local v6    # "childHeightSpec":I
    .restart local v9    # "i":I
    .restart local v11    # "isHeightLimited":Z
    .restart local v12    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v13    # "maxChildHeight":I
    .restart local v14    # "newHeightSpec":I
    :cond_5
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_3

    .line 84
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 87
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "childHeightSpec":I
    .end local v12    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    if-eqz v7, :cond_8

    move/from16 v15, v16

    .line 88
    .local v15, "ownHeight":I
    :goto_5
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 90
    .restart local v3    # "child":Landroid/view/View;
    const/16 v19, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->getChildMeasureSpec(III)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v3, v0, v14}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .end local v3    # "child":Landroid/view/View;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v15    # "ownHeight":I
    :cond_8
    move v15, v13

    .line 87
    goto :goto_5

    .line 94
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v15    # "ownHeight":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 95
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 96
    .local v18, "width":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setMeasuredDimension(II)V

    .line 97
    return-void
.end method

.method public abstract performAddAnimation(JJ)V
.end method

.method public abstract performRemoveAnimation(JFLjava/lang/Runnable;)V
.end method

.method protected resetActualHeight()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    .line 115
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeightInitialized:Z

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->requestLayout()V

    .line 117
    return-void
.end method

.method public setActualHeight(I)V
    .locals 1
    .param p1, "actualHeight"    # I

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 153
    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1
    .param p1, "actualHeight"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeightInitialized:Z

    .line 145
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    .line 146
    if-eqz p2, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->notifyHeightChanged()V

    .line 149
    :cond_0
    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .locals 0
    .param p1, "below"    # Z

    .prologue
    .line 278
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 233
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    .line 234
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 0
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mDark:Z

    .line 196
    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 0
    .param p1, "dimmed"    # Z
    .param p2, "fade"    # Z

    .prologue
    .line 185
    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .locals 0
    .param p1, "hideSensitive"    # Z
    .param p2, "animated"    # Z
    .param p3, "delay"    # J
    .param p5, "duration"    # J

    .prologue
    .line 217
    return-void
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .locals 0
    .param p1, "hideSensitive"    # Z

    .prologue
    .line 210
    return-void
.end method

.method protected setNotification(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->isNotification:Z

    .line 290
    return-void
.end method

.method protected setNotificationContainer(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->isNotificationContainer:Z

    .line 294
    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .line 242
    return-void
.end method

.method protected setShouldSidePaddingAdded(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->shouldSidePaddingAdded:Z

    .line 302
    return-void
.end method

.method public shouldExpand()Z
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSidePaddingAdded()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->shouldSidePaddingAdded:Z

    return v0
.end method
