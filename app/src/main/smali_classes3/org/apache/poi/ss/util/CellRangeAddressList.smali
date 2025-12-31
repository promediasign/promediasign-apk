.class public Lorg/apache/poi/ss/util/CellRangeAddressList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    invoke-virtual {p0, p1, p3, p2, p4}, Lorg/apache/poi/ss/util/CellRangeAddressList;->addCellRangeAddress(IIII)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v3, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getEncodedSize(I)I
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getEncodedSize(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    return p0
.end method


# virtual methods
.method public addCellRangeAddress(IIII)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v0, p1, p3, p2, p4}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->addCellRangeAddress(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void
.end method

.method public addCellRangeAddress(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public copy()Lorg/apache/poi/ss/util/CellRangeAddressList;
    .locals 4

    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-direct {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/poi/ss/util/CellRangeAddressList;->addCellRangeAddress(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public countRanges()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCellRangeAddress(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object p1
.end method

.method public getCellRangeAddresses()[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    iget-object v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getEncodedSize(I)I

    move-result v0

    return v0
.end method

.method public remove(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ge p1, v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 29
    .line 30
    const-string v1, "Range index ("

    .line 31
    .line 32
    const-string v2, ") is outside allowable range (0.."

    .line 33
    .line 34
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/lit8 v1, v1, -0x1

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, ")"

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 63
    .line 64
    const-string v0, "List is empty"

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public serialize(I[B)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getSize()I

    move-result v0

    new-instance v1, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v1, p2, p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BII)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/poi/ss/util/CellRangeAddressList;->_list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v2, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
