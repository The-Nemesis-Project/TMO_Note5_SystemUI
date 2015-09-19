.class public Lcom/android/systemui/recent/ScreenPinningRequestDialog;
.super Ljava/lang/Object;
.source "ScreenPinningRequestDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final STATUSBAR_ANIMATING:Ljava/lang/String; = "com.android.systemui.statusbar.ANIMATING"

.field private static final TAG:Ljava/lang/String; = "ScreenPinningRequestDialog"

.field private static mDialog:Landroid/app/AlertDialog;


# instance fields
.field private final mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field public final mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v1, Lcom/android/systemui/recent/ScreenPinningRequestDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/ScreenPinningRequestDialog$1;-><init>(Lcom/android/systemui/recent/ScreenPinningRequestDialog;)V

    iput-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    .line 51
    iget-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    return-void
.end method


# virtual methods
.method public clearPrompt()V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "ScreenPinningRequestDialog"

    const-string v1, "clearPrompt"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object v0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    .line 66
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 109
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 111
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->startLockTaskModeOnCurrent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->clearPrompt()V

    .line 117
    :goto_1
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->clearPrompt()V

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showPrompt()V
    .locals 13

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->clearPrompt()V

    .line 71
    const-string v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "NEW_LINE":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d04f1

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "pinWindows":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d04f0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, "title":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d04f2

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "description_1":Ljava/lang/String;
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v9, :cond_0

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mIsWIFI:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d04f4

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "description_2":Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    .line 82
    .local v5, "hasPermanentMenuKey":Z
    if-eqz v5, :cond_2

    .line 83
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d04f8

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "description_3":Ljava/lang/String;
    :goto_1
    const/4 v7, 0x5

    .line 94
    .local v7, "theme":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 95
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 96
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 97
    const v9, 0x7f0d04ed

    invoke-virtual {v1, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    const v9, 0x7f0d04ee

    invoke-virtual {v1, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    sput-object v9, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    .line 101
    sget-object v9, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 102
    sget-object v9, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 104
    sget-object v9, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 105
    return-void

    .line 75
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "description_2":Ljava/lang/String;
    .end local v4    # "description_3":Ljava/lang/String;
    .end local v5    # "hasPermanentMenuKey":Z
    .end local v7    # "theme":I
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d04f3

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 83
    .restart local v3    # "description_2":Ljava/lang/String;
    .restart local v5    # "hasPermanentMenuKey":Z
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d04f6

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 87
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d04f7

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "description_3":Ljava/lang/String;
    :goto_2
    goto/16 :goto_1

    .end local v4    # "description_3":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/recent/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0d04f5

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method
