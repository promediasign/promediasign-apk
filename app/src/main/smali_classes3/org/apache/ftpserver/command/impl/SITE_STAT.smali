.class public Lorg/apache/ftpserver/command/impl/SITE_STAT;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 7

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
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const/16 p3, 0x100

    .line 43
    .line 44
    const-string v0, "\nStart Time               : "

    .line 45
    .line 46
    invoke-static {p3, v0}, LA/g;->o(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getStartTime()Ljava/util/Date;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    invoke-static {v0, v1}, Lorg/apache/ftpserver/util/DateUtils;->getISO8601Date(J)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, "\nFile Upload Number       : "

    .line 66
    .line 67
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalUploadNumber()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v0, "\nFile Download Number     : "

    .line 78
    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalDownloadNumber()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v0, "\nFile Delete Number       : "

    .line 90
    .line 91
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalDeleteNumber()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v0, "\nFile Upload Bytes        : "

    .line 102
    .line 103
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalUploadSize()J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v0, "\nFile Download Bytes      : "

    .line 114
    .line 115
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalDownloadSize()J

    .line 119
    .line 120
    .line 121
    move-result-wide v0

    .line 122
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v0, "\nDirectory Create Number  : "

    .line 126
    .line 127
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalDirectoryCreated()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v0, "\nDirectory Remove Number  : "

    .line 138
    .line 139
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalDirectoryRemoved()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v0, "\nCurrent Logins           : "

    .line 150
    .line 151
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getCurrentLoginNumber()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v0, "\nTotal Logins             : "

    .line 162
    .line 163
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalLoginNumber()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v0, "\nCurrent Anonymous Logins : "

    .line 174
    .line 175
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getCurrentAnonymousLoginNumber()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v0, "\nTotal Anonymous Logins   : "

    .line 186
    .line 187
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalAnonymousLoginNumber()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v0, "\nCurrent Connections      : "

    .line 198
    .line 199
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getCurrentConnectionNumber()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v0, "\nTotal Connections        : "

    .line 210
    .line 211
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getTotalConnectionNumber()I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string p2, "\n\n"

    .line 222
    .line 223
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    new-instance p2, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;

    .line 227
    .line 228
    const/16 v0, 0xc8

    .line 229
    .line 230
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p3

    .line 234
    invoke-direct {p2, v0, p3}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    .line 238
    .line 239
    .line 240
    return-void
.end method
