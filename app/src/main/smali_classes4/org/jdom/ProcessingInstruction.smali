.class public Lorg/jdom/ProcessingInstruction;
.super Lorg/jdom/Content;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: ProcessingInstruction.java,v $ $Revision: 1.47 $ $Date: 2007/11/10 05:28:59 $ $Name:  $"


# instance fields
.field protected mapData:Ljava/util/Map;

.field protected rawData:Ljava/lang/String;

.field protected target:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jdom/ProcessingInstruction;->setTarget(Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    invoke-virtual {p0, p2}, Lorg/jdom/ProcessingInstruction;->setData(Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jdom/ProcessingInstruction;->setTarget(Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    invoke-virtual {p0, p2}, Lorg/jdom/ProcessingInstruction;->setData(Ljava/util/Map;)Lorg/jdom/ProcessingInstruction;

    return-void
.end method

.method private static extractQuotedString(Ljava/lang/String;)[I
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x22

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x22

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v1, :cond_0

    const/16 v6, 0x27

    if-ne v5, v6, :cond_2

    :cond_0
    if-nez v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    move v3, v2

    move v4, v5

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    if-ne v4, v5, :cond_2

    filled-new-array {v3, v0}, [I

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseData(Ljava/lang/String;)Ljava/util/Map;
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3d

    if-ne v7, v8, :cond_2

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jdom/ProcessingInstruction;->extractQuotedString(Ljava/lang/String;)[I

    move-result-object v3

    if-nez v3, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :cond_1
    aget v1, v3, v1

    add-int/2addr v1, v5

    add-int/2addr v1, v4

    aget v6, v3, v4

    add-int/2addr v6, v5

    add-int/2addr v6, v4

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aget v3, v3, v4

    add-int/2addr v3, v4

    add-int/2addr v5, v3

    goto :goto_2

    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_3

    move v6, v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "=\""

    const-string v5, "\" "

    .line 2
    invoke-static {v0, v2, v4, v3, v5}, Lorg/apache/ftpserver/main/a;->y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lorg/jdom/Content;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/ProcessingInstruction;

    iget-object v1, p0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jdom/ProcessingInstruction;->rawData:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/jdom/ProcessingInstruction;->parseData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/ProcessingInstruction;->rawData:Ljava/lang/String;

    return-object v0
.end method

.method public getPseudoAttributeNames()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getPseudoAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/ProcessingInstruction;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/ProcessingInstruction;->rawData:Ljava/lang/String;

    return-object v0
.end method

.method public removePseudoAttribute(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/jdom/ProcessingInstruction;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom/ProcessingInstruction;->rawData:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setData(Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jdom/Verifier;->checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jdom/ProcessingInstruction;->rawData:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/jdom/ProcessingInstruction;->parseData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    return-object p0

    :cond_0
    new-instance v1, Lorg/jdom/IllegalDataException;

    invoke-direct {v1, p1, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public setData(Ljava/util/Map;)Lorg/jdom/ProcessingInstruction;
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/jdom/ProcessingInstruction;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jdom/Verifier;->checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lorg/jdom/ProcessingInstruction;->rawData:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    return-object p0

    :cond_0
    new-instance p1, Lorg/jdom/IllegalDataException;

    invoke-direct {p1, v0, v1}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public setPseudoAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;
    .locals 1

    invoke-static {p1}, Lorg/jdom/Verifier;->checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lorg/jdom/Verifier;->checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/jdom/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/jdom/ProcessingInstruction;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom/ProcessingInstruction;->rawData:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Lorg/jdom/IllegalDataException;

    invoke-direct {p1, p2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Lorg/jdom/IllegalDataException;

    invoke-direct {p2, p1, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2
.end method

.method public setTarget(Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;
    .locals 2

    invoke-static {p1}, Lorg/jdom/Verifier;->checkProcessingInstructionTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jdom/ProcessingInstruction;->target:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v1, Lorg/jdom/IllegalTargetException;

    invoke-direct {v1, p1, v0}, Lorg/jdom/IllegalTargetException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[ProcessingInstruction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/jdom/output/XMLOutputter;

    invoke-direct {v1}, Lorg/jdom/output/XMLOutputter;-><init>()V

    invoke-virtual {v1, p0}, Lorg/jdom/output/XMLOutputter;->outputString(Lorg/jdom/ProcessingInstruction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
