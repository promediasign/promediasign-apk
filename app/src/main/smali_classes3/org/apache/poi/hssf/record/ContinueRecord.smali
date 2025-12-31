.class public final Lorg/apache/poi/hssf/record/ContinueRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x3cs


# instance fields
.field private _data:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ContinueRecord;->clone()Lorg/apache/poi/hssf/record/ContinueRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/ContinueRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/ContinueRecord;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/ContinueRecord;-><init>([B)V

    return-object v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    array-length v0, v0

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[CONTINUE RECORD]\n    .data = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/CONTINUE RECORD]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
