.class public Lcom/android/systemui/qs/QSEditPanel;
.super Landroid/widget/FrameLayout;
.source "QSEditPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;,
        Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;,
        Lcom/android/systemui/qs/QSEditPanel$MessageObject;,
        Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QSEditPanel"

.field private static final TAG_ACTIVE:I = 0x0

.field private static final TAG_AVAILABLE:I = 0x1

.field private static mDiagnosticLogs:Z


# instance fields
.field private final FIRST_AVAILABLE_BUTTON_ID:I

.field private final MAX_ACTIVE_BUTTONS_TABLET:I

.field private final MAX_ACTIVE_BUTTONS_ZERO:I

.field private final MSG_HANDLE_ACTION_DROP:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_ACTIVE_TO_AVAILABLE:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_AVAILABLE_TO_ACTIVE:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_ACTIVE_TO_AVAILABLE:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_AVAILABLE_TO_ACTIVE:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_SAME_AREA:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_LEFT:I

.field private final MSG_HANDLE_ANIMATE_BUTTONS_RIGHT:I

.field private final MSG_HANDLE_ANIMATE_MAX_ACTIVE_TO_AVAILABLE:I

.field private final MSG_HANDLE_ANIMATE_MAX_AVAILABLE_TO_ACTIVE:I

.field private final MSG_HANDLE_POST_ONCONFIGURATIONCHANGED:I

.field private final MSG_HANDLE_POST_REFRESH_VIEW:I

.field private final MSG_HANDLE_UPDATE_VIEW_STATE:I

.field protected REORDERING_REORDER_REPOSITION_DURATION:I

.field protected SCROLLVIEW_ANIMATION_DURATION:I

.field private mActiveAppsMaxNum:I

.field private mActiveAppsMinNum:I

.field private mActiveAppsNum:I

.field private mActiveButtonContainer:Landroid/widget/FrameLayout;

.field private mActiveContainerParent:Landroid/widget/LinearLayout;

.field private mActiveTileCount:I

.field private mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

.field private mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

.field private mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

.field private mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

.field private mAvailableButtonContainer:Landroid/widget/FrameLayout;

.field private mAvailableContainerParent:Landroid/widget/LinearLayout;

.field private mAvailableTileCount:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCrossIconWidth:I

.field private mCurrentOrientation:I

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDragStart:Z

.field private mEditSummary:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalGap:I

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mIconMarginTop:I

.field private mIconWidth:I

.field private mIdxGap:I

.field private mIsActiveAdded:Z

.field private mIsDroppedOnView:Z

.field private mLocale:Ljava/util/Locale;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickedBg:Landroid/view/View;

.field private mLongClickedIdx:I

.field private mLongClickedView:Landroid/widget/FrameLayout;

.field private mMaxActiveToAvailableEnabled:Z

.field private mNumColumns:I

.field private mPrvLongClickedBg:Landroid/view/View;

.field private mQconnectCheckBox:Landroid/widget/CompoundButton;

.field private mQconnectGroup:Landroid/widget/LinearLayout;

.field private mRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/QSEditPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollContainer:Landroid/widget/ScrollView;

.field private mSfinderCheckBox:Landroid/widget/CompoundButton;

.field private mSfinderGroup:Landroid/widget/LinearLayout;

.field private mStartLongClickedIdx:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mToast:Landroid/widget/Toast;

.field private mTouchedIdx:I

.field private mVerticalGap:I

