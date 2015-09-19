.class public Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;
.super Lcom/sec/android/cover/sviewcover/SViewCoverActivity;
.source "SViewCoverPopupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DO_NOT_ASK_CLOCK_WARNING:Ljava/lang/String; = "Do_not_ask_warning"

.field public static final SCOVER_PREF_FILENAME:Ljava/lang/String; = "scover_sharedpreferences"

.field private static final TAG:Ljava/lang/String; = "SViewCoverPopupActivity"


# instance fields
.field private mChecbox:Landroid/widget/CheckBox;

.field private mClosebtn:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCurrentClockIndex:I

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

.field private mOkBtn:Landroid/widget/Button;

.field private mScoverPrefs:Landroid/content/SharedPreferences;

.field private mpopupRootBG:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mCurrentClockIndex:I

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 44
    const-string v0, "SViewCoverPopupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->isPossibleDisplayPopup()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    .line 46
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "stylized_clock_current_index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mCurrentClockIndex:I

    .line 47
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_popup_checkbox:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mChecbox:Landroid/widget/CheckBox;

    .line 48
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_popup_ok_button:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mOkBtn:Landroid/widget/Button;

    .line 49
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_popup_close_button:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mClosebtn:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mClosebtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_popup_activity_setting_root:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mpopupRootBG:Landroid/widget/ImageView;

    .line 53
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->setBackGroundImage()V

    .line 54
    return-void
.end method

.method private saveCheckboxValue(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mContext:Landroid/content/Context;

    const-string v1, "scover_sharedpreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mScoverPrefs:Landroid/content/SharedPreferences;

    .line 58
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mScoverPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 59
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "Do_not_ask_warning"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 60
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    const-string v0, "SViewCoverPopupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saved DO_NOT_ASK_CLOCK_WARNING value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method private setBackGroundImage()V
    .locals 4

    .prologue
    .line 93
    invoke-static {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v1

    .line 94
    .local v1, "wallpaperManager":Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    const/4 v0, 0x0

    .line 95
    .local v0, "wallpaper":I
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndex()I

    move-result v0

    .line 97
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mpopupRootBG:Landroid/widget/ImageView;

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mpopupRootBG:Landroid/widget/ImageView;

    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mpopupRootBG:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->getWallpaperDrawble()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    return-void
.end method


# virtual methods
.method public isPossibleDisplayPopup()Z
    .locals 4

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "possible":Z
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mContext:Landroid/content/Context;

    const-string v2, "scover_sharedpreferences"

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->getApplicationContext()Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mScoverPrefs:Landroid/content/SharedPreferences;

    .line 68
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mScoverPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Do_not_ask_warning"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 69
    const-string v1, "SViewCoverPopupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DO_NOT_ASK_CLOCK_WARNING value => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/sec/android/sviewcover/R$id;->s_view_cover_popup_ok_button:I

    if-ne v2, v3, :cond_1

    .line 76
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mChecbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->saveCheckboxValue(Z)V

    .line 77
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mCurrentClockIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->setCurrentStyleIndex(I)V

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->finish()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/sec/android/sviewcover/R$id;->s_view_cover_popup_close_button:I

    if-ne v2, v3, :cond_0

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.cover.sviewcover.SViewCoverStylizedClockSettingsActivity.LAUNCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "clockIntent":Landroid/content/Intent;
    const-string v2, "stylized_clock_current_index"

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mCurrentClockIndex:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->finish()V

    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "exception":Landroid/content/ActivityNotFoundException;
    const-string v2, "SViewCoverPopupActivity"

    const-string v3, "ActivityNotFoundException !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->mContext:Landroid/content/Context;

    .line 39
    sget v0, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_popup_activity:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverPopupActivity;->init()V

    .line 41
    return-void
.end method
