.class public Lorg/apache/poi/ddf/EscherClientDataRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "MsofbtClientData"

.field public static final RECORD_ID:S = -0xfefs


# instance fields
.field private remainingData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    add-int/lit8 p2, p2, 0x8

    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p3, p3, 0x8

    return p3
.end method

.method public getAttributeMap()[[Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getRemainingData()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Extra Data"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    new-array v0, v2, [[Ljava/lang/Object;

    aput-object v1, v0, v3

    return-object v0
.end method

.method public getRecordId()S
    .locals 1

    const/16 v0, -0xfef

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    const-string v0, "ClientData"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getRemainingData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    return-object v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getRecordId()S

    move-result v2

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x4

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    array-length v2, v2

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    add-int/lit8 v2, p1, 0x8

    array-length v3, v0

    invoke-static {v0, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    array-length p2, p2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientDataRecord;->getRecordId()S

    move-result p2

    sub-int p1, v2, p1

    invoke-interface {p3, v2, p2, p1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    return p1
.end method

.method public setRemainingData([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherClientDataRecord;->remainingData:[B

    return-void
.end method
