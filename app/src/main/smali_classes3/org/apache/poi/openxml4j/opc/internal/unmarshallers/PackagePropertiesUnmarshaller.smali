.class public final Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/openxml4j/opc/internal/PartUnmarshaller;


# static fields
.field protected static final KEYWORD_CATEGORY:Ljava/lang/String; = "category"

.field protected static final KEYWORD_CONTENT_STATUS:Ljava/lang/String; = "contentStatus"

.field protected static final KEYWORD_CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field protected static final KEYWORD_CREATED:Ljava/lang/String; = "created"

.field protected static final KEYWORD_CREATOR:Ljava/lang/String; = "creator"

.field protected static final KEYWORD_DESCRIPTION:Ljava/lang/String; = "description"

.field protected static final KEYWORD_IDENTIFIER:Ljava/lang/String; = "identifier"

.field protected static final KEYWORD_KEYWORDS:Ljava/lang/String; = "keywords"

.field protected static final KEYWORD_LANGUAGE:Ljava/lang/String; = "language"

.field protected static final KEYWORD_LAST_MODIFIED_BY:Ljava/lang/String; = "lastModifiedBy"

.field protected static final KEYWORD_LAST_PRINTED:Ljava/lang/String; = "lastPrinted"

.field protected static final KEYWORD_MODIFIED:Ljava/lang/String; = "modified"

.field protected static final KEYWORD_REVISION:Ljava/lang/String; = "revision"

.field protected static final KEYWORD_SUBJECT:Ljava/lang/String; = "subject"

.field protected static final KEYWORD_TITLE:Ljava/lang/String; = "title"

.field protected static final KEYWORD_VERSION:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadCategory(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "category"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadContentStatus(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "contentStatus"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadContentType(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "contentType"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadCreated(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "created"

    const-string v1, "http://purl.org/dc/terms/"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadCreator(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "creator"

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadDescription(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "description"

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadIdentifier(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "identifier"

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadKeywords(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "keywords"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadLanguage(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "language"

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadLastModifiedBy(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "lastModifiedBy"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadLastPrinted(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "lastPrinted"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadModified(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "modified"

    const-string v1, "http://purl.org/dc/terms/"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadRevision(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "revision"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadSubject(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "subject"

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadTitle(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "title"

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadVersion(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    const-string v0, "version"

    const-string v1, "http://schemas.openxmlformats.org/package/2006/metadata/core-properties"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readElement(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-interface {p1, p3, p2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public checkElementForOPCCompliance(Lorg/w3c/dom/Element;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lorg/w3c/dom/Attr;

    .line 18
    .line 19
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const-string v6, "http://www.w3.org/2000/xmlns/"

    .line 24
    .line 25
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v5, "http://schemas.openxmlformats.org/markup-compatibility/2006"

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    .line 45
    .line 46
    const-string v0, "OPC Compliance error [M4.2]: A format consumer shall consider the use of the Markup Compatibility namespace to be an error."

    .line 47
    .line 48
    invoke-direct {p1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v3, "http://purl.org/dc/terms/"

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    const-string v4, "modified"

    .line 70
    .line 71
    const-string v5, "created"

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    .line 89
    .line 90
    const-string v0, "OPC Compliance error [M4.3]: Producers shall not create a document element that contains refinements to the Dublin Core elements, except for the two specified in the schema: <dcterms:created> and <dcterms:modified> Consumers shall consider a document element that violates this constraint to be an error."

    .line 91
    .line 92
    invoke-direct {p1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_4
    :goto_2
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    .line 97
    .line 98
    const-string v6, "lang"

    .line 99
    .line 100
    invoke-interface {p1, v1, v6}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-nez v1, :cond_b

    .line 105
    .line 106
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_9

    .line 115
    .line 116
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_6

    .line 121
    .line 122
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_5

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    .line 130
    .line 131
    const-string v1, "Namespace error : "

    .line 132
    .line 133
    const-string v2, " shouldn\'t have the following naemspace -> http://purl.org/dc/terms/"

    .line 134
    .line 135
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-direct {p1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_6
    :goto_3
    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    .line 144
    .line 145
    const-string v3, "type"

    .line 146
    .line 147
    invoke-interface {p1, v1, v3}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    const-string v3, "The element \'"

    .line 152
    .line 153
    if-eqz v1, :cond_8

    .line 154
    .line 155
    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v6, ":W3CDTF"

    .line 172
    .line 173
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_7

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_7
    new-instance v2, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    .line 188
    .line 189
    const-string v4, "\' must have the \'xsi:type\' attribute with the value \'"

    .line 190
    .line 191
    invoke-static {v3, v0, v4}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string p1, ":W3CDTF\', but had \'"

    .line 203
    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string p1, "\' !"

    .line 215
    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-direct {v2, p1}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v2

    .line 227
    :cond_8
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    .line 228
    .line 229
    const-string v1, "\' must have the \'xsi:type\' attribute present !"

    .line 230
    .line 231
    invoke-static {v3, v0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-direct {p1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p1

    .line 239
    :cond_9
    :goto_4
    const-string v0, "*"

    .line 240
    .line 241
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    :goto_5
    if-ge v2, v0, :cond_a

    .line 250
    .line 251
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Lorg/w3c/dom/Element;

    .line 256
    .line 257
    invoke-virtual {p0, v1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->checkElementForOPCCompliance(Lorg/w3c/dom/Element;)V

    .line 258
    .line 259
    .line 260
    add-int/lit8 v2, v2, 0x1

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_a
    return-void

    .line 264
    :cond_b
    new-instance p1, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;

    .line 265
    .line 266
    const-string v0, "OPC Compliance error [M4.4]: Producers shall not create a document element that contains the xml:lang attribute. Consumers shall consider a document element that violates this constraint to be an error."

    .line 267
    .line 268
    invoke-direct {p1, v0}, Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw p1
.end method

.method public unmarshall(Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/PackagePart;
    .locals 3

    new-instance v0, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;)V

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->getZipEntry()Ljava/util/zip/ZipEntry;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-virtual {p2}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->getZipArchive()Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->getZipEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-static {p2}, Lorg/apache/poi/openxml4j/opc/internal/ZipHelper;->getCorePropertiesZipEntry(Lorg/apache/poi/openxml4j/opc/ZipPackage;)Ljava/util/zip/ZipEntry;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/openxml4j/opc/ZipPackage;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/ZipPackage;->getZipArchive()Lorg/apache/poi/openxml4j/util/ZipEntrySource;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/poi/openxml4j/util/ZipEntrySource;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Error while trying to get the part input stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    :try_start_0
    invoke-static {p2}, Lorg/apache/poi/util/DocumentHelper;->readDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->checkElementForOPCCompliance(Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadCategory(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setCategoryProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadContentStatus(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setContentStatusProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadContentType(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setContentTypeProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadCreated(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setCreatedProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadCreator(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setCreatorProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadDescription(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setDescriptionProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadIdentifier(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setIdentifierProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadKeywords(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setKeywordsProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadLanguage(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setLanguageProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadLastModifiedBy(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setLastModifiedByProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadLastPrinted(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setLastPrintedProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadModified(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setModifiedProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadRevision(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setRevisionProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadSubject(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setSubjectProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadTitle(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setTitleProperty(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/PackagePropertiesUnmarshaller;->loadVersion(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/internal/PackagePropertiesPart;->setVersionProperty(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
