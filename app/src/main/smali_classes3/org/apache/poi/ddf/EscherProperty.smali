.class public abstract Lorg/apache/poi/ddf/EscherProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:S


# direct methods
.method public constructor <init>(S)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherProperty;->_id:S

    return-void
.end method

.method public constructor <init>(SZZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const p2, 0x8000

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    add-int/2addr p1, p2

    if-eqz p3, :cond_1

    const/16 v0, 0x4000

    :cond_1
    add-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherProperty;->_id:S

    return-void
.end method


# virtual methods
.method public getId()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherProperty;->_id:S

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ddf/EscherProperties;->getPropertyName(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyNumber()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherProperty;->_id:S

    and-int/lit16 v0, v0, 0x3fff

    int-to-short v0, v0

    return v0
.end method

.method public getPropertySize()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public isBlipId()Z
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherProperty;->_id:S

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isComplex()Z
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherProperty;->_id:S

    and-int/lit16 v0, v0, -0x8000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract serializeComplexPart([BI)I
.end method

.method public abstract serializeSimplePart([BI)I
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "<"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, " id=\""

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "\" name=\""

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, "\" blipId=\""

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherProperty;->isBlipId()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, "\"/>\n"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1
.end method
