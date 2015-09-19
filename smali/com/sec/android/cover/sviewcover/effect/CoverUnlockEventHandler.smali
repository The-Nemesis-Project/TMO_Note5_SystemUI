.class public Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;
.super Ljava/lang/Object;
.source "CoverUnlockEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CoverUnlockEventHandler"


# instance fields
.field private mActionDown:Z

.field private mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

.field private mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

.field private mDistance:D

.field private mFirstBorder:I

.field private mIsIgnoreTouch:Z

.field private mIsMultiTouch:Z

.field private mIsUnlockStarted:Z

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;Lcom/samsung/android/visualeffect/EffectView;)V
    .locals 4
    .param p1, "callback"    # Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;
    .param p2, "effectView"    # Lcom/samsung/android/visualeffect/EffectView;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    .line 23
    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsMultiTouch:Z

    .line 24
    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsUnlockStarted:Z

    .line 25
    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsIgnoreTouch:Z

    .line 26
    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mActionDown:Z

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    .line 56
    iput-object p2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    .line 57
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    .line 59
    check-cast p1, Landroid/view/View;

    .end local p1    # "callback":Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_first_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mFirstBorder:I

    .line 61
    sget v1, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_second_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mSecondBorder:I

    .line 62
    return-void
.end method

.method private launch()V
    .locals 2

    .prologue
    .line 209
    const-string v0, "CoverUnlockEventHandler"

    const-string v1, "launch()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    invoke-interface {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->onUnlockExecuted()V

    .line 213
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    const-string v0, "CoverUnlockEventHandler"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    .line 228
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    .line 229
    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 66
    .local v2, "action":I
    and-int/lit16 v5, v2, 0xff

    .line 67
    .local v5, "maskedAction":I
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsUnlockStarted:Z

    if-eqz v11, :cond_0

    .line 68
    const/4 v11, 0x1

    .line 204
    :goto_0
    return v11

    .line 71
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsIgnoreTouch:Z

    if-eqz v11, :cond_4

    .line 72
    const/4 v11, 0x1

    if-eq v2, v11, :cond_1

    const/4 v11, 0x3

    if-ne v2, v11, :cond_2

    .line 73
    :cond_1
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsIgnoreTouch:Z

    .line 74
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v11, :cond_2

    .line 75
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    invoke-interface {v11}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    .line 78
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    if-nez v11, :cond_3

    .line 79
    const/4 v11, 0x0

    goto :goto_0

    .line 81
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/visualeffect/EffectView;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 82
    const/4 v11, 0x1

    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    .line 87
    .local v8, "touchedEventX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    .line 89
    .local v9, "touchedEventY":F
    packed-switch v5, :pswitch_data_0

    .line 200
    :cond_5
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    if-nez v11, :cond_12

    .line 201
    const/4 v11, 0x0

    goto :goto_0

    .line 91
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_6

    .line 92
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsMultiTouch:Z

    .line 93
    const-string v11, "CoverUnlockEventHandler"

    const-string v12, "mIsMultiTouch true"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 95
    :cond_6
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsMultiTouch:Z

    .line 96
    const-string v11, "CoverUnlockEventHandler"

    const-string v12, "mIsMultiTouch false"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 100
    :pswitch_2
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 101
    .local v10, "visibleRect":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 102
    const-string v11, "CoverUnlockEventHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mTempRect.left ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mTempRect.top ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget v11, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mStartX:F

    .line 106
    iget v11, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mStartY:F

    .line 107
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    .line 109
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v11, :cond_7

    .line 110
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    invoke-interface {v11}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->onUnlockViewPressed()V

    .line 112
    :cond_7
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mActionDown:Z

    goto/16 :goto_1

    .line 116
    .end local v10    # "visibleRect":Landroid/graphics/Rect;
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mActionDown:Z

    if-eqz v11, :cond_b

    .line 117
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v11, :cond_8

    .line 118
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    invoke-interface {v11}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->userActivity()V

    .line 121
    :cond_8
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mStartX:F

    sub-float v11, v8, v11

    float-to-int v3, v11

    .line 122
    .local v3, "diffX":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mStartY:F

    sub-float v11, v9, v11

    float-to-int v4, v11

    .line 124
    .local v4, "diffY":I
    int-to-double v12, v3

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    int-to-double v14, v4

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    .line 127
    if-eqz p1, :cond_9

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-double v12, v11

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    cmpg-double v11, v12, v14

    if-gez v11, :cond_a

    .line 129
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v11, :cond_9

    .line 130
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->onUnlockViewSwiped(Z)V

    .line 139
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mSecondBorder:I

    int-to-double v14, v11

    cmpl-double v11, v12, v14

    if-ltz v11, :cond_5

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsMultiTouch:Z

    if-nez v11, :cond_5

    .line 140
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsUnlockStarted:Z

    .line 142
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v11, :cond_5

    .line 145
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mActionDown:Z

    .line 146
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 147
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    invoke-interface {v11}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->userActivity()V

    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->launch()V

    .line 149
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    invoke-interface {v11}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    goto/16 :goto_1

    .line 133
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v11, :cond_9

    .line 134
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->onUnlockViewSwiped(Z)V

    goto :goto_2

    .line 153
    .end local v3    # "diffX":I
    .end local v4    # "diffY":I
    :cond_b
    const-string v11, "CoverUnlockEventHandler"

    const-string v12, "ACTION_MOVE without ACTION_DOWN"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 157
    :pswitch_4
    const v11, 0xff00

    and-int/2addr v11, v2

    shr-int/lit8 v7, v11, 0x8

    .line 158
    .local v7, "pointer_index":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 159
    .local v6, "pointer_id":I
    if-nez v6, :cond_c

    .line 160
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsIgnoreTouch:Z

    .line 164
    .end local v6    # "pointer_id":I
    .end local v7    # "pointer_index":I
    :cond_c
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v12, 0x1

    if-gt v11, v12, :cond_d

    .line 165
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsMultiTouch:Z

    .line 166
    const-string v11, "CoverUnlockEventHandler"

    const-string v12, "mIsMultiTouch false"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v11, :cond_e

    const/4 v11, 0x3

    if-ne v5, v11, :cond_e

    .line 170
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    invoke-interface {v11}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    .line 172
    :cond_e
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    .line 173
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mActionDown:Z

    goto/16 :goto_1

    .line 176
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v12, 0x1

    if-gt v11, v12, :cond_f

    .line 177
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsMultiTouch:Z

    .line 178
    const-string v11, "CoverUnlockEventHandler"

    const-string v12, "mIsMultiTouch false"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v11, :cond_10

    .line 182
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    invoke-interface {v11}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    .line 185
    :cond_10
    const-string v11, "CoverUnlockEventHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ACTION_UP mDistance: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mFirstBorder:I

    int-to-double v12, v11

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    cmpg-double v11, v12, v14

    if-gez v11, :cond_11

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsMultiTouch:Z

    if-nez v11, :cond_11

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mActionDown:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_11

    .line 188
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsUnlockStarted:Z

    .line 189
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    if-eqz v11, :cond_11

    .line 190
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCallback:Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;

    invoke-interface {v11}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;->userActivity()V

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->launch()V

    .line 194
    :cond_11
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mActionDown:Z

    goto/16 :goto_1

    .line 203
    :cond_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/visualeffect/EffectView;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 204
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 216
    const-string v0, "CoverUnlockEventHandler"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mCircleEffectView:Lcom/samsung/android/visualeffect/EffectView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/EffectView;->clearScreen()V

    .line 220
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsUnlockStarted:Z

    .line 221
    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mIsIgnoreTouch:Z

    .line 222
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler;->mDistance:D

    .line 223
    return-void
.end method
