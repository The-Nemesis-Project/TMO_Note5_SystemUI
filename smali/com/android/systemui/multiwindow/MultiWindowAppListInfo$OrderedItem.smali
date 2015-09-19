.class public Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$OrderedItem;
.super Ljava/lang/Object;
.source "MultiWindowAppListInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderedItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$OrderedItem;",
        ">;"
    }
.end annotation


# instance fields
.field mDuplicatedOrder:Z

.field mItem:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

.field mOrder:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;I)V
    .locals 0
    .param p1, "launchItem"    # Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    .param p2, "order"    # I

    .prologue
    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1147
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$OrderedItem;->mItem:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .line 1148
    iput p2, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$OrderedItem;->mOrder:I

    .line 1149
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$OrderedItem;)I
    .locals 2
    .param p1, "info"    # Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$OrderedItem;

    .prologue
    .line 1160
    iget v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$OrderedItem;->mOrder:I

    invoke-virtual {p1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$OrderedItem;->getOrder()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$OrderedItem;->mDuplicatedOrder:Z

    .line 1163
    :cond_0
    iget v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$OrderedItem;->mOrder:I

    invoke-virtual {p1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$OrderedItem;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1141
    check-cast p1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$OrderedItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$OrderedItem;->compareTo(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$OrderedItem;)I

    move-result v0

    return v0
.end method

.method public getItem()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$OrderedItem;->mItem:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 1156
    iget v0, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$OrderedItem;->mOrder:I

    return v0
.end method
