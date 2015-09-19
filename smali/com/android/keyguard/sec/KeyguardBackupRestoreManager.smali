.class public Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;
.super Ljava/lang/Object;
.source "KeyguardBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;,
        Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;,
        Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;
    }
.end annotation


# static fields
.field public static ERROR_KEY:Ljava/lang/String; = null

.field private static final LOCKSCREEN_WALLPAPER_IMAGE_BACKUP_PATH:Ljava/lang/String; = "wallpaper/"

.field private static final LOCKSCREEN_WALLPAPER_IMAGE_FILE_NAME:Ljava/lang/String; = "lockscreen_wallpaper.jpg"

.field private static final LOCKSCREEN_WALLPAPER_IMAGE_RESTORE_PATH:Ljava/lang/String; = "/data/data/com.android.systemui/"

.field private static final PERMISSION_COM_WSSNPS:Ljava/lang/String; = "com.wssnps.permission.COM_WSSNPS"

.field public static final REQUEST_BACKUP_LOCKSCREEN:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_BACKUP_LOCKSCREEN"

.field public static final REQUEST_RESTORE_LOCKSCREEN:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_RESTORE_LOCKSCREEN"

.field private static REQUIRED_SIZE:J = 0x0L

.field public static REQUIRED_SIZE_KEY:Ljava/lang/String; = null

.field public static final RESPONSE_BACKUP_LOCKSCREEN:Ljava/lang/String; = "android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

.field public static final RESPONSE_RESTORE_LOCKSCREEN:Ljava/lang/String; = "android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

.field public static RESULT_KEY:Ljava/lang/String; = null

.field public static SOURCE_KEY:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "KeyguardBackupRestoreManager"

.field private static basePath:Ljava/lang/String;

.field private static sKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

.field private static source:Ljava/lang/String;


# instance fields
.field private mBasePath:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

.field private mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

.field private mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

.field private wallpaperImagePath:Ljava/lang/String;

