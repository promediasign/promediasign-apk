.class public final Lorg/apache/poi/hssf/record/FtCblsSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0xcs


# instance fields
.field private reserved:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    const/16 v0, 0x14

    if-ne p2, v0, :cond_0

    new-array p2, p2, [B

    invoke-interface {p1, p2}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    iput-object p2, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string v0, "Unexpected size ("

    const-string v1, ")"

    .line 2
    invoke-static {p2, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {p1, p2}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->clone()Lorg/apache/poi/hssf/record/FtCblsSubRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/FtCblsSubRecord;
    .locals 5

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FtCblsSubRecord;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    array-length v2, v1

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/hssf/record/SubRecord;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->clone()Lorg/apache/poi/hssf/record/FtCblsSubRecord;

    move-result-object v0

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    array-length v0, v0

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[FtCbls ]\n  size     = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->getDataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n  reserved = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/FtCblsSubRecord;->reserved:[B

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/FtCbls ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
