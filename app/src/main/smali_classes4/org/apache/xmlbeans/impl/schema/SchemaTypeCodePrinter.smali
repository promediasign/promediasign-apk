.class public final Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaCodePrinter;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INDEX_CLASSNAME:Ljava/lang/String; = "TypeSystemHolder"

.field static final LINE_SEPARATOR:Ljava/lang/String;

.field static synthetic class$org$apache$xmlbeans$impl$schema$SchemaTypeCodePrinter:Ljava/lang/Class;


# instance fields
.field _indent:I

.field _useJava15:Z

.field _writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->class$org$apache$xmlbeans$impl$schema$SchemaTypeCodePrinter:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.schema.SchemaTypeCodePrinter"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->class$org$apache$xmlbeans$impl$schema$SchemaTypeCodePrinter:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->$assertionsDisabled:Z

    const-string v0, "line.separator"

    invoke-static {v0}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "\n"

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_indent:I

    if-eqz p1, :cond_0

    const-string v0, "GENERATE_JAVA_VERSION"

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Lorg/apache/xmlbeans/XmlOptions;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "1.4"

    :cond_1
    const-string v0, "1.5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

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

.method private emitSpecializedAccessors(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const-string v2, "@Deprecated"

    .line 7
    .line 8
    const-string v3, "/** @deprecated */"

    .line 9
    .line 10
    if-ne v0, v1, :cond_f

    .line 11
    .line 12
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v1, 0xb

    .line 21
    .line 22
    if-ne v0, v1, :cond_f

    .line 23
    .line 24
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDecimalSize()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getDecimalSize()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-ne v0, v1, :cond_0

    .line 37
    .line 38
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_f

    .line 47
    .line 48
    :cond_0
    const v1, 0xf4240

    .line 49
    .line 50
    .line 51
    if-ne v0, v1, :cond_3

    .line 52
    .line 53
    const-string v0, "java.math.BigInteger getBigIntegerValue();"

    .line 54
    .line 55
    const-string v1, "void setBigIntegerValue(java.math.BigInteger bi);"

    .line 56
    .line 57
    invoke-static {p0, v0, v1, v3}, Lorg/apache/ftpserver/main/a;->C(Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    const-string v0, "java.math.BigInteger bigIntegerValue();"

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    const-string v0, "void set(java.math.BigInteger bi);"

    .line 83
    .line 84
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_1

    .line 88
    .line 89
    :cond_3
    const/16 v1, 0x40

    .line 90
    .line 91
    if-ne v0, v1, :cond_6

    .line 92
    .line 93
    const-string v0, "long getLongValue();"

    .line 94
    .line 95
    const-string v1, "void setLongValue(long l);"

    .line 96
    .line 97
    invoke-static {p0, v0, v1, v3}, Lorg/apache/ftpserver/main/a;->C(Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    const-string v0, "long longValue();"

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_5
    const-string v0, "void set(long l);"

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_6
    const/16 v1, 0x20

    .line 126
    .line 127
    if-ne v0, v1, :cond_9

    .line 128
    .line 129
    const-string v0, "int getIntValue();"

    .line 130
    .line 131
    const-string v1, "void setIntValue(int i);"

    .line 132
    .line 133
    invoke-static {p0, v0, v1, v3}, Lorg/apache/ftpserver/main/a;->C(Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    .line 137
    .line 138
    if-eqz v0, :cond_7

    .line 139
    .line 140
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_7
    const-string v0, "int intValue();"

    .line 144
    .line 145
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    .line 152
    .line 153
    if-eqz v0, :cond_8

    .line 154
    .line 155
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_8
    const-string v0, "void set(int i);"

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_9
    const/16 v1, 0x10

    .line 162
    .line 163
    if-ne v0, v1, :cond_c

    .line 164
    .line 165
    const-string v0, "short getShortValue();"

    .line 166
    .line 167
    const-string v1, "void setShortValue(short s);"

    .line 168
    .line 169
    invoke-static {p0, v0, v1, v3}, Lorg/apache/ftpserver/main/a;->C(Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    .line 173
    .line 174
    if-eqz v0, :cond_a

    .line 175
    .line 176
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_a
    const-string v0, "short shortValue();"

    .line 180
    .line 181
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    .line 188
    .line 189
    if-eqz v0, :cond_b

    .line 190
    .line 191
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_b
    const-string v0, "void set(short s);"

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_c
    const/16 v1, 0x8

    .line 198
    .line 199
    if-ne v0, v1, :cond_f

    .line 200
    .line 201
    const-string v0, "byte getByteValue();"

    .line 202
    .line 203
    const-string v1, "void setByteValue(byte b);"

    .line 204
    .line 205
    invoke-static {p0, v0, v1, v3}, Lorg/apache/ftpserver/main/a;->C(Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    .line 209
    .line 210
    if-eqz v0, :cond_d

    .line 211
    .line 212
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_d
    const-string v0, "byte byteValue();"

    .line 216
    .line 217
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    .line 224
    .line 225
    if-eqz v0, :cond_e

    .line 226
    .line 227
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :cond_e
    const-string v0, "void set(byte b);"

    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :cond_f
    :goto_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    const/4 v1, 0x2

    .line 239
    if-ne v0, v1, :cond_13

    .line 240
    .line 241
    const-string v0, "java.lang.Object getObjectValue();"

    .line 242
    .line 243
    const-string v1, "void setObjectValue(java.lang.Object val);"

    .line 244
    .line 245
    invoke-static {p0, v0, v1, v3}, Lorg/apache/ftpserver/main/a;->C(Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    .line 249
    .line 250
    if-eqz v0, :cond_10

    .line 251
    .line 252
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :cond_10
    const-string v0, "java.lang.Object objectValue();"

    .line 256
    .line 257
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    .line 264
    .line 265
    if-eqz v0, :cond_11

    .line 266
    .line 267
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_11
    const-string v0, "void objectSet(java.lang.Object val);"

    .line 271
    .line 272
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    const-string v0, "org.apache.xmlbeans.SchemaType instanceType();"

    .line 276
    .line 277
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getUnionCommonBaseType()Lorg/apache/xmlbeans/SchemaType;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    if-eqz v0, :cond_12

    .line 285
    .line 286
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    .line 287
    .line 288
    .line 289
    :cond_12
    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitSpecializedAccessors(Lorg/apache/xmlbeans/SchemaType;)V

    .line 290
    .line 291
    .line 292
    :cond_13
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    const/4 v0, 0x3

    .line 297
    if-ne p1, v0, :cond_17

    .line 298
    .line 299
    const-string p1, "java.util.List getListValue();"

    .line 300
    .line 301
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    const-string p1, "java.util.List xgetListValue();"

    .line 305
    .line 306
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    const-string p1, "void setListValue(java.util.List list);"

    .line 310
    .line 311
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    iget-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    .line 318
    .line 319
    if-eqz p1, :cond_14

    .line 320
    .line 321
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    :cond_14
    const-string p1, "java.util.List listValue();"

    .line 325
    .line 326
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    .line 333
    .line 334
    if-eqz p1, :cond_15

    .line 335
    .line 336
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    :cond_15
    const-string p1, "java.util.List xlistValue();"

    .line 340
    .line 341
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iget-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    .line 348
    .line 349
    if-eqz p1, :cond_16

    .line 350
    .line 351
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    :cond_16
    const-string p1, "void set(java.util.List list);"

    .line 355
    .line 356
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    :cond_17
    return-void
.end method

.method public static findBaseType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    :goto_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private getDerivedProperties(Lorg/apache/xmlbeans/SchemaType;)[Lorg/apache/xmlbeans/SchemaProperty;
    .locals 7

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDerivedProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    aget-object v5, p1, v4

    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    aget-object v6, p1, v4

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getDerivedProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p1

    const/4 v4, 0x0

    :goto_2
    array-length v5, p1

    if-ge v4, v5, :cond_2

    aget-object v5, p1, v4

    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, p1, v4

    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    aget-object v6, p1, v4

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v0, v3, [Lorg/apache/xmlbeans/SchemaProperty;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/xmlbeans/SchemaProperty;

    check-cast p1, [Lorg/apache/xmlbeans/SchemaProperty;

    return-object p1

    :cond_4
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDerivedProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object p1

    return-object p1
.end method

.method private static getExtensionInterfaces(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getImpl(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getInterfaceExtensions()[Lorg/apache/xmlbeans/InterfaceExtension;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ", "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v3, p0, v1

    invoke-interface {v3}, Lorg/apache/xmlbeans/InterfaceExtension;->getInterface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFullJavaName(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 2

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFullJavaName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->isRedefinition()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getFullJavaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getImpl(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;
    .locals 1

    instance-of v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPrinter(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaCodePrinter;
    .locals 2

    const-string v0, "SCHEMA_CODE_PRINTER"

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->safeGet(Lorg/apache/xmlbeans/XmlOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/apache/xmlbeans/SchemaCodePrinter;

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    :cond_1
    check-cast v0, Lorg/apache/xmlbeans/SchemaCodePrinter;

    return-object v0
.end method

.method private getUserTypeStaticHandlerMethod(ZLorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUserTypeHandlerName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ".encode"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUserTypeHandlerName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ".decode"

    goto :goto_1
.end method

.method private hasBase(Lorg/apache/xmlbeans/SchemaType;)Z
    .locals 4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->isAnonymousType()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->isSkippedAnonymousType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContentBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    if-eq p1, v0, :cond_2

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_1
    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method public static indexClassForSystem(Lorg/apache/xmlbeans/SchemaTypeSystem;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaTypeSystem;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, ".TypeSystemHolder"

    .line 6
    .line 7
    invoke-static {p0, v0}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static isJavaPrimitive(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    if-le p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static javaStringEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    const/16 v4, 0x22

    const/16 v5, 0xd

    const/16 v6, 0xa

    if-eq v2, v6, :cond_0

    if-eq v2, v5, :cond_0

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_1
    const-string v2, "\\\\"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_2
    const-string v2, "\\\""

    goto :goto_2

    :cond_3
    const-string v2, "\\r"

    goto :goto_2

    :cond_4
    const-string v2, "\\n"

    goto :goto_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public static javaWrappedType(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-boolean p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->$assertionsDisabled:Z

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    const-string p0, "java.lang.Long"

    return-object p0

    :pswitch_1
    const-string p0, "java.lang.Integer"

    return-object p0

    :pswitch_2
    const-string p0, "java.lang.Short"

    return-object p0

    :pswitch_3
    const-string p0, "java.lang.Byte"

    return-object p0

    :pswitch_4
    const-string p0, "java.lang.Double"

    return-object p0

    :pswitch_5
    const-string p0, "java.lang.Float"

    return-object p0

    :pswitch_6
    const-string p0, "java.lang.Boolean"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static makeSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    const-string v4, "\\u"

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_4
    const-string v4, "\\u0"

    goto :goto_2

    :cond_5
    const-string v4, "\\u00"

    goto :goto_2

    :cond_6
    const-string v4, "\\u000"

    goto :goto_2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Default character set is null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static prettyQName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v1, "(@"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    const-string p0, ")"

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_0
    return-object v0
.end method

.method private printExtensionImplMethods(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 6

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getImpl(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getInterfaceExtensions()[Lorg/apache/xmlbeans/InterfaceExtension;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/InterfaceExtension;->getMethods()[Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Implementation method for interface "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v5, p1, v1

    invoke-interface {v5}, Lorg/apache/xmlbeans/InterfaceExtension;->getStaticHandler()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    aget-object v4, v2, v3

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printInterfaceMethodDecl(Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    aget-object v4, p1, v1

    invoke-interface {v4}, Lorg/apache/xmlbeans/InterfaceExtension;->getStaticHandler()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {p0, v4, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printInterfaceMethodImpl(Ljava/lang/String;Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static printLoader(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaTypeSystem;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0

    .line 2
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getPrinter(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaCodePrinter;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/SchemaCodePrinter;->printLoader(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    return-void
.end method

.method public static printType(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0

    .line 2
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getPrinter(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaCodePrinter;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/SchemaCodePrinter;->printType(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaType;)V

    return-void
.end method

.method public static printTypeImpl(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0

    .line 2
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getPrinter(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaCodePrinter;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lorg/apache/xmlbeans/SchemaCodePrinter;->printTypeImpl(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaType;)V

    return-void
.end method

.method public static xmlTypeForPropertyIsUnion(Lorg/apache/xmlbeans/SchemaProperty;)Z
    .locals 1

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaProperty;->javaBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public emit(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_indent:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    :cond_0
    const/16 v1, 0x28

    if-le v0, v1, :cond_1

    const/16 v0, 0x28

    :cond_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_writer:Ljava/io/Writer;

    const-string v2, "                                        "

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_writer:Ljava/io/Writer;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->makeSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_writer:Ljava/io/Writer;

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public emitAddTarget(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 1

    .line 1
    const-string p3, ");"

    .line 2
    .line 3
    const-string v0, "target = ("

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const-string p2, ")get_store().add_attribute_user("

    .line 8
    .line 9
    :goto_0
    invoke-static {v0, p4, p2, p1, p3}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const-string p2, ")get_store().add_element_user("

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :goto_1
    return-void
.end method

.method public emitDeclareTarget(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " target = null;"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " target = null;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v1, ");"

    const-string v2, "target = ("

    if-eqz p3, :cond_2

    const-string p1, ")get_store().find_attribute_user("

    .line 1
    invoke-static {v2, p6, p1, p2, v1}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")get_store().find_element_user("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    invoke-static {v3, p4, v1, p0}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    :goto_1
    const/4 p1, 0x1

    if-ne p5, p1, :cond_3

    return-void

    .line 4
    :cond_3
    const-string p4, "if (target == null)"

    invoke-virtual {p0, p4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    if-eq p5, p1, :cond_7

    const/4 p1, 0x3

    if-eq p5, p1, :cond_6

    const/4 p1, 0x4

    if-eq p5, p1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Bad behaviour type: "

    .line 5
    invoke-static {p5, p2}, Lorg/apache/ftpserver/main/a;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_5
    const-string p1, "throw new IndexOutOfBoundsException();"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1, p6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitAddTarget(Ljava/lang/String;ZZLjava/lang/String;)V

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    return-void
.end method

.method public emitImplementationPostamble()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    const-string v0, "}"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public emitImplementationPreamble()V
    .locals 1

    const-string v0, "synchronized (monitor())"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "{"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    const-string v0, "check_orphaned();"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V
    .locals 6

    .line 1
    const-string v5, "-1"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getImpl(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getPrePostExtension()Lorg/apache/xmlbeans/PrePostExtension;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/PrePostExtension;->hasPreCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/PrePostExtension;->hasPostCall()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/PrePostExtension;->getStaticHandler()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ".postSet("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->prePostOpString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ", this, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V
    .locals 6

    .line 1
    const-string v5, "-1"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getImpl(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getPrePostExtension()Lorg/apache/xmlbeans/PrePostExtension;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/PrePostExtension;->hasPreCall()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "if ( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/PrePostExtension;->getStaticHandler()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ".preSet("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->prePostOpString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ", this, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "))"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    :cond_1
    return-void
.end method

.method public endBlock()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    const-string v0, "}"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public findJavaType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 1

    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAtomicRestrictionType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getPrimitiveType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBuiltinTypeCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-boolean p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->$assertionsDisabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "unrecognized primitive type"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    const-string p1, "org.apache.xmlbeans.impl.values.JavaGDateHolderEx"

    return-object p1

    :pswitch_1
    const-string p1, "org.apache.xmlbeans.impl.values.JavaGDurationHolderEx"

    return-object p1

    :pswitch_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->hasStringEnumValues()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "org.apache.xmlbeans.impl.values.JavaStringEnumerationHolderEx"

    return-object p1

    :cond_1
    const-string p1, "org.apache.xmlbeans.impl.values.JavaStringHolderEx"

    return-object p1

    :pswitch_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDecimalSize()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_4

    const/16 v0, 0x20

    if-eq p1, v0, :cond_4

    const/16 v0, 0x40

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_1

    sget-boolean p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->$assertionsDisabled:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :goto_0
    :pswitch_4
    const-string p1, "org.apache.xmlbeans.impl.values.JavaDecimalHolderEx"

    return-object p1

    :pswitch_5
    const-string p1, "org.apache.xmlbeans.impl.values.JavaIntegerHolderEx"

    return-object p1

    :cond_3
    const-string p1, "org.apache.xmlbeans.impl.values.JavaLongHolderEx"

    return-object p1

    :cond_4
    const-string p1, "org.apache.xmlbeans.impl.values.JavaIntHolderEx"

    return-object p1

    :pswitch_6
    const-string p1, "org.apache.xmlbeans.impl.values.JavaDoubleHolderEx"

    return-object p1

    :pswitch_7
    const-string p1, "org.apache.xmlbeans.impl.values.JavaFloatHolderEx"

    return-object p1

    :pswitch_8
    const-string p1, "org.apache.xmlbeans.impl.values.JavaNotationHolderEx"

    return-object p1

    :pswitch_9
    const-string p1, "org.apache.xmlbeans.impl.values.JavaQNameHolderEx"

    return-object p1

    :pswitch_a
    const-string p1, "org.apache.xmlbeans.impl.values.JavaUriHolderEx"

    return-object p1

    :pswitch_b
    const-string p1, "org.apache.xmlbeans.impl.values.JavaHexBinaryHolderEx"

    return-object p1

    :pswitch_c
    const-string p1, "org.apache.xmlbeans.impl.values.JavaBase64HolderEx"

    return-object p1

    :pswitch_d
    const-string p1, "org.apache.xmlbeans.impl.values.JavaBooleanHolderEx"

    return-object p1

    :pswitch_e
    const-string p1, "org.apache.xmlbeans.impl.values.XmlAnySimpleTypeImpl"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf4240
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getBaseClass(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->findBaseType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 p1, 0x2

    if-eq v1, p1, :cond_1

    const/4 p1, 0x3

    if-ne v1, p1, :cond_0

    const-string p1, "org.apache.xmlbeans.impl.values.XmlListImpl"

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    const-string p1, "org.apache.xmlbeans.impl.values.XmlUnionImpl"

    return-object p1

    :cond_2
    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isBuiltinType()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getAtomicRestrictionType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    sget-object p1, Lorg/apache/xmlbeans/XmlObject;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaImplName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p1, "org.apache.xmlbeans.impl.values.XmlComplexContentImpl"

    return-object p1
.end method

.method public getIdentifier(Ljava/util/Map;Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    return-object p1
.end method

.method public getSetIdentifier(Ljava/util/Map;Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 p2, 0x1

    aget-object p2, p1, p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    aget-object p2, p1, p2

    :cond_0
    return-object p2
.end method

.method public indent()V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_indent:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_indent:I

    return-void
.end method

.method public javaTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;
    .locals 4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaTypeCode()I

    move-result v0

    const/16 v1, 0x2e

    const/16 v2, 0x24

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->javaBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->findJavaType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaTypeCode()I

    move-result v0

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUserTypeName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaTypeCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-boolean p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->$assertionsDisabled:Z

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_0
    const-string p1, "java.lang.Object"

    return-object p1

    :pswitch_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->javaBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getUnionCommonBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    :cond_3
    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->hasBase(Lorg/apache/xmlbeans/SchemaType;)Z

    move-result v0

    const-string v3, ".Enum"

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->findJavaType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->findJavaType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const-string p1, "java.util.Calendar"

    return-object p1

    :pswitch_3
    const-string p1, "java.util.List"

    return-object p1

    :pswitch_4
    const-string p1, "org.apache.poi.javax.xml.namespace.QName"

    return-object p1

    :pswitch_5
    const-string p1, "java.util.Date"

    return-object p1

    :pswitch_6
    const-string p1, "org.apache.xmlbeans.GDuration"

    return-object p1

    :pswitch_7
    const-string p1, "org.apache.xmlbeans.GDate"

    return-object p1

    :pswitch_8
    const-string p1, "byte[]"

    return-object p1

    :pswitch_9
    const-string p1, "java.lang.String"

    return-object p1

    :pswitch_a
    const-string p1, "java.math.BigInteger"

    return-object p1

    :pswitch_b
    const-string p1, "java.math.BigDecimal"

    return-object p1

    :pswitch_c
    const-string p1, "long"

    return-object p1

    :pswitch_d
    const-string p1, "int"

    return-object p1

    :pswitch_e
    const-string p1, "short"

    return-object p1

    :pswitch_f
    const-string p1, "byte"

    return-object p1

    :pswitch_10
    const-string p1, "double"

    return-object p1

    :pswitch_11
    const-string p1, "float"

    return-object p1

    :pswitch_12
    const-string p1, "boolean"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public makeAttributeDefaultValue(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaProperty;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaProperty;->javaBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/16 p2, 0x24

    .line 12
    .line 13
    const/16 v0, 0x2e

    .line 14
    .line 15
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_0
    const-string p2, "target = ("

    .line 20
    .line 21
    const-string v0, ")get_default_attribute_value("

    .line 22
    .line 23
    const-string v1, ");"

    .line 24
    .line 25
    invoke-static {p2, p1, v0, p3, v1}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public makeMissingValue(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "return null;"

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    const-string p1, "return 0L;"

    goto :goto_0

    :pswitch_1
    const-string p1, "return 0;"

    goto :goto_0

    :pswitch_2
    const-string p1, "return 0.0;"

    goto :goto_0

    :pswitch_3
    const-string p1, "return 0.0f;"

    goto :goto_0

    :pswitch_4
    const-string p1, "return false;"

    goto :goto_0

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public outdent()V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_indent:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_indent:I

    return-void
.end method

.method public prePostOpString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    sget-boolean p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->$assertionsDisabled:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    const-string p1, "org.apache.xmlbeans.PrePostExtension.OPERATION_REMOVE"

    return-object p1

    :cond_2
    const-string p1, "org.apache.xmlbeans.PrePostExtension.OPERATION_INSERT"

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "org.apache.xmlbeans.PrePostExtension.OPERATION_SET"

    return-object p1
.end method

.method public printConstructor(Lorg/apache/xmlbeans/SchemaType;Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "public "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "(org.apache.xmlbeans.SchemaType sType)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "super(sType"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ", "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "protected "

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "(org.apache.xmlbeans.SchemaType sType, boolean b)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    const-string p1, "super(sType, b);"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :cond_1
    return-void
.end method

.method public printFactory(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 9

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isAnonymousType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isAttributeType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v3, "/**"

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v3, " * A factory class with static methods for creating instances"

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v3, " * of this type."

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v3, " */"

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v3, "public static final class Factory"

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v3, "{"

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v3

    const-string v4, "  return ("

    const-string v5, "public static "

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " newValue(java.lang.Object obj) {"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ") type.newValue( obj ); }"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isAbstract()Z

    move-result v3

    const-string v6, "/** @deprecated No need to be able to create instances of abstract types */"

    const-string v7, "@Deprecated"

    if-eqz v3, :cond_2

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    iget-boolean v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, " newInstance() {"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, ") org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, null ); }"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isAbstract()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    iget-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_3
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " newInstance(org.apache.xmlbeans.XmlOptions options) {"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ") org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newInstance( type, options ); }"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    if-eqz v0, :cond_8

    const-string p1, "/** @param xmlAsString the string value to parse */"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " parse(java.lang.String xmlAsString) throws org.apache.xmlbeans.XmlException {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, null ); }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " parse(java.lang.String xmlAsString, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xmlAsString, type, options ); }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p1, "/** @param file the file from which to load an xml document */"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " parse(java.io.File file) throws org.apache.xmlbeans.XmlException, java.io.IOException {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, null ); }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " parse(java.io.File file, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( file, type, options ); }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " parse(java.net.URL u) throws org.apache.xmlbeans.XmlException, java.io.IOException {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, null ); }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " parse(java.net.URL u, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( u, type, options ); }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " parse(java.io.InputStream is) throws org.apache.xmlbeans.XmlException, java.io.IOException {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, null ); }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " parse(java.io.InputStream is, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( is, type, options ); }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " parse(java.io.Reader r) throws org.apache.xmlbeans.XmlException, java.io.IOException {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, null ); }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " parse(java.io.Reader r, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, java.io.IOException {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( r, type, options ); }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " parse(javax.xml.stream.XMLStreamReader sr) throws org.apache.xmlbeans.XmlException {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, null ); }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " parse(javax.xml.stream.XMLStreamReader sr, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( sr, type, options ); }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " parse(org.w3c.dom.Node node) throws org.apache.xmlbeans.XmlException {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, null ); }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " parse(org.w3c.dom.Node node, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ") org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( node, type, options ); }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p1, "/** @deprecated {@link org.apache.xmlbeans.xml.stream.XMLInputStream} */"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ") org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, null ); }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " parse(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ") org.apache.xmlbeans.XmlBeans.getContextTypeLoader().parse( xis, type, options ); }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_6
    const-string v0, "public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "  return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, null ); }"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    iget-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_7
    const-string p1, "public static org.apache.xmlbeans.xml.stream.XMLInputStream newValidatingXMLInputStream(org.apache.xmlbeans.xml.stream.XMLInputStream xis, org.apache.xmlbeans.XmlOptions options) throws org.apache.xmlbeans.XmlException, org.apache.xmlbeans.xml.stream.XMLStreamException {"

    const-string v0, "  return org.apache.xmlbeans.XmlBeans.getContextTypeLoader().newValidatingXMLInputStream( xis, type, options ); }"

    .line 1
    invoke-static {p0, p1, v0, v2}, Lorg/apache/ftpserver/main/a;->C(Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_8
    const-string p1, "private Factory() { } // No instance of this class allowed"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    const-string p1, "}"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public printGetterImpls(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaProperty;Lorg/apache/poi/javax/xml/namespace/QName;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 40

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p4, :cond_0

    const-string v1, " attribute"

    goto :goto_0

    :cond_0
    const-string v1, " element"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez v11, :cond_1

    const/4 v0, 0x1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/16 v16, 0x0

    :goto_1
    if-nez p13, :cond_3

    if-nez v16, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v13

    goto :goto_3

    :cond_3
    :goto_2
    const-string v0, "org.apache.xmlbeans.SimpleValue"

    move-object v5, v0

    :goto_3
    const-string v6, "return target.isNil();"

    const-string v4, "public boolean isNil"

    const-string v3, "return target;"

    const-string v2, " xget"

    const-string v1, " get"

    const-string v0, "public "

    move-object/from16 p3, v5

    const-string v5, "()"

    if-eqz p12, :cond_d

    move-object/from16 p13, v2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p11, :cond_4

    const-string v17, "Gets first "

    :goto_4
    move-object/from16 v18, v3

    move-object/from16 v3, v17

    goto :goto_5

    :cond_4
    const-string v17, "Gets the "

    goto :goto_4

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const-string v17, "0"

    const/16 v19, 0x1

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v2, v1

    move-object/from16 v1, p15

    move-object/from16 v20, p13

    move-object/from16 v21, v2

    move-object/from16 v2, p14

    move-object/from16 v23, v3

    move-object/from16 v22, v18

    move/from16 v3, p4

    move-object v15, v4

    move-object/from16 v4, v17

    move-object/from16 p12, p3

    move-object/from16 v17, v15

    move-object v15, v5

    move/from16 v5, v19

    move-object/from16 v24, v6

    move-object/from16 v6, p12

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    const-string v6, "if (target == null)"

    const/4 v5, 0x2

    if-eqz p4, :cond_5

    invoke-interface/range {p2 .. p2}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result v0

    if-eq v0, v5, :cond_6

    invoke-interface/range {p2 .. p2}, Lorg/apache/xmlbeans/SchemaProperty;->hasFixed()I

    move-result v0

    if-ne v0, v5, :cond_5

    goto :goto_6

    :cond_5
    move-object/from16 v4, p12

    goto :goto_7

    :cond_6
    :goto_6
    invoke-virtual {v8, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    move-object/from16 v4, p12

    invoke-virtual {v8, v4, v9, v14}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->makeAttributeDefaultValue(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaProperty;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :goto_7
    invoke-virtual {v8, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual {v8, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->makeMissingValue(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    invoke-interface/range {p2 .. p2}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v8, v11, v12, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJGetValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    if-nez v16, :cond_a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p11, :cond_7

    const-string v1, "Gets (as xml) first "

    goto :goto_8

    :cond_7
    const-string v1, "Gets (as xml) the "

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    move-object/from16 v3, v23

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const-string v18, "0"

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v25, v2

    move-object/from16 v2, p14

    move-object/from16 v26, v3

    move/from16 v3, p4

    move-object/from16 v20, v4

    move-object/from16 v4, v18

    const/4 v11, 0x2

    move/from16 v5, v19

    move-object/from16 v27, v6

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    if-eqz p4, :cond_9

    invoke-interface/range {p2 .. p2}, Lorg/apache/xmlbeans/SchemaProperty;->hasDefault()I

    move-result v0

    if-eq v0, v11, :cond_8

    invoke-interface/range {p2 .. p2}, Lorg/apache/xmlbeans/SchemaProperty;->hasFixed()I

    move-result v0

    if-ne v0, v11, :cond_9

    :cond_8
    move-object/from16 v0, v27

    goto :goto_a

    :cond_9
    :goto_9
    move-object/from16 v11, v22

    goto :goto_b

    :goto_a
    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual {v8, v13, v9, v14}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->makeAttributeDefaultValue(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaProperty;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_9

    :goto_b
    invoke-virtual {v8, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_c

    :cond_a
    move-object/from16 v25, v20

    move-object/from16 v11, v22

    move-object/from16 v26, v23

    move-object/from16 v20, v4

    :goto_c
    if-eqz p9, :cond_c

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p11, :cond_b

    const-string v1, "Tests for nil first "

    goto :goto_d

    :cond_b
    const-string v1, "Tests for nil "

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    move-object/from16 v6, v17

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const-string v4, "0"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v2, p14

    move/from16 v3, p4

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    const-string v0, "if (target == null) return false;"

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move-object/from16 v6, v24

    invoke-virtual {v8, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_e

    :cond_c
    move-object/from16 v6, v24

    goto :goto_e

    :cond_d
    move-object/from16 v20, p3

    move-object/from16 v26, v0

    move-object/from16 v21, v1

    move-object/from16 v25, v2

    move-object v11, v3

    move-object/from16 v17, v4

    move-object v15, v5

    :goto_e
    const-string v5, "return get_store().count_elements("

    if-eqz p10, :cond_10

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p11, :cond_e

    const-string v1, "True if has at least one "

    goto :goto_f

    :cond_e
    const-string v1, "True if has "

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "public boolean isSet"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    if-eqz p4, :cond_f

    const-string v0, "return get_store().find_attribute_user("

    const-string v1, ") != null;"

    .line 1
    invoke-static {v0, v14, v1, v8}, Lorg/apache/ftpserver/main/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    move-object/from16 v4, p15

    move-object/from16 v3, v17

    goto :goto_10

    .line 2
    :cond_f
    const-string v0, ") != 0;"

    move-object/from16 v4, p15

    move-object/from16 v3, v17

    .line 3
    invoke-static {v5, v4, v0, v8}, Lorg/apache/ftpserver/main/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    .line 4
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_11

    :cond_10
    move-object/from16 v4, p15

    move-object/from16 v3, v17

    :goto_11
    if-eqz p11, :cond_1a

    const-string v0, "Array"

    .line 5
    invoke-static {v10, v0}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-boolean v0, v8, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    if-eqz v0, :cond_12

    invoke-static/range {p6 .. p6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->isJavaPrimitive(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static/range {p6 .. p6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->javaWrappedType(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_12

    :cond_11
    move-object/from16 v17, v12

    :goto_12
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v2

    move-object v2, v7

    move-object/from16 v28, v3

    move-object/from16 v3, p5

    move-object/from16 v4, v17

    move-object/from16 v29, v5

    move-object/from16 v5, p8

    move-object v10, v6

    move/from16 v6, v16

    move-object v14, v7

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printListGetter15Impl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_13

    :cond_12
    move-object v9, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v5

    move-object v10, v6

    move-object v14, v7

    :goto_13
    iget-boolean v0, v8, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    const-string v7, "@Deprecated"

    const-string v6, " */"

    const-string v5, " * @deprecated"

    const-string v4, " * Gets array of all "

    const-string v3, "/**"

    const-string v2, ""

    const-string v1, "s"

    if-eqz v0, :cond_13

    invoke-virtual {v8, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move-object/from16 p3, v2

    goto :goto_14

    :cond_13
    new-instance v0, Ljava/lang/StringBuffer;

    move-object/from16 p3, v2

    const-string v2, "Gets array of all "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    :goto_14
    const-string v0, "[] get"

    move-object/from16 v2, v26

    .line 7
    invoke-static {v2, v12, v0, v9, v15}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    iget-boolean v0, v8, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    move-object/from16 p10, v7

    const-string v7, ">();"

    move-object/from16 p11, v5

    const-string v5, "> targetList = new java.util.ArrayList<"

    move-object/from16 v24, v10

    const-string v10, "java.util.List<"

    if-eqz v0, :cond_14

    .line 9
    invoke-static {v10, v13, v5, v13, v7}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :goto_15
    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_16

    :cond_14
    const-string v0, "java.util.List targetList = new java.util.ArrayList();"

    goto :goto_15

    :goto_16
    new-instance v0, Ljava/lang/StringBuffer;

    move-object/from16 p12, v1

    const-string v1, "get_store().find_all_element_users("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", targetList);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move/from16 v1, p6

    invoke-virtual {v8, v1, v12, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJGetArrayValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Gets ith "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "(int i)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const-string v17, "i"

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move-object/from16 v30, p12

    move-object/from16 v31, v1

    move-object/from16 v1, p15

    move-object/from16 v33, p3

    move-object/from16 v32, v2

    move-object/from16 v2, p14

    move-object/from16 v34, v3

    move/from16 v3, p4

    move-object/from16 v35, v4

    move-object/from16 v4, v17

    move-object/from16 v36, p11

    move-object/from16 v37, v5

    move/from16 v5, v18

    move-object/from16 v38, v6

    move-object/from16 v6, v20

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move/from16 v1, p6

    invoke-virtual {v8, v1, v12, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJGetValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    if-nez v16, :cond_18

    iget-boolean v0, v8, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    if-eqz v0, :cond_15

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p8

    move/from16 v6, v16

    move-object/from16 v39, v7

    move-object/from16 v22, v11

    move-object/from16 v11, p10

    move v7, v12

    invoke-virtual/range {v0 .. v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printListGetter15Impl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_17

    :cond_15
    move-object/from16 v39, v7

    move-object/from16 v22, v11

    move-object/from16 v11, p10

    :goto_17
    iget-boolean v0, v8, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    if-eqz v0, :cond_16

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_18

    :cond_16
    move-object/from16 v1, v30

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "Gets (as xml) array of all "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    :goto_18
    const-string v0, "[] xget"

    move-object/from16 v1, v32

    .line 11
    invoke-static {v1, v13, v0, v9, v15}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    iget-boolean v0, v8, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    if-eqz v0, :cond_17

    move-object/from16 v2, v37

    move-object/from16 v0, v39

    .line 13
    invoke-static {v10, v13, v2, v13, v0}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    :goto_19
    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_1a

    :cond_17
    const-string v0, "java.util.List targetList = new java.util.ArrayList();"

    goto :goto_19

    :goto_1a
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "get_store().find_all_element_users("

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, p15

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", targetList);"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "[] result = new "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "[targetList.size()];"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "targetList.toArray(result);"

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "return result;"

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "Gets (as xml) ith "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v10, v31

    .line 15
    invoke-static {v1, v13, v0, v9, v10}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const-string v4, "i"

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v2, p14

    move/from16 v3, p4

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_1b

    :cond_18
    move-object/from16 v7, p15

    move-object/from16 v10, v31

    :goto_1b
    if-eqz p9, :cond_19

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Tests for nil ith "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const-string v4, "i"

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v2, p14

    move/from16 v3, p4

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :cond_19
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Returns number of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "public int sizeOf"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    new-instance v0, Ljava/lang/StringBuffer;

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :cond_1a
    return-void
.end method

.method public printInnerType(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V
    .locals 17

    move-object/from16 v11, p0

    const-string v0, ""

    invoke-virtual {v11, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printInnerTypeJavaDoc(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startInterface(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual/range {p0 .. p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printStaticTypeDeclaration(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaType;->hasStringEnumValues()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printStringEnumeration(Lorg/apache/xmlbeans/SchemaType;)V

    goto/16 :goto_3

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaType;->hasStringEnumValues()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printStringEnumeration(Lorg/apache/xmlbeans/SchemaType;)V

    :cond_1
    invoke-direct/range {p0 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getDerivedProperties(Lorg/apache/xmlbeans/SchemaType;)[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    array-length v0, v12

    if-ge v14, v0, :cond_5

    aget-object v15, v12, v14

    invoke-interface {v15}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-interface {v15}, Lorg/apache/xmlbeans/SchemaProperty;->isAttribute()Z

    move-result v2

    invoke-interface {v15}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaTypeCode()I

    move-result v4

    invoke-virtual {v11, v15}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->javaTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v15}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->xmlTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v15}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result v0

    const/16 v16, 0x1

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-interface {v15}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaOption()Z

    move-result v8

    invoke-interface {v15}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaArray()Z

    move-result v9

    invoke-interface {v15}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaSingleton()Z

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printPropertyGetters(Lorg/apache/poi/javax/xml/namespace/QName;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZ)V

    invoke-interface {v15}, Lorg/apache/xmlbeans/SchemaProperty;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v15}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-interface {v15}, Lorg/apache/xmlbeans/SchemaProperty;->isAttribute()Z

    move-result v2

    invoke-interface {v15}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaTypeCode()I

    move-result v4

    invoke-virtual {v11, v15}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->javaTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v15}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->xmlTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v15}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-interface {v15}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaOption()Z

    move-result v8

    invoke-interface {v15}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaArray()Z

    move-result v9

    invoke-interface {v15}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaSingleton()Z

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printPropertySetters(Lorg/apache/poi/javax/xml/namespace/QName;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZ)V

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printNestedInnerTypes(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printFactory(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    return-void
.end method

.method public printInnerTypeImpl(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;Z)V
    .locals 28

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaType;->getShortJavaImplName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printInnerTypeJavaDoc(Lorg/apache/xmlbeans/SchemaType;)V

    move/from16 v0, p3

    invoke-virtual {v15, v14, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startClass(Lorg/apache/xmlbeans/SchemaType;Z)V

    invoke-virtual {v15, v14, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printConstructor(Lorg/apache/xmlbeans/SchemaType;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printExtensionImplMethods(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result v0

    const/4 v1, 0x2

    const/16 v16, 0x0

    if-ne v0, v1, :cond_7

    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->isBuiltinType()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getDerivedProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    aget-object v4, v2, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaProperty;->isAttribute()Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v2, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v4

    invoke-interface {v14, v4}, Lorg/apache/xmlbeans/SchemaType;->getAttributeProperty(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    aget-object v4, v2, v3

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/apache/xmlbeans/SchemaType;->getProperties()[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v0

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_5

    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaProperty;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/SchemaProperty;

    check-cast v0, [Lorg/apache/xmlbeans/SchemaProperty;

    :cond_6
    :goto_3
    move-object v12, v0

    goto :goto_4

    :cond_7
    invoke-direct/range {p0 .. p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getDerivedProperties(Lorg/apache/xmlbeans/SchemaType;)[Lorg/apache/xmlbeans/SchemaProperty;

    move-result-object v0

    goto :goto_3

    :goto_4
    invoke-virtual {v15, v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printStaticFields([Lorg/apache/xmlbeans/SchemaProperty;)Ljava/util/Map;

    move-result-object v11

    const/4 v10, 0x0

    :goto_5
    array-length v0, v12

    if-ge v10, v0, :cond_b

    aget-object v9, v12, v10

    invoke-interface {v9}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v8

    invoke-virtual {v15, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->xmlTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v9}, Lorg/apache/xmlbeans/SchemaProperty;->isAttribute()Z

    move-result v4

    invoke-interface {v9}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaTypeCode()I

    move-result v6

    invoke-virtual {v15, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->javaTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result v0

    const/16 v18, 0x1

    if-eqz v0, :cond_8

    const/16 v19, 0x1

    goto :goto_6

    :cond_8
    const/16 v19, 0x0

    :goto_6
    invoke-interface {v9}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaOption()Z

    move-result v20

    invoke-interface {v9}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaArray()Z

    move-result v21

    invoke-interface {v9}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaSingleton()Z

    move-result v22

    invoke-static {v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->xmlTypeForPropertyIsUnion(Lorg/apache/xmlbeans/SchemaProperty;)Z

    move-result v23

    invoke-virtual {v15, v11, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getIdentifier(Ljava/util/Map;Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v15, v11, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getSetIdentifier(Ljava/util/Map;Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v9

    move-object v3, v8

    move-object/from16 v26, v8

    move-object/from16 v8, v17

    move-object/from16 p3, v9

    move/from16 v9, v19

    move/from16 v19, v10

    move/from16 v10, v20

    move-object/from16 v27, v11

    move/from16 v11, v21

    move-object/from16 v20, v12

    move/from16 v12, v22

    move-object/from16 v21, v13

    move/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v15, v25

    invoke-virtual/range {v0 .. v15}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printGetterImpls(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaProperty;Lorg/apache/poi/javax/xml/namespace/QName;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Lorg/apache/xmlbeans/SchemaProperty;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface/range {p3 .. p3}, Lorg/apache/xmlbeans/SchemaProperty;->isAttribute()Z

    move-result v3

    invoke-interface/range {p3 .. p3}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaTypeCode()I

    move-result v5

    move-object/from16 v15, p0

    move-object/from16 v2, p3

    invoke-virtual {v15, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->javaTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaProperty;->hasNillable()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v8, 0x1

    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    :goto_7
    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaOption()Z

    move-result v9

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaArray()Z

    move-result v10

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaProperty;->extendsJavaSingleton()Z

    move-result v11

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->xmlTypeForPropertyIsUnion(Lorg/apache/xmlbeans/SchemaProperty;)Z

    move-result v12

    move-object/from16 v1, v26

    move-object/from16 v14, v27

    invoke-virtual {v15, v14, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getIdentifier(Ljava/util/Map;Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v14, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getSetIdentifier(Ljava/util/Map;Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v7, v17

    move-object/from16 v17, v14

    move-object/from16 v14, v18

    move-object/from16 v15, p1

    invoke-virtual/range {v0 .. v15}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printSetterImpls(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaProperty;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)V

    goto :goto_8

    :cond_a
    move-object/from16 v17, v27

    :goto_8
    add-int/lit8 v10, v19, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v11, v17

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    goto/16 :goto_5

    :cond_b
    invoke-virtual/range {p0 .. p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printNestedTypeImpls(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    return-void
.end method

.method public printInnerTypeJavaDoc(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isAttributeType()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getAttributeTypeAttributeName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getContainerField()Lorg/apache/xmlbeans/SchemaField;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaField;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_2
    :goto_0
    const-string v1, "/**"

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const-string v2, " * A document containing one "

    .line 53
    .line 54
    const-string v3, "."

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuffer;

    .line 59
    .line 60
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->prettyQName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    const-string v0, " element."

    .line 71
    .line 72
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_3
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isAttributeType()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuffer;

    .line 90
    .line 91
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->prettyQName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    .line 100
    .line 101
    const-string v0, " attribute."

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    if-eqz v0, :cond_5

    .line 105
    .line 106
    new-instance v1, Ljava/lang/StringBuffer;

    .line 107
    .line 108
    const-string v2, " * An XML "

    .line 109
    .line 110
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->prettyQName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    const-string v0, " * An anonymous inner XML type."

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :goto_4
    const-string v0, " *"

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_9

    .line 137
    .line 138
    const/4 v1, 0x1

    .line 139
    if-eq v0, v1, :cond_8

    .line 140
    .line 141
    const/4 v1, 0x2

    .line 142
    if-eq v0, v1, :cond_7

    .line 143
    .line 144
    const/4 v1, 0x3

    .line 145
    if-eq v0, v1, :cond_6

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    .line 149
    .line 150
    const-string v1, " * This is a list type whose items are "

    .line 151
    .line 152
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getListItemType()Lorg/apache/xmlbeans/SchemaType;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_7
    const-string v0, " * This is a union type. Instances are of one of the following types:"

    .line 178
    .line 179
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getUnionConstituentTypes()[Lorg/apache/xmlbeans/SchemaType;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    const/4 v0, 0x0

    .line 187
    :goto_5
    array-length v1, p1

    .line 188
    if-ge v0, v1, :cond_a

    .line 189
    .line 190
    new-instance v1, Ljava/lang/StringBuffer;

    .line 191
    .line 192
    const-string v2, " *     "

    .line 193
    .line 194
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    aget-object v2, p1, v0

    .line 198
    .line 199
    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    add-int/lit8 v0, v0, 0x1

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_8
    new-instance v0, Ljava/lang/StringBuffer;

    .line 217
    .line 218
    const-string v1, " * This is an atomic type that is a restriction of "

    .line 219
    .line 220
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getFullJavaName(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-static {v0, p1, v3, p0}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    .line 228
    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_9
    const-string p1, " * This is a complex type."

    .line 232
    .line 233
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :cond_a
    :goto_6
    const-string p1, " */"

    .line 237
    .line 238
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    return-void
.end method

.method public printInterfaceMethodDecl(Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "public "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;->getReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;->getParameterTypes()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    const-string v5, ", "

    if-ge v3, v4, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " p"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;->getExceptionTypes()[Ljava/lang/String;

    move-result-object p1

    :goto_1
    array-length v1, p1

    if-ge v2, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-nez v2, :cond_2

    const-string v3, " throws "

    goto :goto_2

    :cond_2
    move-object v3, v5

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public printInterfaceMethodImpl(Ljava/lang/String;Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-interface {p2}, Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;->getReturnType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "void"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "(this"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Lorg/apache/xmlbeans/InterfaceExtension$MethodSignature;->getParameterTypes()[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ", p"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public printJGetArrayValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V
    .locals 3

    .line 1
    const-string v0, "[targetList.size()];"

    .line 2
    .line 3
    const-string v1, "[] result = new "

    .line 4
    .line 5
    const-string v2, "for (int i = 0, len = targetList.size() ; i < len ; i++)"

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuffer;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUserTypeName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->getUserTypeName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Ljava/lang/StringBuffer;

    .line 52
    .line 53
    const-string p2, "    result[i] = "

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    invoke-direct {p0, p2, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getUserTypeStaticHandlerMethod(ZLorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    const-string p3, "((org.apache.xmlbeans.SimpleValue)targetList.get(i));"

    .line 64
    .line 65
    invoke-static {p1, p2, p3, p0}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :pswitch_1
    const-string p1, "java.lang.Object[] result = new java.lang.Object[targetList.size()];"

    .line 71
    .line 72
    const-string p2, "    result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getObjectValue();"

    .line 73
    .line 74
    :goto_0
    invoke-static {p0, p1, v2, p2}, Lorg/apache/ftpserver/main/a;->C(Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuffer;

    .line 80
    .line 81
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance p1, Ljava/lang/StringBuffer;

    .line 107
    .line 108
    const-string p3, "    result[i] = ("

    .line 109
    .line 110
    invoke-direct {p1, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    .line 115
    .line 116
    const-string p2, ")((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getEnumValue();"

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_2

    .line 129
    .line 130
    :pswitch_3
    const-string p1, "java.util.Calendar[] result = new java.util.Calendar[targetList.size()];"

    .line 131
    .line 132
    const-string p2, "    result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getCalendarValue();"

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :pswitch_4
    const-string p1, "java.util.List[] result = new java.util.List[targetList.size()];"

    .line 136
    .line 137
    const-string p2, "    result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getListValue();"

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :pswitch_5
    const-string p1, "org.apache.poi.javax.xml.namespace.QName[] result = new javax.xml.namespace.QName[targetList.size()];"

    .line 141
    .line 142
    const-string p2, "    result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getQNameValue();"

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :pswitch_6
    const-string p1, "java.util.Date[] result = new java.util.Date[targetList.size()];"

    .line 146
    .line 147
    const-string p2, "    result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getDateValue();"

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :pswitch_7
    const-string p1, "org.apache.xmlbeans.GDuration[] result = new org.apache.xmlbeans.GDuration[targetList.size()];"

    .line 151
    .line 152
    const-string p2, "    result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getGDurationValue();"

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :pswitch_8
    const-string p1, "org.apache.xmlbeans.GDate[] result = new org.apache.xmlbeans.GDate[targetList.size()];"

    .line 156
    .line 157
    const-string p2, "    result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getGDateValue();"

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :pswitch_9
    const-string p1, "byte[][] result = new byte[targetList.size()][];"

    .line 161
    .line 162
    const-string p2, "    result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getByteArrayValue();"

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :pswitch_a
    const-string p1, "java.lang.String[] result = new java.lang.String[targetList.size()];"

    .line 166
    .line 167
    const-string p2, "    result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getStringValue();"

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :pswitch_b
    const-string p1, "java.math.BigInteger[] result = new java.math.BigInteger[targetList.size()];"

    .line 171
    .line 172
    const-string p2, "    result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getBigIntegerValue();"

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :pswitch_c
    const-string p1, "java.math.BigDecimal[] result = new java.math.BigDecimal[targetList.size()];"

    .line 176
    .line 177
    const-string p2, "    result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getBigDecimalValue();"

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :pswitch_d
    const-string p1, "long[] result = new long[targetList.size()];"

    .line 181
    .line 182
    const-string p2, "    result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getLongValue();"

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :pswitch_e
    const-string p1, "int[] result = new int[targetList.size()];"

    .line 186
    .line 187
    const-string p2, "    result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getIntValue();"

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :pswitch_f
    const-string p1, "short[] result = new short[targetList.size()];"

    .line 191
    .line 192
    const-string p2, "    result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getShortValue();"

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :pswitch_10
    const-string p1, "byte[] result = new byte[targetList.size()];"

    .line 196
    .line 197
    const-string p2, "    result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getByteValue();"

    .line 198
    .line 199
    goto :goto_0

    .line 200
    :pswitch_11
    const-string p1, "double[] result = new double[targetList.size()];"

    .line 201
    .line 202
    const-string p2, "    result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getDoubleValue();"

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :pswitch_12
    const-string p1, "float[] result = new float[targetList.size()];"

    .line 207
    .line 208
    const-string p2, "    result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getFloatValue();"

    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :pswitch_13
    const-string p1, "boolean[] result = new boolean[targetList.size()];"

    .line 213
    .line 214
    const-string p2, "    result[i] = ((org.apache.xmlbeans.SimpleValue)targetList.get(i)).getBooleanValue();"

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :pswitch_14
    new-instance p1, Ljava/lang/StringBuffer;

    .line 219
    .line 220
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    const-string p1, "targetList.toArray(result);"

    .line 243
    .line 244
    goto :goto_1

    .line 245
    :goto_2
    const-string p1, "return result;"

    .line 246
    .line 247
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public printJGetValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p1

    .line 10
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuffer;

    .line 11
    .line 12
    const-string p2, "return "

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {p0, p2, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getUserTypeStaticHandlerMethod(ZLorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string p3, "(target);"

    .line 23
    .line 24
    invoke-static {p1, p2, p3, p0}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :pswitch_1
    const-string p1, "return target.getObjectValue();"

    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :pswitch_2
    const-string p1, "return ("

    .line 35
    .line 36
    const-string p3, ")target.getEnumValue();"

    .line 37
    .line 38
    invoke-static {p1, p2, p3, p0}, Lorg/apache/ftpserver/main/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :pswitch_3
    const-string p1, "return target.getCalendarValue();"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_4
    const-string p1, "return target.getListValue();"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_5
    const-string p1, "return target.getQNameValue();"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_6
    const-string p1, "return target.getDateValue();"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_7
    const-string p1, "return target.getGDurationValue();"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_8
    const-string p1, "return target.getGDateValue();"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_9
    const-string p1, "return target.getByteArrayValue();"

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_a
    const-string p1, "return target.getStringValue();"

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_b
    const-string p1, "return target.getBigIntegerValue();"

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_c
    const-string p1, "return target.getBigDecimalValue();"

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :pswitch_d
    const-string p1, "return target.getLongValue();"

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :pswitch_e
    const-string p1, "return target.getIntValue();"

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_f
    const-string p1, "return target.getShortValue();"

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :pswitch_10
    const-string p1, "return target.getByteValue();"

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :pswitch_11
    const-string p1, "return target.getDoubleValue();"

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :pswitch_12
    const-string p1, "return target.getFloatValue();"

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :pswitch_13
    const-string p1, "return target.getBooleanValue();"

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :pswitch_14
    const-string p1, "return target;"

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :goto_1
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public printJSetValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V
    .locals 1

    .line 1
    const-string v0, ");"

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw p1

    .line 12
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuffer;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-direct {p0, v0, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getUserTypeStaticHandlerMethod(ZLorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    const-string p3, "("

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    const-string p2, ", target);"

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :pswitch_1
    const-string p1, "target.setObjectValue("

    .line 47
    .line 48
    :goto_0
    invoke-static {p1, p2, v0, p0}, Lorg/apache/ftpserver/main/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :pswitch_2
    const-string p1, "target.setEnumValue("

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_3
    const-string p1, "target.setCalendarValue("

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_4
    const-string p1, "target.setListValue("

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_5
    const-string p1, "target.setQNameValue("

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_6
    const-string p1, "target.setDateValue("

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_7
    const-string p1, "target.setGDurationValue("

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_8
    const-string p1, "target.setGDateValue("

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :pswitch_9
    const-string p1, "target.setByteArrayValue("

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :pswitch_a
    const-string p1, "target.setStringValue("

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :pswitch_b
    const-string p1, "target.setBigIntegerValue("

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :pswitch_c
    const-string p1, "target.setBigDecimalValue("

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_d
    const-string p1, "target.setLongValue("

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :pswitch_e
    const-string p1, "target.setIntValue("

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :pswitch_f
    const-string p1, "target.setShortValue("

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_10
    const-string p1, "target.setByteValue("

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :pswitch_11
    const-string p1, "target.setDoubleValue("

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_12
    const-string p1, "target.setFloatValue("

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_13
    const-string p1, "target.setBooleanValue("

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_14
    const-string p1, "target.set("

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :goto_1
    return-void

    .line 110
    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public printJavaDoc(Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "/**"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, " * "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p1, " */"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public printListGetter15Impl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "Array"

    .line 1
    invoke-static {v1, v3}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    const-string v4, "List"

    .line 3
    invoke-static {v1, v4}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    const-string v5, ".this."

    move-object/from16 v6, p1

    .line 5
    invoke-static {v6, v5}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    const-string v6, "x"

    const-string v7, ""

    if-eqz p7, :cond_0

    move-object v8, v6

    goto :goto_0

    :cond_0
    move-object v8, v7

    :goto_0
    const-string v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz p7, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v7

    :goto_1
    const-string v9, "set"

    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "Gets "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p7, :cond_2

    const-string v10, "(as xml) "

    goto :goto_2

    :cond_2
    move-object v10, v7

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "a List of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v10, p2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "public java.util.List<"

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    const-string v9, "final class "

    const-string v10, " extends java.util.AbstractList<"

    const-string v11, ">"

    .line 7
    invoke-static {v9, v4, v10, v2, v11}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-virtual {v0, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    iget-boolean v9, v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    const-string v10, "@Override"

    if-eqz v9, :cond_3

    invoke-virtual {v0, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_3
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v11, "public "

    invoke-direct {v9, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v12, " get(int i)"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v12, "    { return "

    invoke-direct {v9, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "(i); }"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    iget-boolean v9, v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    if-eqz v9, :cond_4

    invoke-virtual {v0, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_4
    const-string v9, " set(int i, "

    const-string v13, " o)"

    .line 9
    invoke-static {v11, v2, v9, v2, v13}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual {v0, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v14, " old = "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v15, "(i);"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "(i, o);"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v6, "return old;"

    invoke-virtual {v0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    iget-boolean v9, v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    if-eqz v9, :cond_5

    invoke-virtual {v0, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_5
    const-string v9, "public void add(int i, "

    .line 11
    invoke-static {v9, v2, v13, v0}, Lorg/apache/ftpserver/main/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    .line 12
    const-string v9, "    { "

    if-nez p6, :cond_6

    if-eqz p7, :cond_7

    :cond_6
    move-object/from16 p5, v4

    goto :goto_4

    :cond_7
    const-string v13, "insert"

    move-object/from16 p5, v4

    const-string v4, "(i, o); }"

    .line 13
    invoke-static {v9, v5, v13, v1, v4}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14
    :goto_3
    invoke-virtual {v0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    const-string v4, "insertNew"

    const-string v13, "(i).set(o); }"

    .line 15
    invoke-static {v9, v5, v4, v1, v13}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 16
    :goto_5
    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    iget-boolean v4, v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    if-eqz v4, :cond_8

    invoke-virtual {v0, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_8
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, " remove(int i)"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    invoke-static {v4, v14, v5, v8, v3}, Lorg/apache/ftpserver/main/a;->y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v4, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "remove"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    iget-boolean v1, v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_9
    const-string v1, "public int size()"

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "sizeOf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "(); }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "return new "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "();"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    return-void
.end method

.method public printLoader(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaTypeSystem;)V
    .locals 0

    .line 1
    return-void
.end method

.method public printNestedInnerTypes(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V
    .locals 5

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    aget-object v4, v2, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaType;->isSkippedAnonymousType()Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {p0, v4, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printNestedInnerTypes(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    goto :goto_2

    :cond_1
    aget-object v4, v2, v3

    invoke-virtual {p0, v4, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printInnerType(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDerivationType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public printNestedTypeImpls(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V
    .locals 6

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaType;->isSkippedAnonymousType()Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v5, v3, v4

    invoke-virtual {p0, v5, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printNestedTypeImpls(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    goto :goto_2

    :cond_1
    aget-object v5, v3, v4

    invoke-virtual {p0, v5, p2, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printInnerTypeImpl(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;Z)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDerivationType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public printPackage(Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaImplName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    const/16 p2, 0x2e

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-gez p2, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "package "

    .line 27
    .line 28
    const-string v0, ";"

    .line 29
    .line 30
    invoke-static {p2, p1, v0, p0}, Lorg/apache/ftpserver/main/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public printPropertyGetters(Lorg/apache/poi/javax/xml/namespace/QName;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_0

    const-string v5, " attribute"

    goto :goto_0

    :cond_0
    const-string v5, " element"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez p4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-string v6, "boolean isNil"

    const-string v7, " xget"

    const-string v8, " get"

    const-string v9, "();"

    if-eqz p10, :cond_6

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p9, :cond_2

    const-string v11, "Gets first "

    goto :goto_2

    :cond_2
    const-string v11, "Gets the "

    :goto_2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    if-nez v5, :cond_4

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p9, :cond_3

    const-string v11, "Gets (as xml) first "

    goto :goto_3

    :cond_3
    const-string v11, "Gets (as xml) the "

    :goto_3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_4
    if-eqz p7, :cond_6

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p9, :cond_5

    const-string v11, "Tests for nil first "

    goto :goto_4

    :cond_5
    const-string v11, "Tests for nil "

    :goto_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {v10, v1, v9, v0}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    :cond_6
    if-eqz p8, :cond_8

    .line 2
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p9, :cond_7

    const-string v11, "True if has at least one "

    goto :goto_5

    :cond_7
    const-string v11, "True if has "

    :goto_5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuffer;

    const-string v11, "boolean isSet"

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v10, v1, v9, v0}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    :cond_8
    if-eqz p9, :cond_10

    .line 4
    const-string v10, "Array"

    .line 5
    invoke-static {v1, v10}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6
    iget-boolean v11, v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    const-string v12, "List();"

    const-string v13, "java.util.List<"

    const-string v14, "s"

    if-eqz v11, :cond_a

    invoke-static/range {p4 .. p4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->isJavaPrimitive(I)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static/range {p4 .. p4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->javaWrappedType(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_9
    move-object v11, v2

    :goto_6
    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 p1, v6

    const-string v6, "Gets a List of "

    invoke-direct {v15, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v11, "> get"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    move-object/from16 p1, v6

    :goto_7
    iget-boolean v6, v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    const-string v11, "@Deprecated"

    const-string v15, " */"

    move-object/from16 p2, v7

    const-string v7, " * @deprecated"

    move-object/from16 p8, v12

    const-string v12, "/**"

    const-string v1, ""

    if-eqz v6, :cond_b

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuffer;

    move-object/from16 p4, v1

    const-string v1, " * Gets array of all "

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    move-object/from16 p4, v1

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v6, "Gets array of all "

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    :goto_8
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "[] get"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v6, "Gets ith "

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "(int i);"

    .line 7
    invoke-static {v1, v10, v2, v0}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    if-nez v5, :cond_e

    .line 8
    iget-boolean v1, v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v5, "Gets (as xml) a List of "

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "> xget"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v5, p8

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    move-object/from16 v6, p4

    :goto_9
    iget-boolean v1, v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_useJava15:Z

    if-eqz v1, :cond_d

    invoke-virtual {v0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v5, " * Gets (as xml) array of all "

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_a

    :cond_d
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v5, "Gets (as xml) array of all "

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    :goto_a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "[] xget"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v5, "Gets (as xml) ith "

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    invoke-static {v1, v10, v2, v0}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    :cond_e
    if-eqz p7, :cond_f

    .line 10
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "Tests for nil ith "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    move-object/from16 v3, p1

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_f
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Returns number of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "int sizeOf"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public printPropertySetters(Lorg/apache/poi/javax/xml/namespace/QName;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-static/range {p3 .. p3}, Lorg/apache/xmlbeans/impl/common/NameUtil;->lowerCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/common/NameUtil;->nonJavaKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "i"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "iValue"

    :cond_0
    if-nez p4, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_2

    const-string v7, " attribute"

    goto :goto_1

    :cond_2
    const-string v7, " element"

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "void setNil"

    const-string v8, " addNew"

    const-string v9, "void xset"

    const-string v10, "void set"

    const-string v11, "();"

    const-string v12, "("

    const-string v13, ");"

    const-string v14, " "

    if-eqz p10, :cond_9

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p9, :cond_3

    const-string v16, "Sets first "

    :goto_2
    move-object/from16 p1, v7

    move-object/from16 v7, v16

    goto :goto_3

    :cond_3
    const-string v16, "Sets the "

    goto :goto_2

    :goto_3
    invoke-virtual {v15, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {v7, v1, v12, v2, v14}, Lorg/apache/ftpserver/main/a;->y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {v7, v4, v13, v0}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    if-nez v5, :cond_5

    .line 3
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p9, :cond_4

    const-string v15, "Sets (as xml) first "

    goto :goto_4

    :cond_4
    const-string v15, "Sets (as xml) the "

    :goto_4
    invoke-virtual {v7, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {v7, v1, v12, v3, v14}, Lorg/apache/ftpserver/main/a;->y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v7, v4, v13, v0}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    :cond_5
    if-eqz v5, :cond_6

    if-nez p9, :cond_6

    .line 6
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v15, "Appends and returns a new empty "

    invoke-direct {v7, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-static {v7, v1, v11, v0}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    :cond_6
    if-eqz p7, :cond_8

    .line 8
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p9, :cond_7

    const-string v15, "Nils the first "

    goto :goto_5

    :cond_7
    const-string v15, "Nils the "

    :goto_5
    invoke-virtual {v7, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuffer;

    move-object/from16 v15, p1

    invoke-direct {v7, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {v7, v1, v11, v0}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    goto :goto_6

    :cond_8
    move-object/from16 v15, p1

    goto :goto_6

    :cond_9
    move-object v15, v7

    :goto_6
    if-eqz p8, :cond_b

    .line 10
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p9, :cond_a

    const-string v16, "Removes first "

    :goto_7
    move-object/from16 p1, v8

    move-object/from16 v8, v16

    goto :goto_8

    :cond_a
    const-string v16, "Unsets the "

    goto :goto_7

    :goto_8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "void unset"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {v7, v1, v11, v0}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    goto :goto_9

    :cond_b
    move-object/from16 p1, v8

    :goto_9
    if-eqz p9, :cond_f

    .line 12
    const-string v7, "Array"

    .line 13
    invoke-static {v1, v7}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 14
    new-instance v8, Ljava/lang/StringBuffer;

    move-object/from16 p2, v11

    const-string v11, "Sets array of all "

    invoke-direct {v8, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v11, "[] "

    .line 15
    invoke-static {v8, v12, v2, v11, v4}, Lorg/apache/ftpserver/main/a;->y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v1, "Array);"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuffer;

    move-object/from16 v16, v15

    const-string v15, "Sets ith "

    invoke-direct {v8, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "(int i, "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    invoke-static {v8, v4, v13, v0}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    if-nez v5, :cond_c

    .line 18
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v15, "Sets (as xml) array of all "

    invoke-direct {v8, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    invoke-static {v8, v12, v3, v11, v4}, Lorg/apache/ftpserver/main/a;->y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v8, "Sets (as xml) ith "

    invoke-direct {v1, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    invoke-static {v1, v4, v13, v0}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    .line 22
    :cond_c
    const-string v1, "(int i);"

    if-eqz p7, :cond_d

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Nils the ith "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuffer;

    move-object/from16 v9, v16

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_d
    if-nez v5, :cond_e

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, "Inserts the value as the ith "

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, "void insert"

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, p3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    invoke-static {v5, v10, v2, v14, v4}, Lorg/apache/ftpserver/main/a;->y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v8, "Appends the value as the last "

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v8, "void add"

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    invoke-static {v5, v4, v13, v0}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    goto :goto_a

    :cond_e
    move-object/from16 v7, p3

    .line 26
    :goto_a
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "Inserts and returns a new empty value (as xml) as the ith "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " insertNew"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "Appends and returns a new empty value (as xml) as the last "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Removes the ith "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "void remove"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public printSetterImpls(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaProperty;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/SchemaType;)V
    .locals 40

    move-object/from16 v7, p0

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    invoke-static/range {p4 .. p4}, Lorg/apache/xmlbeans/impl/common/NameUtil;->lowerCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/NameUtil;->nonJavaKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/NameUtil;->nonExtraKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    if-nez v10, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    const/16 v1, 0x13

    if-ne v10, v1, :cond_1

    const/16 v17, 0x1

    goto :goto_1

    :cond_1
    const/16 v17, 0x0

    :goto_1
    if-eq v13, v14, :cond_2

    const/16 v18, 0x1

    goto :goto_2

    :cond_2
    const/16 v18, 0x0

    :goto_2
    if-nez p12, :cond_4

    if-nez v16, :cond_3

    goto :goto_3

    :cond_3
    move-object v4, v12

    goto :goto_4

    :cond_4
    :goto_3
    const-string v0, "org.apache.xmlbeans.SimpleValue"

    move-object v4, v0

    :goto_4
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v8, :cond_5

    const-string v1, " attribute"

    goto :goto_5

    :cond_5
    const-string v1, " element"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "return target;"

    const-string v1, "public "

    const-string v0, "public void xset"

    move-object/from16 p1, v2

    const-string v2, "()"

    move-object/from16 p12, v2

    const-string v2, "public void set"

    const-string v8, ")"

    const-string v13, " "

    const-string v15, ", "

    const-string v20, "-1"

    const-string v21, "0"

    const-string v12, "("

    const-string v10, ");"

    if-eqz p11, :cond_15

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p10, :cond_6

    const-string v22, "Sets first "

    :goto_6
    move-object/from16 v23, v0

    move-object/from16 v0, v22

    goto :goto_7

    :cond_6
    const-string v22, "Sets the "

    goto :goto_6

    :goto_7
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {v0, v9, v12, v11, v13}, Lorg/apache/ftpserver/main/a;->y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    if-eqz v16, :cond_9

    if-nez v18, :cond_9

    if-eqz p10, :cond_7

    move-object/from16 v5, v21

    goto :goto_8

    :cond_7
    move-object/from16 v5, v20

    :goto_8
    const/16 v22, 0x1

    move-object/from16 v24, v23

    move-object/from16 v0, p0

    move-object/from16 v23, v10

    move-object v10, v1

    move-object/from16 v1, p15

    move-object/from16 v11, p12

    move-object/from16 v26, v2

    move-object/from16 v25, v12

    move-object/from16 v12, p1

    move/from16 v2, v22

    move-object/from16 v27, v3

    move-object/from16 v3, p13

    move-object/from16 p1, v4

    move/from16 v4, p3

    move-object/from16 v22, v12

    const/4 v12, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v0, "generatedSetterHelperImpl("

    const-string v1, ", 0, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_SINGLETON);"

    .line 3
    invoke-static {v0, v6, v15, v14, v1}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    if-eqz p10, :cond_8

    move-object/from16 v5, v21

    goto :goto_9

    :cond_8
    move-object/from16 v5, v20

    :goto_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v3, p13

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    move-object v12, v6

    move-object/from16 p12, v15

    move-object/from16 v15, v23

    move/from16 v6, p5

    goto/16 :goto_c

    :cond_9
    move-object/from16 v22, p1

    move-object/from16 v11, p12

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 p1, v4

    move-object/from16 v25, v12

    move-object/from16 v24, v23

    const/4 v12, 0x1

    move-object/from16 v23, v10

    move-object v10, v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    if-eqz p10, :cond_a

    move-object/from16 v5, v21

    goto :goto_a

    :cond_a
    move-object/from16 v5, v20

    :goto_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v3, p13

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v4, "0"

    const/4 v5, 0x3

    move-object/from16 v1, p14

    move-object/from16 v2, p13

    move/from16 v3, p3

    move-object v12, v6

    move-object/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move/from16 v6, p5

    move-object/from16 v5, v23

    invoke-virtual {v7, v6, v12, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJSetValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    if-eqz p10, :cond_b

    move-object/from16 v23, v21

    goto :goto_b

    :cond_b
    move-object/from16 v23, v20

    :goto_b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v3, p13

    move/from16 v4, p3

    move-object/from16 p12, v15

    move-object v15, v5

    move-object/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    if-nez v16, :cond_f

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p10, :cond_c

    const-string v1, "Sets (as xml) first "

    goto :goto_d

    :cond_c
    const-string v1, "Sets (as xml) the "

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v5, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    move-object/from16 v4, v24

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p7

    move-object/from16 v2, v25

    .line 5
    invoke-static {v0, v9, v2, v3, v13}, Lorg/apache/ftpserver/main/a;->y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    if-eqz p10, :cond_d

    move-object/from16 v23, v21

    goto :goto_e

    :cond_d
    move-object/from16 v23, v20

    :goto_e
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v25, v13

    move-object v13, v2

    move/from16 v2, v24

    move-object/from16 v3, p13

    move-object/from16 v28, v4

    move/from16 v4, p3

    move-object/from16 v24, v8

    move-object v8, v5

    move-object/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v4, "0"

    const/4 v5, 0x3

    move-object/from16 v1, p14

    move-object/from16 v2, p13

    move/from16 v3, p3

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    const-string v0, "target.set("

    .line 7
    invoke-static {v0, v12, v15, v7}, Lorg/apache/ftpserver/main/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    if-eqz p10, :cond_e

    move-object/from16 v5, v21

    goto :goto_f

    :cond_e
    move-object/from16 v5, v20

    :goto_f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v3, p13

    move/from16 v4, p3

    .line 8
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_10

    :cond_f
    move-object/from16 v28, v24

    move-object/from16 v24, v8

    move-object/from16 v8, v27

    move-object/from16 v39, v25

    move-object/from16 v25, v13

    move-object/from16 v13, v39

    :goto_10
    if-eqz v16, :cond_10

    if-nez p10, :cond_10

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Appends and returns a new empty "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, p7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " addNew"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v0, 0x1

    invoke-virtual {v7, v0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitDeclareTarget(ZLjava/lang/String;)V

    move/from16 v5, p3

    move-object/from16 v4, p13

    move-object/from16 v3, p15

    move-object/from16 v19, v10

    move-object/from16 v1, v25

    const/4 v2, 0x2

    move-object/from16 v10, p12

    invoke-virtual {v7, v3, v2, v4, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    invoke-virtual {v7, v4, v5, v0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitAddTarget(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v7, v3, v2, v4, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_11

    :cond_10
    move/from16 v5, p3

    move-object/from16 v6, p7

    move-object/from16 v4, p13

    move-object/from16 v3, p15

    move-object/from16 v19, v10

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    const/4 v2, 0x2

    move-object/from16 v10, p12

    :goto_11
    if-eqz p8, :cond_14

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p10, :cond_11

    const-string v23, "Nils the first "

    :goto_12
    move-object/from16 v25, v0

    move-object/from16 v0, v23

    goto :goto_13

    :cond_11
    const-string v23, "Nils the "

    goto :goto_12

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "public void setNil"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    if-eqz p10, :cond_12

    move-object/from16 v23, v21

    goto :goto_14

    :cond_12
    move-object/from16 v23, v20

    :goto_14
    const/4 v2, 0x1

    move-object/from16 v29, v25

    move-object/from16 v0, p0

    move-object/from16 v30, v1

    move-object/from16 v1, p15

    move-object/from16 v3, p13

    move/from16 v4, p3

    move-object/from16 p12, v10

    move v10, v5

    move-object/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v4, "0"

    const/4 v5, 0x3

    move-object/from16 v1, p14

    move-object/from16 v2, p13

    move/from16 v3, p3

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    const-string v0, "target.setNil();"

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    if-eqz p10, :cond_13

    move-object/from16 v5, v21

    goto :goto_15

    :cond_13
    move-object/from16 v5, v20

    :goto_15
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v3, p13

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_16

    :cond_14
    move-object/from16 v29, v0

    move-object/from16 v30, v1

    move-object/from16 p12, v10

    move v10, v5

    goto :goto_16

    :cond_15
    move-object/from16 v29, p1

    move-object/from16 v11, p12

    move-object/from16 v28, v0

    move-object/from16 v19, v1

    move-object/from16 v26, v2

    move-object/from16 p1, v4

    move-object/from16 v24, v8

    move-object/from16 v30, v13

    move-object/from16 p12, v15

    move-object v8, v3

    move-object v15, v10

    move-object v13, v12

    move/from16 v10, p3

    move-object v12, v6

    :goto_16
    if-eqz p9, :cond_1a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p10, :cond_16

    const-string v1, "Removes first "

    goto :goto_17

    :cond_16
    const-string v1, "Unsets the "

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "public void unset"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    if-eqz p10, :cond_17

    move-object/from16 v5, v21

    goto :goto_18

    :cond_17
    move-object/from16 v5, v20

    :goto_18
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v3, p13

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    if-eqz v10, :cond_18

    const-string v0, "get_store().remove_attribute("

    move-object/from16 v6, p13

    .line 9
    invoke-static {v0, v6, v15, v7}, Lorg/apache/ftpserver/main/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    goto :goto_19

    :cond_18
    move-object/from16 v6, p13

    .line 10
    const-string v0, "get_store().remove_element("

    const-string v1, ", 0);"

    .line 11
    invoke-static {v0, v14, v1, v7}, Lorg/apache/ftpserver/main/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    :goto_19
    if-eqz p10, :cond_19

    move-object/from16 v5, v21

    goto :goto_1a

    :cond_19
    move-object/from16 v5, v20

    :goto_1a
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v3, p13

    move/from16 v4, p3

    .line 12
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_1b

    :cond_1a
    move-object/from16 v6, p13

    :goto_1b
    if-eqz p10, :cond_2a

    const-string v0, "Array"

    .line 13
    invoke-static {v9, v0}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 14
    const-string v4, "Array)"

    const-string v0, "unionArraySetterHelper("

    const-string v3, "arraySetterHelper("

    const-string v2, "Array, "

    if-eqz v16, :cond_1e

    new-instance v1, Ljava/lang/StringBuffer;

    move-object/from16 v20, v11

    const-string v11, "Sets array of all "

    invoke-direct {v1, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v11, "  WARNING: This method is not atomicaly synchronized."

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    move-object/from16 v11, v26

    invoke-direct {v1, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v9, "[] "

    move-object/from16 v31, v20

    move-object/from16 v11, p6

    .line 15
    invoke-static {v1, v5, v13, v11, v9}, Lorg/apache/ftpserver/main/a;->y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    const-string v1, "check_orphaned();"

    invoke-virtual {v7, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move-object/from16 v9, p15

    const/4 v1, 0x1

    invoke-virtual {v7, v9, v1, v6, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    if-eqz v17, :cond_1c

    if-nez v18, :cond_1b

    .line 17
    invoke-static {v0, v12, v2, v6, v15}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move-object/from16 v0, p12

    :goto_1c
    const/4 v1, 0x1

    goto :goto_1e

    :cond_1b
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p12

    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    invoke-static {v1, v14, v15, v7}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    goto :goto_1c

    :cond_1c
    move-object/from16 v0, p12

    if-nez v18, :cond_1d

    .line 20
    invoke-static {v3, v12, v2, v6, v15}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {v7, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_1c

    :cond_1d
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1d

    :goto_1e
    invoke-virtual {v7, v9, v1, v6, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    move-object v1, v0

    move-object/from16 p11, v4

    move-object/from16 p10, v5

    move-object v5, v14

    move-object/from16 v14, v26

    goto/16 :goto_23

    :cond_1e
    move-object/from16 v1, p12

    move-object/from16 v9, p15

    move-object/from16 p9, v3

    move-object/from16 v31, v11

    move-object/from16 v11, p6

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v14, "Sets array of all "

    invoke-direct {v3, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuffer;

    move-object/from16 v14, v26

    invoke-direct {v3, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 p10, v5

    const-string v5, "[] "

    .line 22
    invoke-static {v3, v13, v11, v5, v12}, Lorg/apache/ftpserver/main/a;->y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v3, 0x1

    invoke-virtual {v7, v9, v3, v6, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    if-eqz v17, :cond_20

    if-nez v18, :cond_1f

    .line 24
    invoke-static {v0, v12, v2, v6, v15}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move-object/from16 v3, p9

    move-object/from16 v5, p14

    :goto_1f
    move-object/from16 p11, v4

    :goto_20
    const/4 v0, 0x1

    goto/16 :goto_22

    :cond_1f
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v5, p14

    .line 26
    invoke-static {v3, v5, v15, v7}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    move-object/from16 v3, p9

    goto :goto_1f

    :cond_20
    move-object/from16 v5, p14

    .line 27
    invoke-interface/range {p2 .. p2}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaTypeCode()I

    move-result v0

    const/16 v3, 0x14

    if-ne v0, v3, :cond_22

    if-nez v18, :cond_21

    const-string v0, "org.apache.xmlbeans.SimpleValue[] dests = arraySetterHelper("

    const-string v3, "Array.length, "

    .line 28
    invoke-static {v0, v12, v3, v6, v15}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "for ( int i = 0 ; i < dests.length ; i++ ) {"

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "    "

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move-object/from16 p11, v4

    :goto_21
    const/4 v4, 0x1

    invoke-direct {v7, v4, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getUserTypeStaticHandlerMethod(ZLorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "Array[i], dests[i]);"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "}"

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move-object/from16 v3, p9

    goto :goto_20

    :cond_21
    move-object/from16 p11, v4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "org.apache.xmlbeans.SimpleValue[] dests = arraySetterHelper("

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "Array.length, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "for ( int i = 0 ; i < dests.length ; i++ ) {"

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "    "

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    goto :goto_21

    :cond_22
    move-object/from16 p11, v4

    move-object/from16 v3, p9

    if-nez v18, :cond_23

    .line 30
    invoke-static {v3, v12, v2, v6, v15}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_23
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    invoke-static {v0, v5, v15, v7}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    goto/16 :goto_20

    .line 33
    :goto_22
    invoke-virtual {v7, v9, v0, v6, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :goto_23
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "Sets ith "

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v14, p10

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "(int i, "

    move-object/from16 p9, v2

    move-object/from16 v2, v30

    .line 34
    invoke-static {v0, v4, v11, v2, v12}, Lorg/apache/ftpserver/main/a;->y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v25, v2

    move-object/from16 v2, v24

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    if-eqz v16, :cond_24

    if-nez v18, :cond_24

    const/16 v17, 0x1

    const-string v20, "i"

    move-object/from16 v0, p0

    move-object/from16 p10, v14

    move-object v14, v1

    move-object/from16 v1, p15

    move-object/from16 v11, p9

    move-object/from16 v24, v2

    move/from16 v2, v17

    move-object/from16 v32, v3

    move-object/from16 v3, p13

    move-object/from16 v33, p11

    move-object/from16 v34, v4

    move/from16 v4, p3

    move-object/from16 v23, v15

    move-object/from16 v15, p10

    move-object v11, v5

    move-object/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v0, "generatedSetterHelperImpl("

    const-string v1, ", i, org.apache.xmlbeans.impl.values.XmlObjectBase.KIND_SETTERHELPER_ARRAYITEM);"

    .line 36
    invoke-static {v0, v12, v14, v11, v1}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v5, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 p12, v14

    move-object v14, v6

    move/from16 v6, p5

    goto :goto_24

    :cond_24
    move-object/from16 v33, p11

    move-object/from16 v24, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v4

    move-object v11, v5

    move-object/from16 v23, v15

    move-object v15, v14

    move-object v14, v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v2, 0x1

    const-string v5, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v3, p13

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v4, "i"

    const/4 v5, 0x4

    move-object/from16 v1, p14

    move-object/from16 v2, p13

    move/from16 v3, p3

    move-object/from16 p12, v14

    move-object v14, v6

    move-object/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    move/from16 v6, p5

    invoke-virtual {v7, v6, v12, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJSetValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    const/4 v2, 0x1

    const-string v5, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v3, p13

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    :goto_24
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    if-nez v16, :cond_25

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Sets (as xml) array of all "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "[]"

    move-object/from16 v5, p7

    .line 38
    invoke-static {v0, v13, v5, v2, v12}, Lorg/apache/ftpserver/main/a;->y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v33

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v0, 0x1

    invoke-virtual {v7, v9, v0, v14, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    move-object/from16 v3, p9

    move-object/from16 v4, v23

    move-object/from16 v2, v32

    .line 40
    invoke-static {v2, v12, v3, v14, v4}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v7, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v0, v14, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "Sets (as xml) ith "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v3, v25

    move-object/from16 v2, v34

    .line 42
    invoke-static {v0, v2, v5, v3, v12}, Lorg/apache/ftpserver/main/a;->y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v24

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/16 v17, 0x1

    const-string v20, "i"

    move-object/from16 v0, p0

    move-object/from16 v21, v1

    move-object/from16 v1, p15

    move-object v9, v2

    move/from16 v2, v17

    move-object/from16 v35, v3

    move-object/from16 v3, p13

    move-object/from16 v36, v4

    move/from16 v4, p3

    move-object/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v4, "i"

    const/4 v5, 0x4

    move-object/from16 v1, p14

    move-object/from16 v2, p13

    move/from16 v3, p3

    move v10, v6

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    const-string v0, "target.set("

    move-object/from16 v1, v36

    .line 44
    invoke-static {v0, v12, v1, v7}, Lorg/apache/ftpserver/main/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    const/4 v2, 0x1

    .line 45
    const-string v5, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v3, p13

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_25

    :cond_25
    move v10, v6

    move-object/from16 v21, v24

    move-object/from16 v35, v25

    move-object/from16 v9, v34

    :goto_25
    if-eqz p8, :cond_26

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Nils the ith "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "public void setNil"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "(int i)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v2, 0x1

    const-string v5, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v3, p13

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v4, "i"

    const/4 v5, 0x4

    move-object/from16 v1, p14

    move-object/from16 v2, p13

    move/from16 v3, p3

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitGetTarget(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    const-string v0, "target.setNil();"

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v5, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v3, p13

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :cond_26
    const-string v6, ")get_store().insert_element_user("

    const-string v15, ", i);"

    if-nez v16, :cond_28

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Inserts the value as the ith "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "public void insert"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, p4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v4, p6

    move-object/from16 v3, v21

    move-object/from16 v2, v35

    .line 46
    invoke-static {v0, v9, v4, v2, v12}, Lorg/apache/ftpserver/main/a;->y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v9, 0x2

    const-string v16, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v37, v2

    move v2, v9

    move-object v9, v3

    move-object/from16 v3, p13

    move/from16 v4, p3

    move-object/from16 v24, v9

    move-object v9, v5

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v5, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " target = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    if-nez v18, :cond_27

    .line 48
    invoke-static {v13, v5, v6, v14, v15}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    move-object/from16 v4, p12

    goto :goto_26

    :cond_27
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v4, p12

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-static {v0, v14, v15, v7}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    .line 51
    :goto_26
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    invoke-interface/range {p2 .. p2}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v7, v10, v12, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJSetValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    const/4 v2, 0x2

    const-string v16, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v3, p13

    move-object/from16 v38, v4

    move/from16 v4, p3

    move-object v10, v5

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Appends the value as the last "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "public void add"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v1, p6

    move-object/from16 v2, v37

    .line 52
    invoke-static {v0, v13, v1, v2, v12}, Lorg/apache/ftpserver/main/a;->y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v24

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v0, 0x1

    invoke-virtual {v7, v0, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitDeclareTarget(ZLjava/lang/String;)V

    move/from16 v13, p3

    move/from16 v1, p5

    move-object/from16 v5, p15

    const/4 v4, 0x2

    invoke-virtual {v7, v5, v4, v14, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    invoke-virtual {v7, v14, v13, v0, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitAddTarget(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lorg/apache/xmlbeans/SchemaProperty;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v7, v1, v12, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJSetValue(ILjava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;)V

    invoke-virtual {v7, v5, v4, v14, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    goto :goto_27

    :cond_28
    move/from16 v13, p3

    move-object/from16 v9, p4

    move-object/from16 v38, p12

    move-object/from16 v5, p15

    const/4 v4, 0x2

    :goto_27
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Inserts and returns a new empty value (as xml) as the ith "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    move-object/from16 v10, v19

    invoke-direct {v0, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v12, p7

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " insertNew"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "(int i)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v0, 0x1

    invoke-virtual {v7, v0, v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitDeclareTarget(ZLjava/lang/String;)V

    const/4 v2, 0x2

    const-string v16, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v3, p13

    move/from16 v4, p3

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    if-nez v18, :cond_29

    const-string v0, "target = ("

    .line 54
    invoke-static {v0, v12, v6, v14, v15}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_28

    :cond_29
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "target = ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-static {v0, v14, v15, v7}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    :goto_28
    const/4 v2, 0x2

    .line 57
    const-string v5, "i"

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    move-object/from16 v3, p13

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Appends and returns a new empty value (as xml) as the last "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " addNew"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v2, v31

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v1, 0x1

    invoke-virtual {v7, v1, v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitDeclareTarget(ZLjava/lang/String;)V

    move-object/from16 v2, p15

    const/4 v3, 0x2

    invoke-virtual {v7, v2, v3, v14, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    invoke-virtual {v7, v14, v13, v1, v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitAddTarget(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v7, v2, v3, v14, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;Z)V

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Removes the ith "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printJavaDoc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "public void remove"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "(int i)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPreamble()V

    const/4 v0, 0x3

    const-string v1, "i"

    move-object/from16 p4, p0

    move-object/from16 p5, p15

    move/from16 p6, v0

    move-object/from16 p7, p13

    move/from16 p8, p3

    move-object/from16 p9, v1

    invoke-virtual/range {p4 .. p9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPre(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v0, "get_store().remove_element("

    .line 58
    invoke-static {v0, v11, v15, v7}, Lorg/apache/ftpserver/main/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    const/4 v0, 0x3

    .line 59
    const-string v1, "i"

    move/from16 p6, v0

    move-object/from16 p9, v1

    invoke-virtual/range {p4 .. p9}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitPost(Lorg/apache/xmlbeans/SchemaType;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitImplementationPostamble()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->endBlock()V

    :cond_2a
    return-void
.end method

.method public printStaticFields([Lorg/apache/xmlbeans/SchemaProperty;)Ljava/util/Map;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    array-length v4, p1

    .line 14
    if-ge v3, v4, :cond_2

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    new-array v4, v4, [Ljava/lang/String;

    .line 18
    .line 19
    aget-object v5, p1, v3

    .line 20
    .line 21
    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaProperty;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-interface {v5}, Lorg/apache/xmlbeans/SchemaProperty;->getJavaPropertyName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const-string v7, "$"

    .line 33
    .line 34
    invoke-static {v5, v7}, Lorg/apache/ftpserver/main/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    mul-int/lit8 v9, v3, 0x2

    .line 39
    .line 40
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    aput-object v8, v4, v2

    .line 52
    .line 53
    new-instance v8, Ljava/lang/StringBuffer;

    .line 54
    .line 55
    const-string v10, "\""

    .line 56
    .line 57
    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    new-instance v10, Ljava/lang/StringBuffer;

    .line 75
    .line 76
    const-string v11, "private static final javax.xml.namespace.QName "

    .line 77
    .line 78
    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    aget-object v11, v4, v2

    .line 82
    .line 83
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    .line 85
    .line 86
    const-string v11, " = "

    .line 87
    .line 88
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    invoke-virtual {p0, v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    .line 99
    .line 100
    .line 101
    new-instance v10, Ljava/lang/StringBuffer;

    .line 102
    .line 103
    const-string v11, "new javax.xml.namespace.QName("

    .line 104
    .line 105
    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    .line 110
    .line 111
    const-string v8, ", \""

    .line 112
    .line 113
    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    .line 122
    .line 123
    const-string v6, "\");"

    .line 124
    .line 125
    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    .line 136
    .line 137
    .line 138
    aget-object v6, p1, v3

    .line 139
    .line 140
    invoke-interface {v6}, Lorg/apache/xmlbeans/SchemaProperty;->acceptedNames()[Lorg/apache/poi/javax/xml/namespace/QName;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    if-eqz v6, :cond_1

    .line 145
    .line 146
    aget-object v6, p1, v3

    .line 147
    .line 148
    invoke-interface {v6}, Lorg/apache/xmlbeans/SchemaProperty;->acceptedNames()[Lorg/apache/poi/javax/xml/namespace/QName;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    array-length v8, v6

    .line 153
    const/4 v10, 0x1

    .line 154
    if-le v8, v10, :cond_1

    .line 155
    .line 156
    invoke-static {v5, v7}, Lorg/apache/ftpserver/main/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    add-int/lit8 v9, v9, 0x1

    .line 161
    .line 162
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    aput-object v5, v4, v10

    .line 174
    .line 175
    new-instance v5, Ljava/lang/StringBuffer;

    .line 176
    .line 177
    const-string v7, "private static final org.apache.xmlbeans.QNameSet "

    .line 178
    .line 179
    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    aget-object v4, v4, v10

    .line 183
    .line 184
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    .line 186
    .line 187
    const-string v4, " = org.apache.xmlbeans.QNameSet.forArray( new javax.xml.namespace.QName[] { "

    .line 188
    .line 189
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    .line 200
    .line 201
    .line 202
    const/4 v4, 0x0

    .line 203
    :goto_1
    array-length v5, v6

    .line 204
    if-ge v4, v5, :cond_0

    .line 205
    .line 206
    new-instance v5, Ljava/lang/StringBuffer;

    .line 207
    .line 208
    const-string v7, "new javax.xml.namespace.QName(\""

    .line 209
    .line 210
    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    aget-object v7, v6, v4

    .line 214
    .line 215
    invoke-virtual {v7}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    .line 221
    .line 222
    const-string v7, "\", \""

    .line 223
    .line 224
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    .line 226
    .line 227
    aget-object v7, v6, v4

    .line 228
    .line 229
    invoke-virtual {v7}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    .line 235
    .line 236
    const-string v7, "\"),"

    .line 237
    .line 238
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    add-int/lit8 v4, v4, 0x1

    .line 249
    .line 250
    goto :goto_1

    .line 251
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    .line 252
    .line 253
    .line 254
    const-string v4, "});"

    .line 255
    .line 256
    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    return-object v0
.end method

.method public printStaticTypeDeclaration(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getShortJavaName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "public static final org.apache.xmlbeans.SchemaType type = (org.apache.xmlbeans.SchemaType)"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    .line 11
    .line 12
    .line 13
    const-string v1, "org.apache.xmlbeans.XmlBeans.typeSystemForClassLoader("

    .line 14
    .line 15
    const-string v2, ".class.getClassLoader(), \""

    .line 16
    .line 17
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaTypeSystem;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    const-string v1, "\").resolveHandle(\""

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->handleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    .line 41
    .line 42
    const-string p1, "\");"

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public printStringEnumeration(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 13

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseEnumType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->hasBase(Lorg/apache/xmlbeans/SchemaType;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    const-string v3, "org.apache.xmlbeans.StringEnumAbstractBase enumValue();"

    const-string v4, "void set(org.apache.xmlbeans.StringEnumAbstractBase e);"

    .line 1
    invoke-static {p0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->C(Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getStringEnumEntries()[Lorg/apache/xmlbeans/SchemaStringEnumEntry;

    move-result-object p1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    array-length v7, p1

    const-string v8, "."

    const-string v9, " = "

    const-string v10, ";"

    if-ge v6, v7, :cond_3

    aget-object v7, p1, v6

    invoke-interface {v7}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    aget-object v11, p1, v6

    invoke-interface {v11}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getEnumName()Ljava/lang/String;

    move-result-object v11

    if-eqz v1, :cond_2

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v12, "static final "

    invoke-direct {v7, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v12, ".Enum "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v8, "static final Enum "

    const-string v9, " = Enum.forString(\""

    .line 3
    invoke-static {v8, v11, v9}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 4
    invoke-static {v7}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->javaStringEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "\");"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_3
    array-length v6, p1

    const-string v7, "static final int "

    const-string v11, "INT_"

    if-ge v3, v6, :cond_6

    aget-object v6, p1, v3

    invoke-interface {v6}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v11, p1, v3

    invoke-interface {v11}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getEnumName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_5

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    invoke-static {v11, v6, v10, p0}, Lorg/apache/ftpserver/main/a;->z(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;)V

    goto :goto_4

    .line 6
    :cond_5
    const-string v11, " = Enum."

    .line 7
    invoke-static {v7, v6, v11, v6, v10}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    if-nez v1, :cond_a

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v1, "/**"

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, " * Enumeration value class for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * These enum values can be used as follows:"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * <pre>"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * enum.toString(); // returns the string value of the enum"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * enum.intValue(); // returns an int value, useful for switches"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    array-length v0, p1

    if-lez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, " * // e.g., case Enum.INT_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v3, p1, v5

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getEnumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_7
    const-string v0, " * Enum.forString(s); // returns the enum value for a string"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * Enum.forInt(i); // returns the enum value for an int"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * </pre>"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * Enumeration objects are immutable singleton objects that"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * can be compared using == object equality. They have no"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * public constructor. See the constants defined within this"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " * class for all the valid values."

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, " */"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v3, "static final class Enum extends org.apache.xmlbeans.StringEnumAbstractBase"

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v3, "{"

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v4, " * Returns the enum value for a string, or null if none."

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v4, "public static Enum forString(java.lang.String s)"

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v4, "    { return (Enum)table.forString(s); }"

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v1, " * Returns the enum value corresponding to an int, or null if none."

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "public static Enum forInt(int i)"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "    { return (Enum)table.forInt(i); }"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "private Enum(java.lang.String s, int i)"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "    { super(s, i); }"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_8

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v0

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getEnumName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v4, p1, v0

    invoke-interface {v4}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getIntValue()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "public static final org.apache.xmlbeans.StringEnumAbstractBase.Table table ="

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "    new org.apache.xmlbeans.StringEnumAbstractBase.Table"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    const-string v0, "new Enum[]"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    :goto_6
    array-length v0, p1

    if-ge v5, v0, :cond_9

    aget-object v0, p1, v5

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v2, p1, v5

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaStringEnumEntry;->getEnumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "new Enum(\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->javaStringEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "),"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    const-string p1, "}"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    const-string v0, ");"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "private static final long serialVersionUID = 1L;"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "private java.lang.Object readResolve() { return forInt(intValue()); } "

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->outdent()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public printTopComment(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 4

    const-string v0, "/*"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    const-string v1, " * Namespace: "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, " * XML Type:  "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_4

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    const-string v2, " * An XML document type."

    :goto_1
    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->isAttributeType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getAttributeTypeAttributeName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    const-string v2, " * An XML attribute type."

    goto :goto_1

    :cond_2
    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->$assertionsDisabled:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    sget-boolean v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_3
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, " * Localname: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_4
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, " * Java type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p1, " *"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p1, " * Automatically generated - do not modify."

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string p1, " */"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public printType(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_writer:Ljava/io/Writer;

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printTopComment(Lorg/apache/xmlbeans/SchemaType;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printPackage(Lorg/apache/xmlbeans/SchemaType;Z)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printInnerType(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_writer:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public printTypeImpl(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->_writer:Ljava/io/Writer;

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printTopComment(Lorg/apache/xmlbeans/SchemaType;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printPackage(Lorg/apache/xmlbeans/SchemaType;Z)V

    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printInnerTypeImpl(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/SchemaTypeSystem;Z)V

    return-void
.end method

.method public startBlock()V
    .locals 1

    const-string v0, "{"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    return-void
.end method

.method public startClass(Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 8

    .line 1
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getShortJavaImplName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getBaseClass(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuffer;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/16 v4, 0x24

    .line 19
    .line 20
    const/16 v5, 0x2e

    .line 21
    .line 22
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v6, 0x2

    .line 34
    if-ne v3, v6, :cond_0

    .line 35
    .line 36
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getUnionMemberTypes()[Lorg/apache/xmlbeans/SchemaType;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v3, 0x0

    .line 41
    :goto_0
    array-length v6, p1

    .line 42
    if-ge v3, v6, :cond_0

    .line 43
    .line 44
    new-instance v6, Ljava/lang/StringBuffer;

    .line 45
    .line 46
    const-string v7, ", "

    .line 47
    .line 48
    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    aget-object v7, p1, v3

    .line 52
    .line 53
    invoke-interface {v7}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v7, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/StringBuffer;

    .line 75
    .line 76
    const-string v3, "public "

    .line 77
    .line 78
    invoke-direct {p1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    if-eqz p2, :cond_1

    .line 82
    .line 83
    const-string p2, "static "

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const-string p2, ""

    .line 87
    .line 88
    :goto_1
    const-string v3, "class "

    .line 89
    .line 90
    const-string v4, " extends "

    .line 91
    .line 92
    invoke-static {p1, p2, v3, v0, v4}, Lorg/apache/ftpserver/main/a;->y(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    .line 97
    .line 98
    const-string p2, " implements "

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->startBlock()V

    .line 118
    .line 119
    .line 120
    const-string p1, "private static final long serialVersionUID = 1L;"

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public startInterface(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 4

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getShortJavaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->findJavaType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "public interface "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " extends "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->getExtensionInterfaces(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    const-string v0, "{"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indent()V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->emitSpecializedAccessors(Lorg/apache/xmlbeans/SchemaType;)V

    return-void
.end method

.method public xmlTypeForProperty(Lorg/apache/xmlbeans/SchemaProperty;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaProperty;->javaBasedOnType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->findJavaType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x24

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