.field mfakePanelDragListener:Landroid/view/View$OnDragListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1293
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/QSEditPanel;->mDiagnosticLogs:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSEditPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 307
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v7, 0xe

    const/4 v6, -0x2

    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 310
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMinNum:I

    .line 89
    iput v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMaxNum:I

    .line 91
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    .line 93
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    .line 103
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mDragStart:Z

    .line 109
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 115
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    .line 117
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    .line 119
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableTileCount:I

    .line 121
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    .line 123
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_UPDATE_VIEW_STATE:I

    .line 125
    const/16 v1, 0x65

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_LEFT:I

    .line 127
    const/16 v1, 0x66

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_RIGHT:I

    .line 129
    const/16 v1, 0x67

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_ACTIVE_TO_AVAILABLE:I

    .line 131
    const/16 v1, 0x68

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_AVAILABLE_TO_ACTIVE:I

    .line 133
    const/16 v1, 0x69

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_SAME_AREA:I

    .line 135
    const/16 v1, 0x6a

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_ACTIVE_TO_AVAILABLE:I

    .line 137
    const/16 v1, 0x6b

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_BUTTONS_EMPTY_AVAILABLE_TO_ACTIVE:I

    .line 139
    const/16 v1, 0x6c

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_MAX_AVAILABLE_TO_ACTIVE:I

    .line 141
    const/16 v1, 0x6d

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ANIMATE_MAX_ACTIVE_TO_AVAILABLE:I

    .line 143
    const/16 v1, 0x6e

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_ACTION_DROP:I

    .line 145
    const/16 v1, 0x6f

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_POST_REFRESH_VIEW:I

    .line 147
    const/16 v1, 0x70

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->MSG_HANDLE_POST_ONCONFIGURATIONCHANGED:I

    .line 150
    iput v5, p0, Lcom/android/systemui/qs/QSEditPanel;->MAX_ACTIVE_BUTTONS_ZERO:I

    .line 152
    iput v7, p0, Lcom/android/systemui/qs/QSEditPanel;->MAX_ACTIVE_BUTTONS_TABLET:I

    .line 154
    const/16 v1, 0x65

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->FIRST_AVAILABLE_BUTTON_ID:I

    .line 169
    const/16 v1, 0x258

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->SCROLLVIEW_ANIMATION_DURATION:I

    .line 172
    const/16 v1, 0x118

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 255
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/QSEditPanel$1;-><init>(Lcom/android/systemui/qs/QSEditPanel;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    .line 1075
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSEditPanel$6;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1133
    iput-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mPrvLongClickedBg:Landroid/view/View;

    .line 1135
    iput-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    .line 1153
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsDroppedOnView:Z

    .line 1155
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSEditPanel$7;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    .line 1315
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mMaxActiveToAvailableEnabled:Z

    .line 1888
    iput-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mLocale:Ljava/util/Locale;

    .line 1920
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$8;

    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/QSEditPanel$8;-><init>(Lcom/android/systemui/qs/QSEditPanel;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentObserver:Landroid/database/ContentObserver;

    .line 311
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    .line 312
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 313
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    .line 314
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 315
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mDefaultDisplay:Landroid/view/Display;

    .line 316
    const v1, 0x7f0f004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMinNum:I

    .line 317
    const v1, 0x7f0f004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMaxNum:I

    .line 318
    const v1, 0x7f0c0478

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    .line 319
    const v1, 0x7f0c0479

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    .line 320
    const v1, 0x7f0c0323

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIconWidth:I

    .line 321
    const v1, 0x7f0c047f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mCrossIconWidth:I

    .line 322
    const v1, 0x7f0c032e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIconMarginTop:I

    .line 323
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "notification_panel_active_number_of_apps"

    invoke-static {v1, v2, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    .line 328
    :goto_0
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    .line 329
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    .line 331
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/qs/QSEditPanel;->mDiagnosticLogs:Z

    .line 333
    return-void

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "notification_panel_active_number_of_apps"

    invoke-static {v1, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateLeft(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateRight(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->handleDelayedOnConfigurationChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/QSEditPanel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->prepareViewsToAnimate()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/qs/QSEditPanel;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Landroid/widget/FrameLayout;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedView:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/QSEditPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/qs/QSEditPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/QSEditPanel;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/QSEditPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/QSEditPanel;)Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/QSEditPanel;)Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/QSEditPanel;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/util/ArrayList;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/QSEditPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mDragStart:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/qs/QSEditPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mDragStart:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/qs/QSEditPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/systemui/qs/QSEditPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/qs/QSEditPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsDroppedOnView:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/systemui/qs/QSEditPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsDroppedOnView:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/qs/QSEditPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->showToastPopup()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/qs/QSEditPanel;Ljava/util/ArrayList;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->animateViews()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/qs/QSEditPanel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->scrollPanleViews()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->animateEmptyPanelViews()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateEmptySameArea(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$4002(Lcom/android/systemui/qs/QSEditPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mStartLongClickedIdx:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateEmptyActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateEmptyAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateMaxAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel;->handleAnimateMaxActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->handleActionDropView()V

    return-void
.end method

.method private addBackgroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V
    .locals 20
    .param p1, "mode"    # I
    .param p2, "totalPanelLines"    # I
    .param p5, "container"    # Landroid/widget/FrameLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/FrameLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 894
    .local p3, "overlayedLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .local p4, "panelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v17, "QSEditPanel"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addBackgroundButtonViews() mode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mNumColumns="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", totalPanelLines="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 897
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 898
    .local v2, "columnNumber":I
    const/4 v15, 0x0

    .line 899
    .local v15, "rowNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    mul-int v16, v17, p2

    .line 900
    .local v16, "totalPanelNum":I
    if-nez p1, :cond_3

    const/4 v5, 0x0

    .line 901
    .local v5, "gap":I
    :goto_0
    const/4 v6, 0x0

    .line 902
    .local v6, "idx":I
    const v13, 0x7f040077

    .line 903
    .local v13, "panelFakeViewLayouId":I
    const v14, 0x7f040080

    .line 904
    .local v14, "panelOverlayedViewLayouId":I
    const/4 v6, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v6, v0, :cond_8

    .line 905
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v7, v13, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 906
    .local v4, "fakePanel":Landroid/widget/FrameLayout;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v7, v14, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    .line 907
    .local v12, "overLayedView":Landroid/widget/FrameLayout;
    const v17, 0x7f0e0291

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 908
    .local v8, "longClickedRoundBg":Landroid/widget/ImageView;
    const v17, 0x7f0e0292

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 910
    .local v3, "crossIcon":Landroid/view/View;
    add-int v17, v6, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 913
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 914
    .local v10, "lpFake":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    div-int v17, v2, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    move/from16 v19, v0

    add-int v18, v18, v19

    mul-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 915
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 916
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 917
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    rem-int v17, v2, v17

    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 918
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 919
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 932
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 935
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 936
    .local v9, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mIconWidth:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 937
    invoke-virtual {v12, v8, v9}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 940
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 941
    .local v11, "lpOverlayed":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCrossIconWidth:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 942
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    rem-int v17, v2, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v19, v0

    add-int v18, v18, v19

    mul-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 943
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    div-int v17, v2, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    move/from16 v19, v0

    add-int v18, v18, v19

    mul-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 945
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v17, v0

    div-int v17, v2, v17

    add-int/lit8 v18, p2, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v17, v0

    :goto_3
    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 947
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_1

    .line 948
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0481

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 950
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_2

    .line 951
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c0482

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 954
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 955
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 958
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 960
    add-int/lit8 v2, v2, 0x1

    .line 904
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 900
    .end local v3    # "crossIcon":Landroid/view/View;
    .end local v4    # "fakePanel":Landroid/widget/FrameLayout;
    .end local v5    # "gap":I
    .end local v6    # "idx":I
    .end local v8    # "longClickedRoundBg":Landroid/widget/ImageView;
    .end local v9    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "lpFake":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "lpOverlayed":Landroid/widget/FrameLayout$LayoutParams;
    .end local v12    # "overLayedView":Landroid/widget/FrameLayout;
    .end local v13    # "panelFakeViewLayouId":I
    .end local v14    # "panelOverlayedViewLayouId":I
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    goto/16 :goto_0

    .line 922
    .restart local v3    # "crossIcon":Landroid/view/View;
    .restart local v4    # "fakePanel":Landroid/widget/FrameLayout;
    .restart local v5    # "gap":I
    .restart local v6    # "idx":I
    .restart local v8    # "longClickedRoundBg":Landroid/widget/ImageView;
    .restart local v10    # "lpFake":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v12    # "overLayedView":Landroid/widget/FrameLayout;
    .restart local v13    # "panelFakeViewLayouId":I
    .restart local v14    # "panelOverlayedViewLayouId":I
    :cond_4
    add-int/lit8 v17, v15, 0x1

    rem-int v17, v17, p2

    if-eqz v17, :cond_5

    if-nez p1, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_6

    .line 923
    :cond_5
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 926
    :cond_6
    add-int/lit8 v17, v2, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v18, v0

    rem-int v17, v17, v18

    if-nez v17, :cond_0

    if-eqz v2, :cond_0

    .line 927
    add-int/lit8 v15, v15, 0x1

    .line 928
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 945
    .restart local v9    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "lpOverlayed":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    move/from16 v18, v0

    add-int v17, v17, v18

    goto/16 :goto_3

    .line 963
    .end local v3    # "crossIcon":Landroid/view/View;
    .end local v4    # "fakePanel":Landroid/widget/FrameLayout;
    .end local v8    # "longClickedRoundBg":Landroid/widget/ImageView;
    .end local v9    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "lpFake":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "lpOverlayed":Landroid/widget/FrameLayout$LayoutParams;
    .end local v12    # "overLayedView":Landroid/widget/FrameLayout;
    :cond_8
    return-void
.end method

.method private addForegroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V
    .locals 28
    .param p1, "mode"    # I
    .param p2, "totalPanelLines"    # I
    .param p5, "container"    # Landroid/widget/FrameLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/FrameLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 796
    .local p3, "panelLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .local p4, "panelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v24, "QSEditPanel"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "addForegroundButtonViews() mode="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", mNumColumns="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", totalPanelLines="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "layout_inflater"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 799
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    .line 800
    .local v5, "columnNumber":I
    const/16 v20, 0x0

    .line 801
    .local v20, "rowNumber":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v24, v0

    mul-int v23, v24, p2

    .line 802
    .local v23, "totalPanelNum":I
    if-nez p1, :cond_0

    const/4 v8, 0x0

    .line 803
    .local v8, "gap":I
    :goto_0
    const/4 v9, 0x0

    .line 805
    .local v9, "idx":I
    const v17, 0x7f04007f

    .line 806
    .local v17, "panelViewLayouId":I
    const/4 v9, 0x0

    :goto_1
    move/from16 v0, v23

    if-ge v9, v0, :cond_7

    .line 807
    const/16 v24, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout;

    .line 808
    .local v15, "panelView":Landroid/widget/FrameLayout;
    const v24, 0x7f0e028d

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout;

    .line 809
    .local v16, "panelViewFocus":Landroid/widget/FrameLayout;
    const v24, 0x7f0e028e

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 810
    .local v12, "panel":Landroid/widget/LinearLayout;
    const v24, 0x7f0e028f

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 811
    .local v13, "panelImageView":Landroid/widget/ImageView;
    sget-boolean v24, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->grayScaleModeEnabled:Z

    if-eqz v24, :cond_1

    const v24, 0x7f020840

    :goto_2
    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 814
    const v24, 0x7f0e0290

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 816
    .local v14, "panelTextView":Landroid/widget/TextView;
    add-int v24, v9, v8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 818
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 819
    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 820
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 863
    :goto_3
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v11, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 864
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 865
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v24, v0

    rem-int v24, v5, v24

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    move/from16 v26, v0

    add-int v25, v25, v26

    mul-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 866
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    move/from16 v24, v0

    div-int v24, v5, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    move/from16 v26, v0

    add-int v25, v25, v26

    mul-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 867
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 869
    move-object/from16 v0, p5

    invoke-virtual {v0, v15, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 870
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    add-int/lit8 v5, v5, 0x1

    .line 806
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 802
    .end local v8    # "gap":I
    .end local v9    # "idx":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v12    # "panel":Landroid/widget/LinearLayout;
    .end local v13    # "panelImageView":Landroid/widget/ImageView;
    .end local v14    # "panelTextView":Landroid/widget/TextView;
    .end local v15    # "panelView":Landroid/widget/FrameLayout;
    .end local v16    # "panelViewFocus":Landroid/widget/FrameLayout;
    .end local v17    # "panelViewLayouId":I
    :cond_0
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    goto/16 :goto_0

    .line 811
    .restart local v8    # "gap":I
    .restart local v9    # "idx":I
    .restart local v12    # "panel":Landroid/widget/LinearLayout;
    .restart local v13    # "panelImageView":Landroid/widget/ImageView;
    .restart local v15    # "panelView":Landroid/widget/FrameLayout;
    .restart local v16    # "panelViewFocus":Landroid/widget/FrameLayout;
    .restart local v17    # "panelViewLayouId":I
    :cond_1
    const v24, 0x7f02083d

    goto/16 :goto_2

    .line 822
    .restart local v14    # "panelTextView":Landroid/widget/TextView;
    :cond_2
    const/16 v21, 0x0

    .line 824
    .local v21, "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    if-nez p1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    move-object/from16 v24, v0

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_3

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    move-object/from16 v25, v0

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    check-cast v21, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .line 827
    .restart local v21    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_3
    const/16 v24, 0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    move-object/from16 v24, v0

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static/range {v24 .. v24}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_4

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    move-object/from16 v25, v0

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    check-cast v21, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .line 830
    .restart local v21    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_4
    if-eqz v21, :cond_5

    .line 831
    move-object/from16 v0, v21

    iput-object v15, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->viewContainer:Landroid/widget/FrameLayout;

    .line 832
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->state:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v13}, Lcom/android/systemui/qs/QSTileView;->handleIconStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/view/View;)V

    .line 833
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->state:Lcom/android/systemui/qs/QSTile$State;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/systemui/qs/QSTileView;->handleTextStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/view/View;I)V

    .line 836
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->contentDesc:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 837
    move-object/from16 v18, v21

    .line 839
    .local v18, "r":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    new-instance v24, Lcom/android/systemui/qs/QSEditPanel$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/QSEditPanel$5;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$TileRecord;)V

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 848
    .end local v18    # "r":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSEditPanel;->getTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 849
    .local v22, "tileBackground":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 850
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    move/from16 v24, v0

    div-int/lit8 v6, v24, 0x2

    .line 851
    .local v6, "cx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mIconMarginTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mIconWidth:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    add-int v7, v24, v25

    .line 852
    .local v7, "cy":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mIconWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3ef5c28f    # 0.48f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v19, v0

    .line 853
    .local v19, "rad":I
    sub-int v24, v6, v19

    sub-int v25, v7, v19

    add-int v26, v6, v19

    add-int v27, v7, v19

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 854
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 857
    .end local v6    # "cx":I
    .end local v7    # "cy":I
    .end local v19    # "rad":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 859
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v1, v9, v2}, Lcom/android/systemui/qs/QSEditPanel;->setForegroundButtonViewId(Landroid/widget/FrameLayout;II)V

    goto/16 :goto_3

    .line 874
    .end local v12    # "panel":Landroid/widget/LinearLayout;
    .end local v13    # "panelImageView":Landroid/widget/ImageView;
    .end local v14    # "panelTextView":Landroid/widget/TextView;
    .end local v15    # "panelView":Landroid/widget/FrameLayout;
    .end local v16    # "panelViewFocus":Landroid/widget/FrameLayout;
    .end local v21    # "tempTR":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    .end local v22    # "tileBackground":Landroid/graphics/drawable/Drawable;
    :cond_7
    return-void
.end method

.method private addTile(Lcom/android/systemui/qs/QSTile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/QSEditPanel$TileRecord;-><init>(Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 569
    .local v1, "r":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    iput-object p1, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    .line 570
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    .line 571
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->contentDesc:Ljava/lang/String;

    .line 572
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->label:Ljava/lang/String;

    .line 573
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 574
    new-instance v0, Lcom/android/systemui/qs/QSEditPanel$4;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSEditPanel$4;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$TileRecord;)V

    .line 619
    .local v0, "callback":Lcom/android/systemui/qs/QSTile$Callback;
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->addTileRecord(Lcom/android/systemui/qs/QSEditPanel$TileRecord;)V

    .line 620
    iget-object v2, v1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/QSTile;->setEditCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    .line 621
    return-void
.end method

.method private addTileRecord(Lcom/android/systemui/qs/QSEditPanel$TileRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .prologue
    .line 624
    iget-object v1, p1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tile"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "tileName":Ljava/lang/String;
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    if-ge v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    if-nez v1, :cond_2

    .line 626
    iput-object v0, p1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->key:Ljava/lang/String;

    .line 627
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    .line 633
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    if-eqz v1, :cond_1

    .line 634
    iput-object v0, p1, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->key:Ljava/lang/String;

    .line 635
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableTileCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableTileCount:I

    .line 639
    :cond_1
    return-void

    .line 630
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    if-nez v1, :cond_0

    .line 631
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    goto :goto_0
.end method

.method private animateEmptyPanelViews()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x6b

    const/16 v9, 0x6a

    const/16 v8, 0x69

    .line 1454
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1455
    .local v1, "longClickedIdx":I
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v1, v7, :cond_1

    .line 1456
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v1, v7

    .line 1457
    const/4 v0, 0x1

    .line 1462
    .local v0, "fromArea":I
    :goto_0
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1463
    .local v6, "touchedIdx":I
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v6, v7, :cond_2

    .line 1464
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v6, v7

    .line 1465
    const/4 v5, 0x1

    .line 1470
    .local v5, "toArea":I
    :goto_1
    if-ne v6, v1, :cond_3

    if-ne v5, v0, :cond_3

    .line 1506
    :cond_0
    :goto_2
    return-void

    .line 1459
    .end local v0    # "fromArea":I
    .end local v5    # "toArea":I
    .end local v6    # "touchedIdx":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "fromArea":I
    goto :goto_0

    .line 1467
    .restart local v6    # "touchedIdx":I
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "toArea":I
    goto :goto_1

    .line 1473
    :cond_3
    if-nez v5, :cond_8

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1474
    .local v4, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-ne v5, v0, :cond_4

    invoke-direct {p0, v4, v6}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0, v4, v1}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1478
    :cond_4
    if-ne v5, v0, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v1, v7, :cond_0

    .line 1482
    :cond_5
    new-instance v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v7}, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 1483
    .local v3, "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    iput v0, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1484
    iput v1, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1485
    iput v6, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1486
    const/4 v2, 0x0

    .line 1487
    .local v2, "msg":Landroid/os/Message;
    if-ne v0, v5, :cond_9

    .line 1488
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1489
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1491
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1505
    :cond_7
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1473
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    .end local v4    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_3

    .line 1493
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v3    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    .restart local v4    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    if-nez v0, :cond_b

    if-ne v5, v11, :cond_b

    .line 1494
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1495
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1497
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_4

    .line 1498
    :cond_b
    if-ne v0, v11, :cond_7

    if-nez v5, :cond_7

    .line 1499
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1500
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1502
    :cond_c
    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_4
.end method

.method private animateScrollViews(II)V
    .locals 7
    .param p1, "currentPositionY"    # I
    .param p2, "destinationY"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1441
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1442
    .local v0, "anim":Landroid/animation/AnimatorSet;
    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    const-string v3, "scrollY"

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput p1, v4, v5

    aput p2, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1443
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->SCROLLVIEW_ANIMATION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1444
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1445
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v1, v5, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1446
    return-void
.end method

.method private animateViews()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/16 v12, 0x68

    const/16 v11, 0x67

    const/16 v10, 0x66

    const/16 v9, 0x65

    .line 1513
    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1514
    .local v1, "longClickedIdx":I
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v1, v8, :cond_0

    .line 1515
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v1, v8

    .line 1516
    const/4 v0, 0x1

    .line 1521
    .local v0, "fromArea":I
    :goto_0
    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1522
    .local v7, "touchedIdx":I
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v7, v8, :cond_1

    .line 1523
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v7, v8

    .line 1524
    const/4 v6, 0x1

    .line 1528
    .local v6, "toArea":I
    :goto_1
    if-ne v7, v1, :cond_2

    if-ne v6, v0, :cond_2

    .line 1566
    :goto_2
    return-void

    .line 1518
    .end local v0    # "fromArea":I
    .end local v6    # "toArea":I
    .end local v7    # "touchedIdx":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "fromArea":I
    goto :goto_0

    .line 1526
    .restart local v7    # "touchedIdx":I
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "toArea":I
    goto :goto_1

    .line 1531
    :cond_2
    if-nez v6, :cond_5

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1532
    .local v5, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-nez v6, :cond_6

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1533
    .local v4, "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_4
    invoke-direct {p0, v7, v5, v4}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1534
    new-instance v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    const/4 v8, 0x0

    invoke-direct {v3, p0, v8}, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 1535
    .local v3, "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    iput v0, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1536
    iput v1, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1537
    iput v7, v3, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1538
    const/4 v2, 0x0

    .line 1540
    .local v2, "msg":Landroid/os/Message;
    if-ne v0, v6, :cond_9

    .line 1541
    if-ge v7, v1, :cond_7

    .line 1542
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1543
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1545
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1565
    :cond_4
    :goto_5
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1531
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    .end local v4    # "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v5    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_3

    .line 1532
    .restart local v5    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_4

    .line 1547
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v3    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    .restart local v4    # "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1548
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1550
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_5

    .line 1553
    :cond_9
    if-nez v0, :cond_b

    if-ne v6, v13, :cond_b

    .line 1554
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1555
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1557
    :cond_a
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_5

    .line 1558
    :cond_b
    if-ne v0, v13, :cond_4

    if-nez v6, :cond_4

    .line 1559
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1560
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1562
    :cond_c
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_5
.end method

.method private clean()V
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1128
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1129
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1130
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1131
    return-void
.end method

.method private getTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 1057
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f02037b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1058
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method private handleActionDropView()V
    .locals 2

    .prologue
    .line 1234
    const-string v0, "QSEditPanel"

    const-string v1, "handleActionDropView()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    const-string v0, "QSEditPanel"

    const-string v1, "handleActionDropView() invisible, so return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :goto_0
    return-void

    .line 1241
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->saveButtonLists()V

    .line 1242
    sget-boolean v0, Lcom/android/systemui/qs/QSEditPanel;->mDiagnosticLogs:Z

    if-eqz v0, :cond_1

    .line 1243
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->sendDiagnosticLogs()V

    .line 1245
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshViews()V

    goto :goto_0
.end method

.method private handleAnimateActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 17
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1659
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1660
    .local v7, "mode":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1661
    .local v4, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1663
    .local v9, "touchedIndex":I
    const-string v10, "QSEditPanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleAnimateActiveToAvailable() mode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", longClickedIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", touchedIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1666
    .local v2, "anim":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1667
    .local v6, "longClickedView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1668
    .local v5, "longClickedString":Ljava/lang/String;
    move v3, v4

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v3, v10, :cond_0

    .line 1669
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1670
    .local v8, "nextView":Landroid/view/View;
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "x"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1671
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "y"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1668
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1673
    .end local v8    # "nextView":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    :goto_1
    if-le v3, v9, :cond_1

    .line 1674
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1675
    .restart local v8    # "nextView":Landroid/view/View;
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "x"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1676
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "y"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1673
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 1678
    .end local v8    # "nextView":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1679
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1680
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1681
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1682
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1683
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1684
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1685
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v10, v9

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1686
    return-void
.end method

.method private handleAnimateAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 17
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1692
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1693
    .local v7, "mode":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1694
    .local v4, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1696
    .local v9, "touchedIndex":I
    const-string v10, "QSEditPanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleAnimateAvailableToActive() mode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", longClickedIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", touchedIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1699
    .local v2, "anim":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1700
    .local v6, "longClickedView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1701
    .local v5, "longClickedString":Ljava/lang/String;
    move v3, v4

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v3, v10, :cond_0

    .line 1702
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1703
    .local v8, "nextView":Landroid/view/View;
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "x"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1704
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "y"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1701
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1706
    .end local v8    # "nextView":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    :goto_1
    if-le v3, v9, :cond_1

    .line 1707
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1708
    .restart local v8    # "nextView":Landroid/view/View;
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "x"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1709
    const/4 v10, 0x1

    new-array v11, v10, [Landroid/animation/Animator;

    const/4 v12, 0x0

    const-string v13, "y"

    const/4 v10, 0x2

    new-array v14, v10, [F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    aput v10, v14, v15

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1706
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 1711
    .end local v8    # "nextView":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1712
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1713
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1714
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1715
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1716
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1718
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1719
    return-void
.end method

.method private handleAnimateEmptyActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 14
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1600
    iget v3, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1601
    .local v3, "mode":I
    iget v2, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1602
    .local v2, "longClickedIndex":I
    iget v5, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1604
    .local v5, "touchedIndex":I
    const-string v6, "QSEditPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleAnimateEmptyActiveToAvailable() mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", longClickedIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", touchedIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1607
    .local v0, "anim":Landroid/animation/AnimatorSet;
    move v1, v2

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_0

    .line 1608
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1609
    .local v4, "nextView":Landroid/view/View;
    new-array v7, v12, [Landroid/animation/Animator;

    const-string v8, "x"

    new-array v9, v13, [F

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    aput v6, v9, v11

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    aput v6, v9, v12

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v7, v11

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1610
    new-array v7, v12, [Landroid/animation/Animator;

    const-string v8, "y"

    new-array v9, v13, [F

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    aput v6, v9, v11

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    aput v6, v9, v12

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v7, v11

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1607
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1612
    .end local v4    # "nextView":Landroid/view/View;
    :cond_0
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1613
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1614
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v2, v6, :cond_1

    .line 1615
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 1617
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1618
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1619
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1620
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1621
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1622
    return-void
.end method

.method private handleAnimateEmptyAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 14
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1572
    iget v3, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1573
    .local v3, "mode":I
    iget v2, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1574
    .local v2, "longClickedIndex":I
    iget v5, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1576
    .local v5, "touchedIndex":I
    const-string v6, "QSEditPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleAnimateEmptyAvailableToActive() mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", longClickedIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", touchedIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1579
    .local v0, "anim":Landroid/animation/AnimatorSet;
    move v1, v2

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_0

    .line 1580
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1581
    .local v4, "nextView":Landroid/view/View;
    new-array v7, v12, [Landroid/animation/Animator;

    const-string v8, "x"

    new-array v9, v13, [F

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    aput v6, v9, v11

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    aput v6, v9, v12

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v7, v11

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1582
    new-array v7, v12, [Landroid/animation/Animator;

    const-string v8, "y"

    new-array v9, v13, [F

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    aput v6, v9, v11

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    aput v6, v9, v12

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v7, v11

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1579
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1584
    .end local v4    # "nextView":Landroid/view/View;
    :cond_0
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1585
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1586
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v2, v6, :cond_1

    .line 1587
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 1589
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1590
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1591
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1593
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1594
    return-void
.end method

.method private handleAnimateEmptySameArea(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 18
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1628
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1629
    .local v7, "mode":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1630
    .local v6, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1632
    .local v11, "touchedIndex":I
    const-string v12, "QSEditPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleAnimateEmptySameArea() mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", longClickedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", touchedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1635
    .local v5, "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_0
    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1636
    .local v10, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1637
    .local v3, "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :goto_2
    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1638
    .local v9, "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1639
    .local v2, "anim":Landroid/animation/AnimatorSet;
    move v4, v6

    .local v4, "i":I
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v4, v12, :cond_4

    .line 1640
    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1641
    .local v8, "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v8, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1642
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v8, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1639
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1634
    .end local v2    # "anim":Landroid/animation/AnimatorSet;
    .end local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v4    # "i":I
    .end local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v8    # "nextView":Landroid/view/View;
    .end local v9    # "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v10    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    goto/16 :goto_0

    .line 1635
    .restart local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    goto/16 :goto_1

    .line 1636
    .restart local v10    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_2

    .line 1637
    .restart local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v9

    goto/16 :goto_3

    .line 1644
    .restart local v2    # "anim":Landroid/animation/AnimatorSet;
    .restart local v4    # "i":I
    .restart local v9    # "overlayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v12, v12

    invoke-virtual {v2, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1645
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1646
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-le v6, v12, :cond_5

    .line 1647
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .line 1649
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1650
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1651
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v9}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1652
    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    :goto_5
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1653
    return-void

    .line 1652
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v12, v13

    goto :goto_5
.end method

.method private handleAnimateLeft(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 19
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1725
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1726
    .local v9, "mode":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1727
    .local v6, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1729
    .local v12, "touchedIndex":I
    const-string v13, "QSEditPanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleAnimateLeft() mode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", longClickedIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", touchedIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1732
    .local v5, "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_0
    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1733
    .local v11, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1734
    .local v3, "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :goto_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1735
    .local v2, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 1736
    .local v8, "longClickedView":Landroid/widget/FrameLayout;
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1737
    .local v7, "longClickedString":Ljava/lang/String;
    move v4, v6

    .local v4, "i":I
    :goto_3
    if-ge v4, v12, :cond_3

    .line 1738
    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 1739
    .local v10, "nextView":Landroid/view/View;
    const/4 v13, 0x1

    new-array v14, v13, [Landroid/animation/Animator;

    const/4 v15, 0x0

    const-string v16, "x"

    const/4 v13, 0x2

    new-array v0, v13, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    aput v13, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    aput v13, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v14, v15

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1740
    const/4 v13, 0x1

    new-array v14, v13, [Landroid/animation/Animator;

    const/4 v15, 0x0

    const-string v16, "y"

    const/4 v13, 0x2

    new-array v0, v13, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    aput v13, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    aput v13, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v14, v15

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1737
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1731
    .end local v2    # "anim":Landroid/animation/AnimatorSet;
    .end local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v4    # "i":I
    .end local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v7    # "longClickedString":Ljava/lang/String;
    .end local v8    # "longClickedView":Landroid/widget/FrameLayout;
    .end local v10    # "nextView":Landroid/view/View;
    .end local v11    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    goto/16 :goto_0

    .line 1732
    .restart local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    goto/16 :goto_1

    .line 1733
    .restart local v11    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_2

    .line 1742
    .restart local v2    # "anim":Landroid/animation/AnimatorSet;
    .restart local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .restart local v4    # "i":I
    .restart local v7    # "longClickedString":Ljava/lang/String;
    .restart local v8    # "longClickedView":Landroid/widget/FrameLayout;
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v14, v13

    invoke-virtual {v2, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1743
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1744
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1745
    invoke-virtual {v5, v12, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1746
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1747
    invoke-virtual {v11, v12, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1748
    if-nez v9, :cond_4

    .end local v12    # "touchedIndex":I
    :goto_4
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1749
    return-void

    .line 1748
    .restart local v12    # "touchedIndex":I
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v12, v13

    goto :goto_4
.end method

.method private handleAnimateMaxActiveToAvailable(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 19
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1841
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1842
    .local v8, "mode":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1843
    .local v4, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1844
    .local v11, "touchedIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v11, v12, :cond_0

    .line 1845
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v11, v12, -0x1

    .line 1847
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v4, v12, :cond_1

    .line 1848
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .line 1850
    :cond_1
    const-string v12, "QSEditPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleAnimateMaxActiveToAvailable() mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", longClickedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", touchedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1853
    .local v2, "anim":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1854
    .local v6, "longClickedView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1855
    .local v5, "longClickedString":Ljava/lang/String;
    move v3, v4

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v3, v12, :cond_2

    .line 1856
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1857
    .local v9, "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1858
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1855
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1860
    .end local v9    # "nextView":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v11, :cond_3

    .line 1861
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1862
    .restart local v9    # "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1863
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1860
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1865
    .end local v9    # "nextView":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v12, v12

    invoke-virtual {v2, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1866
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

    .line 1867
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1868
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->end()V

    .line 1870
    :cond_4
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1871
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 1872
    .local v10, "targetView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v10}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1873
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1874
    .local v7, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1875
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1876
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v10, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1878
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1879
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1880
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1881
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1882
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1883
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1884
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1885
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1886
    return-void
.end method

.method private handleAnimateMaxAvailableToActive(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 19
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1786
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1787
    .local v8, "mode":I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1788
    .local v4, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1789
    .local v11, "touchedIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v11, v12, :cond_0

    .line 1790
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v11, v12, -0x1

    .line 1792
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v4, v12, :cond_1

    .line 1793
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .line 1795
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1797
    .local v2, "anim":Landroid/animation/AnimatorSet;
    const-string v12, "QSEditPanel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleAnimateMaxAvailableToActive() mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", longClickedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", touchedIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1800
    .local v6, "longClickedView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1801
    .local v5, "longClickedString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_2

    .line 1802
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .local v3, "i":I
    :goto_0
    if-le v3, v11, :cond_2

    .line 1803
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v13, v3, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1804
    .local v9, "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1805
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1802
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 1808
    .end local v3    # "i":I
    .end local v9    # "nextView":Landroid/view/View;
    :cond_2
    move v3, v4

    .restart local v3    # "i":I
    :goto_1
    if-lez v3, :cond_3

    .line 1809
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v13, v3, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1810
    .restart local v9    # "nextView":Landroid/view/View;
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "x"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1811
    const/4 v12, 0x1

    new-array v13, v12, [Landroid/animation/Animator;

    const/4 v14, 0x0

    const-string v15, "y"

    const/4 v12, 0x2

    new-array v0, v12, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    add-int/lit8 v18, v3, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1808
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 1813
    .end local v9    # "nextView":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 1814
    .local v10, "targetView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v10}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1815
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1816
    .local v7, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1817
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iput v12, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1818
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v10, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1819
    const/4 v12, 0x1

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    const-string v14, "x"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v10, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1820
    const/4 v12, 0x1

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    const-string v14, "y"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    iget v0, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aput v17, v15, v16

    invoke-static {v10, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v2, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1821
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v12, v12

    invoke-virtual {v2, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1822
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxAvailableToActive:Landroid/animation/AnimatorSet;

    .line 1823
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1824
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mAnimMaxActiveToAvailable:Landroid/animation/AnimatorSet;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->end()V

    .line 1826
    :cond_4
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1827
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1828
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1829
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1830
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1831
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1832
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1833
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Lcom/android/systemui/qs/QSEditPanel;->showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1834
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1835
    return-void
.end method

.method private handleAnimateRight(Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;)V
    .locals 19
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    .prologue
    .line 1755
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1756
    .local v9, "mode":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1757
    .local v6, "longClickedIndex":I
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1759
    .local v12, "touchedIndex":I
    const-string v13, "QSEditPanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleAnimateRight() mode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", longClickedIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", touchedIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1762
    .local v5, "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :goto_0
    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1763
    .local v11, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1764
    .local v3, "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :goto_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1766
    .local v2, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 1767
    .local v8, "longClickedView":Landroid/widget/FrameLayout;
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1768
    .local v7, "longClickedString":Ljava/lang/String;
    move v4, v6

    .local v4, "i":I
    :goto_3
    if-le v4, v12, :cond_3

    .line 1769
    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 1770
    .local v10, "nextView":Landroid/view/View;
    const/4 v13, 0x1

    new-array v14, v13, [Landroid/animation/Animator;

    const/4 v15, 0x0

    const-string v16, "x"

    const/4 v13, 0x2

    new-array v0, v13, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    aput v13, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    aput v13, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v14, v15

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1771
    const/4 v13, 0x1

    new-array v14, v13, [Landroid/animation/Animator;

    const/4 v15, 0x0

    const-string v16, "y"

    const/4 v13, 0x2

    new-array v0, v13, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    aput v13, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    aput v13, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v14, v15

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1768
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 1761
    .end local v2    # "anim":Landroid/animation/AnimatorSet;
    .end local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v4    # "i":I
    .end local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .end local v7    # "longClickedString":Ljava/lang/String;
    .end local v8    # "longClickedView":Landroid/widget/FrameLayout;
    .end local v10    # "nextView":Landroid/view/View;
    .end local v11    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    goto/16 :goto_0

    .line 1762
    .restart local v5    # "layoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v11

    goto/16 :goto_1

    .line 1763
    .restart local v11    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_2

    .line 1773
    .restart local v2    # "anim":Landroid/animation/AnimatorSet;
    .restart local v3    # "childRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .restart local v4    # "i":I
    .restart local v7    # "longClickedString":Ljava/lang/String;
    .restart local v8    # "longClickedView":Landroid/widget/FrameLayout;
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v14, v13

    invoke-virtual {v2, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1774
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1775
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1776
    invoke-virtual {v5, v12, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1777
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1778
    invoke-virtual {v11, v12, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1779
    if-nez v9, :cond_4

    .end local v12    # "touchedIndex":I
    :goto_4
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1780
    return-void

    .line 1779
    .restart local v12    # "touchedIndex":I
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    add-int/2addr v12, v13

    goto :goto_4
.end method

.method private handleDelayedOnConfigurationChanged()V
    .locals 2

    .prologue
    .line 1914
    const-string v0, "QSEditPanel"

    const-string v1, "handleDelayedOnConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->updateLayoutParams()V

    .line 1916
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshViews()V

    .line 1917
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshSfinderQConnectEditLayout()V

    .line 1918
    return-void
.end method

.method private isEmptyPanel(Ljava/util/ArrayList;I)Z
    .locals 2
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1068
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1069
    .local v0, "value":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_0

    .line 1070
    const/4 v0, 0x1

    .line 1072
    :cond_0
    return v0
.end method

.method public static isMobileKeygboardConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 2014
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2015
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSuportMobileKeyboard()Z
    .locals 2

    .prologue
    .line 2010
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private prepareViewsToAnimate()V
    .locals 5

    .prologue
    .line 1101
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->clean()V

    .line 1102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1103
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1104
    .local v2, "panelView":Landroid/view/View;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1105
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1106
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1107
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1109
    .end local v2    # "panelView":Landroid/view/View;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1110
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1111
    .restart local v2    # "panelView":Landroid/view/View;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1112
    .restart local v3    # "rect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1113
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1114
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3000(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1116
    .end local v2    # "panelView":Landroid/view/View;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1117
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1118
    .local v1, "original":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1120
    .end local v1    # "original":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1121
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1122
    .restart local v1    # "original":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1124
    .end local v1    # "original":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private refreshBackgroundViews()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 758
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int v2, v0, v1

    .line 759
    .local v2, "notiPanelLines":I
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    if-ne v0, v1, :cond_0

    .line 760
    add-int/lit8 v2, v2, 0x1

    .line 762
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ne v2, v9, :cond_1

    .line 763
    add-int/lit8 v2, v2, 0x1

    .line 765
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    .line 767
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSEditPanel;->addBackgroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V

    .line 769
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int v5, v0, v1

    .line 770
    .local v5, "availBtnlLines":I
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 771
    add-int/lit8 v5, v5, 0x1

    .line 773
    :cond_2
    if-nez v5, :cond_3

    .line 774
    const/4 v5, 0x1

    .line 777
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    move-object v3, p0

    move v4, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/qs/QSEditPanel;->addBackgroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V

    .line 778
    return-void

    .line 758
    .end local v2    # "notiPanelLines":I
    .end local v5    # "availBtnlLines":I
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int/2addr v0, v1

    add-int/lit8 v2, v0, 0x1

    goto/16 :goto_0

    .line 769
    .restart local v2    # "notiPanelLines":I
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    goto :goto_1
.end method

.method private refreshForegroundViews()V
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 729
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v0, v3

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int v2, v0, v3

    .line 730
    .local v2, "notiPanelLines":I
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    if-ne v0, v3, :cond_0

    .line 731
    add-int/lit8 v2, v2, 0x1

    .line 733
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    if-ne v0, v6, :cond_1

    if-ne v2, v9, :cond_1

    .line 734
    add-int/lit8 v2, v2, 0x1

    .line 736
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    .line 738
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSEditPanel;->addForegroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V

    .line 740
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v0, v3

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int v5, v0, v3

    .line 741
    .local v5, "availBtnlLines":I
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    rem-int/2addr v0, v3

    if-nez v0, :cond_2

    .line 742
    add-int/lit8 v5, v5, 0x1

    .line 744
    :cond_2
    if-nez v5, :cond_3

    .line 745
    const/4 v5, 0x1

    .line 747
    :cond_3
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    if-eq v0, v6, :cond_5

    .line 748
    if-ne v5, v9, :cond_8

    move v0, v9

    :goto_2
    if-ne v5, v6, :cond_4

    move v1, v9

    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSEditPanel;->updateHelpTextPosition(ZZ)V

    .line 750
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    move-object v3, p0

    move v4, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/qs/QSEditPanel;->addForegroundButtonViews(IILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/FrameLayout;)V

    .line 751
    return-void

    .line 729
    .end local v2    # "notiPanelLines":I
    .end local v5    # "availBtnlLines":I
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int/2addr v0, v3

    add-int/lit8 v2, v0, 0x1

    goto/16 :goto_0

    .line 740
    .restart local v2    # "notiPanelLines":I
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    div-int/2addr v0, v3

    add-int/lit8 v5, v0, 0x1

    goto :goto_1

    .restart local v5    # "availBtnlLines":I
    :cond_8
    move v0, v1

    .line 748
    goto :goto_2
.end method

.method private refreshSfinderQConnectEditLayout()V
    .locals 7

    .prologue
    const v6, 0x7f0a009a

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 358
    const v2, 0x7f0e027b

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 359
    .local v1, "qsEditQconnectSfinderLayoutParent":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->showHideQConnectEditLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 360
    const-string v2, "QSEditPanel"

    const-string v3, "refreshViews setVisibility(View.VISIBLE)"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 363
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0387

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "checkBoxText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0389

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sfinderchecked"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 371
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 376
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "qconnectchecked"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 377
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 384
    .end local v0    # "checkBoxText":Ljava/lang/String;
    :goto_1
    return-void

    .line 373
    .restart local v0    # "checkBoxText":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 379
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    .line 382
    .end local v0    # "checkBoxText":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private refreshViews()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 667
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 668
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 669
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 670
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 671
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 672
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 673
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 674
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 675
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 677
    .local v4, "res":Landroid/content/res/Resources;
    const v6, 0x7f020399

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 678
    .local v0, "activeAreaBg":Landroid/graphics/drawable/Drawable;
    const/16 v6, 0x42

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 679
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 681
    const v6, 0x7f0f0016

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    .line 682
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 683
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const v6, 0x7f0c031c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 684
    .local v1, "displayWidth":I
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 685
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 686
    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 688
    :cond_0
    iget v6, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v6, v1, v6

    iget v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v5, v6, v7

    .line 690
    .local v5, "width":I
    const v6, 0x7f0c0487

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 691
    .local v3, "qsEditPanelButtonContainerMargin":I
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    mul-int/2addr v6, v7

    sub-int v6, v5, v6

    mul-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    .line 692
    const v6, 0x7f0c047a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mVerticalGap:I

    .line 694
    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    if-gez v6, :cond_1

    .line 695
    iput v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHorizontalGap:I

    .line 698
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshForegroundViews()V

    .line 699
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshBackgroundViews()V

    .line 700
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/QSEditPanel;->setFocus(I)V

    .line 701
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/systemui/qs/QSEditPanel;->setFocus(I)V

    .line 703
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->clean()V

    .line 704
    return-void
.end method

.method private saveButtonLists()V
    .locals 3

    .prologue
    .line 1249
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1250
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1252
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1253
    .local v1, "original":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1255
    .end local v1    # "original":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1256
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1257
    .restart local v1    # "original":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1259
    .end local v1    # "original":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private scrollPanleViews()V
    .locals 13

    .prologue
    .line 1383
    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1386
    .local v3, "res":Landroid/content/res/Resources;
    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mStartLongClickedIdx:I

    .line 1387
    .local v2, "longClickedIdx":I
    iget v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v2, v10, :cond_1

    .line 1388
    const/4 v1, 0x1

    .line 1393
    .local v1, "fromArea":I
    :goto_0
    iget v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1394
    .local v8, "touchedIdx":I
    iget v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v8, v10, :cond_2

    .line 1395
    const/4 v7, 0x1

    .line 1400
    .local v7, "toArea":I
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v10}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 1401
    .local v4, "scrollViewheight":I
    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v10}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    .line 1402
    .local v5, "scrollY":I
    const v10, 0x7f0c0479

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1403
    .local v0, "buttonHeight":I
    const v10, 0x7f0c048b

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f0c047d

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int v6, v10, v11

    .line 1405
    .local v6, "summaryTextHeight":I
    const-string v10, "QSEditPanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scrollPanleViews() longClickedIdx : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " touchedIdx : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " scrollY : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    const-string v10, "QSEditPanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scrollPanleViews() fromArea : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " toArea : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    div-int/lit8 v10, v0, 0x3

    sub-int v9, v0, v10

    .line 1409
    .local v9, "twoThirdsOfHeight":I
    if-ne v1, v7, :cond_6

    .line 1410
    if-nez v1, :cond_4

    if-nez v1, :cond_4

    .line 1411
    if-ltz v8, :cond_3

    const/4 v10, 0x4

    if-gt v8, v10, :cond_3

    .line 1412
    const/4 v10, 0x0

    invoke-direct {p0, v5, v10}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    .line 1438
    :cond_0
    :goto_2
    return-void

    .line 1390
    .end local v0    # "buttonHeight":I
    .end local v1    # "fromArea":I
    .end local v4    # "scrollViewheight":I
    .end local v5    # "scrollY":I
    .end local v6    # "summaryTextHeight":I
    .end local v7    # "toArea":I
    .end local v8    # "touchedIdx":I
    .end local v9    # "twoThirdsOfHeight":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "fromArea":I
    goto/16 :goto_0

    .line 1397
    .restart local v8    # "touchedIdx":I
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "toArea":I
    goto/16 :goto_1

    .line 1413
    .restart local v0    # "buttonHeight":I
    .restart local v4    # "scrollViewheight":I
    .restart local v5    # "scrollY":I
    .restart local v6    # "summaryTextHeight":I
    .restart local v9    # "twoThirdsOfHeight":I
    :cond_3
    const/4 v10, 0x5

    if-lt v8, v10, :cond_0

    const/16 v10, 0x9

    if-gt v8, v10, :cond_0

    if-le v5, v9, :cond_0

    .line 1414
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1416
    :cond_4
    const/4 v10, 0x1

    if-ne v1, v10, :cond_0

    const/4 v10, 0x1

    if-ne v1, v10, :cond_0

    .line 1417
    const/16 v10, 0xf

    if-lt v8, v10, :cond_5

    const/16 v10, 0x13

    if-gt v8, v10, :cond_5

    if-eqz v5, :cond_5

    .line 1418
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1419
    :cond_5
    const/16 v10, 0x13

    if-le v8, v10, :cond_0

    .line 1420
    add-int v10, v0, v6

    invoke-direct {p0, v5, v10}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1424
    :cond_6
    if-nez v1, :cond_8

    const/4 v10, 0x1

    if-ne v7, v10, :cond_8

    .line 1425
    const/16 v10, 0xf

    if-lt v8, v10, :cond_7

    const/16 v10, 0x13

    if-gt v8, v10, :cond_7

    if-nez v5, :cond_7

    .line 1426
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1427
    :cond_7
    const/16 v10, 0x13

    if-le v8, v10, :cond_0

    .line 1428
    add-int v10, v0, v6

    invoke-direct {p0, v5, v10}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1430
    :cond_8
    const/4 v10, 0x1

    if-ne v1, v10, :cond_0

    if-nez v7, :cond_0

    .line 1431
    if-ltz v8, :cond_9

    const/4 v10, 0x4

    if-gt v8, v10, :cond_9

    if-eqz v5, :cond_9

    .line 1432
    const/4 v10, 0x0

    invoke-direct {p0, v5, v10}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2

    .line 1433
    :cond_9
    const/4 v10, 0x5

    if-lt v8, v10, :cond_0

    const/16 v10, 0x9

    if-gt v8, v10, :cond_0

    if-eqz v5, :cond_0

    .line 1434
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/qs/QSEditPanel;->animateScrollViews(II)V

    goto :goto_2
.end method

.method private sendDiagnosticLogs()V
    .locals 6

    .prologue
    .line 1263
    const/4 v0, 0x0

    .line 1264
    .local v0, "buttonName":Ljava/lang/String;
    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1265
    .local v2, "dropIdx":I
    iget v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v2, v4, :cond_3

    .line 1266
    iget v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v2, v4

    .line 1267
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 1271
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 1274
    :cond_2
    const/4 v3, 0x1

    .line 1275
    .local v3, "toArea":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buttonName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1288
    .restart local v0    # "buttonName":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "MOVETOACTIVE"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "MOVETOAVAILABLE"

    aput-object v5, v1, v4

    .line 1289
    .local v1, "diagnosticMessage":[Ljava/lang/String;
    aget-object v4, v1, v3

    invoke-direct {p0, v4, v0}, Lcom/android/systemui/qs/QSEditPanel;->sendLogs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1277
    .end local v1    # "diagnosticMessage":[Ljava/lang/String;
    .end local v3    # "toArea":I
    :cond_3
    const/4 v3, 0x0

    .line 1278
    .restart local v3    # "toArea":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1281
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_4

    .line 1282
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 1285
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buttonName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "buttonName":Ljava/lang/String;
    goto :goto_1
.end method

.method private sendLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 1296
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1297
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.systemui.statusbar.policy.quicksetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    const-string v2, "MOVETOACTIVE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1299
    const-string v2, "feature"

    const-string v3, "QS01"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    :cond_0
    :goto_0
    const-string v2, "extra"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1306
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1307
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1308
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1310
    return-void

    .line 1300
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    const-string v2, "MOVETOAVAILABLE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1301
    const-string v2, "feature"

    const-string v3, "QS02"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setFocus(I)V
    .locals 10
    .param p1, "mode"    # I

    .prologue
    const/16 v9, 0x65

    const v8, 0x7f0e0274

    .line 966
    const/4 v0, 0x0

    .line 967
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 971
    .local v1, "diff":I
    if-nez p1, :cond_2

    .line 972
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 973
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    .line 974
    .local v4, "parent":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    .line 989
    :cond_0
    :goto_0
    const-string v5, "QSEditPanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setFocus() childCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 992
    add-int v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 994
    .local v3, "mFocusableChild":Landroid/widget/FrameLayout;
    if-nez v3, :cond_3

    .line 1039
    .end local v3    # "mFocusableChild":Landroid/widget/FrameLayout;
    :cond_1
    return-void

    .line 976
    .end local v2    # "i":I
    .end local v4    # "parent":Landroid/widget/FrameLayout;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 977
    const/16 v1, 0x65

    .line 978
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    .line 980
    .restart local v4    # "parent":Landroid/widget/FrameLayout;
    if-nez v0, :cond_0

    .line 981
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->showHideQConnectEditLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 982
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setNextFocusUpId(I)V

    .line 983
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setNextFocusUpId(I)V

    .line 984
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v8}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    .line 985
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v8}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    goto :goto_0

    .line 998
    .restart local v2    # "i":I
    .restart local v3    # "mFocusableChild":Landroid/widget/FrameLayout;
    :cond_3
    const/4 v5, 0x1

    if-lt v2, v5, :cond_4

    .line 999
    add-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusLeftId(I)V

    .line 1008
    :goto_2
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v0, :cond_6

    .line 1009
    add-int v5, v2, v1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusRightId(I)V

    .line 1017
    :goto_3
    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    add-int/2addr v5, v2

    if-ge v5, v0, :cond_8

    .line 1018
    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusDownId(I)V

    .line 1030
    :goto_4
    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    sub-int v5, v2, v5

    if-ltz v5, :cond_b

    .line 1031
    add-int v5, v2, v1

    iget v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mNumColumns:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusUpId(I)V

    .line 990
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1001
    :cond_4
    if-nez p1, :cond_5

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1002
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x65

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusLeftId(I)V

    goto :goto_2

    .line 1004
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusLeftId(I)V

    goto :goto_2

    .line 1011
    :cond_6
    if-nez p1, :cond_7

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 1012
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setNextFocusRightId(I)V

    goto :goto_3

    .line 1014
    :cond_7
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusRightId(I)V

    goto :goto_3

    .line 1020
    :cond_8
    if-nez p1, :cond_9

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 1021
    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setNextFocusDownId(I)V

    goto :goto_4

    .line 1023
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->showHideQConnectEditLayout()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1024
    const v5, 0x7f0e027d

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusDownId(I)V

    goto :goto_4

    .line 1026
    :cond_a
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setNextFocusDownId(I)V

    goto :goto_4

    .line 1033
    :cond_b
    if-nez p1, :cond_c

    .line 1034
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setNextFocusUpId(I)V

    goto :goto_5

    .line 1036
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setNextFocusUpId(I)V

    goto/16 :goto_5
.end method

.method private setForegroundButtonViewId(Landroid/widget/FrameLayout;II)V
    .locals 1
    .param p1, "panelViewFocus"    # Landroid/widget/FrameLayout;
    .param p2, "idx"    # I
    .param p3, "mode"    # I

    .prologue
    .line 1043
    if-nez p3, :cond_0

    .line 1044
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1048
    :goto_0
    return-void

    .line 1046
    :cond_0
    add-int/lit8 v0, p2, 0x65

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    goto :goto_0
.end method

.method private showHideQConnectEditLayout()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 340
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v2

    .line 341
    .local v2, "isKioskEnabled":Z
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 342
    .local v0, "currentUserId":I
    const/4 v1, 0x0

    .line 344
    .local v1, "isEmergencyMode":Z
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "emergency_mode"

    invoke-static {v5, v6, v4, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v3

    .line 345
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSFinderQConnectView:Z

    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShowSFinderQConnectQSB:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v2, :cond_1

    .line 351
    :cond_0
    const-string v3, "QSEditPanel"

    const-string v5, "showHideQConnectEditLayout should be hide"

    invoke-static {v3, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 355
    :cond_1
    return v3

    :cond_2
    move v1, v4

    .line 344
    goto :goto_0
.end method

.method private showToastPopup()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x6d

    const/16 v11, 0x6c

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1322
    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedIdx:I

    .line 1323
    .local v2, "longClickedIdx":I
    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v2, v9, :cond_2

    .line 1324
    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v2, v9

    .line 1325
    const/4 v1, 0x1

    .line 1330
    .local v1, "fromArea":I
    :goto_0
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mTouchedIdx:I

    .line 1331
    .local v0, "dropIdx":I
    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    if-lt v0, v9, :cond_3

    .line 1332
    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mIdxGap:I

    sub-int/2addr v0, v9

    .line 1333
    const/4 v6, 0x1

    .line 1338
    .local v6, "toArea":I
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    if-nez v9, :cond_0

    .line 1339
    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    const-string v10, ""

    invoke-static {v9, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    .line 1341
    :cond_0
    if-nez v1, :cond_4

    if-ne v6, v8, :cond_4

    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMinNum:I

    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v9, v10, :cond_4

    .line 1342
    iget-object v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0500

    new-array v8, v8, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMinNum:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v7

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1343
    .local v3, "message":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v8, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1344
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v8, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 1345
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 1346
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->isShown()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1347
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1378
    .end local v3    # "message":Ljava/lang/String;
    :cond_1
    :goto_2
    return v7

    .line 1327
    .end local v0    # "dropIdx":I
    .end local v1    # "fromArea":I
    .end local v6    # "toArea":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "fromArea":I
    goto :goto_0

    .line 1335
    .restart local v0    # "dropIdx":I
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "toArea":I
    goto :goto_1

    .line 1350
    :cond_4
    if-ne v1, v8, :cond_6

    if-nez v6, :cond_6

    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMaxNum:I

    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gt v9, v10, :cond_6

    .line 1351
    new-instance v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    invoke-direct {v5, p0, v13}, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 1352
    .local v5, "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    iput v1, v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1353
    iput v2, v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1354
    iput v0, v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1355
    const/4 v4, 0x0

    .line 1356
    .local v4, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1357
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1359
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v11, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1360
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1364
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    :cond_6
    iget-boolean v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mMaxActiveToAvailableEnabled:Z

    if-eqz v9, :cond_8

    if-nez v1, :cond_8

    if-ne v6, v8, :cond_8

    iget v9, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsMaxNum:I

    iget-object v10, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$3100(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gt v9, v10, :cond_8

    .line 1365
    new-instance v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;

    invoke-direct {v5, p0, v13}, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 1366
    .restart local v5    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    iput v1, v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->mode:I

    .line 1367
    iput v2, v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->longClickedIdx:I

    .line 1368
    iput v0, v5, Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;->touchedIdx:I

    .line 1369
    const/4 v4, 0x0

    .line 1370
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1371
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1373
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1374
    iget-object v8, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1375
    iput-boolean v7, p0, Lcom/android/systemui/qs/QSEditPanel;->mMaxActiveToAvailableEnabled:Z

    goto :goto_2

    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObjectAnim;
    :cond_8
    move v7, v8

    .line 1378
    goto :goto_2
.end method

.method private showWhiteCircle(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1139
    .local p2, "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "overLayedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    if-eqz p2, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/qs/QSEditPanel;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1142
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0e0291

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mPrvLongClickedBg:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1145
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mPrvLongClickedBg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1148
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1149
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLongClickedBg:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mPrvLongClickedBg:Landroid/view/View;

    .line 1151
    :cond_2
    return-void
.end method

.method private updateHelpTextPosition(ZZ)V
    .locals 5
    .param p1, "oneLine"    # Z
    .param p2, "twoLines"    # Z

    .prologue
    const v4, 0x7f0c047e

    const v3, 0x7f0c047d

    .line 707
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 708
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 709
    .local v0, "lpmAvailableParent":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 710
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 711
    :cond_0
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 714
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v2, :cond_2

    .line 715
    if-eqz p1, :cond_3

    .line 716
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 721
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 722
    return-void

    .line 717
    :cond_3
    if-eqz p2, :cond_2

    .line 718
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private updateLayoutParams()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1942
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1943
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1944
    .local v1, "lpmAvailableParent":Landroid/widget/LinearLayout$LayoutParams;
    const v3, 0x7f0c047d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1945
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1946
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1947
    .local v0, "lpmActiveParent":Landroid/widget/LinearLayout$LayoutParams;
    const v3, 0x7f0c047c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1948
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    const v4, 0x7f0c047b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v5, v5, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1949
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1950
    return-void
.end method

.method private updateTextResources()V
    .locals 4

    .prologue
    .line 1930
    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSEditPanel$9;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/qs/QSEditPanel;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1936
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1937
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditSummary:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 1938
    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditSummary:Landroid/widget/TextView;

    const v2, 0x7f0d04ff

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1939
    return-void
.end method


# virtual methods
.method protected handleUpdateViewChangeState(Lcom/android/systemui/qs/QSEditPanel$MessageObject;)V
    .locals 6
    .param p1, "msg"    # Lcom/android/systemui/qs/QSEditPanel$MessageObject;

    .prologue
    .line 645
    const/4 v2, 0x0

    .line 647
    .local v2, "viewToUpdate":Landroid/view/View;
    const-string v3, "QSEditPanel"

    const-string v4, "handleUpdateViewChangeState()"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 650
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v2, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->viewContainer:Landroid/widget/FrameLayout;

    .line 651
    :cond_0
    if-eqz v2, :cond_1

    .line 652
    const v3, 0x7f0e028f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 653
    .local v0, "panelImageView":Landroid/widget/ImageView;
    const v3, 0x7f0e0290

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 655
    .local v1, "panelTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iput-object v4, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 656
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->label:Ljava/lang/String;

    .line 658
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iget v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mCellWidth:I

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/systemui/qs/QSTileView;->handleTextStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/view/View;I)V

    .line 660
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v4, v4, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->contentDesc:Ljava/lang/String;

    .line 661
    iget-object v3, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v3, v3, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v4, p1, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/qs/QSTileView;->handleIconStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/view/View;)V

    .line 664
    .end local v0    # "panelImageView":Landroid/widget/ImageView;
    .end local v1    # "panelTextView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 387
    const-string v0, "QSEditPanel"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 389
    const v0, 0x7f0e0279

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableButtonContainer:Landroid/widget/FrameLayout;

    .line 390
    const v0, 0x7f0e0277

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveButtonContainer:Landroid/widget/FrameLayout;

    .line 391
    const v0, 0x7f0e0276

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveContainerParent:Landroid/widget/LinearLayout;

    .line 392
    const v0, 0x7f0e0278

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableContainerParent:Landroid/widget/LinearLayout;

    .line 394
    const v0, 0x7f0e0275

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    .line 396
    const v0, 0x7f0e027a

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mEditSummary:Landroid/widget/TextView;

    .line 397
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    .line 398
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLocale:Ljava/util/Locale;

    .line 399
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_panel_active_app_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 401
    const v0, 0x7f0e027d

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    .line 402
    const v0, 0x7f0e0281

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    .line 403
    const v0, 0x7f0e027c

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderGroup:Landroid/widget/LinearLayout;

    .line 404
    const v0, 0x7f0e0280

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectGroup:Landroid/widget/LinearLayout;

    .line 406
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderGroup:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSEditPanel$2;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectGroup:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/qs/QSEditPanel$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSEditPanel$3;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 475
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v4, 0x70

    .line 1892
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1893
    const-string v0, "QSEditPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() - newConfig.orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1895
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mLocale:Ljava/util/Locale;

    .line 1896
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->updateTextResources()V

    .line 1898
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    .line 1899
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mCurrentOrientation:I

    .line 1901
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1902
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1905
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSEditPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1906
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->handleDelayedOnConfigurationChanged()V

    .line 1911
    :cond_2
    :goto_0
    return-void

    .line 1908
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1063
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1064
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1065
    return-void
.end method

.method public resetPanel()V
    .locals 8

    .prologue
    const/16 v7, 0x67

    const/16 v6, 0x66

    const/16 v5, 0x65

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 503
    const-string v0, "QSEditPanel"

    const-string v1, "resetPanel()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v0, :cond_c

    .line 506
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "notification_panel_active_number_of_apps"

    const/16 v2, 0xe

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    .line 511
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSEditPanel;->setTiles(Ljava/util/Collection;)V

    .line 514
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshViews()V

    .line 515
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->refreshSfinderQConnectEditLayout()V

    .line 517
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 524
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 527
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 529
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 530
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 533
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 535
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 536
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 538
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 539
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 542
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 544
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 545
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    :cond_a
    invoke-static {}, Lcom/android/systemui/qs/QSEditPanel;->isSuportMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 550
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 553
    :cond_b
    return-void

    .line 508
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "notification_panel_active_number_of_apps"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    goto/16 :goto_0
.end method

.method public saveAppslist()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x2

    .line 1954
    const-string v0, ""

    .line 1958
    .local v0, "activeApps":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 1959
    const-string v4, "QSEditPanel"

    const-string v5, "invalid mArrayActiveList.  do not saveAppslist()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    :cond_0
    :goto_0
    return-void

    .line 1963
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1964
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1965
    .local v2, "convertPanelString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1966
    .local v1, "activeContent":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1963
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1968
    .end local v1    # "activeContent":Ljava/lang/String;
    .end local v2    # "convertPanelString":Ljava/lang/String;
    :cond_2
    const-string v4, "QSEditPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAppslist() -  activeApps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1970
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1971
    .restart local v2    # "convertPanelString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1972
    .restart local v1    # "activeContent":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1969
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1974
    .end local v1    # "activeContent":Ljava/lang/String;
    .end local v2    # "convertPanelString":Ljava/lang/String;
    :cond_3
    const-string v4, "QSEditPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAppslist() -  totalButtons: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "notification_panel_active_number_of_apps"

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1979
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "notification_panel_active_app_list"

    invoke-static {v4, v5, v0, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1983
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v4, :cond_4

    .line 1984
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "notification_panel_active_number_of_apps"

    const/16 v6, 0xe

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    .line 1989
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/qs/QSEditPanel;->showHideQConnectEditLayout()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1990
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mSfinderCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-ne v4, v8, :cond_5

    .line 1991
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sfinderchecked"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1996
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mQconnectCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-ne v4, v8, :cond_6

    .line 1997
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "qconnectchecked"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1986
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "notification_panel_active_number_of_apps"

    const/16 v6, 0xa

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveAppsNum:I

    goto :goto_3

    .line 1993
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sfinderchecked"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 1999
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/qs/QSEditPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "qconnectchecked"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 337
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 2005
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 2006
    return-void
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    const/4 v3, 0x0

    .line 556
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 557
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mActiveTileCount:I

    .line 558
    iput v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mAvailableTileCount:I

    .line 559
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSEditPanel;->mIsActiveAdded:Z

    .line 560
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 561
    iget-object v2, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 562
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile;

    .line 563
    .local v1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSEditPanel;->addTile(Lcom/android/systemui/qs/QSTile;)V

    goto :goto_0

    .line 565
    .end local v1    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_0
    return-void
.end method

.method public updateViews()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x64

    .line 478
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 479
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 480
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayActiveList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .line 482
    .local v4, "tileRecord":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    new-instance v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;

    invoke-direct {v2, p0, v8}, Lcom/android/systemui/qs/QSEditPanel$MessageObject;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 483
    .local v2, "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObject;
    iget-object v5, v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->key:Ljava/lang/String;

    iput-object v5, v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    .line 484
    iget-object v5, v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v5

    iput-object v5, v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 485
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 486
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObject;
    .end local v4    # "tileRecord":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 491
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 492
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mRecords:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/systemui/qs/QSEditPanel;->mArrayAvailableList:Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    # getter for: Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;

    .line 493
    .restart local v4    # "tileRecord":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    new-instance v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;

    invoke-direct {v2, p0, v8}, Lcom/android/systemui/qs/QSEditPanel$MessageObject;-><init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V

    .line 494
    .restart local v2    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObject;
    iget-object v5, v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->key:Ljava/lang/String;

    iput-object v5, v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->key:Ljava/lang/String;

    .line 495
    iget-object v5, v4, Lcom/android/systemui/qs/QSEditPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v5

    iput-object v5, v2, Lcom/android/systemui/qs/QSEditPanel$MessageObject;->state:Lcom/android/systemui/qs/QSTile$State;

    .line 496
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 497
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/systemui/qs/QSEditPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 499
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "msgObj":Lcom/android/systemui/qs/QSEditPanel$MessageObject;
    .end local v4    # "tileRecord":Lcom/android/systemui/qs/QSEditPanel$TileRecord;
    :cond_1
    return-void
.end method
