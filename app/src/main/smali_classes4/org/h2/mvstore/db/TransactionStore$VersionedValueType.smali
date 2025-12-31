.class public Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/mvstore/type/DataType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/db/TransactionStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionedValueType"
.end annotation


# instance fields
.field private final valueType:Lorg/h2/mvstore/type/DataType;


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/type/DataType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;->valueType:Lorg/h2/mvstore/type/DataType;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    check-cast p2, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    iget-wide v0, p1, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->operationId:J

    iget-wide v2, p2, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->operationId:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;->valueType:Lorg/h2/mvstore/type/DataType;

    iget-object p1, p1, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    iget-object p2, p2, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Lorg/h2/mvstore/type/DataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p1

    return p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;->valueType:Lorg/h2/mvstore/type/DataType;

    iget-object p1, p1, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    invoke-interface {v0, p1}, Lorg/h2/mvstore/type/DataType;->getMemory(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    invoke-direct {v0}, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;-><init>()V

    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->operationId:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;->valueType:Lorg/h2/mvstore/type/DataType;

    invoke-interface {v1, p1}, Lorg/h2/mvstore/type/DataType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;[Ljava/lang/Object;IZ)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :goto_0
    if-ge v0, p3, :cond_1

    new-instance p4, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    invoke-direct {p4}, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;-><init>()V

    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;->valueType:Lorg/h2/mvstore/type/DataType;

    invoke-interface {v1, p1}, Lorg/h2/mvstore/type/DataType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p4, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    aput-object p4, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, p3, :cond_1

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p4

    aput-object p4, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    iget-wide v0, p2, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->operationId:J

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    iget-object v0, p2, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    iget-object v0, p0, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;->valueType:Lorg/h2/mvstore/type/DataType;

    iget-object p2, p2, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Lorg/h2/mvstore/type/DataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;[Ljava/lang/Object;IZ)V
    .locals 9

    .line 2
    const/4 p4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    if-ge v1, p3, :cond_2

    aget-object v3, p2, v1

    check-cast v3, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    iget-wide v4, v3, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->operationId:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    iget-object v3, v3, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    if-nez v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    :goto_1
    if-ge v0, p3, :cond_4

    aget-object p4, p2, v0

    check-cast p4, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;

    iget-object v1, p0, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;->valueType:Lorg/h2/mvstore/type/DataType;

    iget-object p4, p4, Lorg/h2/mvstore/db/TransactionStore$VersionedValue;->value:Ljava/lang/Object;

    invoke-interface {v1, p1, p4}, Lorg/h2/mvstore/type/DataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p4}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    :goto_2
    if-ge v0, p3, :cond_4

    aget-object p4, p2, v0

    invoke-virtual {p0, p1, p4}, Lorg/h2/mvstore/db/TransactionStore$VersionedValueType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
