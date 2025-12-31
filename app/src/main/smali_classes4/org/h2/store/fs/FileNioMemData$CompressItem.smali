.class Lorg/h2/store/fs/FileNioMemData$CompressItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/store/fs/FileNioMemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompressItem"
.end annotation


# instance fields
.field public final data:Lorg/h2/store/fs/FileNioMemData;

.field public final page:I


# direct methods
.method public constructor <init>(Lorg/h2/store/fs/FileNioMemData;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/store/fs/FileNioMemData$CompressItem;->data:Lorg/h2/store/fs/FileNioMemData;

    iput p2, p0, Lorg/h2/store/fs/FileNioMemData$CompressItem;->page:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/h2/store/fs/FileNioMemData$CompressItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/h2/store/fs/FileNioMemData$CompressItem;

    iget-object v0, p1, Lorg/h2/store/fs/FileNioMemData$CompressItem;->data:Lorg/h2/store/fs/FileNioMemData;

    iget-object v2, p0, Lorg/h2/store/fs/FileNioMemData$CompressItem;->data:Lorg/h2/store/fs/FileNioMemData;

    if-ne v0, v2, :cond_0

    iget p1, p1, Lorg/h2/store/fs/FileNioMemData$CompressItem;->page:I

    iget v0, p0, Lorg/h2/store/fs/FileNioMemData$CompressItem;->page:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/h2/store/fs/FileNioMemData$CompressItem;->page:I

    iget-object v1, p0, Lorg/h2/store/fs/FileNioMemData$CompressItem;->data:Lorg/h2/store/fs/FileNioMemData;

    iget v1, v1, Lorg/h2/store/fs/FileNioMemData;->nameHashCode:I

    xor-int/2addr v0, v1

    return v0
.end method
