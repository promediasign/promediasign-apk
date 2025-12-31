.class public Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;
.super Lorg/apache/xmlbeans/impl/values/XmlObjectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/values/JavaQNameHolder$PrettyNamespaceManager;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PRETTY_PREFIXER:Lorg/apache/xmlbeans/impl/values/NamespaceManager;

.field static synthetic class$org$apache$xmlbeans$impl$values$JavaQNameHolder:Ljava/lang/Class;


# instance fields
.field private _value:Lorg/apache/poi/javax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->class$org$apache$xmlbeans$impl$values$JavaQNameHolder:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.values.JavaQNameHolder"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->class$org$apache$xmlbeans$impl$values$JavaQNameHolder:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->$assertionsDisabled:Z

    new-instance v0, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder$PrettyNamespaceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder$PrettyNamespaceManager;-><init>(Lorg/apache/xmlbeans/impl/values/JavaQNameHolder$1;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->PRETTY_PREFIXER:Lorg/apache/xmlbeans/impl/values/NamespaceManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;-><init>()V

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->q(Ljava/lang/ClassNotFoundException;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
.end method

.method private static parse(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/PrefixResolver;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    :goto_0
    if-lez v2, :cond_1

    .line 8
    .line 9
    add-int/lit8 v3, v2, -0x1

    .line 10
    .line 11
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {v3}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isSpace(I)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .line 26
    :goto_2
    if-ge v3, v2, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-static {v4}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isSpace(I)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_2

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_2
    add-int/2addr v3, v1

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    :goto_3
    const/16 v4, 0x3a

    .line 42
    .line 43
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const-string v5, ""

    .line 48
    .line 49
    if-ltz v4, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    add-int/2addr v4, v1

    .line 56
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    goto :goto_4

    .line 61
    :cond_4
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    move-object v3, v5

    .line 66
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    const-string v6, "\'"

    .line 71
    .line 72
    const-string v7, "QName"

    .line 73
    .line 74
    if-lez v4, :cond_6

    .line 75
    .line 76
    invoke-static {v3}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_5

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_5
    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    .line 84
    .line 85
    const-string v2, "Prefix not a valid NCName in \'"

    .line 86
    .line 87
    invoke-static {v2, p0, v6}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    new-array v1, v1, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object p0, v1, v0

    .line 94
    .line 95
    invoke-direct {p1, v7, v1}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_6
    :goto_5
    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_b

    .line 104
    .line 105
    if-nez p1, :cond_7

    .line 106
    .line 107
    const/4 p0, 0x0

    .line 108
    goto :goto_6

    .line 109
    :cond_7
    invoke-interface {p1, v3}, Lorg/apache/xmlbeans/impl/common/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    :goto_6
    if-nez p0, :cond_9

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-gtz p0, :cond_8

    .line 120
    .line 121
    goto :goto_7

    .line 122
    :cond_8
    new-instance p0, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    .line 123
    .line 124
    const-string p1, "Can\'t resolve prefix \'"

    .line 125
    .line 126
    invoke-static {p1, v3, v6}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-array v1, v1, [Ljava/lang/Object;

    .line 131
    .line 132
    aput-object p1, v1, v0

    .line 133
    .line 134
    invoke-direct {p0, v7, v1}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    throw p0

    .line 138
    :cond_9
    move-object v5, p0

    .line 139
    :goto_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-lez p0, :cond_a

    .line 144
    .line 145
    new-instance p0, Lorg/apache/poi/javax/xml/namespace/QName;

    .line 146
    .line 147
    invoke-direct {p0, v5, v2, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-object p0

    .line 151
    :cond_a
    new-instance p0, Lorg/apache/poi/javax/xml/namespace/QName;

    .line 152
    .line 153
    invoke-direct {p0, v5, v2}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-object p0

    .line 157
    :cond_b
    new-instance p1, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;

    .line 158
    .line 159
    const-string v2, "Localname not a valid NCName in \'"

    .line 160
    .line 161
    invoke-static {v2, p0, v6}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    new-array v1, v1, [Ljava/lang/Object;

    .line 166
    .line 167
    aput-object p0, v1, v0

    .line 168
    .line 169
    invoke-direct {p1, v7, v1}, Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    throw p1
.end method

.method public static validateLexical(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/ValidationContext;Lorg/apache/xmlbeans/impl/common/PrefixResolver;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 0

    :try_start_0
    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/PrefixResolver;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/XmlValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/common/ValidationContext;->invalid(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public compute_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->PRETTY_PREFIXER:Lorg/apache/xmlbeans/impl/values/NamespaceManager;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->_value:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->_value:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lorg/apache/xmlbeans/impl/values/NamespaceManager;->find_prefix_for_nsuri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_1
    return-object v1
.end method

.method public equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->_value:Lorg/apache/poi/javax/xml/namespace/QName;

    check-cast p1, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->qNameValue()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getQNameValue()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->check_dated()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->_value:Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method

.method public get_wscanon_rule()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public schemaType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->ST_QNAME:Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object v0
.end method

.method public set_QName(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->has_store()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/NamespaceManager;->find_prefix_for_nsuri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->_value:Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method

.method public set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->_value:Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->getCurrent()Lorg/apache/xmlbeans/impl/common/PrefixResolver;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->has_store()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/XmlObjectBase;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v0

    :cond_0
    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/PrefixResolver;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->_value:Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method

.method public set_xmlanysimple(Lorg/apache/xmlbeans/XmlAnySimpleType;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/NamespaceContext;->getCurrent()Lorg/apache/xmlbeans/impl/common/PrefixResolver;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/impl/common/PrefixResolver;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->_value:Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method

.method public value_hash_code()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/JavaQNameHolder;->_value:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->hashCode()I

    move-result v0

    return v0
.end method
