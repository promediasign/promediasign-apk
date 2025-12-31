.class public Lorg/mozilla/javascript/ast/IfStatement;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "SourceFile"


# instance fields
.field private condition:Lorg/mozilla/javascript/ast/AstNode;

.field private elseKeyWordInlineComment:Lorg/mozilla/javascript/ast/AstNode;

.field private elsePart:Lorg/mozilla/javascript/ast/AstNode;

.field private elsePosition:I

.field private lp:I

.field private rp:I

.field private thenPart:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    iput v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    const/16 v0, 0x71

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    const/16 p1, 0x71

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    const/16 p1, 0x71

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method


# virtual methods
.method public getCondition()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->condition:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getElseKeyWordInlineComment()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elseKeyWordInlineComment:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getElsePart()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getElsePosition()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    return v0
.end method

.method public getLp()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    return v0
.end method

.method public getRp()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    return v0
.end method

.method public getThenPart()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setCondition(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public setElseKeyWordInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->elseKeyWordInlineComment:Lorg/mozilla/javascript/ast/AstNode;

    return-void
.end method

.method public setElsePart(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_0
    return-void
.end method

.method public setElsePosition(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePosition:I

    return-void
.end method

.method public setLp(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    return-void
.end method

.method public setParens(II)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->lp:I

    iput p2, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    return-void
.end method

.method public setRp(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->rp:I

    return-void
.end method

.method public setThenPart(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "if ("

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->condition:Lorg/mozilla/javascript/ast/AstNode;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, ") "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "    "

    .line 40
    .line 41
    const-string v4, "\n"

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    .line 63
    .line 64
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const/16 v5, 0x82

    .line 69
    .line 70
    if-eq v2, v5, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-nez v2, :cond_1

    .line 77
    .line 78
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .line 82
    .line 83
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    :cond_2
    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    .line 91
    .line 92
    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    .line 104
    .line 105
    if-eqz v2, :cond_7

    .line 106
    .line 107
    iget-object v2, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    .line 108
    .line 109
    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eq v2, v5, :cond_3

    .line 114
    .line 115
    const-string v2, "else "

    .line 116
    .line 117
    invoke-static {v1, v4, v0, v2}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    const-string v0, " else "

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/IfStatement;->getElseKeyWordInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/IfStatement;->getElseKeyWordInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->toSource()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    :cond_4
    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    .line 150
    .line 151
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eq v0, v5, :cond_6

    .line 156
    .line 157
    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    .line 158
    .line 159
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    const/16 v2, 0x71

    .line 164
    .line 165
    if-eq v0, v2, :cond_6

    .line 166
    .line 167
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/IfStatement;->getElseKeyWordInlineComment()Lorg/mozilla/javascript/ast/AstNode;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-nez v0, :cond_5

    .line 172
    .line 173
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    :cond_5
    add-int/lit8 v0, p1, 0x1

    .line 177
    .line 178
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    :cond_6
    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    .line 186
    .line 187
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    :cond_7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->condition:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->thenPart:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/IfStatement;->elsePart:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_0
    return-void
.end method
