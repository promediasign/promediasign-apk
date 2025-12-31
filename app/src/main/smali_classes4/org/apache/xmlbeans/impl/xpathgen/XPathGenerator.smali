.class public Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static synthetic class$org$apache$xmlbeans$impl$xpathgen$XPathGenerator:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->class$org$apache$xmlbeans$impl$xpathgen$XPathGenerator:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.xpathgen.XPathGenerator"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->class$org$apache$xmlbeans$impl$xpathgen$XPathGenerator:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method private static countTextTokens(Lorg/apache/xmlbeans/XmlCursor;)I
    .locals 6

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstContentToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->isEnd()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->isText()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p0, v0}, Lorg/apache/xmlbeans/XmlCursor;->comparePosition(Lorg/apache/xmlbeans/XmlCursor;)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->isStart()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    return v2
.end method

.method private static generateInternal(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;
    .locals 6

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->isStartdoc()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlCursor;->isAtSamePositionAs(Lorg/apache/xmlbeans/XmlCursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "."

    return-object p0

    :cond_1
    sget-boolean v0, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->isStart()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance p0, Ljava/lang/StringBuffer;

    const-string p1, "/"

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    invoke-interface {p0, v0}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :cond_5
    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/XmlCursor;->isAtSamePositionAs(Lorg/apache/xmlbeans/XmlCursor;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v3, v4

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    :goto_1
    invoke-interface {p0, v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateInternal(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2f

    new-instance v1, Ljava/lang/StringBuffer;

    if-ne v4, v2, :cond_7

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v0, p2}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->qnameToString(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_7
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v0, p2}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->qnameToString(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0x5b

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :goto_3
    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuffer;

    const-string p2, "Must have at least one child with name: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p0, :cond_8

    .line 2
    .line 3
    if-eqz p2, :cond_7

    .line 4
    .line 5
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->currentTokenType()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlCursor;->isAtSamePositionAs(Lorg/apache/xmlbeans/XmlCursor;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string p0, "."

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eq v1, v2, :cond_6

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    if-eq v1, v2, :cond_6

    .line 29
    .line 30
    const/4 v2, 0x5

    .line 31
    if-eq v1, v2, :cond_4

    .line 32
    .line 33
    const/4 v2, 0x6

    .line 34
    if-eq v1, v2, :cond_3

    .line 35
    .line 36
    const/4 v2, 0x7

    .line 37
    if-ne v1, v2, :cond_2

    .line 38
    .line 39
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 44
    .line 45
    .line 46
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateInternal(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_1

    .line 59
    .line 60
    const-string p1, "/@xmlns"

    .line 61
    .line 62
    invoke-static {p0, p1}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_1
    new-instance p2, Ljava/lang/StringBuffer;

    .line 68
    .line 69
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    const-string p0, "/@xmlns:"

    .line 76
    .line 77
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :cond_2
    new-instance p0, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerationException;

    .line 89
    .line 90
    new-instance p1, Ljava/lang/StringBuffer;

    .line 91
    .line 92
    const-string p2, "Cannot generate XPath for cursor position: "

    .line 93
    .line 94
    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerationException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 117
    .line 118
    .line 119
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateInternal(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    const-string p1, "/@"

    .line 124
    .line 125
    invoke-static {p0, p1}, Lorg/apache/ftpserver/main/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {v0, p2}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->qnameToString(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0

    .line 141
    :cond_4
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->countTextTokens(Lorg/apache/xmlbeans/XmlCursor;)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 146
    .line 147
    .line 148
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateInternal(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    if-nez v0, :cond_5

    .line 153
    .line 154
    const-string p1, "/text()"

    .line 155
    .line 156
    invoke-static {p0, p1}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    return-object p0

    .line 161
    :cond_5
    new-instance p1, Ljava/lang/StringBuffer;

    .line 162
    .line 163
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    .line 168
    .line 169
    const-string p0, "/text()[position()="

    .line 170
    .line 171
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 175
    .line 176
    .line 177
    const/16 p0, 0x5d

    .line 178
    .line 179
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    return-object p0

    .line 187
    :cond_6
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateInternal(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    return-object p0

    .line 192
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 193
    .line 194
    const-string p1, "Null namespace context"

    .line 195
    .line 196
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p0

    .line 200
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 201
    .line 202
    const-string p1, "Null node"

    .line 203
    .line 204
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    new-instance p0, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator$1;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator$1;-><init>()V

    const-string v0, "<root>\n<ns:a xmlns:ns=\"http://a.com\"><b foo=\"value\">text1<c/>text2<c/>text3<c>text</c>text4</b></ns:a>\n</root>"

    invoke-static {v0}, Lorg/apache/xmlbeans/XmlObject$Factory;->parse(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstContentToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstContentToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    invoke-static {v0, v2, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    invoke-static {v0, v3, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    invoke-static {v0, v3, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstContentToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    invoke-static {v0, v3, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toPrevToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    invoke-static {v0, v3, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    invoke-static {v0, v3, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstAttribute()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    invoke-static {v0, v3, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    invoke-static {v0, v3, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    invoke-static {v0, v2, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    return-void
.end method

.method private static qnameToString(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x3a

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {p1, p0}, Lorg/apache/poi/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p1, v1}, Lorg/apache/poi/javax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p0, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerationException;

    const-string p1, "Can not use default prefix in XPath for URI: "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerationException;

    const-string p1, "Could not obtain a prefix for URI: "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
