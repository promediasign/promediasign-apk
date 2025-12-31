.class public final Lcom/fasterxml/aalto/in/AttributeCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _allAttrValues:Ljava/lang/String;

.field private _attrCount:I

.field protected _attrMap:[I

.field final _config:Lcom/fasterxml/aalto/in/ReaderConfig;

.field private _errorMsg:Ljava/lang/String;

.field protected _hashAreaSize:I

.field private _names:[Lcom/fasterxml/aalto/in/PName;

.field private _needToResetValues:Z

.field protected _spillAreaEnd:I

.field private _valueBuffer:[C

.field private _valueOffsets:[I


# direct methods
.method public constructor <init>(Lcom/fasterxml/aalto/in/ReaderConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_names:[Lcom/fasterxml/aalto/in/PName;

    iput-object v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_valueBuffer:[C

    iput-object v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_attrMap:[I

    iput-object v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_valueOffsets:[I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_needToResetValues:Z

    iput-object v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_errorMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_allAttrValues:Ljava/lang/String;

    iput-object p1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_config:Lcom/fasterxml/aalto/in/ReaderConfig;

    const/4 p1, 0x0

    iput p1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_attrCount:I

    return-void
.end method

.method private noteDupAttr(II)V
    .locals 5

    sget-object v0, Lcom/fasterxml/aalto/impl/ErrorConsts;->ERR_WF_DUP_ATTRS:Ljava/lang/String;

    iget-object v1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_names:[Lcom/fasterxml/aalto/in/PName;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/fasterxml/aalto/in/PName;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object p1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_names:[Lcom/fasterxml/aalto/in/PName;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/PName;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, p2, v4

    const/4 v1, 0x1

    aput-object v2, p2, v1

    const/4 v1, 0x2

    aput-object p1, p2, v1

    const/4 p1, 0x3

    aput-object v3, p2, p1

    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public findIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    iget v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_hashAreaSize:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_attrCount:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_names:[Lcom/fasterxml/aalto/in/PName;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/aalto/in/PName;->boundEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    invoke-static {p1, p2}, Lcom/fasterxml/aalto/in/PName;->boundHashCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_attrMap:[I

    add-int/lit8 v4, v0, -0x1

    and-int/2addr v4, v1

    aget v3, v3, v4

    if-lez v3, :cond_6

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_names:[Lcom/fasterxml/aalto/in/PName;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2}, Lcom/fasterxml/aalto/in/PName;->boundEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v3

    :cond_3
    iget v3, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_spillAreaEnd:I

    :goto_1
    if-ge v0, v3, :cond_6

    iget-object v4, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_attrMap:[I

    aget v5, v4, v0

    if-eq v5, v1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_names:[Lcom/fasterxml/aalto/in/PName;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1, p2}, Lcom/fasterxml/aalto/in/PName;->boundEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    return v4

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_6
    return v2
.end method

.method public final finishLastValue(I)I
    .locals 5

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_needToResetValues:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_needToResetValues:Z

    iget v2, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_attrCount:I

    iget-object v3, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_valueOffsets:[I

    add-int/lit8 v4, v2, -0x1

    aput p1, v3, v4

    const/4 p1, 0x3

    if-ge v2, p1, :cond_2

    iput v1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_hashAreaSize:I

    const/4 p1, 0x2

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_names:[Lcom/fasterxml/aalto/in/PName;

    aget-object v3, p1, v1

    aget-object p1, p1, v0

    invoke-virtual {v3, p1}, Lcom/fasterxml/aalto/in/PName;->boundEquals(Lcom/fasterxml/aalto/in/PName;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/fasterxml/aalto/in/AttributeCollector;->noteDupAttr(II)V

    const/4 p1, -0x1

    return p1

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/AttributeCollector;->finishLastValue2()I

    move-result p1

    return p1
.end method

.method public final finishLastValue2()I
    .locals 14

    iget v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_attrCount:I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_names:[Lcom/fasterxml/aalto/in/PName;

    iget-object v2, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_attrMap:[I

    shr-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v0

    const/16 v4, 0x8

    const/16 v5, 0x8

    :goto_0
    if-ge v5, v3, :cond_0

    add-int/2addr v5, v5

    goto :goto_0

    :cond_0
    iput v5, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_hashAreaSize:I

    shr-int/lit8 v3, v5, 0x4

    add-int/2addr v3, v5

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    array-length v7, v2

    if-ge v7, v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x7

    aput v6, v2, v3

    const/4 v3, 0x6

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x2

    aput v6, v2, v3

    const/4 v3, 0x1

    aput v6, v2, v3

    aput v6, v2, v6

    const/16 v3, 0x8

    :goto_1
    if-ge v3, v5, :cond_3

    aput v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    new-array v2, v3, [I

    :cond_3
    add-int/lit8 v3, v5, -0x1

    move v7, v5

    :goto_3
    if-ge v6, v0, :cond_9

    aget-object v8, v1, v6

    invoke-virtual {v8}, Lcom/fasterxml/aalto/in/PName;->boundHashCode()I

    move-result v9

    and-int v10, v9, v3

    aget v11, v2, v10

    if-nez v11, :cond_4

    add-int/lit8 v8, v6, 0x1

    aput v8, v2, v10

    goto :goto_6

    :cond_4
    add-int/lit8 v11, v11, -0x1

    aget-object v10, v1, v11

    invoke-virtual {v10, v8}, Lcom/fasterxml/aalto/in/PName;->boundEquals(Lcom/fasterxml/aalto/in/PName;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_errorMsg:Ljava/lang/String;

    if-nez v10, :cond_5

    invoke-direct {p0, v11, v6}, Lcom/fasterxml/aalto/in/AttributeCollector;->noteDupAttr(II)V

    :cond_5
    add-int/lit8 v10, v7, 0x1

    array-length v11, v2

    if-lt v10, v11, :cond_6

    invoke-static {v2, v4}, Lcom/fasterxml/aalto/util/DataUtil;->growArrayBy([II)[I

    move-result-object v2

    :cond_6
    move v11, v5

    :goto_4
    if-ge v11, v7, :cond_8

    aget v12, v2, v11

    if-ne v12, v9, :cond_7

    add-int/lit8 v12, v11, 0x1

    aget v12, v2, v12

    aget-object v13, v1, v12

    invoke-virtual {v13, v8}, Lcom/fasterxml/aalto/in/PName;->boundEquals(Lcom/fasterxml/aalto/in/PName;)Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v8, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_errorMsg:Ljava/lang/String;

    if-nez v8, :cond_8

    invoke-direct {p0, v12, v6}, Lcom/fasterxml/aalto/in/AttributeCollector;->noteDupAttr(II)V

    goto :goto_5

    :cond_7
    add-int/lit8 v11, v11, 0x2

    goto :goto_4

    :cond_8
    :goto_5
    aput v9, v2, v7

    add-int/lit8 v7, v7, 0x2

    aput v6, v2, v10

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    iput v7, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_spillAreaEnd:I

    iput-object v2, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_attrMap:[I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_errorMsg:Ljava/lang/String;

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    const/4 v0, -0x1

    :goto_7
    return v0
.end method

.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_attrCount:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final getName(I)Lcom/fasterxml/aalto/in/PName;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_names:[Lcom/fasterxml/aalto/in/PName;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getQName(I)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_names:[Lcom/fasterxml/aalto/in/PName;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/fasterxml/aalto/in/PName;->constructQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_attrCount:I

    iget-object v1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_allAttrValues:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_valueOffsets:[I

    add-int/lit8 v4, v0, -0x1

    aget v1, v1, v4

    if-nez v1, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_valueBuffer:[C

    invoke-direct {v4, v5, v2, v1}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    iput-object v4, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_allAttrValues:Ljava/lang/String;

    :cond_1
    if-nez p1, :cond_4

    const/4 p1, 0x1

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_allAttrValues:Ljava/lang/String;

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_valueOffsets:[I

    aget p1, p1, v2

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_allAttrValues:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_valueOffsets:[I

    add-int/lit8 v1, p1, -0x1

    aget v1, v0, v1

    aget p1, v0, p1

    if-ne v1, p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_allAttrValues:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_2
    return-object v3
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/in/AttributeCollector;->findIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/in/AttributeCollector;->getValue(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public startNewValue(Lcom/fasterxml/aalto/in/PName;I)[C
    .locals 7

    iget-boolean v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_needToResetValues:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_needToResetValues:Z

    iput v1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_attrCount:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_allAttrValues:Ljava/lang/String;

    iget-object p2, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_valueBuffer:[C

    if-nez p2, :cond_3

    const/16 p2, 0xc

    new-array v0, p2, [Lcom/fasterxml/aalto/in/PName;

    iput-object v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_names:[Lcom/fasterxml/aalto/in/PName;

    const/16 v0, 0x78

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_valueBuffer:[C

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_valueOffsets:[I

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_attrCount:I

    iget-object v2, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_valueOffsets:[I

    array-length v3, v2

    if-lt v0, v3, :cond_1

    iget-object v3, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_names:[Lcom/fasterxml/aalto/in/PName;

    array-length v4, v2

    add-int v5, v4, v4

    new-array v6, v5, [I

    iput-object v6, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_valueOffsets:[I

    new-array v5, v5, [Lcom/fasterxml/aalto/in/PName;

    iput-object v5, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_names:[Lcom/fasterxml/aalto/in/PName;

    :goto_0
    if-ge v1, v4, :cond_1

    iget-object v5, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_valueOffsets:[I

    aget v6, v2, v1

    aput v6, v5, v1

    iget-object v5, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_names:[Lcom/fasterxml/aalto/in/PName;

    aget-object v6, v3, v1

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_valueOffsets:[I

    add-int/lit8 v2, v0, -0x1

    aput p2, v1, v2

    :cond_2
    move v1, v0

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_names:[Lcom/fasterxml/aalto/in/PName;

    aput-object p1, p2, v1

    iget p1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_attrCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_attrCount:I

    iget-object p1, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_valueBuffer:[C

    return-object p1
.end method

.method public valueBufferFull()[C
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_valueBuffer:[C

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/fasterxml/aalto/util/DataUtil;->growArrayBy([CI)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/in/AttributeCollector;->_valueBuffer:[C

    return-object v0
.end method
