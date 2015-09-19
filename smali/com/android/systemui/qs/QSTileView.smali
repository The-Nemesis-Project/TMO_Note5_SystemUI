.class public Lcom/android/systemui/qs/QSTileView;
.super Landroid/view/ViewGroup;
.source "QSTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTileView$H;
    }
.end annotation


# static fields
.field private static final BOLD_FOR_ZERO:Landroid/graphics/Typeface;

.field private static final CONDENSED:Landroid/graphics/Typeface;

.field private static final DIFF_VALUE:I = -0x3

.field private static final LINE_RESTRICTION:I = 0xc

.field private static final MIDIUM_DENSITY:I = 0xa0

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-QSTileView"


# instance fields
.field private mCellWidth:I

.field private mClickPrimary:Landroid/view/View$OnClickListener;

.field private mClickSecondary:Landroid/view/View$OnClickListener;

.field protected final mContext:Landroid/content/Context;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDual:Z

.field private mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

.field private final mDualTileVerticalPaddingPx:I

.field private final mHandler:Lcom/android/systemui/qs/QSTileView$H;

.field private final mIcon:Landroid/view/View;

.field private final mIconSizePx:I

.field mIsCoverState:Z

.field private mLabel:Landroid/widget/TextView;

.field private mLongClick:Landroid/view/View$OnLongClickListener;

.field private mPairedDeviceName:Landroid/widget/TextView;

.field private mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mText:Ljava/lang/String;

.field private mTileBackground:Landroid/graphics/drawable/Drawable;

.field private final mTilePaddingBelowIconPx:I

.field private mTilePaddingTopPx:I

.field private final mTileSpacingPx:I

.field private final mTopBackgroundView:Landroid/view/View;

