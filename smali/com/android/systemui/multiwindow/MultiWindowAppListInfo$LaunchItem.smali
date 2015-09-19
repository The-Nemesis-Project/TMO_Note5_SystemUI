.class public Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
.super Ljava/lang/Object;
.source "MultiWindowAppListInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LaunchItem"
.end annotation


# instance fields
.field private mDefaultTitle:Z

.field private mIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTaskId:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTumbnail:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v0, 0x0

    .line 1265
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->this$0:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1235
    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1236
    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    .line 1237
    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTumbnail:Landroid/graphics/Bitmap;

    .line 1238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mDefaultTitle:Z

    .line 1239
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTaskId:I

    .line 1241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    .line 1266
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    .line 1268
    return-void
.end method

.method constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;)V
    .locals 6
    .param p2, "item"    # Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .prologue
    const/4 v3, 0x0

    .line 1243
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->this$0:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1235
    iput-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1236
    iput-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    .line 1237
    iput-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTumbnail:Landroid/graphics/Bitmap;

    .line 1238
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mDefaultTitle:Z

    .line 1239
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTaskId:I

    .line 1241
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    .line 1244
    if-nez p2, :cond_1

    .line 1263
    :cond_0
    return-void

    .line 1247
    :cond_1
    iget-object v3, p2, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 1248
    iget-object v3, p2, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1249
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 1250
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$100()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1253
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v3, p2, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    .line 1254
    iget v3, p2, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTaskId:I

    iput v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTaskId:I

    .line 1255
    iget-boolean v3, p2, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mDefaultTitle:Z

    iput-boolean v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mDefaultTitle:Z

    .line 1256
    iget-object v3, p2, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTumbnail:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTumbnail:Landroid/graphics/Bitmap;

    .line 1257
    iget-object v3, p2, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTumbnail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 1258
    iget-object v3, p2, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTumbnail:Landroid/graphics/Bitmap;

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTumbnail:Landroid/graphics/Bitmap;

    .line 1260
    :cond_3
    iget-object v3, p2, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1261
    .local v2, "ri":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 6
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "defaultTitle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p2, "plists":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;>;"
    const/4 v4, 0x0

    .line 1270
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->this$0:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1235
    iput-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1236
    iput-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    .line 1237
    iput-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTumbnail:Landroid/graphics/Bitmap;

    .line 1238
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mDefaultTitle:Z

    .line 1239
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTaskId:I

    .line 1241
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    .line 1271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1272
    .local v0, "drs":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    const/4 v2, 0x0

    .line 1273
    .local v2, "lastWinMode":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1274
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 1276
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/ResolveInfo;

    # invokes: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$400(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1280
    :goto_1
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1281
    goto :goto_0

    .line 1278
    :cond_0
    const/4 v5, 0x0

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/ResolveInfo;

    # invokes: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v4}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$400(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1283
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    :cond_1
    if-eqz p3, :cond_2

    .line 1284
    iput-object p3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    .line 1288
    :cond_2
    # invokes: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->generateMultiIcon(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1, v0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$500(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1289
    iput-boolean p4, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mDefaultTitle:Z

    .line 1290
    return-void
.end method


# virtual methods
.method getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method getLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    return-object v0
.end method

.method getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 2

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method getResolveInfo2()Landroid/content/pm/ResolveInfo;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1336
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1337
    const/4 v0, 0x0

    .line 1341
    :goto_0
    return-object v0

    .line 1340
    :cond_0
    const-string v1, "Recents_MultiWindowAppListInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResolveInfo2() return. mLists.get(1).first="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method

.method public getTaskId()I
    .locals 1

    .prologue
    .line 1417
    iget v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTaskId:I

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getTitle()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 1303
    iget-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    .line 1316
    :goto_0
    return-object v3

    .line 1303
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$100()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 1305
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mDefaultTitle:Z

    if-eqz v3, :cond_4

    .line 1306
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1307
    .local v1, "size":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 1308
    .local v2, "title":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 1309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/ResolveInfo;

    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$100()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1310
    add-int/lit8 v3, v1, -0x1

    if-eq v0, v3, :cond_2

    .line 1311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1308
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v3, v2

    .line 1314
    goto :goto_0

    .line 1316
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "title":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method isDefaultTitle()Z
    .locals 1

    .prologue
    .line 1349
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mDefaultTitle:Z

    return v0
.end method

.method public refreshItemIcon()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1353
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    .line 1354
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1355
    .local v2, "drs":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    const/4 v7, 0x0

    .line 1356
    .local v7, "lastWinMode":I
    iget-object v9, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 1357
    .local v8, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v7, :cond_0

    .line 1358
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->this$0:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroid/content/pm/ResolveInfo;

    # invokes: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    invoke-static {v10, v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$400(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1362
    :goto_1
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1363
    goto :goto_0

    .line 1360
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->this$0:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroid/content/pm/ResolveInfo;

    # invokes: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    invoke-static {v10, v9}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$400(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v2, v11, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1364
    .end local v8    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ResolveInfo;Ljava/lang/Integer;>;"
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->this$0:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    # invokes: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->generateMultiIcon(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v9, v2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$500(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1381
    .end local v2    # "drs":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "lastWinMode":I
    :goto_2
    return-void

    .line 1366
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->this$0:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    # invokes: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    invoke-static {v9, v10}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$400(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1367
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 1368
    .local v0, "appIconBitmap":Landroid/graphics/Bitmap;
    instance-of v9, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_3

    .line 1369
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1379
    :goto_3
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$100()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v9, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_2

    .line 1372
    .restart local v4    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 1373
    .local v6, "iconWidth":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1374
    .local v5, "iconHeight":I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1375
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1376
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4, v11, v11, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1377
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3
.end method

.method refreshItemTitle()V
    .locals 6

    .prologue
    .line 1384
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 1385
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$100()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1386
    .local v2, "title":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1387
    iput-object v2, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    .line 1402
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 1389
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mDefaultTitle:Z

    if-eqz v3, :cond_0

    .line 1391
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1392
    .local v1, "size":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 1393
    .local v2, "title":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 1394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/ResolveInfo;

    # getter for: Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->access$100()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1396
    add-int/lit8 v3, v1, -0x1

    if-eq v0, v3, :cond_2

    .line 1397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1393
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1400
    :cond_3
    iput-object v2, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setTaskId(I)V
    .locals 0
    .param p1, "taskId"    # I

    .prologue
    .line 1413
    iput p1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTaskId:I

    .line 1414
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "tumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTumbnail:Landroid/graphics/Bitmap;

    .line 1406
    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mTitle:Ljava/lang/CharSequence;

    .line 1298
    return-void
.end method

.method updateResolveInfo(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1327
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1328
    iget-object v2, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1329
    .local v1, "winMode":I
    iget-object v2, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1330
    iget-object v2, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->mLists:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1326
    .end local v1    # "winMode":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1333
    :cond_1
    return-void
.end method
