.class public Lcom/android/keyguard/sec/KeyguardPreviewInflater;
.super Ljava/lang/Object;
.source "KeyguardPreviewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardPreviewInflater$1;,
        Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;
    }
.end annotation


# static fields
.field private static final META_DATA_KEYGUARD_LAYOUT:Ljava/lang/String; = "com.android.keyguard.layout"

.field private static final META_DATA_KEYGUARD_MOBILE_KEYBOARD_LAYOUT:Ljava/lang/String; = "com.android.keyguard.mobilekeyboard.layout"

.field private static final META_DATA_KEYGUARD_THEME_LAYOUT:Ljava/lang/String; = "com.android.keyguard.theme.layout"

.field private static final SAMSUNG_PRELOAD_DIALER_ACTION:Ljava/lang/String; = "com.samsung.dialer.action.ACTION_PHONE_PREVIEW"

.field private static final TAG:Ljava/lang/String; = "KeyguardPreviewInflater"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsSupportMobileKeyboard:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPhoneResId:I

.field private mSecPreviewLoaded:Z

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mPhoneResId:I

    .line 58
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mIsSupportMobileKeyboard:Z

    .line 61
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 63
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mWm:Landroid/view/IWindowManager;

    .line 64
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mIsSupportMobileKeyboard:Z

    .line 65
    return-void
.end method

.method private getThemePackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetInfo(Landroid/content/Intent;)Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 138
    new-instance v2, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;

    invoke-direct {v2, v9}, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;-><init>(Lcom/android/keyguard/sec/KeyguardPreviewInflater$1;)V

    .line 139
    .local v2, "info":Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 140
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v10, 0x10000

    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v11

    invoke-virtual {v5, p1, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 142
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 143
    const-string v8, "KeyguardPreviewInflater"

    const-string v10, "appList.size() == 0"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v9

    .line 191
    .end local v2    # "info":Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;
    :goto_0
    return-object v2

    .line 146
    .restart local v2    # "info":Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;
    :cond_0
    const v10, 0x10080

    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v11

    invoke-virtual {v5, p1, v10, v11}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 149
    .local v6, "resolved":Landroid/content/pm/ResolveInfo;
    invoke-static {v6, v0}, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 150
    const-string v8, "KeyguardPreviewInflater"

    const-string v10, "wouldLaunchResolverActivity(resolved, appList)"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v9

    .line 151
    goto :goto_0

    .line 153
    :cond_1
    if-eqz v6, :cond_2

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v10, :cond_3

    .line 154
    :cond_2
    const-string v8, "KeyguardPreviewInflater"

    const-string v10, "resolved == null || resolved.activityInfo == null"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v9

    .line 155
    goto :goto_0

    .line 157
    :cond_3
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v10, :cond_4

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v10}, Landroid/os/Bundle;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 158
    :cond_4
    const-string v8, "KeyguardPreviewInflater"

    const-string v10, "resolved.activityInfo.metaData == null || resolved.activityInfo.metaData.isEmpty()"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v9

    .line 159
    goto :goto_0

    .line 161
    :cond_5
    const/4 v3, 0x0

    .line 162
    .local v3, "layoutId":I
    const/4 v4, 0x0

    .line 163
    .local v4, "mobileKeyboardOn":Z
    iget-boolean v10, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mIsSupportMobileKeyboard:Z

    if-eqz v10, :cond_6

    .line 164
    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 165
    .local v1, "conf":Landroid/content/res/Configuration;
    iget v10, v1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v10, v8, :cond_7

    move v4, v8

    .line 168
    .end local v1    # "conf":Landroid/content/res/Configuration;
    :cond_6
    :goto_1
    const-string v8, "com.samsung.dialer.action.ACTION_PHONE_PREVIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 169
    iget-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mIsSupportMobileKeyboard:Z

    if-eqz v8, :cond_8

    if-eqz v4, :cond_8

    .line 170
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "com.android.keyguard.mobilekeyboard.layout"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 183
    :goto_2
    if-nez v3, :cond_c

    .line 184
    const-string v8, "KeyguardPreviewInflater"

    const-string v10, "layoutId == 0"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v9

    .line 185
    goto :goto_0

    .line 165
    .restart local v1    # "conf":Landroid/content/res/Configuration;
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 171
    .end local v1    # "conf":Landroid/content/res/Configuration;
    :cond_8
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->getThemePackage()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 172
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "com.android.keyguard.theme.layout"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 174
    :cond_9
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "com.android.keyguard.layout"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 177
    :cond_a
    iget-boolean v8, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mIsSupportMobileKeyboard:Z

    if-eqz v8, :cond_b

    if-eqz v4, :cond_b

    .line 178
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "com.android.keyguard.mobilekeyboard.layout"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 180
    :cond_b
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v10, "com.android.keyguard.layout"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 187
    :cond_c
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v7, v8, Landroid/content/pm/ActivityInfo;->theme:I

    .line 188
    .local v7, "theme":I
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v8, v2, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    .line 189
    iput v3, v2, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->layoutId:I

    .line 190
    iput v7, v2, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->theme:I

    goto/16 :goto_0
.end method