.field private mUseTruncateName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "sans-serif-condensed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/QSTileView;->CONDENSED:Landroid/graphics/Typeface;

    .line 64
    const-string v0, "sec-roboto-light"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/QSTileView;->BOLD_FOR_ZERO:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v1, Lcom/android/systemui/qs/QSTileView$H;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSTileView$H;-><init>(Lcom/android/systemui/qs/QSTileView;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mHandler:Lcom/android/systemui/qs/QSTileView$H;

    .line 100
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSTileView;->mUseTruncateName:Z

    .line 108
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    .line 109
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 110
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0c0323

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSTileView;->mIconSizePx:I

    .line 113
    const v1, 0x7f0c0332

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    .line 114
    const v1, 0x7f0c0330

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingBelowIconPx:I

    .line 115
    const v1, 0x7f0c032c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSTileView;->mDualTileVerticalPaddingPx:I

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->recreateLabel()V

    .line 119
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileView;->setClipChildren(Z)V

    .line 121
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    .line 122
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->createIcon()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    .line 125
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->grayScaleModeEnabled:Z

    if-eqz v1, :cond_0

    const v1, 0x7f020840

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 136
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setClickable(Z)V

    .line 138
    const-string v1, "QSPanel-Tile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QSTileView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->updateTopPadding()V

    .line 141
    return-void

    .line 125
    :cond_0
    const v1, 0x7f02083d

    goto :goto_0
.end method

.method private SetIconTintColor(ILandroid/widget/ImageView;)V
    .locals 10
    .param p1, "value"    # I
    .param p2, "iv"    # Landroid/widget/ImageView;

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const v2, 0x7f0a00cf

    const/high16 v7, 0x437f0000    # 255.0f

    const-wide v8, 0x406fe00000000000L    # 255.0

    const v3, 0x7f0a00af

    .line 828
    const/high16 v0, 0x3f800000    # 1.0f

    .line 829
    .local v0, "alpha":F
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->grayScaleModeEnabled:Z

    .line 830
    .local v1, "grayScale":Z
    packed-switch p1, :pswitch_data_0

    .line 850
    :goto_0
    return-void

    .line 832
    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    ushr-int/lit8 v6, v6, 0x18

    int-to-float v6, v6

    div-float v0, v6, v7

    .line 833
    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v1, :cond_0

    :goto_1
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 835
    float-to-double v6, v0

    if-eqz v1, :cond_1

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    :goto_2
    mul-double/2addr v2, v6

    mul-double/2addr v2, v8

    double-to-int v2, v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0

    :cond_0
    move v2, v3

    .line 833
    goto :goto_1

    :cond_1
    move-wide v2, v4

    .line 835
    goto :goto_2

    .line 838
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    ushr-int/lit8 v4, v4, 0x18

    int-to-float v4, v4

    div-float v0, v4, v7

    .line 839
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v1, :cond_2

    :goto_3
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 841
    float-to-double v4, v0

    if-eqz v1, :cond_3

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    :goto_4
    mul-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-int v2, v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 839
    goto :goto_3

    .line 841
    :cond_3
    const-wide v2, 0x3fd6666666666666L    # 0.35

    goto :goto_4

    .line 844
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0a00b0

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    ushr-int/lit8 v3, v3, 0x18

    int-to-float v3, v3

    div-float v0, v3, v7

    .line 845
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v1, :cond_5

    :goto_5
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 847
    float-to-double v2, v0

    if-eqz v1, :cond_4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    :cond_4
    mul-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-int v2, v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto/16 :goto_0

    .line 845
    :cond_5
    const v2, 0x7f0a00b0

    goto :goto_5

    .line 830
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private adjustPositionForSpecialChar(Ljava/lang/String;I)I
    .locals 13
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 257
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 258
    .local v9, "ch":C
    invoke-static {v9}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v12, v4

    .line 261
    .local v12, "isSpecial":Z
    :goto_0
    if-nez v12, :cond_2

    .line 286
    .end local p2    # "pos":I
    :goto_1
    return p2

    .end local v12    # "isSpecial":Z
    .restart local p2    # "pos":I
    :cond_1
    move v12, v2

    .line 258
    goto :goto_0

    .line 265
    .restart local v12    # "isSpecial":Z
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 266
    .local v3, "strLen":I
    new-array v7, v3, [F

    .line 267
    .local v7, "widths":[F
    new-array v1, v3, [C

    .line 268
    .local v1, "chars":[C
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 269
    .local v0, "p":Landroid/graphics/Paint;
    invoke-static {p1, v2, v3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    move v4, v2

    move v5, v3

    move v6, v2

    move v8, v2

    .line 270
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    .line 272
    move v10, p2

    .line 273
    .local v10, "findIdx":I
    :goto_2
    if-lez v10, :cond_4

    .line 274
    move v11, v10

    .line 275
    .local v11, "idx":I
    :goto_3
    if-ge v11, v3, :cond_3

    aget v2, v7, v11

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3

    aget-char v2, v1, v11

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    .line 276
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 279
    :cond_3
    if-ne v11, v10, :cond_5

    .line 285
    .end local v11    # "idx":I
    :cond_4
    const-string v2, "STATUSBAR-QSTileView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustPositionForSpecialChar() str="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", findIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v10

    .line 286
    goto :goto_1

    .line 282
    .restart local v11    # "idx":I
    :cond_5
    add-int/lit8 v10, v10, -0x1

    .line 283
    goto :goto_2
.end method

.method private static exactly(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 586
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private labelView()Landroid/view/View;
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private static layout(Landroid/view/View;II)V
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I

    .prologue
    .line 647
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 648
    return-void
.end method

.method private newTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    const v2, 0x7f02037b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 557
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method private recreateLabel()V
    .locals 11

    .prologue
    const v10, 0x7f0c0324

    const v6, 0x1020016

    const v9, 0x7f0a004f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 387
    const/4 v1, 0x0

    .line 388
    .local v1, "labelText":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 389
    .local v0, "labelDescription":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 390
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 391
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSTileView;->removeView(Landroid/view/View;)V

    .line 392
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    .line 394
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    if-eqz v4, :cond_1

    .line 395
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSDualTileLabel;->getText()Ljava/lang/String;

    move-result-object v1

    .line 396
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 397
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSTileView;->removeView(Landroid/view/View;)V

    .line 398
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    .line 400
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 401
    .local v3, "res":Landroid/content/res/Resources;
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v4, :cond_5

    .line 402
    new-instance v4, Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/qs/QSDualTileLabel;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    .line 403
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v4, v6}, Lcom/android/systemui/qs/QSDualTileLabel;->setId(I)V

    .line 404
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    const v5, 0x7f020030

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSDualTileLabel;->setBackgroundResource(I)V

    .line 405
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    const v5, 0x7f020398

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSDualTileLabel;->setFirstLineCaret(Landroid/graphics/drawable/Drawable;)V

    .line 406
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSDualTileLabel;->setTextColor(I)V

    .line 407
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualTileVerticalPaddingPx:I

    iget v6, p0, Lcom/android/systemui/qs/QSTileView;->mDualTileVerticalPaddingPx:I

    invoke-virtual {v4, v7, v5, v7, v6}, Lcom/android/systemui/qs/QSDualTileLabel;->setPadding(IIII)V

    .line 408
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    sget-object v5, Lcom/android/systemui/qs/QSTileView;->CONDENSED:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSDualTileLabel;->setTypeface(Landroid/graphics/Typeface;)V

    .line 409
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Lcom/android/systemui/qs/QSDualTileLabel;->setTextSize(IF)V

    .line 411
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/QSDualTileLabel;->setClickable(Z)V

    .line 412
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mClickSecondary:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSDualTileLabel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/QSDualTileLabel;->setFocusable(Z)V

    .line 414
    if-eqz v1, :cond_2

    .line 415
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/QSDualTileLabel;->setText(Ljava/lang/CharSequence;)V

    .line 417
    :cond_2
    if-eqz v0, :cond_3

    .line 418
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/QSDualTileLabel;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 420
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 474
    :cond_4
    :goto_0
    return-void

    .line 423
    :cond_5
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    .line 424
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setId(I)V

    .line 425
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    const-string v5, "sec-roboto-light"

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 426
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 427
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 428
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 434
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 436
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    const v5, 0x7f0c0327

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 437
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 439
    if-eqz v1, :cond_6

    .line 440
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 450
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_4

    .line 451
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    .line 452
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    const v5, 0x7f0a00af

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    const-string v5, "SECRobotoLight Regular"

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 454
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x18

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 455
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 456
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 457
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 458
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    const v5, 0x7f0c0325

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 460
    const v4, 0x7f0c0326

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 461
    .local v2, "padding":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v7, v2, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 462
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 463
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 465
    if-eqz v1, :cond_7

    .line 466
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private setRipple(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 2
    .param p1, "tileBackground"    # Landroid/graphics/drawable/RippleDrawable;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 531
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSTileView;->updateRippleSize(II)V

    .line 534
    :cond_0
    return-void
.end method

.method private updateRippleSize(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 636
    div-int/lit8 v0, p1, 0x2

    .line 637
    .local v0, "cx":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 638
    .local v1, "cy":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ef5c28f    # 0.48f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 639
    .local v2, "rad":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    add-int v6, v0, v2

    add-int v7, v1, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 644
    return-void
.end method

.method private updateTopPadding()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 145
    .local v6, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSTileView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 146
    const v7, 0x7f0c032e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 147
    .local v5, "padding":I
    const v7, 0x7f0c032f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 148
    .local v1, "largePadding":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->fontScale:F

    const v8, 0x3fa66666    # 1.3f

    invoke-static {v7, v9, v8}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v7

    sub-float/2addr v7, v9

    const v8, 0x3e999998    # 0.29999995f

    div-float v0, v7, v8

    .line 150
    .local v0, "largeFactor":F
    const v7, 0x7f0f0016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 151
    .local v2, "mColumns":I
    const v7, 0x7f0c0374

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/lit8 v4, v7, 0x2

    .line 153
    .local v4, "mNotificationPadding":I
    const v7, 0x7f0c031c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 154
    .local v3, "mNotiPanelWidth":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_0

    .line 155
    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 157
    :cond_0
    sub-int/2addr v3, v4

    .line 164
    iput v5, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingTopPx:I

    .line 165
    const v7, 0x7f0c0496

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/qs/QSTileView;->mCellWidth:I

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->requestLayout()V

    .line 167
    return-void
.end method


# virtual methods
.method public changeTextSize(I)V
    .locals 7
    .param p1, "diff"    # I

    .prologue
    .line 190
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 191
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 193
    const-string v1, "STATUSBAR-QSTileView"

    const-string v2, "changeTextSize"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0395

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    int-to-float v4, p1

    iget v5, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v5, v5

    const/high16 v6, 0x43200000    # 160.0f

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 197
    return-void
.end method

.method public checkCoverState(Z)V
    .locals 0
    .param p1, "coverState"    # Z

    .prologue
    .line 853
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTileView;->mIsCoverState:Z

    .line 854
    return-void
.end method

.method protected createIcon()Landroid/view/View;
    .locals 2

    .prologue
    .line 544
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 545
    .local v0, "icon":Landroid/widget/ImageView;
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 546
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 547
    return-object v0
.end method

.method public dynamicallyCutandReduceTextSize(I)V
    .locals 23
    .param p1, "cellWidth"    # I

    .prologue
    .line 290
    const-string v20, "STATUSBAR-QSTileView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "dynamicallyCutandReduceTextSize: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getWidth()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v20, "STATUSBAR-QSTileView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "text: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0324

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v3, v0

    .line 293
    .local v3, "defaultTextSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0328

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v11, v0

    .line 295
    .local v11, "minTextSize":F
    const/4 v9, 0x0

    .line 297
    .local v9, "isFinal":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTileView;->mIsCoverState:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 298
    const-string v20, "STATUSBAR-QSTileView"

    const-string v21, "- mIsCoverState:"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x43200000    # 160.0f

    div-float v21, v21, v22

    mul-float v20, v20, v21

    sub-float v3, v3, v20

    .line 301
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 302
    move v2, v3

    .line 303
    .local v2, "currentTextSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileView;->mText:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileView;->mText:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_1
    const/4 v15, 0x0

    .line 309
    .local v15, "step":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    .line 310
    .local v16, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    .line 312
    .local v14, "paint":Landroid/graphics/Paint;
    const/16 v18, 0x0

    .line 313
    .local v18, "textWidth":I
    const-string v20, "\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 315
    .local v6, "enterIndex":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_4

    .line 316
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 322
    const/4 v7, -0x1

    .line 323
    .local v7, "findIdx":I
    move/from16 v0, p1

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    .line 384
    .end local v7    # "findIdx":I
    :cond_3
    :goto_0
    return-void

    .line 318
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/qs/QSTileView;->dynamicallyReduceTextSize(I)V

    goto :goto_0

    .line 325
    .restart local v7    # "findIdx":I
    :cond_5
    mul-int/lit8 v20, p1, 0x2

    move/from16 v0, v20

    move/from16 v1, v18

    if-gt v0, v1, :cond_6

    if-eqz v9, :cond_10

    .line 326
    :cond_6
    const-string v12, ""

    .line 327
    .local v12, "newStr":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    .line 328
    .local v17, "strLen":I
    const/16 v19, 0x0

    .line 329
    .local v19, "textWidth3":I
    div-int/lit8 v20, v17, 0x2

    add-int/lit8 v8, v20, -0x1

    .line 330
    .local v8, "i":I
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 331
    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_9

    .line 332
    move v7, v8

    .line 354
    :cond_7
    :goto_1
    if-ltz v7, :cond_3

    .line 355
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/qs/QSTileView;->adjustPositionForSpecialChar(Ljava/lang/String;I)I

    move-result v7

    .line 356
    if-eqz v9, :cond_f

    .line 357
    const-string v5, "..."

    .line 358
    .local v5, "ellipsize":Ljava/lang/String;
    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v4, v0

    .line 359
    .local v4, "ellipWidth":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 360
    move v10, v7

    .local v10, "j":I
    :goto_2
    move/from16 v0, v17

    if-gt v10, v0, :cond_8

    .line 361
    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    sub-int v21, p1, v4

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_e

    .line 362
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v10, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 369
    .end local v4    # "ellipWidth":I
    .end local v5    # "ellipsize":Ljava/lang/String;
    .end local v10    # "j":I
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 333
    :cond_9
    move/from16 v0, v19

    move/from16 v1, p1

    if-le v0, v1, :cond_b

    .line 334
    add-int/lit8 v10, v8, -0x1

    .restart local v10    # "j":I
    :goto_4
    if-lez v10, :cond_7

    .line 335
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 336
    move/from16 v0, v19

    move/from16 v1, p1

    if-gt v0, v1, :cond_a

    .line 337
    move v7, v10

    .line 338
    goto/16 :goto_1

    .line 334
    :cond_a
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 342
    .end local v10    # "j":I
    :cond_b
    move v10, v8

    .restart local v10    # "j":I
    :goto_5
    move/from16 v0, v17

    if-gt v10, v0, :cond_7

    .line 343
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 344
    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_c

    .line 345
    move v7, v10

    .line 346
    goto/16 :goto_1

    .line 347
    :cond_c
    move/from16 v0, v19

    move/from16 v1, p1

    if-le v0, v1, :cond_d

    .line 348
    add-int/lit8 v7, v10, -0x1

    .line 349
    goto/16 :goto_1

    .line 342
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 360
    .restart local v4    # "ellipWidth":I
    .restart local v5    # "ellipsize":Ljava/lang/String;
    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 367
    .end local v4    # "ellipWidth":I
    .end local v5    # "ellipsize":Ljava/lang/String;
    .end local v10    # "j":I
    :cond_f
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 373
    .end local v8    # "i":I
    .end local v12    # "newStr":Ljava/lang/String;
    .end local v17    # "strLen":I
    .end local v19    # "textWidth3":I
    :cond_10
    add-int/lit8 v20, v15, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x43200000    # 160.0f

    div-float v21, v21, v22

    mul-float v20, v20, v21

    sub-float v2, v3, v20

    .line 374
    add-int/lit8 v20, v15, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x43200000    # 160.0f

    div-float v21, v21, v22

    mul-float v20, v20, v21

    sub-float v13, v3, v20

    .line 375
    .local v13, "nextTextSize":F
    cmpl-float v20, v2, v11

    if-ltz v20, :cond_11

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 377
    add-int/lit8 v15, v15, 0x1

    .line 378
    cmpg-float v20, v13, v11

    if-gez v20, :cond_11

    .line 379
    const/4 v9, 0x1

    .line 383
    :cond_11
    cmpl-float v20, v2, v11

    if-gez v20, :cond_2

    goto/16 :goto_0
.end method

.method public dynamicallyReduceTextSize(I)V
    .locals 12
    .param p1, "cellWidth"    # I

    .prologue
    const/high16 v11, 0x43200000    # 160.0f

    const/4 v10, 0x0

    .line 218
    const-string v7, "STATUSBAR-QSTileView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dynamicallyReduceTextSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0324

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v0, v7

    .line 220
    .local v0, "defaultTextSize":F
    iget-boolean v7, p0, Lcom/android/systemui/qs/QSTileView;->mIsCoverState:Z

    if-eqz v7, :cond_0

    .line 221
    const-string v7, "STATUSBAR-QSTileView"

    const-string v8, "   mIsCoverState:"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Lcom/android/systemui/qs/QSTileView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v8, v8

    div-float/2addr v8, v11

    mul-float/2addr v7, v8

    sub-float/2addr v0, v7

    .line 224
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v10, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 228
    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mText:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 229
    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/qs/QSTileView;->mText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v7, 0xa

    if-ge v2, v7, :cond_3

    .line 233
    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "str":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 236
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v5, 0x0

    .line 237
    .local v5, "textWidth":I
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 239
    .local v1, "enterIndex":I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_4

    .line 240
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v5, v7

    .line 248
    :cond_2
    :goto_1
    if-lt p1, v5, :cond_5

    .line 254
    .end local v1    # "enterIndex":I
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "textWidth":I
    :cond_3
    return-void

    .line 242
    .restart local v1    # "enterIndex":I
    .restart local v3    # "paint":Landroid/graphics/Paint;
    .restart local v4    # "str":Ljava/lang/String;
    .restart local v5    # "textWidth":I
    :cond_4
    invoke-virtual {v4, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v5, v7

    .line 243
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v6, v7

    .line 244
    .local v6, "textWidth2":I
    if-ge v5, v6, :cond_2

    .line 245
    move v5, v6

    goto :goto_1

    .line 251
    .end local v6    # "textWidth2":I
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    add-int/lit8 v8, v2, 0x1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/systemui/qs/QSTileView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v9, v9

    div-float/2addr v9, v11

    mul-float/2addr v8, v9

    sub-float v8, v0, v8

    invoke-virtual {v7, v10, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public handleIconStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/view/View;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "icon"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 696
    instance-of v3, p2, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 697
    check-cast v1, Landroid/widget/ImageView;

    .line 700
    .local v1, "iv":Landroid/widget/ImageView;
    iget v3, p1, Lcom/android/systemui/qs/QSTile$State;->imageAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 703
    iget-object v3, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-eqz v3, :cond_1

    .line 704
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/qs/QSTileView;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V

    .line 705
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->grayScaleModeEnabled:Z

    if-eqz v3, :cond_0

    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    iget v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/qs/QSTileView;->SetIconTintColor(ILandroid/widget/ImageView;)V

    .line 725
    .end local v1    # "iv":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 706
    .restart local v1    # "iv":Landroid/widget/ImageView;
    .restart local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    :cond_1
    iget v3, p1, Lcom/android/systemui/qs/QSTile$State;->iconId:I

    if-lez v3, :cond_0

    .line 707
    iget v3, p1, Lcom/android/systemui/qs/QSTile$State;->iconId:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 709
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 710
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v3, p1, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 711
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 713
    :cond_2
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v3, :cond_0

    move-object v2, p1

    .line 714
    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    .line 715
    .local v2, "ms":Lcom/android/systemui/qs/QSTile$MultiState;
    iget v3, p1, Lcom/android/systemui/qs/QSTile$State;->tintColor:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 716
    iget v3, p1, Lcom/android/systemui/qs/QSTile$State;->tintColor:I

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/qs/QSTileView;->SetIconTintColor(ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 717
    :cond_3
    iget v3, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v3, v5, :cond_4

    iget v3, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    iget v3, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 718
    :cond_4
    iget v3, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/qs/QSTileView;->SetIconTintColor(ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 720
    :cond_5
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0
.end method

.method protected handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSTileView;->handleIconStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/view/View;)V

    .line 652
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDualTileLabel;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDualTileLabel;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 655
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget v1, p1, Lcom/android/systemui/qs/QSTile$State;->textAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDualTileLabel;->setAlpha(F)V

    .line 684
    :cond_0
    :goto_0
    iget v0, p1, Lcom/android/systemui/qs/QSTile$State;->alpha:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileView;->setAlpha(F)V

    .line 687
    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$State;->textTruncate:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSTileView;->mUseTruncateName:Z

    .line 688
    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$State;->textTruncate:Z

    if-eqz v0, :cond_3

    .line 689
    iget v0, p0, Lcom/android/systemui/qs/QSTileView;->mCellWidth:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileView;->dynamicallyCutandReduceTextSize(I)V

    .line 693
    :goto_1
    return-void

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/qs/QSTile$State;->textAlpha:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 669
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_0

    .line 670
    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$State;->textEllipsis:Z

    if-eqz v0, :cond_2

    .line 671
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 672
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->pairedDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 676
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 677
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 691
    :cond_3
    iget v0, p0, Lcom/android/systemui/qs/QSTileView;->mCellWidth:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileView;->dynamicallyReduceTextSize(I)V

    goto :goto_1
.end method

.method public handleTextSizeChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    const/16 v3, 0xa

    .line 202
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    .line 203
    .local v1, "str":Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "i":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v3, :cond_1

    :cond_0
    const/16 v2, 0xc

    if-gt v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    if-le v2, v3, :cond_2

    .line 205
    :cond_1
    const/4 v2, -0x3

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->changeTextSize(I)V

    .line 206
    const-string v2, "STATUSBAR-QSTileView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeTextSize: length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    return-void

    .line 208
    :cond_2
    const-string v2, "STATUSBAR-QSTileView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0395

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 211
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public handleTextStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/view/View;I)V
    .locals 14
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "text"    # Landroid/view/View;
    .param p3, "cellWidth"    # I

    .prologue
    .line 728
    move-object/from16 v0, p2

    instance-of v10, v0, Landroid/widget/TextView;

    if-eqz v10, :cond_2

    move-object/from16 v9, p2

    .line 729
    check-cast v9, Landroid/widget/TextView;

    .line 730
    .local v9, "tv":Landroid/widget/TextView;
    iget-object v8, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    .line 731
    .local v8, "tmlLabel":Ljava/lang/String;
    const-string v10, "STATUSBAR-QSTileView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dynamicallyReduceTextSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v10, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0324

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v1, v10

    .line 733
    .local v1, "defaultTextSize":F
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 735
    iget-object v10, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 736
    iget-object v10, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v10, 0xa

    if-ge v3, v10, :cond_2

    .line 740
    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 741
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 743
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x0

    .line 744
    .local v6, "textWidth":I
    const-string v10, "\n"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 746
    .local v2, "enterIndex":I
    const/4 v10, -0x1

    if-ne v2, v10, :cond_3

    .line 747
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v6, v10

    .line 755
    :cond_1
    :goto_1
    move/from16 v0, p3

    if-lt v0, v6, :cond_4

    .line 763
    .end local v1    # "defaultTextSize":F
    .end local v2    # "enterIndex":I
    .end local v3    # "i":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "textWidth":I
    .end local v8    # "tmlLabel":Ljava/lang/String;
    .end local v9    # "tv":Landroid/widget/TextView;
    :cond_2
    return-void

    .line 749
    .restart local v1    # "defaultTextSize":F
    .restart local v2    # "enterIndex":I
    .restart local v3    # "i":I
    .restart local v4    # "paint":Landroid/graphics/Paint;
    .restart local v5    # "str":Ljava/lang/String;
    .restart local v6    # "textWidth":I
    .restart local v8    # "tmlLabel":Ljava/lang/String;
    .restart local v9    # "tv":Landroid/widget/TextView;
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v6, v10

    .line 750
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-int v7, v10

    .line 751
    .local v7, "textWidth2":I
    if-ge v6, v7, :cond_1

    .line 752
    move v6, v7

    goto :goto_1

    .line 758
    .end local v7    # "textWidth2":I
    :cond_4
    const/4 v10, 0x0

    add-int/lit8 v11, v3, 0x1

    int-to-float v11, v11

    iget-object v12, p0, Lcom/android/systemui/qs/QSTileView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v12, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v12, v12

    const/high16 v13, 0x43200000    # 160.0f

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    sub-float v11, v1, v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 739
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "clickPrimary"    # Landroid/view/View$OnClickListener;
    .param p2, "clickSecondary"    # Landroid/view/View$OnClickListener;
    .param p3, "longClick"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    .line 539
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileView;->mClickSecondary:Landroid/view/View$OnClickListener;

    .line 540
    iput-object p3, p0, Lcom/android/systemui/qs/QSTileView;->mLongClick:Landroid/view/View$OnLongClickListener;

    .line 541
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->updateTopPadding()V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0324

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSDualTileLabel;->setTextSize(IF)V

    .line 187
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v8, 0x0

    .line 591
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getMeasuredWidth()I

    move-result v4

    .line 592
    .local v4, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getMeasuredHeight()I

    move-result v0

    .line 594
    .local v0, "h":I
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    iget v6, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    invoke-static {v5, v8, v6}, Lcom/android/systemui/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 597
    const/4 v3, 0x0

    .line 599
    .local v3, "top":I
    iget v5, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingTopPx:I

    add-int/2addr v3, v5

    .line 601
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v4, v5

    div-int/lit8 v1, v5, 0x2

    .line 602
    .local v1, "iconLeft":I
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-static {v5, v1, v3}, Lcom/android/systemui/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 603
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v5, :cond_0

    .line 604
    invoke-direct {p0, v4, v0}, Lcom/android/systemui/qs/QSTileView;->updateRippleSize(II)V

    .line 607
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 610
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 611
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v5, :cond_4

    .line 612
    sub-int v5, v0, v3

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingBelowIconPx:I

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 613
    .local v2, "labeltop":I
    add-int/2addr v3, v2

    .line 614
    const-string v5, "QSpanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "label top:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .end local v2    # "labeltop":I
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v5, :cond_2

    .line 626
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->labelView()Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v8, v3}, Lcom/android/systemui/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 628
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v5, :cond_3

    .line 629
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->labelView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 630
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    invoke-static {v5, v8, v3}, Lcom/android/systemui/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 632
    :cond_3
    return-void

    .line 616
    :cond_4
    iget v5, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingBelowIconPx:I

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, -0x80000000

    .line 566
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 567
    .local v3, "w":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 568
    .local v0, "h":I
    iget v4, p0, Lcom/android/systemui/qs/QSTileView;->mIconSizePx:I

    invoke-static {v4}, Lcom/android/systemui/qs/QSTileView;->exactly(I)I

    move-result v2

    .line 569
    .local v2, "iconSpec":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    .line 570
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->labelView()Landroid/view/View;

    move-result-object v4

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/view/View;->measure(II)V

    .line 572
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 573
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mPairedDeviceName:Landroid/widget/TextView;

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/widget/TextView;->measure(II)V

    .line 576
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v4, :cond_1

    .line 579
    :cond_1
    iget v4, p0, Lcom/android/systemui/qs/QSTileView;->mIconSizePx:I

    iget v5, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingBelowIconPx:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingTopPx:I

    add-int/2addr v4, v5

    invoke-static {v4}, Lcom/android/systemui/qs/QSTileView;->exactly(I)I

    move-result v1

    .line 581
    .local v1, "heightSpec":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v4, p1, v1}, Landroid/view/View;->measure(II)V

    .line 582
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/qs/QSTileView;->setMeasuredDimension(II)V

    .line 583
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 798
    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mText:Ljava/lang/String;

    .line 799
    const-string v0, "STATUSBAR-QSTileView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mHandler:Lcom/android/systemui/qs/QSTileView$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTileView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 801
    return-void
.end method

.method public setDual(Z)V
    .locals 6
    .param p1, "dual"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 477
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eq p1, v1, :cond_2

    move v0, v2

    .line 478
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    .line 479
    if-eqz v0, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->recreateLabel()V

    .line 483
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V

    .line 502
    :cond_1
    if-eqz p1, :cond_3

    .line 503
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileView;->setClickable(Z)V

    .line 506
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setImportantForAccessibility(I)V

    .line 507
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 516
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 517
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setFocusable(Z)V

    .line 522
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mLongClick:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 523
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setLongClickable(Z)V

    .line 527
    return-void

    .end local v0    # "changed":Z
    :cond_2
    move v0, v3

    .line 477
    goto :goto_0

    .line 509
    .restart local v0    # "changed":Z
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 511
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mLongClick:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 513
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setImportantForAccessibility(I)V

    .line 514
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V
    .locals 7
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    const v6, 0x7f0e0067

    .line 766
    iget-object v4, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 767
    iget-object v4, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {p1, v6, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 769
    iget-object v4, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-eqz v4, :cond_2

    iget-object v4, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 770
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v1, :cond_0

    iget-boolean v4, p2, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    if-eqz v4, :cond_0

    .line 771
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 773
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 774
    instance-of v4, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v4, :cond_3

    .line 775
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    .line 776
    check-cast v4, Landroid/graphics/drawable/Animatable;

    invoke-interface {v4}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 778
    instance-of v4, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 779
    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    .line 780
    .local v2, "lastFrame":I
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 795
    .end local v2    # "lastFrame":I
    :cond_1
    :goto_1
    return-void

    .line 769
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 784
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v4, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-eqz v4, :cond_1

    iget-object v4, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    instance-of v4, v4, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    if-eqz v4, :cond_1

    .line 785
    iget-object v4, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    check-cast v4, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->getAllowAnimation()Z

    move-result v3

    .line 786
    .local v3, "mAllowAnim":Z
    iget-object v4, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    check-cast v4, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSTile$AnimationIcon;->getAnimator(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    .line 787
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_1

    .line 788
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 789
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 791
    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_1
.end method

.method public setTileFontSizeForApn(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mHandler:Lcom/android/systemui/qs/QSTileView$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTileView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 805
    return-void
.end method

.method public useTruncatedName()Z
    .locals 1

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileView;->mUseTruncateName:Z

    return v0
.end method
