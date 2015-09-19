.class public abstract Lcom/android/keyguard/KeyguardPinBasedInputView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPinBasedInputView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardPinBasedInputView"

.field private static mHasWindowFocus:Z

.field private static mIsPaused:Z


# instance fields
.field private doVerifyPasswordRunnable:Ljava/lang/Runnable;

.field private isSupportMobileKeyboard:Z

.field protected mArrKeyPadIds:[I

.field private mButton0:Lcom/android/keyguard/NumPadKey;

.field private mButton1:Lcom/android/keyguard/NumPadKey;

.field private mButton2:Lcom/android/keyguard/NumPadKey;

.field private mButton3:Lcom/android/keyguard/NumPadKey;

.field private mButton4:Lcom/android/keyguard/NumPadKey;

.field private mButton5:Lcom/android/keyguard/NumPadKey;

.field private mButton6:Lcom/android/keyguard/NumPadKey;

.field private mButton7:Lcom/android/keyguard/NumPadKey;

.field private mButton8:Lcom/android/keyguard/NumPadKey;

.field private mButton9:Lcom/android/keyguard/NumPadKey;

.field private mCurrentMobileKeyboard:I

.field private mDeleteButton:Landroid/widget/ImageButton;

.field private mDivider:Landroid/view/View;

.field private mDividerBottom:Landroid/view/View;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field protected mKeyboardEntry:Landroid/widget/TextView;

.field private mKeyboardView:Landroid/widget/LinearLayout;

.field private mLeftArrowImage:Landroid/widget/ImageButton;

.field private mMaxLength:I

.field protected mMobileKeyboard:Z

.field private mNumericThemeTypeface:Landroid/graphics/Typeface;

.field private mNumpadkeyView:Landroid/widget/LinearLayout;

.field private mOkButton:Landroid/view/View;

.field private mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

.field private mOnehandClickLitener:Landroid/view/View$OnClickListener;

.field protected mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

.field private mPinViewFrame:Landroid/widget/FrameLayout;

.field private mRightArrowImage:Landroid/widget/ImageButton;

.field private mRightPressed:Z

.field private mRippleDeleteButton:Landroid/graphics/drawable/RippleDrawable;

.field private mRippleOkButton:Landroid/graphics/drawable/RippleDrawable;

.field private mSecPinArea:Landroid/view/View;

.field private final mShowImeAtScreenOn:Z

.field private final mShowImeRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    sput-boolean v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mHasWindowFocus:Z

    .line 89
    sput-boolean v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mIsPaused:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumericThemeTypeface:Landroid/graphics/Typeface;

    .line 82
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->isSupportMobileKeyboard:Z

    .line 91
    iput v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    .line 99
    const/16 v2, 0xd

    new-array v2, v2, [I

    sget v3, Lcom/android/keyguard/R$id;->key0:I

    aput v3, v2, v1

    sget v3, Lcom/android/keyguard/R$id;->key1:I

    aput v3, v2, v0

    const/4 v3, 0x2

    sget v4, Lcom/android/keyguard/R$id;->key2:I

    aput v4, v2, v3

    const/4 v3, 0x3

    sget v4, Lcom/android/keyguard/R$id;->key3:I

    aput v4, v2, v3

    const/4 v3, 0x4

    sget v4, Lcom/android/keyguard/R$id;->key4:I

    aput v4, v2, v3

    const/4 v3, 0x5

    sget v4, Lcom/android/keyguard/R$id;->key5:I

    aput v4, v2, v3

    const/4 v3, 0x6

    sget v4, Lcom/android/keyguard/R$id;->key6:I

    aput v4, v2, v3

    const/4 v3, 0x7

    sget v4, Lcom/android/keyguard/R$id;->key7:I

    aput v4, v2, v3

    const/16 v3, 0x8

    sget v4, Lcom/android/keyguard/R$id;->key8:I

    aput v4, v2, v3

    const/16 v3, 0x9

    sget v4, Lcom/android/keyguard/R$id;->key9:I

    aput v4, v2, v3

    const/16 v3, 0xa

    sget v4, Lcom/android/keyguard/R$id;->key_enter:I

    aput v4, v2, v3

    const/16 v3, 0xb

    sget v4, Lcom/android/keyguard/R$id;->delete_button:I

    aput v4, v2, v3

    const/16 v3, 0xc

    sget v4, Lcom/android/keyguard/R$id;->key_enter_text:I

    aput v4, v2, v3

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mArrKeyPadIds:[I

    .line 359
    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$1;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->doVerifyPasswordRunnable:Ljava/lang/Runnable;

    .line 585
    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputView$10;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$10;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 688
    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputView$12;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$12;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    .line 812
    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputView$13;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView$13;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    .line 110
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->isSupportMobileKeyboard:Z

    .line 111
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->isSupportMobileKeyboard:Z

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    .line 112
    const-string v0, "KeyguardPinBasedInputView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMobileKeyboard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->kg_show_ime_at_screen_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mShowImeAtScreenOn:Z

    .line 115
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    .line 116
    return-void

    :cond_0
    move v0, v1

    .line 111
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardPinBasedInputView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardPinBasedInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputView;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightPressed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardPinBasedInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightPressed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardPinBasedInputView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->movePinLock(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardPinBasedInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardPinBasedInputView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardPinBasedInputView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private chooseKeyboardType()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 413
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_3

    .line 414
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 417
    sget v0, Lcom/android/keyguard/R$id;->keyboardentry:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    .line 419
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumpadkeyView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumpadkeyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 428
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 431
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 434
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$2;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$3;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 460
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 582
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(Z)V

    .line 583
    return-void

    .line 462
    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 463
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumpadkeyView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 464
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumpadkeyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 465
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 466
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 468
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/PasswordTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 473
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    iget v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMaxLength:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setMaxLength(I)V

    .line 476
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/PasswordTextView;->setSelected(Z)V

    .line 479
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$4;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$5;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 500
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 501
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$6;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 515
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$drawable;->lock_ripple_drawable:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRippleDeleteButton:Landroid/graphics/drawable/RippleDrawable;

    .line 516
    sget v0, Lcom/android/keyguard/R$id;->delete_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    .line 517
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_9

    .line 518
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRippleDeleteButton:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 519
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->theme_use_image_delete_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 522
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    sget v1, Lcom/android/keyguard/R$drawable;->theme_pin_delete_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 524
    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isHintMessageArea()Z

    move-result v0

    if-nez v0, :cond_8

    .line 525
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 527
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$7;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$8;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 547
    :cond_9
    sget v0, Lcom/android/keyguard/R$id;->key0:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Lcom/android/keyguard/NumPadKey;

    .line 548
    sget v0, Lcom/android/keyguard/R$id;->key1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Lcom/android/keyguard/NumPadKey;

    .line 549
    sget v0, Lcom/android/keyguard/R$id;->key2:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Lcom/android/keyguard/NumPadKey;

    .line 550
    sget v0, Lcom/android/keyguard/R$id;->key3:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Lcom/android/keyguard/NumPadKey;

    .line 551
    sget v0, Lcom/android/keyguard/R$id;->key4:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Lcom/android/keyguard/NumPadKey;

    .line 552
    sget v0, Lcom/android/keyguard/R$id;->key5:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Lcom/android/keyguard/NumPadKey;

    .line 553
    sget v0, Lcom/android/keyguard/R$id;->key6:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Lcom/android/keyguard/NumPadKey;

    .line 554
    sget v0, Lcom/android/keyguard/R$id;->key7:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Lcom/android/keyguard/NumPadKey;

    .line 555
    sget v0, Lcom/android/keyguard/R$id;->key8:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Lcom/android/keyguard/NumPadKey;

    .line 556
    sget v0, Lcom/android/keyguard/R$id;->key9:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Lcom/android/keyguard/NumPadKey;

    .line 558
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    .line 560
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 561
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v1, Lcom/android/keyguard/KeyguardPinBasedInputView$9;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$9;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0
.end method

.method private initOnehandPINView()V
    .locals 3

    .prologue
    .line 724
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isOnehandMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    :goto_0
    return-void

    .line 725
    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->onehand_left_arrow_pin:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    .line 726
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_accessibility_one_hand_operation_left_handed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 731
    :cond_1
    sget v0, Lcom/android/keyguard/R$id;->onehand_right_arrow_pin:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    .line 732
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 733
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->keyguard_accessibility_one_hand_operation_right_handed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 737
    :cond_2
    sget v0, Lcom/android/keyguard/R$id;->onehand_numpadkey_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    goto :goto_0
.end method

.method private isOnehandMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 762
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    :cond_0
    :goto_0
    return v0

    .line 765
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private movePinLock(Z)V
    .locals 4
    .param p1, "isRightPressed"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 772
    if-eqz p1, :cond_3

    .line 773
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 774
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 776
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 778
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 779
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const v1, 0x800005

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 780
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 781
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_one_hand_pin_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 782
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    :goto_0
    return-void

    .line 785
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 786
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 788
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 790
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 791
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const v1, 0x800003

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 792
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_one_hand_pin_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 793
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 794
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 168
    :cond_0
    return-void
.end method

.method private performNumberClick(I)V
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 171
    packed-switch p1, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 173
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 176
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 179
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 182
    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 185
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 188
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 191
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 194
    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 197
    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 200
    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private registerOnehandAnyScreenObserver()V
    .locals 4

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 802
    return-void
.end method

.method private unregisterOnehandAnyScreenObserver()V
    .locals 4

    .prologue
    .line 806
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :goto_0
    return-void

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "KeyguardPinBasedInputView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PIN Onehand Observer is not registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ripple"    # Landroid/graphics/drawable/RippleDrawable;

    .prologue
    .line 401
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 403
    .local v0, "cx":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 407
    .local v1, "cy":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->num_pad_ripple_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v2, v4

    .line 408
    .local v2, "rad":I
    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int v5, v0, v2

    add-int v6, v1, v2

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 410
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    .end local v2    # "rad":I
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 388
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected getEntryTextview()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 223
    sget v0, Lcom/android/keyguard/R$id;->keyboardentry:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-nez v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 228
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    const-string v1, "inputType=disableMobileCMKey"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    .line 232
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    goto :goto_0
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 658
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    const/4 v0, 0x1

    .line 661
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 707
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onAttachedToWindow()V

    .line 709
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isOnehandMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->registerOnehandAnyScreenObserver()V

    .line 713
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 618
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 619
    iget v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    iget v3, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-eq v0, v3, :cond_0

    .line 620
    const-string v0, "KeyguardPinBasedInputView"

    const-string v3, "keyboard ConfigurationChange"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->isSupportMobileKeyboard:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    .line 622
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 623
    iget v0, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    .line 624
    iget v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    if-ne v0, v1, :cond_2

    .line 625
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 627
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 636
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 621
    goto :goto_0

    .line 630
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 632
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isOnehandMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->unregisterOnehandAnyScreenObserver()V

    .line 721
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 668
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 670
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->verifyPasswordAndUnlock()V

    .line 671
    const/4 v0, 0x1

    .line 673
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 258
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useLatestPinView()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 260
    sget v1, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    .line 271
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$bool;->theme_use_imagebg_pinlock:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 274
    sget v1, Lcom/android/keyguard/R$id;->pin_view_frame:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPinViewFrame:Landroid/widget/FrameLayout;

    .line 275
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPinViewFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 276
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPinViewFrame:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/keyguard/R$drawable;->pin_lock_bg_image:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 277
    :cond_2
    sget v1, Lcom/android/keyguard/R$id;->divider:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDivider:Landroid/view/View;

    .line 278
    sget v1, Lcom/android/keyguard/R$id;->dividerbottom:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDividerBottom:Landroid/view/View;

    .line 279
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDivider:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 280
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 281
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDividerBottom:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 282
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDividerBottom:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 288
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$drawable;->lock_ripple_drawable:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRippleOkButton:Landroid/graphics/drawable/RippleDrawable;

    .line 289
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 290
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRippleOkButton:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 295
    :cond_5
    sget v1, Lcom/android/keyguard/R$id;->keyboard_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardView:Landroid/widget/LinearLayout;

    .line 296
    sget v1, Lcom/android/keyguard/R$id;->numpadkey_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mNumpadkeyView:Landroid/widget/LinearLayout;

    .line 297
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->chooseKeyboardType()V

    .line 299
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 302
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 303
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->disableDevicePermanently()V

    .line 305
    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->updateBlackTextOnWhiteWallpaper()V

    .line 308
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->initOnehandPINView()V

    .line 309
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setOnehandPINView()V

    .line 310
    return-void

    .line 263
    :cond_7
    sget v1, Lcom/android/keyguard/R$id;->key_enter_text:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    .line 264
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$color;->theme_pin_digit_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    const-string v1, "/system/fonts/SECRobotoLight-Regular.ttf"

    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 267
    .local v0, "numTypeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_1

    .line 268
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    .line 285
    .end local v0    # "numTypeface":Landroid/graphics/Typeface;
    :cond_8
    sget v1, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    goto/16 :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 368
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x13

    if-eq p2, v0, :cond_0

    const/16 v0, 0x14

    if-eq p2, v0, :cond_0

    const/16 v0, 0x16

    if-eq p2, v0, :cond_0

    const/16 v0, 0x15

    if-eq p2, v0, :cond_0

    const/16 v0, 0x19

    if-eq p2, v0, :cond_0

    const/16 v0, 0x18

    if-eq p2, v0, :cond_0

    const/16 v0, 0x113

    if-eq p2, v0, :cond_0

    .line 379
    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 380
    const/4 v0, 0x1

    .line 382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v2, 0x90

    const/16 v6, 0x10

    const/4 v0, 0x7

    const/4 v3, 0x1

    .line 143
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    move v2, v3

    .line 162
    :goto_0
    return v2

    .line 146
    :cond_0
    const/16 v4, 0x43

    if-eq p1, v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardProperties;->isFolderDevice(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 150
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    move v2, v3

    .line 151
    goto :goto_0

    .line 154
    :cond_2
    if-lt p1, v0, :cond_3

    if-le p1, v6, :cond_4

    :cond_3
    if-lt p1, v2, :cond_6

    const/16 v4, 0x99

    if-gt p1, v4, :cond_6

    .line 156
    :cond_4
    if-lt p1, v0, :cond_5

    if-gt p1, v6, :cond_5

    .line 158
    .local v0, "basedKeyCode":I
    :goto_1
    sub-int v1, p1, v0

    .line 159
    .local v1, "number":I
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    move v2, v3

    .line 160
    goto :goto_0

    .end local v0    # "basedKeyCode":I
    .end local v1    # "number":I
    :cond_5
    move v0, v2

    .line 156
    goto :goto_1

    .line 162
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 393
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onMeasure(II)V

    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->measureChildren(II)V

    .line 396
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRippleOkButton:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V

    .line 397
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRippleDeleteButton:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V

    .line 398
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 608
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    .line 609
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mIsPaused:Z

    .line 610
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 612
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 614
    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 595
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    .line 596
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mIsPaused:Z

    .line 597
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_1

    .line 598
    sget-boolean v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mHasWindowFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mShowImeAtScreenOn:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mShowImeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 603
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setOnehandPINView()V

    .line 604
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 640
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onWindowFocusChanged(Z)V

    .line 641
    sput-boolean p1, Lcom/android/keyguard/KeyguardPinBasedInputView;->mHasWindowFocus:Z

    .line 642
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_0

    .line 643
    sget-boolean v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mIsPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 644
    new-instance v0, Lcom/android/keyguard/KeyguardPinBasedInputView$11;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$11;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 654
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 121
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isHintMessageArea()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 123
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 124
    return-void
.end method

.method protected resetPasswordText(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextView;->reset(Z)V

    goto :goto_0
.end method

.method protected resetState()V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 134
    return-void
.end method

.method protected setEnableKeyPad(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 206
    const/4 v0, 0x0

    .local v0, "iIdx":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mArrKeyPadIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mArrKeyPadIds:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 209
    .local v1, "padView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 206
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    .end local v1    # "padView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected setMaxLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMaxLength:I

    .line 217
    return-void
.end method

.method public setOnehandPINView()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 741
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isOnehandMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyOneHandRunning(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 743
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 744
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 746
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 748
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 749
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 750
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 751
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 752
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecPinArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 755
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_direction"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_5

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightPressed:Z

    .line 757
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightPressed:Z

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->movePinLock(Z)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 755
    goto :goto_1
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getEntryTextview()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 139
    return-void
.end method

.method public showBouncer(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 678
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showBouncer(I)V

    .line 679
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v0, :cond_0

    .line 680
    sget-boolean v0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mShowImeAtScreenOn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mShowImeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 685
    :cond_0
    return-void
.end method

.method protected updateBlackTextOnWhiteWallpaper()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 314
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateBlackTextOnWhiteWallpaper()V

    .line 316
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->useLatestPinView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mMobileKeyboard:Z

    if-eqz v2, :cond_3

    .line 318
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 321
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$color;->theme_pin_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto :goto_0

    .line 323
    :cond_2
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyboardEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$color;->theme_pin_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto :goto_0

    .line 328
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$bool;->theme_use_image_pinlock:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    sget v2, Lcom/android/keyguard/R$id;->key_enter_text:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 331
    .local v1, "okButton":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 332
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 333
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$color;->theme_pin_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/PasswordTextView;->setHintTextColor(I)V

    .line 334
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$color;->theme_pin_digit_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 335
    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 338
    :cond_4
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v2, :cond_5

    .line 339
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$color;->white_bg_solution_pin_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 340
    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_0

    .line 343
    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$color;->theme_pin_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/PasswordTextView;->setHintTextColor(I)V

    .line 344
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$color;->theme_pin_digit_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowColor()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 347
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 349
    .local v0, "density":F
    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->addStrokeTextEffect(FIF)I

    goto/16 :goto_0
.end method
