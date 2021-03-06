.class public Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;
.super Lcom/sec/android/cover/sviewcover/SViewCoverActivity;
.source "SViewCoverSettingActivity.java"


# static fields
.field public static final NEED_TO_FINISH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SViewCoverSettingActivity"


# instance fields
.field private final SELECT_INFO_ITEM:I

.field private final STYLIZED_CLOCK_STYLE:I

.field private final WINDOW_THEME:I

.field private mAadapterList:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseButton:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mRootBackGroundView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->mListView:Landroid/widget/ListView;

    .line 34
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->mAadapterList:Landroid/widget/ArrayAdapter;

    .line 35
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->mRootBackGroundView:Landroid/widget/ImageView;

    .line 36
    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->mCloseButton:Landroid/widget/ImageView;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->STYLIZED_CLOCK_STYLE:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->WINDOW_THEME:I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->SELECT_INFO_ITEM:I

    return-void
.end method

.method private initValues()V
    .locals 5

    .prologue
    .line 77
    sget v1, Lcom/sec/android/sviewcover/R$id;->setting_activity_list:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->mListView:Landroid/widget/ListView;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_stylized_clock_theme:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_window_theme:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_info_cover:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Landroid/widget/ArrayAdapter;

    sget v2, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_setting_list_item:I

    sget v3, Lcom/sec/android/sviewcover/R$id;->setting_item_text:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->mAadapterList:Landroid/widget/ArrayAdapter;

    .line 87
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->mAadapterList:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    sget v1, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_root_pattern:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->mRootBackGroundView:Landroid/widget/ImageView;

    .line 135
    sget v1, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_close_button:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->mCloseButton:Landroid/widget/ImageView;

    .line 136
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->mCloseButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method

.method private setBackGroundImage()V
    .locals 4

    .prologue
    .line 178
    invoke-static {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v1

    .line 179
    .local v1, "wallpaperManager":Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    const/4 v0, 0x0

    .line 180
    .local v0, "wallpaper":I
    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndex()I

    move-result v0

    .line 182
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->mRootBackGroundView:Landroid/widget/ImageView;

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->mRootBackGroundView:Landroid/widget/ImageView;

    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->mRootBackGroundView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->getWallpaperDrawble()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    return-void
.end method

.method private setWindowParam()V
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected coverCloseEvent()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->coverCloseEvent()V

    .line 159
    return-void
.end method

.method protected coverOpenEvent()V
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DockSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 169
    :try_start_0
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->coverOpenEvent()V

    .line 175
    return-void

    .line 170
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const-string v2, "SViewCoverSettingActivity"

    const-string v3, "ActivityNotFoundException !!"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPossibleDisplayPopup()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    const/4 v1, 0x0

    .line 68
    .local v1, "possible":Z
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "scover_sharedpreferences"

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    .local v0, "mScoverPrefs":Landroid/content/SharedPreferences;
    const-string v2, "Do_not_ask_warning"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 72
    const-string v2, "SViewCoverSettingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DO_NOT_ASK_CLOCK_WARNING value => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->initValues()V

    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 154
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_setting_activity:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->setWindowParam()V

    .line 50
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->initValues()V

    .line 51
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->onPause()V

    .line 194
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverSettingActivity;->setBackGroundImage()V

    .line 62
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->onResume()V

    .line 63
    return-void
.end method
