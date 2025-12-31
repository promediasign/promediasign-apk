.class public final Lorg/apache/ftpserver/util/OS;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FAMILY_DOS:Ljava/lang/String; = "dos"

.field private static final FAMILY_MAC:Ljava/lang/String; = "mac"

.field private static final FAMILY_NETWARE:Ljava/lang/String; = "netware"

.field private static final FAMILY_OPENVMS:Ljava/lang/String; = "openvms"

.field private static final FAMILY_OS_2:Ljava/lang/String; = "os/2"

.field private static final FAMILY_OS_400:Ljava/lang/String; = "os/400"

.field private static final FAMILY_TANDEM:Ljava/lang/String; = "tandem"

.field private static final FAMILY_UNIX:Ljava/lang/String; = "unix"

.field private static final FAMILY_WIN9X:Ljava/lang/String; = "win9x"

.field private static final FAMILY_WINDOWS:Ljava/lang/String; = "windows"

.field private static final FAMILY_Z_OS:Ljava/lang/String; = "z/os"

.field private static final OS_ARCH:Ljava/lang/String;

.field private static final OS_NAME:Ljava/lang/String;

.field private static final OS_VERSION:Ljava/lang/String;

.field private static final PATH_SEP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/util/OS;->OS_ARCH:Ljava/lang/String;

    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/util/OS;->OS_VERSION:Ljava/lang/String;

    const-string v0, "path.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/util/OS;->PATH_SEP:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isArch(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, p0, v0}, Lorg/apache/ftpserver/util/OS;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isFamily(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lorg/apache/ftpserver/util/OS;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isFamilyDOS()Z
    .locals 1

    const-string v0, "dos"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyMac()Z
    .locals 1

    const-string v0, "mac"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyNetware()Z
    .locals 1

    const-string v0, "netware"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyOS2()Z
    .locals 1

    const-string v0, "os/2"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyOS400()Z
    .locals 1

    const-string v0, "os/400"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyOpenVms()Z
    .locals 1

    const-string v0, "openvms"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyTandem()Z
    .locals 1

    const-string v0, "tandem"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyUnix()Z
    .locals 1

    const-string v0, "unix"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyWin9x()Z
    .locals 1

    const-string v0, "win9x"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyWindows()Z
    .locals 1

    const-string v0, "windows"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFamilyZOS()Z
    .locals 1

    const-string v0, "z/os"

    invoke-static {v0}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isName(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, v0, v0}, Lorg/apache/ftpserver/util/OS;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    if-eqz p3, :cond_11

    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    if-eqz p0, :cond_d

    .line 12
    .line 13
    const-string v2, "windows"

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, -0x1

    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    sget-object p0, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-le p0, v4, :cond_1

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_2
    const-string v3, "os/2"

    .line 36
    .line 37
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_3

    .line 42
    .line 43
    sget-object p0, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-le p0, v4, :cond_1

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_3
    const-string v3, "netware"

    .line 54
    .line 55
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_4

    .line 60
    .line 61
    sget-object p0, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-le p0, v4, :cond_1

    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_4
    const-string v5, "dos"

    .line 72
    .line 73
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_5

    .line 78
    .line 79
    sget-object p0, Lorg/apache/ftpserver/util/OS;->PATH_SEP:Ljava/lang/String;

    .line 80
    .line 81
    const-string v2, ";"

    .line 82
    .line 83
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-eqz p0, :cond_1

    .line 88
    .line 89
    invoke-static {v3}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-nez p0, :cond_1

    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_5
    const-string v3, "mac"

    .line 98
    .line 99
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_6

    .line 104
    .line 105
    sget-object p0, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-le p0, v4, :cond_1

    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :cond_6
    const-string v5, "tandem"

    .line 116
    .line 117
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_7

    .line 122
    .line 123
    sget-object p0, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    .line 124
    .line 125
    const-string v2, "nonstop_kernel"

    .line 126
    .line 127
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-le p0, v4, :cond_1

    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :cond_7
    const-string v5, "unix"

    .line 136
    .line 137
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    const-string v6, "openvms"

    .line 142
    .line 143
    if-eqz v5, :cond_8

    .line 144
    .line 145
    sget-object p0, Lorg/apache/ftpserver/util/OS;->PATH_SEP:Ljava/lang/String;

    .line 146
    .line 147
    const-string v2, ":"

    .line 148
    .line 149
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-eqz p0, :cond_1

    .line 154
    .line 155
    invoke-static {v6}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    if-nez p0, :cond_1

    .line 160
    .line 161
    invoke-static {v3}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    if-eqz p0, :cond_d

    .line 166
    .line 167
    sget-object p0, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    .line 168
    .line 169
    const-string v2, "x"

    .line 170
    .line 171
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-eqz p0, :cond_1

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_8
    const-string v3, "win9x"

    .line 180
    .line 181
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_9

    .line 186
    .line 187
    invoke-static {v2}, Lorg/apache/ftpserver/util/OS;->isFamily(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    if-eqz p0, :cond_1

    .line 192
    .line 193
    sget-object p0, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    .line 194
    .line 195
    const-string v2, "95"

    .line 196
    .line 197
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-gez v2, :cond_d

    .line 202
    .line 203
    const-string v2, "98"

    .line 204
    .line 205
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-gez v2, :cond_d

    .line 210
    .line 211
    const-string v2, "me"

    .line 212
    .line 213
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-gez v2, :cond_d

    .line 218
    .line 219
    const-string v2, "ce"

    .line 220
    .line 221
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    if-ltz p0, :cond_1

    .line 226
    .line 227
    goto :goto_0

    .line 228
    :cond_9
    const-string v2, "z/os"

    .line 229
    .line 230
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    if-eqz v3, :cond_a

    .line 235
    .line 236
    sget-object p0, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-gt v2, v4, :cond_d

    .line 243
    .line 244
    const-string v2, "os/390"

    .line 245
    .line 246
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move-result p0

    .line 250
    if-le p0, v4, :cond_1

    .line 251
    .line 252
    goto :goto_0

    .line 253
    :cond_a
    const-string v2, "os/400"

    .line 254
    .line 255
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-eqz v3, :cond_b

    .line 260
    .line 261
    sget-object p0, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result p0

    .line 267
    if-le p0, v4, :cond_1

    .line 268
    .line 269
    goto :goto_0

    .line 270
    :cond_b
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-eqz v2, :cond_c

    .line 275
    .line 276
    sget-object p0, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result p0

    .line 282
    if-le p0, v4, :cond_1

    .line 283
    .line 284
    goto :goto_0

    .line 285
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 286
    .line 287
    const-string p2, "Don\'t know how to detect os family \""

    .line 288
    .line 289
    const-string p3, "\""

    .line 290
    .line 291
    invoke-static {p2, p0, p3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw p1

    .line 299
    :cond_d
    :goto_0
    const/4 p0, 0x1

    .line 300
    :goto_1
    if-eqz p1, :cond_e

    .line 301
    .line 302
    sget-object v2, Lorg/apache/ftpserver/util/OS;->OS_NAME:Ljava/lang/String;

    .line 303
    .line 304
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    goto :goto_2

    .line 309
    :cond_e
    const/4 p1, 0x1

    .line 310
    :goto_2
    if-eqz p2, :cond_f

    .line 311
    .line 312
    sget-object v2, Lorg/apache/ftpserver/util/OS;->OS_ARCH:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result p2

    .line 318
    goto :goto_3

    .line 319
    :cond_f
    const/4 p2, 0x1

    .line 320
    :goto_3
    if-eqz p3, :cond_10

    .line 321
    .line 322
    sget-object v2, Lorg/apache/ftpserver/util/OS;->OS_VERSION:Ljava/lang/String;

    .line 323
    .line 324
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result p3

    .line 328
    goto :goto_4

    .line 329
    :cond_10
    const/4 p3, 0x1

    .line 330
    :goto_4
    if-eqz p0, :cond_11

    .line 331
    .line 332
    if-eqz p1, :cond_11

    .line 333
    .line 334
    if-eqz p2, :cond_11

    .line 335
    .line 336
    if-eqz p3, :cond_11

    .line 337
    .line 338
    const/4 v0, 0x1

    .line 339
    :cond_11
    return v0
.end method

.method public static isVersion(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, p0}, Lorg/apache/ftpserver/util/OS;->isOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
