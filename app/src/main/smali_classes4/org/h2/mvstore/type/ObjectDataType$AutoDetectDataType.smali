.class abstract Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/mvstore/type/DataType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/type/ObjectDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AutoDetectDataType"
.end annotation


# instance fields
.field protected final base:Lorg/h2/mvstore/type/ObjectDataType;

.field protected final typeId:I


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/type/ObjectDataType;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->base:Lorg/h2/mvstore/type/ObjectDataType;

    iput p2, p0, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->typeId:I

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->getType(Ljava/lang/Object;)Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->getType(Ljava/lang/Object;)Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    move-result-object v1

    iget v2, v0, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->typeId:I

    iget v1, v1, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->typeId:I

    sub-int/2addr v2, v1

    if-nez v2, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    return p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->getType(Ljava/lang/Object;)Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->getMemory(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getType(Ljava/lang/Object;)Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->base:Lorg/h2/mvstore/type/ObjectDataType;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/type/ObjectDataType;->switchType(Ljava/lang/Object;)Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    move-result-object p1

    return-object p1
.end method

.method public final read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x3

    const-string v1, "Internal error"

    invoke-static {v0, v1, p1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public abstract read(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
.end method

.method public read(Ljava/nio/ByteBuffer;[Ljava/lang/Object;IZ)V
    .locals 1

    .line 2
    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->getType(Ljava/lang/Object;)Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;[Ljava/lang/Object;IZ)V
    .locals 1

    .line 2
    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    aget-object v0, p2, p4

    invoke-virtual {p0, p1, v0}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
