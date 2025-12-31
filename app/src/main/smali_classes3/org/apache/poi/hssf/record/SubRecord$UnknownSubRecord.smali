.class final Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/SubRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnknownSubRecord"
.end annotation


# instance fields
.field private final _data:[B

.field private final _sid:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;II)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    iput p2, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_sid:I

    new-array p2, p3, [B

    invoke-interface {p1, p2}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    iput-object p2, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_data:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->clone()Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;
    .locals 0

    .line 2
    return-object p0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/hssf/record/SubRecord;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->clone()Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;

    move-result-object v0

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_data:[B

    array-length v0, v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_sid:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_data:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_data:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-class v1, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;

    .line 9
    .line 10
    const-string v2, " [sid="

    .line 11
    .line 12
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->y(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_sid:I

    .line 16
    .line 17
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " size="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_data:[B

    .line 30
    .line 31
    array-length v1, v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " : "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lorg/apache/poi/hssf/record/SubRecord$UnknownSubRecord;->_data:[B

    .line 41
    .line 42
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, "]\n"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method
