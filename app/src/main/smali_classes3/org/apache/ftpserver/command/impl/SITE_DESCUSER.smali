.class public Lorg/apache/ftpserver/command/impl/SITE_DESCUSER;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    const-class v0, Lorg/apache/ftpserver/command/impl/SITE_DESCUSER;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/SITE_DESCUSER;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, v1}, Lorg/apache/ftpserver/ftplet/UserManager;->isAdmin(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const-string v5, "SITE"

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/16 v4, 0x212

    .line 26
    .line 27
    move-object v1, p1

    .line 28
    move-object v2, p3

    .line 29
    move-object v3, p2

    .line 30
    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/16 v1, 0x20

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/4 v2, -0x1

    .line 49
    if-ne v1, v2, :cond_1

    .line 50
    .line 51
    const-string v7, "SITE.DESCUSER"

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    const/16 v6, 0x1f7

    .line 55
    .line 56
    move-object v3, p1

    .line 57
    move-object v4, p3

    .line 58
    move-object v5, p2

    .line 59
    invoke-static/range {v3 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    const/4 v2, 0x1

    .line 68
    add-int/2addr v1, v2

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v1, 0x0

    .line 78
    :try_start_0
    invoke-interface {v0, v8}, Lorg/apache/ftpserver/ftplet/UserManager;->doesExist(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    invoke-interface {v0, v8}, Lorg/apache/ftpserver/ftplet/UserManager;->getUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/User;

    .line 85
    .line 86
    .line 87
    move-result-object v1
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    iget-object v3, p0, Lorg/apache/ftpserver/command/impl/SITE_DESCUSER;->LOG:Lorg/slf4j/Logger;

    .line 91
    .line 92
    const-string v4, "Exception trying to get user from user manager"

    .line 93
    .line 94
    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 98
    .line 99
    const/16 v6, 0x1f5

    .line 100
    .line 101
    const-string v7, "SITE.DESCUSER"

    .line 102
    .line 103
    move-object v3, p1

    .line 104
    move-object v4, p3

    .line 105
    move-object v5, p2

    .line 106
    invoke-static/range {v3 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_3
    const/16 p2, 0x80

    .line 115
    .line 116
    const-string p3, "\nuserid          : "

    .line 117
    .line 118
    invoke-static {p2, p3}, LA/g;->o(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string p3, "\nuserpassword    : ********\nhomedirectory   : "

    .line 130
    .line 131
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/User;->getHomeDirectory()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string p3, "\nwritepermission : "

    .line 142
    .line 143
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    new-instance p3, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;

    .line 147
    .line 148
    invoke-direct {p3}, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-interface {v1, p3}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    if-eqz p3, :cond_4

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_4
    const/4 v2, 0x0

    .line 159
    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string p3, "\nenableflag      : "

    .line 163
    .line 164
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/User;->getEnabled()Z

    .line 168
    .line 169
    .line 170
    move-result p3

    .line 171
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string p3, "\nidletime        : "

    .line 175
    .line 176
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/User;->getMaxIdleTime()I

    .line 180
    .line 181
    .line 182
    move-result p3

    .line 183
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string p3, "\n"

    .line 187
    .line 188
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    new-instance v0, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    .line 192
    .line 193
    invoke-direct {v0}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-interface {v1, v0}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    .line 205
    .line 206
    if-eqz v0, :cond_5

    .line 207
    .line 208
    const-string v1, "uploadrate      : "

    .line 209
    .line 210
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->getMaxUploadRate()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v1, "\ndownloadrate    : "

    .line 221
    .line 222
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->getMaxDownloadRate()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    :goto_2
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_5
    const-string p3, "uploadrate      : 0\ndownloadrate    : 0\n"

    .line 237
    .line 238
    goto :goto_2

    .line 239
    :goto_3
    const/16 p3, 0xa

    .line 240
    .line 241
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    new-instance p3, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;

    .line 245
    .line 246
    const/16 v0, 0xc8

    .line 247
    .line 248
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    invoke-direct {p3, v0, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, p3}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 256
    .line 257
    .line 258
    return-void
.end method
