.class public Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;
.super Lorg/apache/velocity/runtime/parser/node/SimpleNode;
.source "SourceFile"


# instance fields
.field private image:Ljava/lang/String;

.field private interpolate:Z

.field private nodeTree:Lorg/apache/velocity/runtime/parser/node/SimpleNode;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->interpolate:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->nodeTree:Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->image:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Parser;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->interpolate:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->nodeTree:Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->image:Ljava/lang/String;

    return-void
.end method

.method private replaceQuotes(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x22

    if-ne p2, v0, :cond_0

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x27

    if-ne p2, v1, :cond_2

    const-string v2, "\'"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-object p1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_6

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x1

    if-ge v6, v3, :cond_5

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne p2, v0, :cond_3

    if-ne v7, v0, :cond_3

    if-eq v5, v0, :cond_4

    :cond_3
    if-ne p2, v1, :cond_5

    if-ne v7, v1, :cond_5

    if-ne v5, v1, :cond_5

    :cond_4
    move v4, v6

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "\\u"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    add-int/lit8 v3, v1, 0x2

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x6

    .line 26
    .line 27
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/16 v4, 0x10

    .line 32
    .line 33
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    int-to-char v3, v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-gez v3, :cond_1

    .line 46
    .line 47
    invoke-static {p0, v1, v2}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_1
    move v5, v3

    .line 53
    move v3, v1

    .line 54
    move v1, v5

    .line 55
    goto :goto_0
.end method


# virtual methods
.method public adjTokenLineNums(Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 4

    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->getLastToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget v1, v0, Lorg/apache/velocity/runtime/parser/Token;->beginLine:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, v0, Lorg/apache/velocity/runtime/parser/Token;->beginColumn:I

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v0, Lorg/apache/velocity/runtime/parser/Token;->beginColumn:I

    :cond_0
    iget v1, v0, Lorg/apache/velocity/runtime/parser/Token;->endLine:I

    if-ne v1, v2, :cond_1

    iget v1, v0, Lorg/apache/velocity/runtime/parser/Token;->endColumn:I

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v0, Lorg/apache/velocity/runtime/parser/Token;->endColumn:I

    :cond_1
    iget v1, v0, Lorg/apache/velocity/runtime/parser/Token;->beginLine:I

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/2addr v3, v1

    iput v3, v0, Lorg/apache/velocity/runtime/parser/Token;->beginLine:I

    iget v1, v0, Lorg/apache/velocity/runtime/parser/Token;->endLine:I

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/2addr v3, v1

    iput v3, v0, Lorg/apache/velocity/runtime/parser/Token;->endLine:I

    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public evaluate(Lorg/apache/velocity/context/InternalContextAdapter;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v1, "directive.if.emptycheck"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-super {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 5
    .line 6
    const-string v1, "runtime.interpolate.string.literals"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-interface {v0, v1, v2}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "\""

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 35
    .line 36
    const/16 v4, 0x24

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v4, -0x1

    .line 43
    if-ne v0, v4, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 50
    .line 51
    const/16 v5, 0x23

    .line 52
    .line 53
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eq v0, v4, :cond_1

    .line 58
    .line 59
    :cond_0
    const/4 v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x0

    .line 62
    :goto_0
    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->interpolate:Z

    .line 63
    .line 64
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0, v2, v2}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iput-object v2, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->image:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->image:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v1}, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->unescape(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->image:Ljava/lang/String;

    .line 89
    .line 90
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const/16 v2, 0x22

    .line 95
    .line 96
    if-eq v1, v2, :cond_3

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    const/16 v2, 0x27

    .line 103
    .line 104
    if-ne v1, v2, :cond_4

    .line 105
    .line 106
    :cond_3
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->image:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-direct {p0, v1, v0}, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->replaceQuotes(Ljava/lang/String;C)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->image:Ljava/lang/String;

    .line 117
    .line 118
    :cond_4
    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->interpolate:Z

    .line 119
    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    new-instance v0, Ljava/io/StringReader;

    .line 123
    .line 124
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->image:Ljava/lang/String;

    .line 125
    .line 126
    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->getCurrentResource()Lorg/apache/velocity/runtime/resource/Resource;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Lorg/apache/velocity/Template;

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_5
    const/4 v1, 0x0

    .line 139
    :goto_1
    if-nez v1, :cond_6

    .line 140
    .line 141
    new-instance v1, Lorg/apache/velocity/Template;

    .line 142
    .line 143
    invoke-direct {v1}, Lorg/apache/velocity/Template;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v2, "StringLiteral"

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Lorg/apache/velocity/runtime/resource/Resource;->setName(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_6
    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 152
    .line 153
    invoke-interface {v2, v0, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->parse(Ljava/io/Reader;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->nodeTree:Lorg/apache/velocity/runtime/parser/node/SimpleNode;
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->adjTokenLineNums(Lorg/apache/velocity/runtime/parser/node/Node;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->nodeTree:Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    .line 163
    .line 164
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 165
    .line 166
    invoke-virtual {v0, p1, v1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :catch_0
    move-exception p1

    .line 171
    move-object v4, p1

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string p2, "Failed to parse String literal at "

    .line 175
    .line 176
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    invoke-static {p2, v0, v2}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Ljava/lang/String;II)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    new-instance p1, Lorg/apache/velocity/exception/TemplateInitException;

    .line 203
    .line 204
    invoke-virtual {v1}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    move-object v2, p1

    .line 217
    invoke-direct/range {v2 .. v7}, Lorg/apache/velocity/exception/TemplateInitException;-><init>(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/ParseException;Ljava/lang/String;II)V

    .line 218
    .line 219
    .line 220
    throw p1

    .line 221
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->cleanupParserAndTokens()V

    .line 222
    .line 223
    .line 224
    return-object p2
.end method

.method public isConstant()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->interpolate:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public jjtAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/ParserVisitor;->visit(Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public literal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->image:Ljava/lang/String;

    return-object v0
.end method

.method public value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->interpolate:Z

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/apache/velocity/util/StringBuilderWriter;

    invoke-direct {v0}, Lorg/apache/velocity/util/StringBuilderWriter;-><init>()V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->nodeTree:Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    invoke-virtual {v1, p1, v0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z

    invoke-virtual {v0}, Lorg/apache/velocity/util/StringBuilderWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    const-string v1, "Error in interpolating string literal"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/apache/velocity/exception/VelocityException;

    invoke-direct {v0, v1, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p1

    :cond_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTStringLiteral;->image:Ljava/lang/String;

    return-object p1
.end method
