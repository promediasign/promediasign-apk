.class public Lorg/apache/velocity/runtime/parser/ParseException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x44bee95980ba7a5L


# instance fields
.field public currentToken:Lorg/apache/velocity/runtime/parser/Token;

.field protected eol:Ljava/lang/String;

.field public expectedTokenSequences:[[I

.field protected specialConstructor:Z

.field public tokenImage:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/ParseException;->eol:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParseException;->specialConstructor:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/ParseException;->eol:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/ParseException;->specialConstructor:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Token;[[I[Ljava/lang/String;)V
    .locals 1

    .line 3
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/ParseException;->eol:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParseException;->specialConstructor:Z

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/ParseException;->currentToken:Lorg/apache/velocity/runtime/parser/Token;

    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/ParseException;->expectedTokenSequences:[[I

    iput-object p3, p0, Lorg/apache/velocity/runtime/parser/ParseException;->tokenImage:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add_escapes(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_7

    const/16 v3, 0x22

    if-eq v2, v3, :cond_6

    const/16 v3, 0x27

    if-eq v2, v3, :cond_5

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_4

    const/16 v3, 0xc

    if-eq v2, v3, :cond_3

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7e

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0000"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\u"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_0
    const-string v2, "\\n"

    goto :goto_2

    :pswitch_1
    const-string v2, "\\t"

    goto :goto_2

    :pswitch_2
    const-string v2, "\\b"

    goto :goto_2

    :cond_2
    const-string v2, "\\r"

    goto :goto_2

    :cond_3
    const-string v2, "\\f"

    goto :goto_2

    :cond_4
    const-string v2, "\\\\"

    goto :goto_2

    :cond_5
    const-string v2, "\\\'"

    goto :goto_2

    :cond_6
    const-string v2, "\\\""

    goto :goto_2

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMessage()Ljava/lang/String;
    .locals 13

    .line 1
    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParseException;->specialConstructor:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParseException;->expectedTokenSequences:[[I

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v3, ""

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    :goto_0
    const-string v6, " "

    .line 19
    .line 20
    const-string v7, "    "

    .line 21
    .line 22
    const/4 v8, 0x1

    .line 23
    if-ge v4, v1, :cond_4

    .line 24
    .line 25
    aget-object v9, v0, v4

    .line 26
    .line 27
    array-length v10, v9

    .line 28
    if-ge v5, v10, :cond_1

    .line 29
    .line 30
    array-length v5, v9

    .line 31
    :cond_1
    const/4 v10, 0x0

    .line 32
    :goto_1
    array-length v11, v9

    .line 33
    if-ge v10, v11, :cond_2

    .line 34
    .line 35
    invoke-static {v3}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v11, p0, Lorg/apache/velocity/runtime/parser/ParseException;->tokenImage:[Ljava/lang/String;

    .line 40
    .line 41
    aget v12, v9, v10

    .line 42
    .line 43
    aget-object v11, v11, v12

    .line 44
    .line 45
    invoke-static {v11, v6, v3}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    add-int/lit8 v10, v10, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    array-length v6, v9

    .line 53
    sub-int/2addr v6, v8

    .line 54
    aget v6, v9, v6

    .line 55
    .line 56
    if-eqz v6, :cond_3

    .line 57
    .line 58
    const-string v6, "..."

    .line 59
    .line 60
    invoke-static {v3, v6}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    :cond_3
    invoke-static {v3}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget-object v6, p0, Lorg/apache/velocity/runtime/parser/ParseException;->eol:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v6, v7, v3}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParseException;->currentToken:Lorg/apache/velocity/runtime/parser/Token;

    .line 78
    .line 79
    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    .line 80
    .line 81
    const-string v1, "Encountered \""

    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    :goto_2
    if-ge v4, v5, :cond_7

    .line 85
    .line 86
    if-eqz v4, :cond_5

    .line 87
    .line 88
    invoke-static {v1, v6}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :cond_5
    iget v9, v0, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    .line 93
    .line 94
    if-nez v9, :cond_6

    .line 95
    .line 96
    invoke-static {v1}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParseException;->tokenImage:[Ljava/lang/String;

    .line 101
    .line 102
    aget-object v1, v1, v2

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    goto :goto_3

    .line 112
    :cond_6
    invoke-static {v1}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object v9, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {p0, v9}, Lorg/apache/velocity/runtime/parser/ParseException;->add_escapes(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    .line 130
    .line 131
    add-int/lit8 v4, v4, 0x1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_7
    :goto_3
    const-string v0, "\" at line "

    .line 135
    .line 136
    invoke-static {v1, v0}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParseException;->currentToken:Lorg/apache/velocity/runtime/parser/Token;

    .line 141
    .line 142
    iget-object v1, v1, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    .line 143
    .line 144
    iget v1, v1, Lorg/apache/velocity/runtime/parser/Token;->beginLine:I

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v1, ", column "

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParseException;->currentToken:Lorg/apache/velocity/runtime/parser/Token;

    .line 155
    .line 156
    iget-object v1, v1, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    .line 157
    .line 158
    iget v1, v1, Lorg/apache/velocity/runtime/parser/Token;->beginColumn:I

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const-string v1, "."

    .line 168
    .line 169
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParseException;->eol:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParseException;->expectedTokenSequences:[[I

    .line 183
    .line 184
    array-length v1, v1

    .line 185
    if-ne v1, v8, :cond_8

    .line 186
    .line 187
    const-string v1, "Was expecting:"

    .line 188
    .line 189
    :goto_4
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParseException;->eol:Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v1, v7, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    goto :goto_5

    .line 200
    :cond_8
    const-string v1, "Was expecting one of:"

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :goto_5
    invoke-static {v0, v3}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    return-object v0
.end method