.method private inflateWidgetView(Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;)Landroid/view/View;
    .locals 7
    .param p1, "widgetInfo"    # Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;

    .prologue
    .line 122
    const/4 v3, 0x0

    .line 124
    .local v3, "widgetView":Landroid/view/View;
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    const/16 v6, 0x1004

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 126
    .local v0, "appContext":Landroid/content/Context;
    iget v4, p1, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->theme:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->setTheme(I)V

    .line 127
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 129
    .local v1, "appInflater":Landroid/view/LayoutInflater;
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 130
    iget v4, p1, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->layoutId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 134
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "appInflater":Landroid/view/LayoutInflater;
    :goto_0
    return-object v3

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    const-string v4, "KeyguardPreviewInflater"

    const-string v5, "Error creating widget view"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 131
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "currentUserId"    # I

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 197
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v3, 0x10000

    invoke-virtual {v1, p1, v3, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 199
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 200
    const/4 v3, 0x0

    .line 204
    :goto_0
    return v3

    .line 202
    :cond_0
    const v3, 0x10080

    invoke-virtual {v1, p1, v3, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 204
    .local v2, "resolved":Landroid/content/pm/ResolveInfo;
    invoke-static {v2, v0}, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v3

    goto :goto_0
.end method

.method private static wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 4
    .param p0, "resolved"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 212
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 213
    .local v1, "tmp":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    const/4 v2, 0x0

    .line 220
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :goto_1
    return v2

    .line 211
    .restart local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public checkPhonePreviewUpdated()Z
    .locals 6

    .prologue
    .line 230
    const/4 v2, 0x0

    .line 231
    .local v2, "retValue":Z
    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mSecPreviewLoaded:Z

    if-eqz v3, :cond_0

    .line 232
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mWm:Landroid/view/IWindowManager;

    if-eqz v3, :cond_0

    .line 234
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mWm:Landroid/view/IWindowManager;

    const-string v4, "com.android.contacts"

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->getKeyguardPreviewLayoutResId(Ljava/lang/String;)I

    move-result v0

    .line 235
    .local v0, "currentResId":I
    const-string v3, "KeyguardPreviewInflater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentResId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPhoneResId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mPhoneResId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mPhoneResId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v3, :cond_0

    .line 237
    const/4 v2, 0x1

    .line 244
    .end local v0    # "currentResId":I
    :cond_0
    :goto_0
    return v2

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "KeyguardPreviewInflater"

    const-string v4, "RemoteException while getKeyguardPreviewLayoutResId()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public inflatePreview(Landroid/content/Intent;)Landroid/view/View;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 68
    const-string v7, "KeyguardPreviewInflater"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intent.getAction()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->getWidgetInfo(Landroid/content/Intent;)Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;

    move-result-object v3

    .line 70
    .local v3, "info":Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;
    if-nez v3, :cond_0

    .line 71
    const-string v7, "KeyguardPreviewInflater"

    const-string v8, "info == null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return-object v0

    .line 75
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.DIAL"

    if-ne v7, v8, :cond_4

    .line 77
    iget-object v7, v3, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    const-string v8, "com.android.contacts"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 78
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mSecPreviewLoaded:Z

    .line 80
    const-string v7, "KeyguardPreviewInflater"

    const-string v8, "switching default dialer action"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v4, 0x0

    .line 82
    .local v4, "newInfo":Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mWm:Landroid/view/IWindowManager;

    if-eqz v7, :cond_2

    .line 84
    :try_start_0
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mWm:Landroid/view/IWindowManager;

    const-string v8, "com.android.contacts"

    invoke-interface {v7, v8}, Landroid/view/IWindowManager;->getKeyguardPreviewLayoutResId(Ljava/lang/String;)I

    move-result v1

    .line 85
    .local v1, "currentResId":I
    if-eqz v1, :cond_1

    .line 86
    new-instance v5, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;-><init>(Lcom/android/keyguard/sec/KeyguardPreviewInflater$1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v4    # "newInfo":Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;
    .local v5, "newInfo":Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;
    :try_start_1
    iget-object v7, v3, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iput-object v7, v5, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    .line 88
    iput v1, v5, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->layoutId:I

    .line 89
    iget v7, v3, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->theme:I

    iput v7, v5, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->theme:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 91
    .end local v5    # "newInfo":Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;
    .restart local v4    # "newInfo":Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;
    :cond_1
    :try_start_2
    iput v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mPhoneResId:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    .end local v1    # "currentResId":I
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 97
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.dialer.action.ACTION_PHONE_PREVIEW"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->getWidgetInfo(Landroid/content/Intent;)Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;

    move-result-object v3

    .line 98
    if-nez v3, :cond_4

    .line 99
    const-string v7, "KeyguardPreviewInflater"

    const-string v8, "info == null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Landroid/os/RemoteException;
    :goto_2
    const-string v7, "KeyguardPreviewInflater"

    const-string v8, "RemoteException while getKeyguardPreviewLayoutResId()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 103
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v7, v4, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iput-object v7, v3, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    .line 104
    iget v7, v4, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->layoutId:I

    iput v7, v3, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->layoutId:I

    .line 105
    iget v7, v4, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->theme:I

    iput v7, v3, Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;->theme:I

    .line 111
    .end local v4    # "newInfo":Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;
    :cond_4
    :goto_3
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->inflateWidgetView(Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;)Landroid/view/View;

    move-result-object v6

    .line 112
    .local v6, "v":Landroid/view/View;
    if-nez v6, :cond_6

    .line 113
    const-string v7, "KeyguardPreviewInflater"

    const-string v8, "v == null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    .end local v6    # "v":Landroid/view/View;
    :cond_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mSecPreviewLoaded:Z

    goto :goto_3

    .line 116
    .restart local v6    # "v":Landroid/view/View;
    :cond_6
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardPreviewInflater;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, "container":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 92
    .end local v0    # "container":Landroid/widget/FrameLayout;
    .end local v6    # "v":Landroid/view/View;
    .restart local v1    # "currentResId":I
    .restart local v5    # "newInfo":Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5    # "newInfo":Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;
    .restart local v4    # "newInfo":Lcom/android/keyguard/sec/KeyguardPreviewInflater$WidgetInfo;
    goto :goto_2
.end method
