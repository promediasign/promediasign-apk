.class public final Lorg/apache/poi/ddf/EscherArrayProperty;
.super Lorg/apache/poi/ddf/EscherComplexProperty;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/ddf/EscherComplexProperty;",
        "Ljava/lang/Iterable<",
        "[B>;"
    }
.end annotation


# instance fields
.field private emptyComplexPart:Z

.field private sizeIncludesHeaderSize:Z


# direct methods
.method public constructor <init>(SZ[B)V
    .locals 0

    .line 1
    invoke-static {p3}, Lorg/apache/poi/ddf/EscherArrayProperty;->checkComplexData([B)[B

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ddf/EscherComplexProperty;-><init>(SZ[B)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->sizeIncludesHeaderSize:Z

    return-void
.end method

.method public constructor <init>(S[B)V
    .locals 1

    .line 2
    invoke-static {p2}, Lorg/apache/poi/ddf/EscherArrayProperty;->checkComplexData([B)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ddf/EscherComplexProperty;-><init>(S[B)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->sizeIncludesHeaderSize:Z

    if-eqz p2, :cond_1

    array-length p2, p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    return-void
.end method

.method private static checkComplexData([B)[B
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x6

    new-array p0, p0, [B

    return-object p0
.end method

.method private static getActualSizeOfElements(S)I
    .locals 0

    if-gez p0, :cond_0

    neg-int p0, p0

    shr-int/lit8 p0, p0, 0x2

    int-to-short p0, p0

    :cond_0
    return p0
.end method


# virtual methods
.method public getElement(I)[B
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v0

    new-array v1, v0, [B

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v2

    mul-int p1, p1, v0

    add-int/lit8 p1, p1, 0x6

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getNumberOfElementsInArray()I
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getNumberOfElementsInMemory()I
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSizeOfElements()S
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ddf/EscherArrayProperty$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherArrayProperty$1;-><init>(Lorg/apache/poi/ddf/EscherArrayProperty;)V

    return-object v0
.end method

.method public serializeSimplePart([BI)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v0

    array-length v0, v0

    iget-boolean v1, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->sizeIncludesHeaderSize:Z

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x6

    :cond_0
    add-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    const/4 p1, 0x6

    return p1
.end method

.method public setArrayData([BI)I
    .locals 3

    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p1, v1, [B

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherComplexProperty;->setComplexData([B)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    add-int/lit8 v2, p2, 0x4

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v2

    mul-int v2, v2, v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v0

    array-length v0, v0

    if-ne v2, v0, :cond_1

    add-int/lit8 v2, v2, 0x6

    new-array v0, v2, [B

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherComplexProperty;->setComplexData([B)V

    iput-boolean v1, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->sizeIncludesHeaderSize:Z

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object p1

    array-length p1, p1

    return p1
.end method

.method public setElement(I[B)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v1

    mul-int p1, p1, v0

    add-int/lit8 p1, p1, 0x6

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setNumberOfElementsInArray(I)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v0

    mul-int v0, v0, p1

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    new-array v0, v0, [B

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherComplexProperty;->setComplexData([B)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v0

    int-to-short p1, p1

    invoke-static {v0, v2, p1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    return-void
.end method

.method public setNumberOfElementsInMemory(I)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v0

    mul-int v0, v0, p1

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_0

    new-array v1, v0, [B

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/ddf/EscherComplexProperty;->setComplexData([B)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v0

    const/4 v1, 0x2

    int-to-short p1, p1

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    return-void
.end method

.method public setSizeOfElements(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v0

    const/4 v1, 0x4

    int-to-short p1, p1

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v0

    mul-int p1, p1, v0

    const/4 v0, 0x6

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v1

    array-length v1, v1

    if-eq p1, v1, :cond_0

    new-array p1, p1, [B

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherComplexProperty;->setComplexData([B)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "propNum: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", propName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ddf/EscherProperties;->getPropertyName(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", complex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->isComplex()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", blipId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->isBlipId()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", data: \n    {EscherArrayProperty:\n     Num Elements: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n     Num Elements In Memory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInMemory()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n     Size of elements: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v3

    if-ge v2, v3, :cond_0

    const-string v3, "     Element "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lorg/apache/poi/ddf/EscherArrayProperty;->getElement(I)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "<EscherArrayProperty id=\"0x"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "\" name=\""

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "\" blipId=\""

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->isBlipId()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "\">\n"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-ge v1, v2, :cond_0

    .line 53
    .line 54
    const-string v2, "\t"

    .line 55
    .line 56
    const-string v3, "<Element>"

    .line 57
    .line 58
    invoke-static {v0, v2, p1, v3}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->getElement(I)[B

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v2, "</Element>\n"

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const-string v1, "</EscherArrayProperty>"

    .line 81
    .line 82
    invoke-static {p1, v1, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1
.end method
