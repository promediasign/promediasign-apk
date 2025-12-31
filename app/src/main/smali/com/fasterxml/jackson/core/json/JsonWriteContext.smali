.class public Lcom/fasterxml/jackson/core/json/JsonWriteContext;
.super Lcom/fasterxml/jackson/core/JsonStreamContext;
.source "SourceFile"


# instance fields
.field protected _child:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

.field protected _currentName:Ljava/lang/String;

.field protected _currentValue:Ljava/lang/Object;

.field protected _dups:Lcom/fasterxml/jackson/core/json/DupDetector;

.field protected _gotName:Z

.field protected final _parent:Lcom/fasterxml/jackson/core/json/JsonWriteContext;


# direct methods
.method public constructor <init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcom/fasterxml/jackson/core/json/DupDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;-><init>()V

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    iput-object p2, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_parent:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    const/4 p1, -0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    return-void
.end method

.method private final _checkDup(Lcom/fasterxml/jackson/core/json/DupDetector;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/json/DupDetector;->isDup(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/DupDetector;->getSource()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    .line 12
    .line 13
    const-string v1, "Duplicate field \'"

    .line 14
    .line 15
    const-string v2, "\'"

    .line 16
    .line 17
    invoke-static {v1, p2, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    instance-of v1, p1, Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    check-cast p1, Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    invoke-direct {v0, p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    return-void
.end method

.method public static createRootContext(Lcom/fasterxml/jackson/core/json/DupDetector;)Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    .locals 3

    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;-><init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcom/fasterxml/jackson/core/json/DupDetector;)V

    return-object v0
.end method


# virtual methods
.method public clearAndGetParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentValue:Ljava/lang/Object;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_parent:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    return-object v0
.end method

.method public createChildArrayContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/DupDetector;->child()Lcom/fasterxml/jackson/core/json/DupDetector;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, p0, v2}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;-><init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcom/fasterxml/jackson/core/json/DupDetector;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    return-object v0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->reset(I)Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    return-object v0
.end method

.method public createChildObjectContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/DupDetector;->child()Lcom/fasterxml/jackson/core/json/DupDetector;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, p0, v2}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;-><init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcom/fasterxml/jackson/core/json/DupDetector;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    return-object v0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->reset(I)Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/lang/String;

    return-object v0
.end method

.method public reset(I)Lcom/fasterxml/jackson/core/json/JsonWriteContext;
    .locals 1

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentValue:Ljava/lang/Object;

    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/DupDetector;->reset()V

    :cond_0
    return-object p0
.end method

.method public writeFieldName(Ljava/lang/String;)I
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/lang/String;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Lcom/fasterxml/jackson/core/json/DupDetector;

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_checkDup(Lcom/fasterxml/jackson/core/json/DupDetector;Ljava/lang/String;)V

    :cond_1
    iget p1, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    if-gez p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x4

    return p1
.end method

.method public writeValue()I
    .locals 4

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    if-nez v0, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    return v3

    :cond_1
    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x3

    :goto_1
    return v1
.end method
