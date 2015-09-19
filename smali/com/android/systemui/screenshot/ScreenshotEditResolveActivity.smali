.class public Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ScreenshotEditResolveActivity.java"


# static fields
.field private static final PAPER_ARTIST_CLASS_NAME:Ljava/lang/String; = "com.dama.paperartist.PaperArtistActivity"

.field private static final PAPER_ARTIST_PACKAGE_NAME:Ljava/lang/String; = "com.dama.paperartist"

.field private static final PHOTO_EDITOR_CLASS_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching.PhotoRetouching"

.field private static final PHOTO_EDITOR_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching"

.field private static final PSTOUCH_CLASS_NAME:Ljava/lang/String; = "air.com.adobe.pstouch.oem1.AppEntry"

.field private static final PSTOUCH_PACKAGE_NAME:Ljava/lang/String; = "air.com.adobe.pstouch.oem1"

.field private static final SAVED_FILE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final SCREENCAPTURE_NAME:Ljava/lang/String; = ".screenshotEdits"

.field private static final SCREENSHOT_NOTIFICATION_ID:I = 0x315

.field private static final TAG:Ljava/lang/String; = "ScreenshotEditResolveActivity"

.field private static final mMimeType:Ljava/lang/String; = "image/png"


# instance fields
.field private mEditFile:Ljava/io/File;

.field private mFileUri:Landroid/net/Uri;

.field private mImageDirPath:Ljava/lang/String;

.field private mImageFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageDirPath:Ljava/lang/String;

    return-void
.end method

