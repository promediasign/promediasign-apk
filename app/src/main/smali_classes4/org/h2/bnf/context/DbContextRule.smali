.class public Lorg/h2/bnf/context/DbContextRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/bnf/Rule;


# static fields
.field public static final COLUMN:I = 0x0

.field public static final COLUMN_ALIAS:I = 0x4

.field public static final NEW_TABLE_ALIAS:I = 0x3

.field public static final PROCEDURE:I = 0x6

.field public static final SCHEMA:I = 0x5

.field public static final TABLE:I = 0x1

.field public static final TABLE_ALIAS:I = 0x2


# instance fields
.field private columnType:Ljava/lang/String;

.field private final contents:Lorg/h2/bnf/context/DbContents;

.field private final type:I


# direct methods
.method public constructor <init>(Lorg/h2/bnf/context/DbContents;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/bnf/context/DbContextRule;->contents:Lorg/h2/bnf/context/DbContents;

    iput p2, p0, Lorg/h2/bnf/context/DbContextRule;->type:I

    return-void
.end method

.method private autoCompleteProcedure(Lorg/h2/bnf/Sentence;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getLastMatchedSchema()Lorg/h2/bnf/context/DbSchema;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/h2/bnf/context/DbContextRule;->contents:Lorg/h2/bnf/context/DbContents;

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbContents;->getDefaultSchema()Lorg/h2/bnf/context/DbSchema;

    move-result-object v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getQueryUpper()Ljava/lang/String;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x28

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    new-instance v7, Lorg/h2/bnf/RuleElement;

    const-string v8, "Function"

    invoke-direct {v7, v3, v8}, Lorg/h2/bnf/RuleElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lorg/h2/bnf/RuleElement;

    const-string v10, ")"

    invoke-direct {v9, v10, v8}, Lorg/h2/bnf/RuleElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lorg/h2/bnf/RuleElement;

    const-string v11, ","

    invoke-direct {v10, v11, v8}, Lorg/h2/bnf/RuleElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbSchema;->getProcedures()[Lorg/h2/bnf/context/DbProcedure;

    move-result-object v1

    array-length v11, v1

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_7

    aget-object v13, v1, v12

    invoke-virtual {v13}, Lorg/h2/bnf/context/DbProcedure;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    new-instance v15, Lorg/h2/bnf/RuleElement;

    invoke-direct {v15, v14, v8}, Lorg/h2/bnf/RuleElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lorg/h2/bnf/RuleList;

    invoke-direct {v14, v15, v7, v6}, Lorg/h2/bnf/RuleList;-><init>(Lorg/h2/bnf/Rule;Lorg/h2/bnf/Rule;Z)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v13}, Lorg/h2/bnf/context/DbProcedure;->getParameters()[Lorg/h2/bnf/context/DbColumn;

    move-result-object v13

    array-length v15, v13

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v15, :cond_4

    aget-object v17, v13, v5

    invoke-virtual/range {v17 .. v17}, Lorg/h2/bnf/context/DbColumn;->getPosition()I

    move-result v6

    move-object/from16 v19, v1

    const/4 v1, 0x1

    if-le v6, v1, :cond_2

    new-instance v1, Lorg/h2/bnf/RuleList;

    const/4 v6, 0x0

    invoke-direct {v1, v14, v10, v6}, Lorg/h2/bnf/RuleList;-><init>(Lorg/h2/bnf/Rule;Lorg/h2/bnf/Rule;Z)V

    move-object v14, v1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    new-instance v1, Lorg/h2/bnf/context/DbContextRule;

    move-object/from16 v18, v2

    iget-object v2, v0, Lorg/h2/bnf/context/DbContextRule;->contents:Lorg/h2/bnf/context/DbContents;

    invoke-direct {v1, v2, v6}, Lorg/h2/bnf/context/DbContextRule;-><init>(Lorg/h2/bnf/context/DbContents;I)V

    invoke-virtual/range {v17 .. v17}, Lorg/h2/bnf/context/DbColumn;->getDataType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    move-object/from16 v16, v3

    const/16 v0, 0x28

    if-eqz v17, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v1, v2}, Lorg/h2/bnf/context/DbContextRule;->setColumnType(Ljava/lang/String;)V

    new-instance v2, Lorg/h2/bnf/RuleList;

    invoke-direct {v2, v14, v1, v6}, Lorg/h2/bnf/RuleList;-><init>(Lorg/h2/bnf/Rule;Lorg/h2/bnf/Rule;Z)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object v14, v2

    move-object/from16 v3, v16

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    goto :goto_2

    :cond_4
    move-object/from16 v19, v1

    move-object/from16 v18, v2

    move-object/from16 v16, v3

    const/16 v0, 0x28

    new-instance v1, Lorg/h2/bnf/RuleList;

    invoke-direct {v1, v14, v9, v6}, Lorg/h2/bnf/RuleList;-><init>(Lorg/h2/bnf/Rule;Lorg/h2/bnf/Rule;Z)V

    move-object v14, v1

    :goto_4
    move-object/from16 v1, p1

    goto :goto_5

    :cond_5
    move-object/from16 v19, v1

    move-object/from16 v18, v2

    move-object/from16 v16, v3

    const/16 v0, 0x28

    goto :goto_4

    :goto_5
    invoke-virtual {v14, v1}, Lorg/h2/bnf/RuleList;->autoComplete(Lorg/h2/bnf/Sentence;)Z

    goto :goto_6

    :cond_6
    move-object/from16 v19, v1

    move-object/from16 v18, v2

    move-object/from16 v16, v3

    const/16 v0, 0x28

    move-object/from16 v1, p1

    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    const/16 v5, 0x28

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method private static autoCompleteTableAlias(Lorg/h2/bnf/Sentence;Z)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/h2/bnf/Sentence;->getQuery()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/h2/bnf/Sentence;->getQueryUpper()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ge v3, v4, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/16 v5, 0x5f

    .line 22
    .line 23
    if-eq v4, v5, :cond_0

    .line 24
    .line 25
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v3, "SET"

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_10

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-static {v1, v3}, Lorg/h2/command/Parser;->isKeyword(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_3
    if-eqz p1, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0}, Lorg/h2/bnf/Sentence;->getLastTable()Lorg/h2/bnf/context/DbTableOrView;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {p0, v1, v3}, Lorg/h2/bnf/Sentence;->addAlias(Ljava/lang/String;Lorg/h2/bnf/context/DbTableOrView;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-virtual {p0}, Lorg/h2/bnf/Sentence;->getAliases()Ljava/util/HashMap;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const-string v4, "."

    .line 73
    .line 74
    if-eqz v3, :cond_5

    .line 75
    .line 76
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_6

    .line 81
    .line 82
    :cond_5
    invoke-virtual {p0}, Lorg/h2/bnf/Sentence;->getLastTable()Lorg/h2/bnf/context/DbTableOrView;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-nez v3, :cond_9

    .line 87
    .line 88
    :cond_6
    if-eqz p1, :cond_7

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-ne p1, v3, :cond_7

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_8

    .line 114
    .line 115
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p0, v0, v4, v2}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    :cond_8
    return-object p1

    .line 123
    :cond_9
    invoke-virtual {p0}, Lorg/h2/bnf/Sentence;->getTables()Ljava/util/HashSet;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-eqz p1, :cond_10

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const/4 v3, 0x0

    .line 134
    :cond_a
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-eqz v5, :cond_e

    .line 139
    .line 140
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    check-cast v5, Lorg/h2/bnf/context/DbTableOrView;

    .line 145
    .line 146
    invoke-virtual {v5}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v6}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    if-eqz v7, :cond_c

    .line 159
    .line 160
    if-eqz v3, :cond_b

    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    if-le v7, v8, :cond_c

    .line 171
    .line 172
    :cond_b
    invoke-virtual {p0, v5}, Lorg/h2/bnf/Sentence;->setLastMatchedTable(Lorg/h2/bnf/context/DbTableOrView;)V

    .line 173
    .line 174
    .line 175
    move-object v3, v6

    .line 176
    goto :goto_2

    .line 177
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_d

    .line 182
    .line 183
    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-eqz v5, :cond_a

    .line 188
    .line 189
    :cond_d
    invoke-static {v6, v4}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    new-instance v7, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {p0, v5, v6, v2}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_e
    if-eqz v3, :cond_10

    .line 221
    .line 222
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-nez v0, :cond_f

    .line 235
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {p0, v0, v4, v2}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    .line 253
    .line 254
    :cond_f
    return-object p1

    .line 255
    :cond_10
    :goto_3
    return-object v0
.end method


# virtual methods
.method public accept(Lorg/h2/bnf/BnfVisitor;)V
    .locals 0

    return-void
.end method

.method public autoComplete(Lorg/h2/bnf/Sentence;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getQueryUpper()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lorg/h2/bnf/context/DbContextRule;->type:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v4, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lorg/h2/bnf/context/DbContextRule;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lorg/h2/bnf/context/DbContextRule;->autoCompleteProcedure(Lorg/h2/bnf/Sentence;)V

    goto/16 :goto_13

    :pswitch_1
    iget-object v4, v0, Lorg/h2/bnf/context/DbContextRule;->contents:Lorg/h2/bnf/context/DbContents;

    invoke-virtual {v4}, Lorg/h2/bnf/context/DbContents;->getSchemas()[Lorg/h2/bnf/context/DbSchema;

    move-result-object v4

    array-length v8, v4

    move-object v9, v5

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_4

    aget-object v11, v4, v10

    iget-object v12, v11, Lorg/h2/bnf/context/DbSchema;->name:Ljava/lang/String;

    invoke-static {v12}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-le v13, v14, :cond_3

    :cond_0
    move-object v9, v11

    move-object v5, v12

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v13, v14, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    iget v14, v0, Lorg/h2/bnf/context/DbContextRule;->type:I

    invoke-virtual {v1, v12, v13, v14}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v11, Lorg/h2/bnf/context/DbSchema;->quotedName:Ljava/lang/String;

    const-string v14, "."

    .line 1
    invoke-static {v13, v14, v12}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v12

    .line 2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v11, Lorg/h2/bnf/context/DbSchema;->quotedName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v12, v11, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_22

    invoke-virtual {v1, v9}, Lorg/h2/bnf/Sentence;->setLastMatchedSchema(Lorg/h2/bnf/context/DbSchema;)V

    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_14

    :pswitch_2
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_5

    goto/16 :goto_13

    :cond_5
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x5f

    if-eq v5, v8, :cond_6

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    if-nez v4, :cond_8

    goto/16 :goto_13

    :cond_8
    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lorg/h2/command/Parser;->isKeyword(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_13

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_3

    :pswitch_3
    invoke-static {v1, v6}, Lorg/h2/bnf/context/DbContextRule;->autoCompleteTableAlias(Lorg/h2/bnf/Sentence;Z)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_14

    :pswitch_4
    invoke-static {v1, v7}, Lorg/h2/bnf/context/DbContextRule;->autoCompleteTableAlias(Lorg/h2/bnf/Sentence;Z)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_14

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getLastMatchedSchema()Lorg/h2/bnf/context/DbSchema;

    move-result-object v4

    if-nez v4, :cond_a

    iget-object v4, v0, Lorg/h2/bnf/context/DbContextRule;->contents:Lorg/h2/bnf/context/DbContents;

    invoke-virtual {v4}, Lorg/h2/bnf/context/DbContents;->getDefaultSchema()Lorg/h2/bnf/context/DbSchema;

    move-result-object v4

    :cond_a
    invoke-virtual {v4}, Lorg/h2/bnf/context/DbSchema;->getTables()[Lorg/h2/bnf/context/DbTableOrView;

    move-result-object v4

    array-length v8, v4

    move-object v9, v5

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v8, :cond_10

    aget-object v11, v4, v10

    invoke-virtual {v11}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lorg/h2/bnf/context/DbTableOrView;->getQuotedName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-le v13, v14, :cond_b

    invoke-virtual {v11}, Lorg/h2/bnf/context/DbTableOrView;->getQuotedName()Ljava/lang/String;

    move-result-object v12

    move-object v13, v2

    goto :goto_7

    :cond_b
    move-object v13, v3

    :goto_7
    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    if-eqz v5, :cond_c

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-le v13, v14, :cond_f

    :cond_c
    move-object v9, v11

    move-object v5, v12

    goto :goto_8

    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_e

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v13, v12, :cond_f

    invoke-virtual {v11}, Lorg/h2/bnf/context/DbTableOrView;->getQuotedName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lorg/h2/bnf/context/DbTableOrView;->getQuotedName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v12, v11, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_f
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_10
    if-eqz v5, :cond_22

    invoke-virtual {v1, v9}, Lorg/h2/bnf/Sentence;->setLastMatchedTable(Lorg/h2/bnf/context/DbTableOrView;)V

    invoke-virtual {v1, v9}, Lorg/h2/bnf/Sentence;->addTable(Lorg/h2/bnf/context/DbTableOrView;)V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getTables()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/Sentence;->getLastMatchedTable()Lorg/h2/bnf/context/DbTableOrView;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Lorg/h2/bnf/context/DbTableOrView;->getColumns()[Lorg/h2/bnf/context/DbColumn;

    move-result-object v9

    if-eqz v9, :cond_17

    invoke-virtual {v8}, Lorg/h2/bnf/context/DbTableOrView;->getColumns()[Lorg/h2/bnf/context/DbColumn;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v10, :cond_17

    aget-object v12, v9, v11

    invoke-virtual {v12}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lorg/h2/bnf/context/DbColumn;->getQuotedName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-le v14, v15, :cond_11

    invoke-virtual {v12}, Lorg/h2/bnf/context/DbColumn;->getQuotedName()Ljava/lang/String;

    move-result-object v13

    move-object v14, v2

    goto :goto_a

    :cond_11
    move-object v14, v3

    :goto_a
    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_16

    iget-object v15, v0, Lorg/h2/bnf/context/DbContextRule;->columnType:Ljava/lang/String;

    if-eqz v15, :cond_12

    invoke-virtual {v12}, Lorg/h2/bnf/context/DbColumn;->getDataType()Ljava/lang/String;

    move-result-object v15

    iget-object v6, v0, Lorg/h2/bnf/context/DbContextRule;->columnType:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_16

    :cond_12
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_15

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v15, v7, :cond_13

    goto :goto_b

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_16

    invoke-virtual {v12}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {v1, v6, v7, v12}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_c

    :cond_15
    :goto_b
    move-object v5, v6

    :cond_16
    :goto_c
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_9

    :cond_17
    iget-object v6, v0, Lorg/h2/bnf/context/DbContextRule;->contents:Lorg/h2/bnf/context/DbContents;

    invoke-virtual {v6}, Lorg/h2/bnf/context/DbContents;->getSchemas()[Lorg/h2/bnf/context/DbSchema;

    move-result-object v6

    array-length v7, v6

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v7, :cond_21

    aget-object v9, v6, v12

    invoke-virtual {v9}, Lorg/h2/bnf/context/DbSchema;->getTables()[Lorg/h2/bnf/context/DbTableOrView;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v10, :cond_20

    aget-object v13, v9, v11

    if-eq v13, v8, :cond_18

    if-eqz v4, :cond_18

    invoke-virtual {v4, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    goto/16 :goto_12

    :cond_18
    if-eqz v13, :cond_1f

    invoke-virtual {v13}, Lorg/h2/bnf/context/DbTableOrView;->getColumns()[Lorg/h2/bnf/context/DbColumn;

    move-result-object v14

    if-nez v14, :cond_19

    goto/16 :goto_12

    :cond_19
    invoke-virtual {v13}, Lorg/h2/bnf/context/DbTableOrView;->getColumns()[Lorg/h2/bnf/context/DbColumn;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_f
    if-ge v15, v14, :cond_1f

    aget-object v16, v13, v15

    invoke-virtual/range {v16 .. v16}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v4

    invoke-static/range {v17 .. v17}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v6

    iget-object v6, v0, Lorg/h2/bnf/context/DbContextRule;->columnType:Ljava/lang/String;

    if-eqz v6, :cond_1a

    invoke-virtual/range {v16 .. v16}, Lorg/h2/bnf/context/DbColumn;->getDataType()Ljava/lang/String;

    move-result-object v6

    move/from16 v19, v7

    iget-object v7, v0, Lorg/h2/bnf/context/DbContextRule;->columnType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_10

    :cond_1a
    move/from16 v19, v7

    :goto_10
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_1b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1e

    :cond_1b
    move-object v5, v4

    goto :goto_11

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1d

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    :cond_1d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v6, v4, :cond_1e

    invoke-virtual/range {v16 .. v16}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v6, v7}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1e
    :goto_11
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v17

    move-object/from16 v4, v18

    move/from16 v7, v19

    goto :goto_f

    :cond_1f
    :goto_12
    move-object/from16 v18, v4

    move-object/from16 v17, v6

    move/from16 v19, v7

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v17

    move-object/from16 v4, v18

    move/from16 v7, v19

    goto/16 :goto_e

    :cond_20
    move-object/from16 v18, v4

    move-object/from16 v17, v6

    move/from16 v19, v7

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_d

    :cond_21
    if-eqz v5, :cond_22

    move-object v3, v5

    goto :goto_14

    :cond_22
    :goto_13
    move-object v3, v2

    :goto_14
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    :goto_15
    invoke-static {v3}, Lorg/h2/bnf/Bnf;->startWithSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_23
    const/4 v2, 0x1

    invoke-virtual {v1, v3}, Lorg/h2/bnf/Sentence;->setQuery(Ljava/lang/String;)V

    return v2

    :cond_24
    const/4 v1, 0x0

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setColumnType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/bnf/context/DbContextRule;->columnType:Ljava/lang/String;

    return-void
.end method

.method public setLinks(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/bnf/RuleHead;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
