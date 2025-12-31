.class public final Landroidx/media3/datasource/RawResourceDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;
    }
.end annotation


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private dataSpec:Landroidx/media3/datasource/DataSpec;

.field private inputStream:Ljava/io/InputStream;

.field private opened:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/RawResourceDataSource;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method public static buildRawResourceUri(I)Landroid/net/Uri;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rawresource:///"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static openAssetFileDescriptor(Landroid/content/Context;Landroidx/media3/datasource/DataSpec;)Landroid/content/res/AssetFileDescriptor;
    .locals 7

    .line 1
    iget-object p1, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "rawresource"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x3ec

    .line 18
    .line 19
    const/16 v2, 0x7d5

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez v0, :cond_6

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v4, "android.resource"

    .line 29
    .line 30
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v5, 0x1

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-ne v0, v5, :cond_0

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/String;

    .line 56
    .line 57
    const-string v6, "\\d+"

    .line 58
    .line 59
    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Ljava/lang/String;

    .line 86
    .line 87
    const-string v1, "/"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_3

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    goto :goto_1

    .line 133
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 138
    .line 139
    .line 140
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_1
    const-string v4, ":"

    .line 142
    .line 143
    invoke-static {v1, v4, v0}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const-string v1, "raw"

    .line 148
    .line 149
    invoke-virtual {p0, v0, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_4
    new-instance p0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    .line 157
    .line 158
    const-string p1, "Resource not found."

    .line 159
    .line 160
    invoke-direct {p0, p1, v3, v2}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 161
    .line 162
    .line 163
    throw p0

    .line 164
    :catch_0
    move-exception p0

    .line 165
    new-instance p1, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    .line 166
    .line 167
    const-string v0, "Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility."

    .line 168
    .line 169
    invoke-direct {p1, v0, p0, v2}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :cond_5
    new-instance p0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    .line 174
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v2, "Unsupported URI scheme ("

    .line 178
    .line 179
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string p1, "). Only android.resource is supported."

    .line 190
    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-direct {p0, p1, v3, v1}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 199
    .line 200
    .line 201
    throw p0

    .line 202
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    check-cast v0, Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 220
    :goto_3
    :try_start_2
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    .line 221
    .line 222
    .line 223
    move-result-object p0
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 224
    if-eqz p0, :cond_7

    .line 225
    .line 226
    return-object p0

    .line 227
    :cond_7
    new-instance p0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    .line 228
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string v1, "Resource is compressed: "

    .line 232
    .line 233
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    const/16 v0, 0x7d0

    .line 244
    .line 245
    invoke-direct {p0, p1, v3, v0}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 246
    .line 247
    .line 248
    throw p0

    .line 249
    :catch_1
    move-exception p0

    .line 250
    new-instance p1, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    .line 251
    .line 252
    invoke-direct {p1, v3, p0, v2}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 253
    .line 254
    .line 255
    throw p1

    .line 256
    :catch_2
    new-instance p0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    .line 257
    .line 258
    const-string p1, "Resource identifier must be an integer."

    .line 259
    .line 260
    invoke-direct {p0, p1, v3, v1}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 261
    .line 262
    .line 263
    throw p0
.end method


# virtual methods
.method public close()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_5

    :catch_0
    move-exception v3

    goto :goto_4

    :cond_0
    :goto_0
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    :try_start_1
    iget-object v3, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_1
    :goto_1
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_2
    return-void

    :goto_2
    :try_start_2
    new-instance v4, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v0, v3, v1}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_3
    throw v1

    :goto_4
    :try_start_3
    new-instance v4, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v0, v3, v1}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    :try_start_4
    iget-object v4, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v3

    goto :goto_7

    :cond_4
    :goto_6
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_5
    throw v3

    :goto_7
    :try_start_5
    new-instance v4, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v0, v3, v1}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_8
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_6
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 13

    iput-object p1, p0, Landroidx/media3/datasource/RawResourceDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    iget-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/media3/datasource/RawResourceDataSource;->openAssetFileDescriptor(Landroid/content/Context;Landroidx/media3/datasource/DataSpec;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    const/16 v3, 0x7d8

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    cmp-long v7, v0, v4

    if-eqz v7, :cond_1

    :try_start_0
    iget-wide v8, p1, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v10, v8, v0

    if-gtz v10, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {p1, v6, v6, v3}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :cond_1
    :goto_0
    iget-object v8, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v8

    iget-wide v10, p1, Landroidx/media3/datasource/DataSpec;->position:J

    add-long/2addr v10, v8

    invoke-virtual {v2, v10, v11}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v10

    sub-long/2addr v10, v8

    iget-wide v8, p1, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v12, v10, v8

    if-nez v12, :cond_9

    const-wide/16 v8, 0x0

    if-nez v7, :cond_4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    cmp-long v7, v1, v8

    if-nez v7, :cond_2

    iput-wide v4, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v10

    sub-long/2addr v1, v10

    iput-wide v1, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    cmp-long v0, v1, v8

    if-ltz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {p1, v6, v6, v3}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :cond_4
    sub-long/2addr v0, v10

    iput-wide v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J
    :try_end_0
    .catch Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v2, v0, v8

    if-ltz v2, :cond_8

    :goto_1
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_6

    iget-wide v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long p1, v0, v4

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    iget-wide v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    :goto_3
    return-wide v0

    :cond_8
    :try_start_1
    new-instance p1, Landroidx/media3/datasource/DataSourceException;

    invoke-direct {p1, v3}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    throw p1

    :cond_9
    new-instance p1, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {p1, v6, v6, v3}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1
    :try_end_1
    .catch Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const/16 v1, 0x7d0

    invoke-direct {v0, v6, p1, v1}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :goto_5
    throw p1
.end method

.method public read([BII)I
    .locals 9

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    return v4

    :cond_1
    const/16 v2, 0x7d0

    const-wide/16 v5, -0x1

    cmp-long v3, v0, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v7, p3

    :try_start_0
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :goto_0
    iget-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v4, :cond_4

    iget-wide p1, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    cmp-long p3, p1, v5

    if-nez p3, :cond_3

    return v4

    :cond_3
    new-instance p1, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    const-string p3, "End of stream reached having not read sufficient data."

    invoke-direct {p1, p3, p2, v2}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :cond_4
    iget-wide p2, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    cmp-long v0, p2, v5

    if-eqz v0, :cond_5

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    :cond_5
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, v2}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2
.end method