.method private addPaperArtistIntent(Ljava/util/ArrayList;Landroid/content/Intent;)Z
    .locals 17
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "currentResolveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const-string v14, "com.dama.paperartist"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->isPackageVaild(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 128
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageDirPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".screenshotEdits"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 131
    .local v11, "outFileName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 132
    .local v7, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 134
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v8, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 135
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 137
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 138
    .local v2, "data":I
    const/16 v14, 0x400

    :try_start_2
    new-array v1, v14, [B

    .line 139
    .local v1, "buffer":[B
    :goto_0
    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v8, v1, v14, v15}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    const/4 v14, -0x1

    if-eq v2, v14, :cond_2

    .line 140
    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 144
    .end local v1    # "buffer":[B
    :catch_0
    move-exception v3

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 145
    .end local v2    # "data":I
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :goto_1
    const-string v14, "ScreenshotEditResolveActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Fail : file operation error// File in : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "File out : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    if-eqz v7, :cond_0

    .line 150
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 153
    :cond_0
    :goto_2
    if-eqz v9, :cond_1

    .line 154
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 156
    :cond_1
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->finish()V

    .line 157
    const/4 v14, 0x0

    .line 184
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "outFileName":Ljava/lang/String;
    :goto_4
    return v14

    .line 142
    .restart local v1    # "buffer":[B
    .restart local v2    # "data":I
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "outFileName":Ljava/lang/String;
    :cond_2
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 143
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 160
    const-string v14, "ScreenshotEditResolveActivity"

    invoke-static {v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v5, "editIntent":Landroid/content/Intent;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v4, "editFile":Ljava/io/File;
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 167
    .local v6, "fileUri":Landroid/net/Uri;
    new-instance v14, Landroid/content/ComponentName;

    const-string v15, "com.dama.paperartist"

    const-string v16, "com.dama.paperartist.PaperArtistActivity"

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 169
    const-string v14, "android.intent.extra.STREAM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    const-string v14, "android.intent.action.EDIT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v14, "image/png"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    const/high16 v14, 0x10000

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 176
    .local v12, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    invoke-virtual {v12, v5, v14}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    .line 178
    .local v13, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v13, :cond_3

    .line 179
    const-string v14, "ScreenshotEditResolveActivity"

    invoke-virtual {v13}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    const/4 v14, 0x1

    goto :goto_4

    .line 184
    .end local v1    # "buffer":[B
    .end local v2    # "data":I
    .end local v4    # "editFile":Ljava/io/File;
    .end local v5    # "editIntent":Landroid/content/Intent;
    .end local v6    # "fileUri":Landroid/net/Uri;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "outFileName":Ljava/lang/String;
    .end local v12    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v13    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v14, 0x0

    goto :goto_4

    .line 151
    .restart local v3    # "e":Ljava/io/IOException;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "outFileName":Ljava/lang/String;
    :catch_1
    move-exception v14

    goto :goto_2

    .line 155
    :catch_2
    move-exception v14

    goto :goto_3

    .line 144
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    goto/16 :goto_1

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private addPhotoEditorIntent(Ljava/util/ArrayList;Landroid/content/Intent;)Z
    .locals 17
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "currentResolveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const-string v14, "com.sec.android.mimage.photoretouching"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->isPackageVaild(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 190
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageDirPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".screenshotEdits"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 193
    .local v11, "outFileName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 194
    .local v7, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 196
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v8, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 197
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 199
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 200
    .local v2, "data":I
    const/16 v14, 0x400

    :try_start_2
    new-array v1, v14, [B

    .line 201
    .local v1, "buffer":[B
    :goto_0
    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v8, v1, v14, v15}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    const/4 v14, -0x1

    if-eq v2, v14, :cond_2

    .line 202
    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 206
    .end local v1    # "buffer":[B
    :catch_0
    move-exception v3

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 207
    .end local v2    # "data":I
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :goto_1
    const-string v14, "ScreenshotEditResolveActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Fail : file operation error// File in : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "File out : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 211
    if-eqz v7, :cond_0

    .line 212
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 215
    :cond_0
    :goto_2
    if-eqz v9, :cond_1

    .line 216
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 218
    :cond_1
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->finish()V

    .line 219
    const/4 v14, 0x0

    .line 246
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "outFileName":Ljava/lang/String;
    :goto_4
    return v14

    .line 204
    .restart local v1    # "buffer":[B
    .restart local v2    # "data":I
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "outFileName":Ljava/lang/String;
    :cond_2
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 205
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 222
    const-string v14, "ScreenshotEditResolveActivity"

    invoke-static {v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 226
    .local v5, "editIntent":Landroid/content/Intent;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v4, "editFile":Ljava/io/File;
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 229
    .local v6, "fileUri":Landroid/net/Uri;
    new-instance v14, Landroid/content/ComponentName;

    const-string v15, "com.sec.android.mimage.photoretouching"

    const-string v16, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 231
    const-string v14, "android.intent.extra.STREAM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 232
    const-string v14, "android.intent.action.EDIT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v14, "image/png"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 235
    const/high16 v14, 0x10000

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 238
    .local v12, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    invoke-virtual {v12, v5, v14}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    .line 240
    .local v13, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v13, :cond_3

    .line 241
    const-string v14, "ScreenshotEditResolveActivity"

    invoke-virtual {v13}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    const/4 v14, 0x1

    goto :goto_4

    .line 246
    .end local v1    # "buffer":[B
    .end local v2    # "data":I
    .end local v4    # "editFile":Ljava/io/File;
    .end local v5    # "editIntent":Landroid/content/Intent;
    .end local v6    # "fileUri":Landroid/net/Uri;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "outFileName":Ljava/lang/String;
    .end local v12    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v13    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v14, 0x0

    goto :goto_4

    .line 213
    .restart local v3    # "e":Ljava/io/IOException;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "outFileName":Ljava/lang/String;
    :catch_1
    move-exception v14

    goto :goto_2

    .line 217
    :catch_2
    move-exception v14

    goto :goto_3

    .line 206
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    goto/16 :goto_1

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private addPsTouchIntent(Ljava/util/ArrayList;Landroid/content/Intent;)Z
    .locals 10
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "currentResolveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 251
    const-string v7, "air.com.adobe.pstouch.oem1"

    invoke-direct {p0, v7}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->isPackageVaild(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 252
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 253
    .local v1, "editIntent":Landroid/content/Intent;
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, "editFile":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 256
    .local v2, "fileUri":Landroid/net/Uri;
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "air.com.adobe.pstouch.oem1"

    const-string v9, "air.com.adobe.pstouch.oem1.AppEntry"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 258
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 259
    const-string v7, "android.intent.action.EDIT"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v7, "image/png"

    invoke-virtual {p2, v2, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 262
    const/high16 v7, 0x10000

    invoke-virtual {p2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 265
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 267
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_0

    .line 268
    const-string v6, "ScreenshotEditResolveActivity"

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v0    # "editFile":Ljava/io/File;
    .end local v1    # "editIntent":Landroid/content/Intent;
    .end local v2    # "fileUri":Landroid/net/Uri;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method private doFinish()V
    .locals 3

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d047e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 295
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->finish()V

    .line 296
    return-void
.end method

.method private isPackageVaild(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 277
    const-string v3, "ScreenshotEditResolveActivity"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 280
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 281
    const-string v3, "ScreenshotEditResolveActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : return true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v2, 0x1

    .line 289
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 284
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    const-string v3, "ScreenshotEditResolveActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ScreenshotEditResolveActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.dama.paperartist is not vaild"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 88
    .local v2, "intent":Landroid/content/Intent;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->requestWindowFeature(I)Z

    .line 91
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 92
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    const/16 v0, 0x315

    invoke-virtual {v8, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10407d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 97
    .local v3, "title":Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v5, "currentResolveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 100
    .local v9, "packageManager":Landroid/content/pm/PackageManager;
    const-string v0, "FilePath"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 102
    const-string v0, "ScreenshotEditResolveActivity"

    const-string v1, "onCreate : mImageFilePath is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->doFinish()V

    .line 122
    :goto_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-super/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 123
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mEditFile:Ljava/io/File;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mEditFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    const-string v0, "ScreenshotEditResolveActivity"

    const-string v1, "onCreate : Item is not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->doFinish()V

    goto :goto_0

    .line 110
    :cond_1
    const-string v0, "DirPath"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageDirPath:Ljava/lang/String;

    .line 111
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageDirPath:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 116
    :cond_2
    invoke-direct {p0, v5, v2}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->addPaperArtistIntent(Ljava/util/ArrayList;Landroid/content/Intent;)Z

    .line 117
    invoke-direct {p0, v5, v2}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->addPhotoEditorIntent(Ljava/util/ArrayList;Landroid/content/Intent;)Z

    .line 118
    invoke-direct {p0, v5, v2}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->addPsTouchIntent(Ljava/util/ArrayList;Landroid/content/Intent;)Z

    goto :goto_0
.end method
