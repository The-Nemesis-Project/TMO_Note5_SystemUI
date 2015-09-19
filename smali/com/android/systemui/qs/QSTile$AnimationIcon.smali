.class public Lcom/android/systemui/qs/QSTile$AnimationIcon;
.super Lcom/android/systemui/qs/QSTile$ResourceIcon;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationIcon"
.end annotation


# instance fields
.field private mAllowAnimation:Z

.field private mAnimId:I

.field private mAnimType:Lcom/android/systemui/qs/QSTile$AnimType;

.field private mCallbackCount:I

.field final synthetic this$0:Lcom/android/systemui/qs/QSTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile;I)V
    .locals 1
    .param p2, "resId"    # I

    .prologue
    .line 558
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    iput-object p1, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->this$0:Lcom/android/systemui/qs/QSTile;

    .line 559
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;-><init>(ILcom/android/systemui/qs/QSTile$1;)V

    .line 552
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mCallbackCount:I

    .line 556
    sget-object v0, Lcom/android/systemui/qs/QSTile$AnimType;->NORMAL:Lcom/android/systemui/qs/QSTile$AnimType;

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAnimType:Lcom/android/systemui/qs/QSTile$AnimType;

    .line 560
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile;II)V
    .locals 1
    .param p2, "resId"    # I
    .param p3, "animId"    # I

    .prologue
    .line 562
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    iput-object p1, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->this$0:Lcom/android/systemui/qs/QSTile;

    .line 563
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;-><init>(ILcom/android/systemui/qs/QSTile$1;)V

    .line 552
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mCallbackCount:I

    .line 556
    sget-object v0, Lcom/android/systemui/qs/QSTile$AnimType;->NORMAL:Lcom/android/systemui/qs/QSTile$AnimType;

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAnimType:Lcom/android/systemui/qs/QSTile$AnimType;

    .line 564
    iput p3, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAnimId:I

    .line 565
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile;ILcom/android/systemui/qs/QSTile$AnimType;)V
    .locals 1
    .param p2, "resId"    # I
    .param p3, "animType"    # Lcom/android/systemui/qs/QSTile$AnimType;

    .prologue
    .line 567
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    iput-object p1, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->this$0:Lcom/android/systemui/qs/QSTile;

    .line 568
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;-><init>(ILcom/android/systemui/qs/QSTile$1;)V

    .line 552
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mCallbackCount:I

    .line 556
    sget-object v0, Lcom/android/systemui/qs/QSTile$AnimType;->NORMAL:Lcom/android/systemui/qs/QSTile$AnimType;

    iput-object v0, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAnimType:Lcom/android/systemui/qs/QSTile$AnimType;

    .line 569
    iput-object p3, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAnimType:Lcom/android/systemui/qs/QSTile$AnimType;

    .line 570
    return-void
.end method

