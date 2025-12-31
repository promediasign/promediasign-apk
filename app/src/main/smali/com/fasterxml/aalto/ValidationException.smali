.class public Lcom/fasterxml/aalto/ValidationException;
.super Lorg/codehaus/stax2/validation/XMLValidationException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/codehaus/stax2/validation/XMLValidationProblem;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/codehaus/stax2/validation/XMLValidationException;-><init>(Lorg/codehaus/stax2/validation/XMLValidationProblem;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/stax2/validation/XMLValidationProblem;Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/stax2/validation/XMLValidationException;-><init>(Lorg/codehaus/stax2/validation/XMLValidationProblem;Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V

    return-void
.end method

.method public static create(Lorg/codehaus/stax2/validation/XMLValidationProblem;)Lcom/fasterxml/aalto/ValidationException;
    .locals 3

    invoke-virtual {p0}, Lorg/codehaus/stax2/validation/XMLValidationProblem;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/fasterxml/aalto/ValidationException;

    invoke-virtual {p0}, Lorg/codehaus/stax2/validation/XMLValidationProblem;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/aalto/ValidationException;-><init>(Lorg/codehaus/stax2/validation/XMLValidationProblem;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Lcom/fasterxml/aalto/ValidationException;

    invoke-virtual {p0}, Lorg/codehaus/stax2/validation/XMLValidationProblem;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/fasterxml/aalto/ValidationException;-><init>(Lorg/codehaus/stax2/validation/XMLValidationProblem;Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/Location;)V

    return-object v1
.end method


# virtual methods
.method public getLocationDesc()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;->getLocation()Lorg/apache/poi/javax/xml/stream/Location;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/aalto/ValidationException;->getLocationDesc()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/stax2/validation/XMLValidationException;->getValidationProblem()Lorg/codehaus/stax2/validation/XMLValidationProblem;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lorg/codehaus/stax2/validation/XMLValidationProblem;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    add-int/2addr v4, v3

    .line 31
    add-int/lit8 v4, v4, 0x14

    .line 32
    .line 33
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 34
    .line 35
    .line 36
    const-string v3, "\n at "

    .line 37
    .line 38
    invoke-static {v2, v1, v3, v0}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/aalto/ValidationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
