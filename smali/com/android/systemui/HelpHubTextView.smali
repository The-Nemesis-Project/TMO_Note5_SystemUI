.class public final Lcom/android/systemui/HelpHubTextView;
.super Landroid/widget/TextView;
.source "HelpHubTextView.java"


# static fields
.field private static final ICON_HTML_END:Ljava/lang/String; = "\"/>"

.field private static final ICON_HTML_START:Ljava/lang/String; = "<img src=\"@drawable/"

.field static bNewLineCheck:Z

.field static bNewLineOrentation:Z

.field static finalString:Ljava/lang/String;

.field static mNewLineString:Ljava/lang/String;

.field static mShowIntegerString:Ljava/lang/String;

.field static mShowString:Ljava/lang/String;


# instance fields
.field currentDrawable:Lcom/android/systemui/HelpHubDrawable;

.field private mAddItemIds:[I

.field private final mContext:Landroid/content/Context;

.field private final mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/HelpHubDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mImageYDiff:F

.field private final mImgGetter:Landroid/text/Html$ImageGetter;

.field private mInnerBitmapYDiff:I

.field private mInsideImageGravity:I

.field private mInsideImageHeight:F

.field private mInsideImagePadding:Landroid/graphics/Rect;

.field private mInsideImageWidth:F

.field mStorevalue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/HelpHubTextView;->mImageYDiff:F

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    .line 58
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageGravity:I

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mStorevalue:Ljava/lang/String;

    .line 286
    new-instance v0, Lcom/android/systemui/HelpHubTextView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/HelpHubTextView$1;-><init>(Lcom/android/systemui/HelpHubTextView;)V

    iput-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mImgGetter:Landroid/text/Html$ImageGetter;

    .line 86
    iput-object p1, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/HelpHubTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/HelpHubTextView;->mImageYDiff:F

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    .line 58
    const/16 v1, 0x11

    iput v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageGravity:I

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mStorevalue:Ljava/lang/String;

    .line 286
    new-instance v1, Lcom/android/systemui/HelpHubTextView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/HelpHubTextView$1;-><init>(Lcom/android/systemui/HelpHubTextView;)V

    iput-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mImgGetter:Landroid/text/Html$ImageGetter;

    .line 101
    iput-object p1, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 105
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/HelpHubTextView;->bNewLineOrentation:Z

    .line 111
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/systemui/HelpHubTextView;->initSelfResources(Landroid/util/AttributeSet;)V

    .line 112
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/HelpHubTextView;->CheckInteger(Ljava/lang/String;Landroid/util/AttributeSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-direct {p0, p2}, Lcom/android/systemui/HelpHubTextView;->IntegerinitSelfResources(Landroid/util/AttributeSet;)V

    .line 114
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/HelpHubTextView;->CheckString(Ljava/lang/String;Landroid/util/AttributeSet;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-direct {p0, p2}, Lcom/android/systemui/HelpHubTextView;->StringinitSelfResources(Landroid/util/AttributeSet;)V

    .line 116
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/HelpHubTextView;->CheckNewLine(Ljava/lang/String;Landroid/util/AttributeSet;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    invoke-direct {p0, p2}, Lcom/android/systemui/HelpHubTextView;->NewLineinitSelfResources(Landroid/util/AttributeSet;)V

    .line 119
    :cond_2
    return-void

    .line 107
    :cond_3
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/HelpHubTextView;->bNewLineOrentation:Z

    goto :goto_0
.end method

.method private Changespecialchartointeger(Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x0

    .line 336
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v7, p2, v8, v9, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 341
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v7, 0x9

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 342
    .local v2, "id":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 344
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, "mStrings":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 347
    .local v3, "index":I
    const-string v5, "$d"

    .line 348
    .local v5, "newTemplate":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 349
    .local v6, "pos":I
    :goto_0
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 351
    .local v1, "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v7, v6, -0x2

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    array-length v7, v4

    if-ge v3, v7, :cond_0

    .line 353
    aget-object v7, v4, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_0
    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 359
    invoke-virtual {p0, p1}, Lcom/android/systemui/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    add-int/lit8 v3, v3, 0x1

    .line 361
    goto :goto_0

    .line 363
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private Changespecialchartostring(Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x0

    .line 392
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v7, p2, v8, v9, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 395
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v7, 0xa

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 396
    .local v2, "id":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 398
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 400
    .local v4, "mStrings":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 401
    .local v3, "index":I
    const-string v5, "$s"

    .line 402
    .local v5, "newTemplate":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 403
    .local v6, "pos":I
    :goto_0
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 405
    .local v1, "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v7, v6, -0x2

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    array-length v7, v4

    if-ge v3, v7, :cond_0

    .line 407
    aget-object v7, v4, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :cond_0
    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 412
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/systemui/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    add-int/lit8 v3, v3, 0x1

    .line 415
    goto :goto_0

    .line 416
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private CheckInteger(Ljava/lang/String;Landroid/util/AttributeSet;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 310
    iget-object v3, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v3, p2, v4, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 312
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 314
    .local v1, "iconsArrayId":I
    if-lez v1, :cond_1

    .line 315
    invoke-direct {p0, p1}, Lcom/android/systemui/HelpHubTextView;->checkspecialcharacterforinteger(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/HelpHubTextView;->Changespecialchartointeger(Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 318
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 319
    const/4 v2, 0x1

    .line 322
    :goto_0
    return v2

    .line 321
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private CheckNewLine(Ljava/lang/String;Landroid/util/AttributeSet;)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 419
    iget-object v4, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v4, p2, v5, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 421
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 423
    .local v1, "iconsArrayId":I
    if-lez v1, :cond_0

    .line 424
    sput-boolean v2, Lcom/android/systemui/HelpHubTextView;->bNewLineCheck:Z

    .line 425
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 430
    :goto_0
    return v2

    .line 428
    :cond_0
    sput-boolean v3, Lcom/android/systemui/HelpHubTextView;->bNewLineCheck:Z

    .line 429
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move v2, v3

    .line 430
    goto :goto_0
.end method

.method private CheckString(Ljava/lang/String;Landroid/util/AttributeSet;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 366
    iget-object v3, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v3, p2, v4, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 368
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 370
    .local v1, "iconsArrayId":I
    if-lez v1, :cond_1

    .line 371
    invoke-direct {p0, p1}, Lcom/android/systemui/HelpHubTextView;->checkspecialcharacterforstring(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/HelpHubTextView;->Changespecialchartostring(Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 374
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 375
    const/4 v2, 0x1

    .line 378
    :goto_0
    return v2

    .line 377
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private IntegerHtmlText(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 464
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 467
    .local v1, "textResourceId":I
    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {p0, v1}, Lcom/android/systemui/HelpHubTextView;->setText(I)V

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    if-eqz v2, :cond_1

    .line 476
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->applyInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    :cond_1
    invoke-static {v0, v3, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    return-void
.end method

.method private IntegerinitSelfResources(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 222
    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v2, p1, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 225
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/HelpHubTextView;->mShowIntegerString:Ljava/lang/String;

    .line 228
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 230
    .local v1, "iconId":I
    if-lez v1, :cond_0

    .line 231
    const/4 v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    .line 232
    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    aput v1, v2, v4

    .line 236
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->IntegerHtmlText(Landroid/content/res/TypedArray;)V

    .line 238
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    return-void
.end method

.method private NewLineHtmlText(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 508
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 511
    .local v1, "textResourceId":I
    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {p0, v1}, Lcom/android/systemui/HelpHubTextView;->setText(I)V

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    if-eqz v2, :cond_1

    .line 520
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->applyNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    :cond_1
    invoke-static {v0, v3, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    return-void
.end method

.method private NewLineinitSelfResources(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 267
    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v2, p1, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 270
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/HelpHubTextView;->mNewLineString:Ljava/lang/String;

    .line 273
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 275
    .local v1, "iconId":I
    if-lez v1, :cond_0

    .line 276
    const/4 v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    .line 277
    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    aput v1, v2, v4

    .line 281
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->NewLineHtmlText(Landroid/content/res/TypedArray;)V

    .line 283
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    return-void
.end method

.method private StringHtmlText(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 486
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 489
    .local v1, "textResourceId":I
    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {p0, v1}, Lcom/android/systemui/HelpHubTextView;->setText(I)V

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    if-eqz v2, :cond_1

    .line 498
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->applyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    :cond_1
    invoke-static {v0, v3, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    return-void
.end method

.method private StringinitSelfResources(Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 243
    iget-object v4, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 244
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 246
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v4, p1, v5, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 249
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/HelpHubTextView;->mShowString:Ljava/lang/String;

    .line 252
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 254
    .local v2, "iconId":I
    if-lez v2, :cond_0

    .line 255
    const/4 v4, 0x1

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    .line 256
    iget-object v4, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    aput v2, v4, v6

    .line 260
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->StringHtmlText(Landroid/content/res/TypedArray;)V

    .line 262
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 263
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/HelpHubTextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/HelpHubTextView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/HelpHubTextView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/HelpHubTextView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/HelpHubTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/HelpHubTextView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/HelpHubTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/HelpHubTextView;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/HelpHubTextView;->mInnerBitmapYDiff:I

    return v0
.end method

.method private applyImages(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 534
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 535
    .local v9, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 537
    .local v2, "index":I
    const-string v10, "%s"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 539
    .local v5, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 540
    .local v3, "m":Ljava/util/regex/Matcher;
    iget-object v10, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 541
    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    .line 543
    .local v8, "result":Z
    :goto_0
    if-eqz v8, :cond_1

    .line 544
    iget-object v10, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    array-length v10, v10

    if-ge v2, v10, :cond_0

    .line 545
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<img src=\"@drawable/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    aget v11, v11, v2

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"/>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 552
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 553
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    goto :goto_0

    .line 557
    :cond_1
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 558
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    .line 561
    const-string v4, "$s"

    .line 562
    .local v4, "newTemplate":Ljava/lang/String;
    sget-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 563
    .local v6, "pos":I
    :goto_1
    const/4 v10, -0x1

    if-eq v6, v10, :cond_2

    .line 564
    sget-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    add-int/lit8 v11, v6, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v10, v10, -0x30

    add-int/lit8 v1, v10, -0x1

    .line 565
    .local v1, "image":I
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 566
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v12, v6, -0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    const-string v10, "<img src=\"@drawable/"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    iget-object v10, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    aget v10, v10, v1

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const-string v10, "\"/>"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    sget-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    add-int/lit8 v11, v6, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    .line 572
    sget-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 573
    goto :goto_1

    .line 575
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "image":I
    :cond_2
    sget-object v10, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    return-object v10
.end method

.method private applyInteger(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 579
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 581
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 583
    .local v0, "index":I
    const-string v5, "%d"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 585
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 587
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 590
    .local v3, "result":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 591
    iget-object v5, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 592
    sget-object v5, Lcom/android/systemui/HelpHubTextView;->mShowIntegerString:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 595
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 596
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    goto :goto_0

    .line 601
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 602
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    .line 605
    sget-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    const-string v6, "[\n]"

    const-string v7, "<br>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    .line 607
    sget-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    return-object v5
.end method

.method private applyNewLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 643
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 645
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 647
    .local v2, "locale":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const-string v7, "ko"

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 649
    .local v0, "KOREA":Ljava/lang/String;
    const/4 v1, 0x0

    .line 651
    .local v1, "index":I
    const-string v7, " "

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 653
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 655
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    .line 658
    .local v5, "result":Z
    :goto_0
    if-eqz v5, :cond_3

    .line 659
    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    array-length v7, v7

    if-ge v1, v7, :cond_1

    .line 660
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/systemui/HelpHubTextView;->bNewLineOrentation:Z

    if-eqz v7, :cond_2

    .line 661
    :cond_0
    const-string v7, " "

    invoke-virtual {v3, v6, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 668
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 669
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    goto :goto_0

    .line 663
    :cond_2
    const-string v7, "<BR>"

    invoke-virtual {v3, v6, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 674
    :cond_3
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 675
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    .line 680
    sget-object v7, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    return-object v7
.end method

.method private applyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 611
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 613
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 615
    .local v0, "index":I
    const-string v5, "%s"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 617
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 619
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 622
    .local v3, "result":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 623
    iget-object v5, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 624
    sget-object v5, Lcom/android/systemui/HelpHubTextView;->mShowString:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 627
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 628
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    goto :goto_0

    .line 633
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 634
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    .line 637
    sget-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    const-string v6, "[\n]"

    const-string v7, "<br>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    .line 639
    sget-object v5, Lcom/android/systemui/HelpHubTextView;->finalString:Ljava/lang/String;

    return-object v5
.end method

.method private checkspecialcharacterforinteger(Ljava/lang/String;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 326
    const-string v0, "$d"

    .line 327
    .local v0, "newTemplate":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 328
    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 329
    const/4 v2, 0x1

    .line 331
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkspecialcharacterforstring(Ljava/lang/String;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 382
    const-string v0, "$s"

    .line 383
    .local v0, "newTemplate":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 384
    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 385
    const/4 v2, 0x1

    .line 387
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static countOccurrences(Ljava/lang/String;C)I
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "value"    # C

    .prologue
    .line 883
    const/4 v0, 0x0

    .line 884
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 885
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_0

    .line 886
    add-int/lit8 v0, v0, 0x1

    .line 884
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 889
    :cond_1
    return v0
.end method

.method private initHtmlText(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v2, 0x0

    .line 440
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 443
    .local v1, "textResourceId":I
    if-eqz v1, :cond_0

    .line 445
    invoke-virtual {p0, v1}, Lcom/android/systemui/HelpHubTextView;->setText(I)V

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    if-eqz v2, :cond_1

    .line 452
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->applyImages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    :cond_1
    const-string v2, "[\n]"

    const-string v3, "<br>"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mImgGetter:Landroid/text/Html$ImageGetter;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    return-void
.end method

.method private initImgPadding(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v2, 0x0

    .line 684
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    .line 687
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v0, v1

    .line 690
    .local v0, "padding":I
    if-eqz v0, :cond_0

    .line 691
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 694
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v0, v1

    .line 697
    if-eqz v0, :cond_1

    .line 698
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 701
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v0, v1

    .line 704
    if-eqz v0, :cond_2

    .line 705
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 707
    :cond_2
    return-void
.end method

.method private initSelfResources(Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v10, -0x40800000    # -1.0f

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 128
    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->density:F

    .line 130
    .local v1, "density":F
    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0473

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mInnerBitmapYDiff:I

    .line 132
    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/R$styleable;->HelpHubTextView:[I

    invoke-virtual {v6, p1, v7, v8, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 136
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    .line 138
    iget v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_0

    .line 141
    iget v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    div-float/2addr v6, v1

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    .line 145
    :cond_0
    const/4 v6, 0x6

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    .line 147
    iget v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_1

    .line 150
    iget v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    div-float/2addr v6, v1

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    .line 153
    :cond_1
    const/16 v6, 0xc

    const/16 v7, 0x11

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageGravity:I

    .line 156
    const/16 v6, 0x8

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/HelpHubTextView;->mImageYDiff:F

    .line 158
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 161
    .local v4, "iconsArrayId":I
    if-lez v4, :cond_4

    .line 162
    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 165
    .local v5, "iconsTypedArray":Landroid/content/res/TypedArray;
    if-eqz v5, :cond_3

    .line 166
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 167
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    .line 169
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 170
    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    invoke-virtual {v5, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v6, v2

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    .end local v5    # "iconsTypedArray":Landroid/content/res/TypedArray;
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->initImgPadding(Landroid/content/res/TypedArray;)V

    .line 193
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->initHtmlText(Landroid/content/res/TypedArray;)V

    .line 195
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    return-void

    .line 176
    :cond_4
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 178
    .local v3, "iconId":I
    if-lez v3, :cond_3

    .line 179
    const/4 v6, 0x1

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    .line 180
    iget-object v6, p0, Lcom/android/systemui/HelpHubTextView;->mAddItemIds:[I

    aput v3, v6, v8

    goto :goto_1
.end method

.method private invalidateDrawables()V
    .locals 7

    .prologue
    const/16 v6, 0x15

    const/4 v5, 0x0

    .line 710
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 714
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_4

    .line 715
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/HelpHubDrawable;

    iput-object v1, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    .line 717
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    if-eqz v1, :cond_1

    .line 718
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    iget v2, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageGravity:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setGravity(I)V

    .line 720
    iget v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_2

    .line 721
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    iget v2, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setWidth(I)V

    .line 728
    :goto_1
    iget v1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_3

    .line 729
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    iget v2, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setHeight(I)V

    .line 836
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v6, :cond_0

    .line 837
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getLineHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {v3}, Lcom/android/systemui/HelpHubDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getTextSize()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {v4}, Lcom/android/systemui/HelpHubDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/HelpHubTextView;->mImageYDiff:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setBitmapY(F)V

    .line 839
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setPadding(Landroid/graphics/Rect;)V

    .line 842
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 724
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {v2}, Lcom/android/systemui/HelpHubDrawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setWidth(I)V

    goto :goto_1

    .line 734
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    iget-object v2, p0, Lcom/android/systemui/HelpHubTextView;->currentDrawable:Lcom/android/systemui/HelpHubDrawable;

    invoke-virtual {v2}, Lcom/android/systemui/HelpHubDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/HelpHubDrawable;->setHeight(I)V

    goto :goto_2

    .line 847
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/HelpHubTextView;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_5

    .line 848
    invoke-virtual {p0}, Lcom/android/systemui/HelpHubTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/HelpHubTextView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/HelpHubTextView$2;-><init>(Lcom/android/systemui/HelpHubTextView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 880
    :cond_5
    return-void
.end method


# virtual methods
.method public getImgGravity()I
    .locals 1

    .prologue
    .line 940
    iget v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageGravity:I

    return v0
.end method

.method public getImgHeight()I
    .locals 1

    .prologue
    .line 931
    iget v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public getImgWidth()I
    .locals 1

    .prologue
    .line 922
    iget v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    float-to-int v0, v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 945
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 946
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/HelpHubTextView;->bNewLineOrentation:Z

    .line 950
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mStorevalue:Ljava/lang/String;

    .line 952
    .local v0, "text":Ljava/lang/String;
    sget-boolean v1, Lcom/android/systemui/HelpHubTextView;->bNewLineCheck:Z

    if-eqz v1, :cond_0

    .line 953
    invoke-direct {p0, v0}, Lcom/android/systemui/HelpHubTextView;->applyNewLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 954
    invoke-static {v0, v3, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/HelpHubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 957
    return-void

    .line 948
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/HelpHubTextView;->bNewLineOrentation:Z

    goto :goto_0
.end method

.method public setImgGravity(I)V
    .locals 0
    .param p1, "g"    # I

    .prologue
    .line 935
    iput p1, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageGravity:I

    .line 936
    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    .line 937
    return-void
.end method

.method public setImgHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 926
    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageHeight:F

    .line 927
    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    .line 928
    return-void
.end method

.method public setImgPadding(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 893
    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    .line 894
    return-void
.end method

.method public setImgPaddingBottom(I)V
    .locals 1
    .param p1, "bottom"    # I

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 913
    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    .line 914
    return-void
.end method

.method public setImgPaddingLeft(I)V
    .locals 1
    .param p1, "left"    # I

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 898
    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    .line 899
    return-void
.end method

.method public setImgPaddingRight(I)V
    .locals 1
    .param p1, "right"    # I

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 903
    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    .line 904
    return-void
.end method

.method public setImgPaddingTop(I)V
    .locals 1
    .param p1, "top"    # I

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImagePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 908
    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    .line 909
    return-void
.end method

.method public setImgWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 917
    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/HelpHubTextView;->mInsideImageWidth:F

    .line 918
    invoke-direct {p0}, Lcom/android/systemui/HelpHubTextView;->invalidateDrawables()V

    .line 919
    return-void
.end method