.method private setIconTintColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 627
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->this$0:Lcom/android/systemui/qs/QSTile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 676
    :cond_0
    return-void

    .line 629
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->this$0:Lcom/android/systemui/qs/QSTile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/systemui/qs/QSTile$MultiState;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    move/from16 v22, v0

    .line 630
    .local v22, "value":I
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 632
    :cond_2
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v2, p2

    .line 633
    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 634
    .local v2, "d":Landroid/graphics/drawable/AnimationDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->this$0:Lcom/android/systemui/qs/QSTile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a00af

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 635
    .local v12, "onTint":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->this$0:Lcom/android/systemui/qs/QSTile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0a00b0

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 639
    .local v11, "offTint":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 641
    .local v9, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAnimType:Lcom/android/systemui/qs/QSTile$AnimType;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/systemui/qs/QSTile$AnimType;->DIM:Lcom/android/systemui/qs/QSTile$AnimType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 642
    move/from16 v16, v12

    .line 643
    .local v16, "startTint":I
    const-string v23, "off"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    move v6, v11

    .line 654
    .local v6, "endTint":I
    :goto_0
    shr-int/lit8 v23, v16, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v15, v0

    .line 655
    .local v15, "startR":F
    shr-int/lit8 v23, v16, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v14, v0

    .line 656
    .local v14, "startG":F
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v13, v0

    .line 658
    .local v13, "startB":F
    shr-int/lit8 v23, v6, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v5, v0

    .line 659
    .local v5, "endR":F
    shr-int/lit8 v23, v6, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v4, v0

    .line 660
    .local v4, "endG":F
    and-int/lit16 v0, v6, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v3, v0

    .line 662
    .local v3, "endB":F
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v10

    .line 663
    .local v10, "numFrame":I
    add-int/lit8 v20, v10, -0x1

    .line 664
    .local v20, "steps":I
    sub-float v23, v5, v15

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v19, v23, v24

    .line 665
    .local v19, "stepR":F
    sub-float v23, v4, v14

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v18, v23, v24

    .line 666
    .local v18, "stepG":F
    sub-float v23, v3, v13

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v17, v23, v24

    .line 669
    .local v17, "stepB":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v10, :cond_0

    .line 670
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 671
    .local v7, "frame":Landroid/graphics/drawable/Drawable;
    int-to-float v0, v8

    move/from16 v23, v0

    mul-float v23, v23, v19

    add-float v23, v23, v15

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v23

    shl-int/lit8 v23, v23, 0x10

    int-to-float v0, v8

    move/from16 v24, v0

    mul-float v24, v24, v18

    add-float v24, v24, v14

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    shl-int/lit8 v24, v24, 0x8

    or-int v23, v23, v24

    int-to-float v0, v8

    move/from16 v24, v0

    mul-float v24, v24, v17

    add-float v24, v24, v13

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    or-int v23, v23, v24

    const v24, 0xffffff

    and-int v21, v23, v24

    .line 672
    .local v21, "tintColor":I
    const/high16 v23, -0x1000000

    or-int v21, v21, v23

    .line 673
    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 669
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v3    # "endB":F
    .end local v4    # "endG":F
    .end local v5    # "endR":F
    .end local v6    # "endTint":I
    .end local v7    # "frame":Landroid/graphics/drawable/Drawable;
    .end local v8    # "i":I
    .end local v10    # "numFrame":I
    .end local v13    # "startB":F
    .end local v14    # "startG":F
    .end local v15    # "startR":F
    .end local v17    # "stepB":F
    .end local v18    # "stepG":F
    .end local v19    # "stepR":F
    .end local v20    # "steps":I
    .end local v21    # "tintColor":I
    :cond_3
    move v6, v12

    .line 643
    goto/16 :goto_0

    .line 645
    .end local v16    # "startTint":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAnimType:Lcom/android/systemui/qs/QSTile$AnimType;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/systemui/qs/QSTile$AnimType;->ALWAYS_ON:Lcom/android/systemui/qs/QSTile$AnimType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 646
    move/from16 v16, v12

    .line 647
    .restart local v16    # "startTint":I
    move v6, v12

    .restart local v6    # "endTint":I
    goto/16 :goto_0

    .line 650
    .end local v6    # "endTint":I
    .end local v16    # "startTint":I
    :cond_5
    const-string v23, "off"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    move/from16 v16, v12

    .line 651
    .restart local v16    # "startTint":I
    :goto_2
    const-string v23, "off"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    move v6, v11

    .restart local v6    # "endTint":I
    :goto_3
    goto/16 :goto_0

    .end local v6    # "endTint":I
    .end local v16    # "startTint":I
    :cond_6
    move/from16 v16, v11

    .line 650
    goto :goto_2

    .restart local v16    # "startTint":I
    :cond_7
    move v6, v12

    .line 651
    goto :goto_3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 681
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .end local p1    # "o":Ljava/lang/Object;
    iget v0, p1, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAnimId:I

    iget v1, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAnimId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllowAnimation()Z
    .locals 1

    .prologue
    .line 578
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAllowAnimation:Z

    return v0
.end method

.method public getAnimator(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 583
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    iget v0, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAnimId:I

    if-eqz v0, :cond_1

    .line 584
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAllowAnimation:Z

    if-eqz v0, :cond_0

    .line 585
    iget v0, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mCallbackCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mCallbackCount:I

    .line 586
    iget v0, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mCallbackCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAllowAnimation:Z

    .line 589
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAnimId:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 592
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 598
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 602
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_0

    .line 603
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->setIconTintColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 607
    :cond_0
    iget v3, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAnimId:I

    if-nez v3, :cond_1

    instance-of v3, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 608
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 610
    .local v0, "a":Landroid/graphics/drawable/Animatable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 611
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAllowAnimation:Z

    if-eqz v3, :cond_2

    .line 612
    iget v3, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mCallbackCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mCallbackCount:I

    .line 613
    iget v3, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mCallbackCount:I

    if-nez v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAllowAnimation:Z

    .line 623
    .end local v0    # "a":Landroid/graphics/drawable/Animatable;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    return-object v1

    .line 615
    .restart local v0    # "a":Landroid/graphics/drawable/Animatable;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 617
    instance-of v3, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 618
    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    .line 619
    .local v2, "lastFrame":I
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0    # "a":Landroid/graphics/drawable/Animatable;
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public setAllowAnimation(Z)V
    .locals 1
    .param p1, "allowAnimation"    # Z

    .prologue
    .line 573
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAllowAnimation:Z

    .line 574
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAllowAnimation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mCallbackCount:I

    .line 575
    return-void

    .line 574
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 688
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[animId=0x%08x]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAnimId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
