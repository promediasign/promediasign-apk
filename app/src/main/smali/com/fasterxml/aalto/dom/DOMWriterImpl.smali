.class public final Lcom/fasterxml/aalto/dom/DOMWriterImpl;
.super Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;
.source "SourceFile"


# instance fields
.field protected _autoNsSeq:[I

.field protected _automaticNsPrefix:Ljava/lang/String;

.field protected final _config:Lcom/fasterxml/aalto/out/WriterConfig;

.field protected _currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

.field protected _openElement:Lcom/fasterxml/aalto/dom/DOMOutputElement;

.field protected _suggestedDefNs:Ljava/lang/String;

.field _suggestedPrefixes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/fasterxml/aalto/out/WriterConfig;Lorg/w3c/dom/Node;)V
    .locals 2

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WriterConfig;->willRepairNamespaces()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v1, v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;-><init>(Lorg/w3c/dom/Node;ZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_suggestedDefNs:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_suggestedPrefixes:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    iput-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_autoNsSeq:[I

    invoke-virtual {p1}, Lcom/fasterxml/aalto/out/WriterConfig;->getAutomaticNsPrefix()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_automaticNsPrefix:Ljava/lang/String;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/javax/xml/stream/XMLStreamException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can not create an XMLStreamWriter for a DOM node of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/poi/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/fasterxml/aalto/dom/DOMOutputElement;->createRoot()Lcom/fasterxml/aalto/dom/DOMOutputElement;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    iput-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_openElement:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/fasterxml/aalto/dom/DOMOutputElement;->createRoot()Lcom/fasterxml/aalto/dom/DOMOutputElement;

    move-result-object p1

    check-cast p2, Lorg/w3c/dom/Element;

    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/dom/DOMOutputElement;->createChild(Lorg/w3c/dom/Element;)Lcom/fasterxml/aalto/dom/DOMOutputElement;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    iput-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_openElement:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    :goto_1
    return-void
.end method

.method public static createFrom(Lcom/fasterxml/aalto/out/WriterConfig;Ljavax/xml/transform/dom/DOMResult;)Lcom/fasterxml/aalto/dom/DOMWriterImpl;
    .locals 1

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object p1

    new-instance v0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;-><init>(Lcom/fasterxml/aalto/out/WriterConfig;Lorg/w3c/dom/Node;)V

    return-object v0
.end method

.method private final validateElemPrefix(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/aalto/dom/DOMOutputElement;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p3, p1, p2, v1}, Lcom/fasterxml/aalto/dom/OutputElementBase;->isPrefixValid(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p2

    if-ne p2, v1, :cond_1

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    invoke-virtual {p3}, Lcom/fasterxml/aalto/dom/OutputElementBase;->getDefaultNsUri()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public appendLeaf(Lorg/w3c/dom/Node;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/dom/DOMOutputElement;->appendNode(Lorg/w3c/dom/Node;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_openElement:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    return-void
.end method

.method public createStartElem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mNsAware:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-lez p1, :cond_0

    .line 12
    .line 13
    const-string p1, "Can not specify non-empty uri/prefix in non-namespace mode"

    .line 14
    .line 15
    invoke-static {p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->throwOutputError(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    .line 19
    .line 20
    iget-object p2, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mDocument:Lorg/w3c/dom/Document;

    .line 21
    .line 22
    invoke-interface {p2, p3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Lcom/fasterxml/aalto/dom/DOMOutputElement;->createAndAttachChild(Lorg/w3c/dom/Element;)Lcom/fasterxml/aalto/dom/DOMOutputElement;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_1
    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mNsRepairing:Z

    .line 33
    .line 34
    const-string v1, ":"

    .line 35
    .line 36
    if-eqz v0, :cond_8

    .line 37
    .line 38
    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    .line 39
    .line 40
    invoke-direct {p0, p2, p1, v0}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->validateElemPrefix(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/aalto/dom/DOMOutputElement;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    iget-object p2, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    .line 53
    .line 54
    iget-object v2, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mDocument:Lorg/w3c/dom/Document;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-interface {v2, p1, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :goto_0
    invoke-virtual {p2, p1}, Lcom/fasterxml/aalto/dom/DOMOutputElement;->createAndAttachChild(Lorg/w3c/dom/Element;)Lcom/fasterxml/aalto/dom/DOMOutputElement;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto/16 :goto_4

    .line 83
    .line 84
    :cond_2
    iget-object p2, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    .line 85
    .line 86
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mDocument:Lorg/w3c/dom/Document;

    .line 87
    .line 88
    invoke-interface {v0, p1, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    if-nez p2, :cond_4

    .line 94
    .line 95
    const-string p2, ""

    .line 96
    .line 97
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    .line 98
    .line 99
    invoke-virtual {p0, p2, p1, v0}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->generateElemPrefix(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/aalto/dom/DOMOutputElement;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    const/4 v0, 0x1

    .line 110
    goto :goto_1

    .line 111
    :cond_5
    const/4 v0, 0x0

    .line 112
    :goto_1
    if-eqz v0, :cond_6

    .line 113
    .line 114
    invoke-static {p2, v1, p3}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    :cond_6
    iget-object v1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    .line 119
    .line 120
    iget-object v2, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mDocument:Lorg/w3c/dom/Document;

    .line 121
    .line 122
    invoke-interface {v2, p1, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {v1, p3}, Lcom/fasterxml/aalto/dom/DOMOutputElement;->createAndAttachChild(Lorg/w3c/dom/Element;)Lcom/fasterxml/aalto/dom/DOMOutputElement;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    iput-object p3, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_openElement:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    .line 131
    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3, p2, p1}, Lcom/fasterxml/aalto/dom/OutputElementBase;->addPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_7
    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->writeDefaultNamespace(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, p1}, Lcom/fasterxml/aalto/dom/DOMOutputElement;->setDefaultNsUri(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :goto_2
    move-object p1, p3

    .line 148
    goto :goto_4

    .line 149
    :cond_8
    if-nez p2, :cond_a

    .line 150
    .line 151
    if-eqz p1, :cond_a

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-lez v0, :cond_a

    .line 158
    .line 159
    iget-object p2, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_suggestedPrefixes:Ljava/util/HashMap;

    .line 160
    .line 161
    if-nez p2, :cond_9

    .line 162
    .line 163
    const/4 p2, 0x0

    .line 164
    goto :goto_3

    .line 165
    :cond_9
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    check-cast p2, Ljava/lang/String;

    .line 170
    .line 171
    :goto_3
    if-nez p2, :cond_a

    .line 172
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v2, "Can not find prefix for namespace \""

    .line 176
    .line 177
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v2, "\""

    .line 184
    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->throwOutputError(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_a
    if-eqz p2, :cond_b

    .line 196
    .line 197
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_b

    .line 202
    .line 203
    invoke-static {p2, v1, p3}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    :cond_b
    iget-object p2, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    .line 208
    .line 209
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mDocument:Lorg/w3c/dom/Document;

    .line 210
    .line 211
    invoke-interface {v0, p1, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p2, p1}, Lcom/fasterxml/aalto/dom/DOMOutputElement;->createAndAttachChild(Lorg/w3c/dom/Element;)Lcom/fasterxml/aalto/dom/DOMOutputElement;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    :goto_4
    iput-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_openElement:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    .line 220
    .line 221
    if-nez p4, :cond_c

    .line 222
    .line 223
    iput-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    .line 224
    .line 225
    :cond_c
    return-void
.end method

.method public final findOrCreateAttrPrefix(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/aalto/dom/DOMOutputElement;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p3, p1, p2, v1}, Lcom/fasterxml/aalto/dom/OutputElementBase;->isPrefixValid(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    if-ne v3, v2, :cond_1

    return-object p1

    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/aalto/dom/OutputElementBase;->addPrefix(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    invoke-virtual {p3, p2}, Lcom/fasterxml/aalto/dom/OutputElementBase;->getExplicitPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_suggestedPrefixes:Ljava/util/HashMap;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p3, p1}, Lcom/fasterxml/aalto/dom/OutputElementBase;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    move-object v0, p1

    :cond_7
    :goto_1
    if-nez v0, :cond_9

    iget-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_autoNsSeq:[I

    if-nez p1, :cond_8

    new-array p1, v2, [I

    iput-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_autoNsSeq:[I

    aput v2, p1, v1

    :cond_8
    iget-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_automaticNsPrefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_autoNsSeq:[I

    invoke-virtual {p1, v0, p2, v1}, Lcom/fasterxml/aalto/dom/OutputElementBase;->generateMapping(Ljava/lang/String;Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    :cond_9
    invoke-virtual {p3, v0, p2}, Lcom/fasterxml/aalto/dom/OutputElementBase;->addPrefix(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_2
    return-object v0
.end method

.method public final generateElemPrefix(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/aalto/dom/DOMOutputElement;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_suggestedDefNs:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, v0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_suggestedPrefixes:Ljava/util/HashMap;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_autoNsSeq:[I

    if-nez p1, :cond_3

    const/4 p1, 0x1

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_autoNsSeq:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    :cond_3
    iget-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_automaticNsPrefix:Ljava/lang/String;

    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_autoNsSeq:[I

    invoke-virtual {p3, p1, p2, v0}, Lcom/fasterxml/aalto/dom/OutputElementBase;->generateMapping(Ljava/lang/String;Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_1
    return-object p1

    :cond_5
    :goto_2
    return-object v0
.end method

.method public getNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;
    .locals 1

    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mNsAware:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/codehaus/stax2/ri/EmptyNamespaceContext;->getInstance()Lorg/codehaus/stax2/ri/EmptyNamespaceContext;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mNsAware:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mNsContext:Lorg/apache/poi/javax/xml/namespace/NamespaceContext;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    invoke-virtual {v0, p1}, Lcom/fasterxml/aalto/dom/OutputElementBase;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_config:Lcom/fasterxml/aalto/out/WriterConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/aalto/out/WriterConfig;->getProperty(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public outputAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_openElement:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-boolean v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mNsAware:Z

    .line 6
    .line 7
    const-string v2, ":"

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-boolean v1, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mNsRepairing:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p2, p1, v0}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->findOrCreateAttrPrefix(Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/aalto/dom/DOMOutputElement;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :cond_0
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_1

    .line 26
    .line 27
    invoke-static {p2, v2, p3}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    :cond_1
    iget-object p2, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_openElement:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    .line 32
    .line 33
    invoke-virtual {p2, p1, p3, p4}, Lcom/fasterxml/aalto/dom/DOMOutputElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    if-eqz p2, :cond_3

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-lez p1, :cond_3

    .line 44
    .line 45
    invoke-static {p2, v2, p3}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    :cond_3
    iget-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_openElement:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    .line 50
    .line 51
    invoke-virtual {p1, p3, p4}, Lcom/fasterxml/aalto/dom/DOMOutputElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "No currently open START_ELEMENT, cannot write attribute"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_suggestedDefNs:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->setDefaultNamespace(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_7

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to redeclare prefix \'xml\' from its default URI \'http://www.w3.org/XML/1998/namespace\' to \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->throwOutputError(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "http://www.w3.org/2000/xmlns/"

    if-eqz v0, :cond_3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Trying to declare prefix \'xmlns\' (illegal as per NS 1.1 #4)"

    invoke-static {p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->throwOutputError(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to bind URI \'http://www.w3.org/XML/1998/namespace to prefix \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" (can only bind to \'xml\')"

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to bind URI \'http://www.w3.org/2000/xmlns/ to prefix \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" (can not be explicitly bound)"

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_suggestedPrefixes:Ljava/util/HashMap;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_suggestedPrefixes:Ljava/util/HashMap;

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_suggestedPrefixes:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Can not pass null \'uri\' value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Can not pass null \'prefix\' value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->outputAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->outputAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->outputAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    if-nez p1, :cond_0

    const-string p1, "writeDTD()"

    invoke-virtual {p0, p1}, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->reportUnsupported(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Operation only allowed to the document before adding root element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeDefaultNamespace(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_openElement:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->setDefaultNamespace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_openElement:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    const-string v1, "http://www.w3.org/2000/xmlns/"

    const-string v2, "xmlns"

    invoke-virtual {v0, v1, v2, p1}, Lcom/fasterxml/aalto/dom/DOMOutputElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No currently open START_ELEMENT, cannot write attribute"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeEmptyElement(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->createStartElem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->createStartElem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public writeEndDocument()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_openElement:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    iput-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    return-void
.end method

.method public writeEndElement()V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/aalto/dom/DOMOutputElement;->isRoot()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_openElement:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    invoke-virtual {v0}, Lcom/fasterxml/aalto/dom/DOMOutputElement;->getParent()Lcom/fasterxml/aalto/dom/DOMOutputElement;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No open start element to close"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->mNsAware:Z

    if-nez v0, :cond_1

    const-string v0, "Can not write namespaces with non-namespace writer."

    invoke-static {v0}, Lorg/codehaus/stax2/ri/dom/DOMWrappingWriter;->throwOutputError(Ljava/lang/String;)V

    :cond_1
    const-string v0, "http://www.w3.org/2000/xmlns/"

    const-string v1, "xmlns"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->outputAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->_currElem:Lcom/fasterxml/aalto/dom/DOMOutputElement;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/aalto/dom/OutputElementBase;->addPrefix(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->writeDefaultNamespace(Ljava/lang/String;)V

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->writeStartElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->createStartElem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/fasterxml/aalto/dom/DOMWriterImpl;->createStartElem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
