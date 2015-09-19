.class public Lcom/android/systemui/crop/KeyguardCropActivity$InterruptableOutputStream;
.super Ljava/io/OutputStream;
.source "KeyguardCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/crop/KeyguardCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InterruptableOutputStream"
.end annotation


# static fields
.field private static final MAX_WRITE_BYTES:I = 0x1000


# instance fields
.field private volatile mIsInterrupted:Z

.field private mOutputStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/android/systemui/crop/KeyguardCropActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/crop/KeyguardCropActivity;Ljava/io/OutputStream;)V
    .locals 1
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/android/systemui/crop/KeyguardCropActivity$InterruptableOutputStream;->this$0:Lcom/android/systemui/crop/KeyguardCropActivity;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 1030
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$InterruptableOutputStream;->mIsInterrupted:Z

    .line 1033
    invoke-static {p2}, Lcom/android/systemui/crop/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 1034
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1056
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1060
    iget-boolean v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$InterruptableOutputStream;->mIsInterrupted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1062
    return-void
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 1065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$InterruptableOutputStream;->mIsInterrupted:Z

    .line 1066
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1038
    iget-boolean v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$InterruptableOutputStream;->mIsInterrupted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/crop/KeyguardCropActivity$InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1040
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1044
    add-int v1, p2, p3

    .line 1045
    .local v1, "end":I
    :goto_0
    if-ge p2, v1, :cond_1

    .line 1046
    iget-boolean v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity$InterruptableOutputStream;->mIsInterrupted:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2

    .line 1047
    :cond_0
    const/16 v2, 0x1000

    sub-int v3, v1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1048
    .local v0, "bytesCount":I
    iget-object v2, p0, Lcom/android/systemui/crop/KeyguardCropActivity$InterruptableOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1049
    add-int/2addr p2, v0

    .line 1050
    goto :goto_0

    .line 1051
    .end local v0    # "bytesCount":I
    :cond_1
    return-void
.end method
