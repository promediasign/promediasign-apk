.class public abstract Lorg/apache/poi/ddf/AbstractEscherOptRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# instance fields
.field private properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    return-void
.end method

.method private getPropertiesSize()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherProperty;

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherProperty;->getPropertySize()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    invoke-static {p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readInstance([BI)S

    move-result v0

    add-int/lit8 p2, p2, 0x8

    new-instance v1, Lorg/apache/poi/ddf/EscherPropertyFactory;

    invoke-direct {v1}, Lorg/apache/poi/ddf/EscherPropertyFactory;-><init>()V

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/poi/ddf/EscherPropertyFactory;->createProperties([BIS)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    add-int/lit8 p3, p3, 0x8

    return p3
.end method

.method public getAttributeMap()[[Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "properties"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ddf/EscherProperty;

    invoke-virtual {v5}, Lorg/apache/poi/ddf/EscherProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->isContainerRecord()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "isContainer"

    aput-object v6, v5, v1

    aput-object v3, v5, v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "numchildren"

    aput-object v7, v6, v1

    aput-object v3, v6, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [[Ljava/lang/Object;

    aput-object v5, v3, v1

    aput-object v6, v3, v0

    aput-object v2, v3, v4

    return-object v3
.end method

.method public getEscherProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    return-object v0
.end method

.method public getEscherProperty(I)Lorg/apache/poi/ddf/EscherProperty;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ddf/EscherProperty;

    return-object p1
.end method

.method public getRecordSize()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getPropertiesSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public lookup(I)Lorg/apache/poi/ddf/EscherProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherProperty;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeEscherProperty(I)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getEscherProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherProperty;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x4

    invoke-direct {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getPropertiesSize()I

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget-object v1, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherProperty;

    invoke-virtual {v2, p2, v0}, Lorg/apache/poi/ddf/EscherProperty;->serializeSimplePart([BI)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherProperty;

    invoke-virtual {v2, p2, v0}, Lorg/apache/poi/ddf/EscherProperty;->serializeComplexPart([BI)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p2

    sub-int p1, v0, p1

    invoke-interface {p3, v0, p2, p1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    return p1
.end method

.method public setEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherProperty;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherProperty;->getId()S

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->sortProperties()V

    return-void
.end method

.method public sortProperties()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->properties:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/ddf/AbstractEscherOptRecord$1;

    invoke-direct {v1, p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord$1;-><init>(Lorg/apache/poi/ddf/AbstractEscherOptRecord;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
