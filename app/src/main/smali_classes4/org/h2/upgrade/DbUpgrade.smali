.class public Lorg/h2/upgrade/DbUpgrade;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final UPGRADE_CLASSES_PRESENT:Z

.field private static deleteOldDb:Z

.field private static scriptInTempDir:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.h2.upgrade.v1_1.Driver"

    invoke-static {v0}, Lorg/h2/util/Utils;->isClassPresent(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/h2/upgrade/DbUpgrade;->UPGRADE_CLASSES_PRESENT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connectOrUpgrade(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 5

    sget-boolean v0, Lorg/h2/upgrade/DbUpgrade;->UPGRADE_CLASSES_PRESENT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    const-string v2, "password"

    invoke-virtual {p1, v2}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, [C

    if-eqz v2, :cond_1

    const-string v2, "password"

    check-cast p1, [C

    invoke-static {p1}, Lorg/h2/util/StringUtils;->cloneCharArray([C)[C

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance p1, Lorg/h2/engine/ConnectionInfo;

    invoke-direct {p1, p0, v0}, Lorg/h2/engine/ConnectionInfo;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->isRemote()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->isPersistent()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".h2.db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".data.db"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    const-string v2, "NO_UPGRADE"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0, v0}, Lorg/h2/upgrade/DbUpgrade;->connectWithOldVersion(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p0

    return-object p0

    :cond_5
    const-class p0, Lorg/h2/upgrade/DbUpgrade;

    monitor-enter p0

    :try_start_0
    invoke-static {p1, v0}, Lorg/h2/upgrade/DbUpgrade;->upgrade(Lorg/h2/engine/ConnectionInfo;Ljava/util/Properties;)V

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_0
    return-object v1
.end method

.method private static connectWithOldVersion(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jdbc:h2v1_1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";IGNORE_UNKNOWN_SETTINGS=TRUE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p0

    return-object p0
.end method

.method public static setDeleteOldDb(Z)V
    .locals 0

    sput-boolean p0, Lorg/h2/upgrade/DbUpgrade;->deleteOldDb:Z

    return-void
.end method

.method public static setScriptInTempDir(Z)V
    .locals 0

    sput-boolean p0, Lorg/h2/upgrade/DbUpgrade;->scriptInTempDir:Z

    return-void
.end method

.method private static upgrade(Lorg/h2/engine/ConnectionInfo;Ljava/util/Properties;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "jdbc:h2v1_1:"

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/ConnectionInfo;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, ".data.db"

    .line 10
    .line 11
    invoke-static {v2, v3}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v4, ".index.db"

    .line 16
    .line 17
    invoke-static {v2, v4}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, ".lobs.db"

    .line 22
    .line 23
    invoke-static {v2, v5}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v6, ".backup"

    .line 28
    .line 29
    invoke-static {v3, v6}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-static {v4, v6}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-static {v5, v6}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const/4 v9, 0x0

    .line 42
    :try_start_0
    sget-boolean v10, Lorg/h2/upgrade/DbUpgrade;->scriptInTempDir:Z

    .line 43
    .line 44
    if-eqz v10, :cond_0

    .line 45
    .line 46
    new-instance v10, Ljava/io/File;

    .line 47
    .line 48
    const-string v11, "java.io.tmpdir"

    .line 49
    .line 50
    const-string v12, "."

    .line 51
    .line 52
    invoke-static {v11, v12}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 60
    .line 61
    .line 62
    const-string v10, "h2dbmigration"

    .line 63
    .line 64
    const-string v11, "backup.sql"

    .line 65
    .line 66
    invoke-static {v10, v11}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto/16 :goto_8

    .line 77
    .line 78
    :catch_0
    move-exception v0

    .line 79
    move-object/from16 v16, v2

    .line 80
    .line 81
    goto/16 :goto_7

    .line 82
    .line 83
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v11, ".script.sql"

    .line 92
    .line 93
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :goto_0
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ";UNDO_LOG=0;LOG=0;LOCK_MODE=0"

    .line 109
    .line 110
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v11, "CIPHER"

    .line 118
    .line 119
    invoke-virtual {v0, v11, v9}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    if-eqz v9, :cond_1

    .line 124
    .line 125
    new-instance v11, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ";CIPHER="

    .line 134
    .line 135
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    :cond_1
    move-object/from16 v11, p1

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :catchall_1
    move-exception v0

    .line 149
    move-object v9, v10

    .line 150
    goto/16 :goto_8

    .line 151
    .line 152
    :catch_1
    move-exception v0

    .line 153
    move-object/from16 v16, v2

    .line 154
    .line 155
    :goto_1
    move-object v9, v10

    .line 156
    goto/16 :goto_7

    .line 157
    .line 158
    :goto_2
    invoke-static {v1, v11}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    const-string v13, "\'"

    .line 175
    .line 176
    const-string v14, "\' --hide--"

    .line 177
    .line 178
    const-string v15, "\' cipher aes password \'"

    .line 179
    .line 180
    move-object/from16 v16, v2

    .line 181
    .line 182
    const-string v2, "script to \'"

    .line 183
    .line 184
    move-object/from16 v17, v9

    .line 185
    .line 186
    if-eqz v9, :cond_2

    .line 187
    .line 188
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    :goto_3
    invoke-interface {v11, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :catch_2
    move-exception v0

    .line 214
    goto :goto_1

    .line 215
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    goto :goto_3

    .line 231
    :goto_4
    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    .line 232
    .line 233
    .line 234
    invoke-static {v3, v7}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-static {v4, v8}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-static {v5}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_3

    .line 245
    .line 246
    invoke-static {v5, v6}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :cond_3
    const-string v1, "IFEXISTS"

    .line 250
    .line 251
    const/4 v2, 0x0

    .line 252
    invoke-virtual {v0, v1, v2}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Z)Z

    .line 253
    .line 254
    .line 255
    new-instance v1, Lorg/h2/jdbc/JdbcConnection;

    .line 256
    .line 257
    const/4 v9, 0x1

    .line 258
    invoke-direct {v1, v0, v9}, Lorg/h2/jdbc/JdbcConnection;-><init>(Lorg/h2/engine/ConnectionInfo;Z)V

    .line 259
    .line 260
    .line 261
    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 262
    .line 263
    .line 264
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 265
    const-string v9, "runscript from \'"

    .line 266
    .line 267
    if-eqz v17, :cond_4

    .line 268
    .line 269
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    :goto_5
    invoke-interface {v0, v9}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 291
    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    goto :goto_5

    .line 310
    :goto_6
    const-string v9, "analyze"

    .line 311
    .line 312
    invoke-interface {v0, v9}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    const-string v9, "shutdown compact"

    .line 316
    .line 317
    invoke-interface {v0, v9}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 318
    .line 319
    .line 320
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 321
    .line 322
    .line 323
    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    .line 324
    .line 325
    .line 326
    sget-boolean v0, Lorg/h2/upgrade/DbUpgrade;->deleteOldDb:Z

    .line 327
    .line 328
    if-eqz v0, :cond_5

    .line 329
    .line 330
    invoke-static {v7}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-static {v8}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-static {v6, v2}, Lorg/h2/store/fs/FileUtils;->deleteRecursive(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 337
    .line 338
    .line 339
    :cond_5
    if-eqz v10, :cond_6

    .line 340
    .line 341
    invoke-static {v10}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :cond_6
    return-void

    .line 345
    :goto_7
    :try_start_4
    invoke-static {v7}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_7

    .line 350
    .line 351
    invoke-static {v7, v3}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    :cond_7
    invoke-static {v8}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_8

    .line 359
    .line 360
    invoke-static {v8, v4}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    :cond_8
    invoke-static {v6}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-eqz v1, :cond_9

    .line 368
    .line 369
    invoke-static {v6, v5}, Lorg/h2/store/fs/FileUtils;->move(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .line 376
    .line 377
    move-object/from16 v2, v16

    .line 378
    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v2, ".h2.db"

    .line 383
    .line 384
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-static {v0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 399
    :goto_8
    if-eqz v9, :cond_a

    .line 400
    .line 401
    invoke-static {v9}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    :cond_a
    throw v0
.end method
