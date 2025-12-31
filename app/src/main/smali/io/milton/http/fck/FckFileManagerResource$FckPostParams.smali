.class Lio/milton/http/fck/FckFileManagerResource$FckPostParams;
.super Lio/milton/http/fck/FckFileManagerResource$FckParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/fck/FckFileManagerResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FckPostParams"
.end annotation


# instance fields
.field code:I

.field message:Ljava/lang/String;

.field newName:Ljava/lang/String;

.field final synthetic this$0:Lio/milton/http/fck/FckFileManagerResource;


# direct methods
.method public constructor <init>(Lio/milton/http/fck/FckFileManagerResource;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->this$0:Lio/milton/http/fck/FckFileManagerResource;

    invoke-direct {p0, p1, p2}, Lio/milton/http/fck/FckFileManagerResource$FckParams;-><init>(Lio/milton/http/fck/FckFileManagerResource;Ljava/util/Map;)V

    return-void
.end method

.method private processFileUpload(Lio/milton/http/FileItem;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->params:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "CurrentFolder"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "processFileUpload: sFolder: "

    .line 16
    .line 17
    const-string v3, " - "

    .line 18
    .line 19
    invoke-static {v2, v0, v3}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v2}, Lio/milton/common/Path;->path(Ljava/lang/String;)Lio/milton/common/Path;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v4, p0, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->this$0:Lio/milton/http/fck/FckFileManagerResource;

    .line 47
    .line 48
    iget-object v5, v4, Lio/milton/http/fck/FckCommon;->wrappedResource:Lio/milton/resource/CollectionResource;

    .line 49
    .line 50
    invoke-static {v4, v5, v2}, Lio/milton/http/fck/FckFileManagerResource;->access$000(Lio/milton/http/fck/FckFileManagerResource;Lio/milton/resource/CollectionResource;Lio/milton/common/Path;)Lio/milton/resource/Resource;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    instance-of v4, v2, Lio/milton/resource/PutableResource;

    .line 55
    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    move-object v4, v2

    .line 59
    check-cast v4, Lio/milton/resource/PutableResource;

    .line 60
    .line 61
    iput-object v4, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    .line 62
    .line 63
    :cond_0
    iget-object v4, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    .line 64
    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    invoke-interface {p1}, Lio/milton/http/FileItem;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v6, "processFileUpload: "

    .line 78
    .line 79
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    iget-object v4, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    .line 93
    .line 94
    invoke-interface {v4, v0}, Lio/milton/resource/CollectionResource;->child(Ljava/lang/String;)Lio/milton/resource/Resource;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    if-eqz v4, :cond_1

    .line 99
    .line 100
    invoke-static {v0, v1}, Lio/milton/common/FileUtils;->incrementFileName(Ljava/lang/String;Z)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->newName:Ljava/lang/String;

    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    .line 109
    .line 110
    instance-of v4, v1, Lio/milton/resource/PutableResource;

    .line 111
    .line 112
    if-eqz v4, :cond_3

    .line 113
    .line 114
    check-cast v1, Lio/milton/resource/PutableResource;

    .line 115
    .line 116
    invoke-interface {p1}, Lio/milton/http/FileItem;->getSize()J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    :try_start_0
    invoke-interface {p1}, Lio/milton/http/FileItem;->getInputStream()Ljava/io/InputStream;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    const/4 v3, 0x0

    .line 129
    invoke-interface {v1, v0, p1, v2, v3}, Lio/milton/resource/PutableResource;->createNew(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/Long;Ljava/lang/String;)Lio/milton/resource/Resource;
    :try_end_0
    .catch Lio/milton/http/exceptions/ConflictException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/milton/http/exceptions/BadRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    :try_start_1
    iget-object p1, p0, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->newName:Ljava/lang/String;

    .line 133
    .line 134
    if-eqz p1, :cond_2

    .line 135
    .line 136
    invoke-direct {p0, v0}, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->uploadResponseOk(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :catchall_0
    move-exception p1

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    invoke-direct {p0}, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->uploadResponseOk()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :goto_1
    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const-string v1, "Exception saving new file"

    .line 151
    .line 152
    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-direct {p0, p1}, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->uploadResponseFailed(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :goto_2
    return-void

    .line 163
    :catch_0
    move-exception p1

    .line 164
    goto :goto_3

    .line 165
    :catch_1
    move-exception p1

    .line 166
    goto :goto_4

    .line 167
    :catch_2
    move-exception p1

    .line 168
    goto :goto_5

    .line 169
    :catch_3
    move-exception p1

    .line 170
    goto :goto_6

    .line 171
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 172
    .line 173
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    throw v0

    .line 177
    :goto_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 178
    .line 179
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :goto_5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 184
    .line 185
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :goto_6
    throw p1

    .line 190
    :cond_3
    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v1, "The collection is not putable: "

    .line 197
    .line 198
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-interface {v2}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    new-instance p1, Lio/milton/http/exceptions/ConflictException;

    .line 230
    .line 231
    invoke-direct {p1, v2}, Lio/milton/http/exceptions/ConflictException;-><init>(Lio/milton/resource/Resource;)V

    .line 232
    .line 233
    .line 234
    throw p1

    .line 235
    :cond_4
    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    const-string v1, "No putable folder with that path: "

    .line 240
    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    new-instance p1, Lio/milton/http/exceptions/ConflictException;

    .line 249
    .line 250
    iget-object v0, p0, Lio/milton/http/fck/FckFileManagerResource$FckParams;->target:Lio/milton/resource/CollectionResource;

    .line 251
    .line 252
    invoke-direct {p1, v0}, Lio/milton/http/exceptions/ConflictException;-><init>(Lio/milton/resource/Resource;)V

    .line 253
    .line 254
    .line 255
    throw p1
.end method

.method private uploadResponse(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->code:I

    iput-object p2, p0, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->message:Ljava/lang/String;

    return-void
.end method

.method private uploadResponseFailed(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->uploadResponse(ILjava/lang/String;)V

    return-void
.end method

.method private uploadResponseOk()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->uploadResponse(ILjava/lang/String;)V

    return-void
.end method

.method private uploadResponseOk(Ljava/lang/String;)V
    .locals 1

    .line 2
    const/16 v0, 0xc9

    invoke-direct {p0, v0, p1}, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->uploadResponse(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public processFileUploadCommand(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/milton/http/FileItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "files: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lio/milton/http/fck/FckFileManagerResource$FckPostParams;->processFileUpload(Lio/milton/http/FileItem;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lio/milton/http/fck/FckFileManagerResource;->access$100()Lorg/slf4j/Logger;

    move-result-object p1

    const-string v0, "no files uploaded"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