.field private wallpaperUserFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "RESULT"

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->RESULT_KEY:Ljava/lang/String;

    .line 38
    const-string v0, "ERR_CODE"

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->ERROR_KEY:Ljava/lang/String;

    .line 39
    const-string v0, "REQ_SIZE"

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    .line 40
    const-string v0, "SOURCE"

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->SOURCE_KEY:Ljava/lang/String;

    .line 42
    const-wide/32 v0, 0xa00000

    sput-wide v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->REQUIRED_SIZE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 46
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    .line 47
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->MINIMUM_SIZE:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperUserFileName:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperImagePath:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$1;-><init>(Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    const-string v0, "KeyguardBackupRestoreManager"

    const-string v1, "KeyguardBackupRestoreManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mContext:Landroid/content/Context;

    .line 118
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->basePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 21
    sput-object p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->basePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->source:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 21
    sput-object p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->source:Ljava/lang/String;

    return-object p0
.end method

.method private createBackupFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "sourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    const-string v0, "KeyguardBackupRestoreManager"

    const-string v1, "createBackupFiles()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lockscreen.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperUserFileName:Ljava/lang/String;

    .line 210
    const-string v0, "wallpaper/lockscreen_wallpaper.jpg"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperImagePath:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->makeDir(Ljava/lang/String;)Ljava/io/File;

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->makeDir(Ljava/lang/String;)Ljava/io/File;

    .line 218
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperImagePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->copyBackupFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 223
    return-void
.end method

.method private createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v1, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/sec/KeyguardWallpaperUser;>;"
    new-instance v0, Lcom/android/keyguard/sec/KeyguardWallpaperUser;

    const/16 v2, 0x65

    invoke-direct {v0, v2, p1}, Lcom/android/keyguard/sec/KeyguardWallpaperUser;-><init>(ILjava/lang/String;)V

    .line 230
    .local v0, "object":Lcom/android/keyguard/sec/KeyguardWallpaperUser;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v2, Lcom/android/keyguard/sec/KeyguardGenerateXML;

    invoke-direct {v2, v1, p2}, Lcom/android/keyguard/sec/KeyguardGenerateXML;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const-string v0, "KeyguardBackupRestoreManager"

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->sKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->sKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    .line 124
    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->sKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    return-object v0
.end method

.method private hasFile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "file_path"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, "result":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    const-string v2, "KeyguardBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exist File("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v1, 0x1

    .line 244
    :goto_0
    return v1

    .line 241
    :cond_0
    const-string v2, "KeyguardBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not exist File("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "dir_path"    # Ljava/lang/String;

    .prologue
    .line 248
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 251
    const-string v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not exist Dir("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    return-object v0

    .line 253
    :cond_0
    const-string v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exist Dir("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public chageFileAttr(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 399
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    const-string v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exist File("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 403
    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setWritable(ZZ)Z

    .line 405
    :cond_0
    return-void
.end method

.method closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .param p1, "c"    # Ljava/io/Closeable;

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 292
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "t":Ljava/io/IOException;
    const-string v1, "KeyguardBackupRestoreManager"

    const-string v2, "close fail "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public copyBackupFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "desPath"    # Ljava/lang/String;

    .prologue
    .line 259
    const-wide/16 v4, 0x0

    .line 260
    .local v4, "fsize":J
    const/4 v7, 0x0

    .line 261
    .local v7, "fin":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 262
    .local v9, "fout":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 263
    .local v1, "inc":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 266
    .local v6, "outc":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .local v8, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 269
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .local v10, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 270
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 272
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 273
    const-string v2, "KeyguardBackupRestoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "copyFile( fsize = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ")"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 276
    const/4 v2, 0x1

    .line 281
    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 282
    invoke-virtual {p0, v6}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 283
    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 284
    invoke-virtual {p0, v10}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    move-object v9, v10

    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    :goto_0
    return v2

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    const/4 v2, 0x0

    .line 281
    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 282
    invoke-virtual {p0, v6}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 283
    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 284
    invoke-virtual {p0, v9}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 281
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 282
    invoke-virtual {p0, v6}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 283
    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    .line 284
    invoke-virtual {p0, v9}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    .line 281
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v2

    move-object v9, v10

    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .line 277
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "fout":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v9, v10

    .end local v10    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "fout":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public disableLiveWallpaper(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 390
    return-void
.end method

.method public getLockscreenWallpaperpath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 373
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRestoreWallpaperImageFilesPath(Ljava/lang/String;Lcom/android/keyguard/sec/KeyguardWallpaperUser;)Ljava/lang/String;
    .locals 2
    .param p1, "basePath"    # Ljava/lang/String;
    .param p2, "recItem"    # Lcom/android/keyguard/sec/KeyguardWallpaperUser;

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/keyguard/sec/KeyguardWallpaperUser;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperImagePath:Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public isLiveWallpaper(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 383
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public launchKeyguardBackuporRestore(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "isBackup"    # Z
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string v0, "KeyguardBackupRestoreManager"

    const-string v1, "launchKeyguardBackuporRestore()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushRestoreFiles(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 351
    const-string v5, "KeyguardBackupRestoreManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pushRestoreFiles( basePath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v0, Lcom/android/keyguard/sec/KeyguardXmlParser;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperUserFileName:Ljava/lang/String;

    invoke-direct {v0, p1, v5}, Lcom/android/keyguard/sec/KeyguardXmlParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 353
    .local v0, "keyguardParser":Lcom/android/keyguard/sec/KeyguardXmlParser;
    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardXmlParser;->getObject()Lcom/android/keyguard/sec/KeyguardWallpaperUser;

    move-result-object v1

    .line 355
    .local v1, "mItem":Lcom/android/keyguard/sec/KeyguardWallpaperUser;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardWallpaperUser;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "restoreFromPath":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardWallpaperUser;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->splitFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "restoreFileName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/com.android.systemui/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, "restoreToFullPath":Ljava/lang/String;
    const-string v5, "/data/data/com.android.systemui/"

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->makeDir(Ljava/lang/String;)Ljava/io/File;

    .line 361
    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->copyBackupFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 362
    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->chageFileAttr(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0, p1, v4}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->setLockscreenWallpaperpath(Landroid/content/Context;Ljava/lang/String;)V

    .line 364
    const-string v5, "KeyguardBackupRestoreManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pushRestoreFiles( Saved path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->getLockscreenWallpaperpath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method public registerKeyguardBackupRestoreReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.intent.action.REQUEST_BACKUP_LOCKSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "com.sec.android.intent.action.REQUEST_RESTORE_LOCKSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    return-void
.end method

.method public setLockscreenWallpaperpath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, p2, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 380
    return-void
.end method

.method public splitFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 393
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "temp":[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "strFileName":Ljava/lang/String;
    return-object v0
.end method

.method public startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string v12, "KeyguardBackupRestoreManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "startBackup( basePath = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", source = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    .line 145
    const-wide/16 v2, 0x0

    .line 146
    .local v2, "availableBlocks":J
    const-wide/16 v4, 0x0

    .line 147
    .local v4, "blockSizeInBytes":J
    const-wide/32 v8, 0x40000000

    .line 148
    .local v8, "freeSpaceInBytes":J
    invoke-virtual/range {p0 .. p1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->getLockscreenWallpaperpath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 150
    .local v11, "wallpaperPath":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    .line 152
    :try_start_0
    new-instance v10, Landroid/os/StatFs;

    iget-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-direct {v10, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 153
    .local v10, "stat":Landroid/os/StatFs;
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    .line 154
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    .line 155
    mul-long v8, v2, v4

    .line 156
    const-string v12, "KeyguardBackupRestoreManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "startBackup( StatFs : availableBlocks = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", blockSizeInBytes = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", freeSpaceInBytes = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v10    # "stat":Landroid/os/StatFs;
    :goto_0
    :try_start_1
    sget-wide v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->REQUIRED_SIZE:J

    cmp-long v12, v8, v12

    if-gez v12, :cond_0

    .line 166
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 167
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    .line 168
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->MINIMUM_SIZE:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    :goto_1
    const-string v12, "KeyguardBackupRestoreManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "startBackup( mResult = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mErrorCode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v7, "intent":Landroid/content/Intent;
    const-string v12, "android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->RESULT_KEY:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    invoke-virtual {v13}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->getValue()I

    move-result v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->ERROR_KEY:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    invoke-virtual {v13}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->getValue()I

    move-result v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    invoke-virtual {v13}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->getValue()I

    move-result v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->SOURCE_KEY:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v12, "com.wssnps.permission.COM_WSSNPS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 203
    return-void

    .line 159
    .end local v7    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v6

    .line 160
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 171
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 172
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    .line 173
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 187
    :catch_1
    move-exception v6

    .line 188
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 189
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    .line 190
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    goto/16 :goto_1

    .line 175
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz v11, :cond_2

    :try_start_3
    invoke-direct {p0, v11}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->hasFile(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 176
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v11}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->createBackupFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->OK:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 178
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    .line 179
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    goto/16 :goto_1

    .line 181
    :cond_2
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 182
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    .line 183
    sget-object v12, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v12, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method public startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "basePath"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 299
    const-string v9, "KeyguardBackupRestoreManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startRestore( basePath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", source = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 301
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "lockscreen.xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperUserFileName:Ljava/lang/String;

    .line 303
    const-wide/16 v0, 0x0

    .line 304
    .local v0, "availableBlocks":J
    const-wide/16 v2, 0x0

    .line 305
    .local v2, "blockSizeInBytes":J
    const-wide/32 v6, 0x40000000

    .line 309
    .local v6, "freeSpaceInBytes":J
    :try_start_0
    new-instance v8, Landroid/os/StatFs;

    invoke-direct {v8, p2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 310
    .local v8, "stat":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 311
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 312
    mul-long v6, v0, v2

    .line 313
    const-string v9, "KeyguardBackupRestoreManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startRestore( StatFs : availableBlocks = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", blockSizeInBytes = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", freeSpaceInBytes = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v8    # "stat":Landroid/os/StatFs;
    :goto_0
    :try_start_1
    sget-wide v10, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->REQUIRED_SIZE:J

    cmp-long v9, v6, v10

    if-gez v9, :cond_0

    .line 323
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 324
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    .line 325
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->MINIMUM_SIZE:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    :goto_1
    const-string v9, "KeyguardBackupRestoreManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startRestore( mResult = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mErrorCode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 341
    .local v5, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->RESULT_KEY:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    invoke-virtual {v10}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->getValue()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->ERROR_KEY:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    invoke-virtual {v10}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->getValue()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    invoke-virtual {v10}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->getValue()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->SOURCE_KEY:Ljava/lang/String;

    invoke-virtual {v5, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v9, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p1, v5, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 348
    return-void

    .line 316
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 317
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 327
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->pushRestoreFiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->disableLiveWallpaper(Landroid/content/Context;)V

    .line 329
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->OK:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 330
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    .line 331
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 333
    :catch_1
    move-exception v4

    .line 334
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    .line 335
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    .line 336
    sget-object v9, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    goto/16 :goto_1
.end method
