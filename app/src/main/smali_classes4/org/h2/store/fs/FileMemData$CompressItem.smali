.class Lorg/h2/store/fs/FileMemData$CompressItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/store/fs/FileMemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompressItem"
.end annotation


# instance fields
.field file:Lorg/h2/store/fs/FileMemData;

.field page:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/h2/store/fs/FileMemData$CompressItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/h2/store/fs/FileMemData$CompressItem;

    iget v0, p1, Lorg/h2/store/fs/FileMemData$CompressItem;->page:I

    iget v2, p0, Lorg/h2/store/fs/FileMemData$CompressItem;->page:I

    if-ne v0, v2, :cond_0

    iget-object p1, p1, Lorg/h2/store/fs/FileMemData$CompressItem;->file:Lorg/h2/store/fs/FileMemData;

    iget-object v0, p0, Lorg/h2/store/fs/FileMemData$CompressItem;->file:Lorg/h2/store/fs/FileMemData;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/h2/store/fs/FileMemData$CompressItem;->page:I

    iget-object v1, p0, Lorg/h2/store/fs/FileMemData$CompressItem;->file:Lorg/h2/store/fs/FileMemData;

    invoke-virtual {v1}, Lorg/h2/store/fs/FileMemData;->getId()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
