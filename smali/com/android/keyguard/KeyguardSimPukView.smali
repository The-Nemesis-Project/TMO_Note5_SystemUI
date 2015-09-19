.class public Lcom/android/keyguard/KeyguardSimPukView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSimPukView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardSimPukView"

.field static sVoiceCapable:Z


# instance fields
.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field protected mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mEcaView:Landroid/view/View;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEmergencyCallButton2:Landroid/widget/Button;

.field protected mHelpTextView:Landroid/widget/TextView;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mPasswordEntry:Landroid/widget/TextView;

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardSimPukView;->sVoiceCapable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mTempRect:Landroid/graphics/Rect;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 181
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 87
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 88
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v2, :cond_4

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 91
    sget v2, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "bouncerFrameView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 96
    :cond_0
    sget v2, Lcom/android/keyguard/R$id;->keyguard_unlock_view_help_text:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mHelpTextView:Landroid/widget/TextView;

    .line 97
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->lockscreen_sim_puk_tmo_help_contact_service_provider:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "mHelpTextString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->emergency_calls_only:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .end local v1    # "mHelpTextString":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/keyguard/KeyguardSimPukView;->sVoiceCapable:Z

    .line 109
    sget v2, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEmergencyCallButton:Landroid/widget/Button;

    .line 110
    sget-boolean v2, Lcom/android/keyguard/KeyguardSimPukView;->sVoiceCapable:Z

    if-eqz v2, :cond_7

    .line 111
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 113
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEmergencyCallButton:Landroid/widget/Button;

    sget v3, Lcom/android/keyguard/R$string;->kg_emergency_call_label:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 118
    :goto_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEmergencyCallButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/keyguard/KeyguardSimPukView$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSimPukView$1;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_2
    :goto_3
    sget v2, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEmergencyCallButton2:Landroid/widget/Button;

    .line 135
    sget-boolean v2, Lcom/android/keyguard/KeyguardSimPukView;->sVoiceCapable:Z

    if-eqz v2, :cond_8

    .line 136
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEmergencyCallButton2:Landroid/widget/Button;

    if-eqz v2, :cond_3

    .line 137
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEmergencyCallButton2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEmergencyCallButton2:Landroid/widget/Button;

    const-string v3, "SOS"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEmergencyCallButton2:Landroid/widget/Button;

    new-instance v3, Lcom/android/keyguard/KeyguardSimPukView$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSimPukView$2;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    :cond_3
    :goto_4
    return-void

    .line 88
    .end local v0    # "bouncerFrameView":Landroid/view/View;
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_0

    .line 104
    .restart local v0    # "bouncerFrameView":Landroid/view/View;
    .restart local v1    # "mHelpTextString":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 115
    .end local v1    # "mHelpTextString":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEmergencyCallButton:Landroid/widget/Button;

    const-string v3, "Enter Unlock Code"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEmergencyCallButton:Landroid/widget/Button;

    sget v3, Lcom/android/keyguard/R$drawable;->ic_dialog_dialer:I

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 131
    :cond_7
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 152
    :cond_8
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEmergencyCallButton2:Landroid/widget/Button;

    if-eqz v2, :cond_3

    .line 153
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEmergencyCallButton2:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 189
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 78
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 83
    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 175
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method
