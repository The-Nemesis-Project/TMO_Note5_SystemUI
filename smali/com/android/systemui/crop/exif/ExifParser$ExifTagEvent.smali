.class Lcom/android/systemui/crop/exif/ExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/crop/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTagEvent"
.end annotation


# instance fields
.field isRequested:Z

.field tag:Lcom/android/systemui/crop/exif/ExifTag;


# direct methods
.method constructor <init>(Lcom/android/systemui/crop/exif/ExifTag;Z)V
    .locals 0
    .param p1, "tag"    # Lcom/android/systemui/crop/exif/ExifTag;
    .param p2, "isRequireByUser"    # Z

    .prologue
    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    iput-object p1, p0, Lcom/android/systemui/crop/exif/ExifParser$ExifTagEvent;->tag:Lcom/android/systemui/crop/exif/ExifTag;

    .line 906
    iput-boolean p2, p0, Lcom/android/systemui/crop/exif/ExifParser$ExifTagEvent;->isRequested:Z

    .line 907
    return-void
.end method
