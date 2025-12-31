.class Lcom/jcraft/jsch/UserAuthNone;
.super Lcom/jcraft/jsch/UserAuth;
.source "SourceFile"


# instance fields
.field private methods:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->methods:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMethods()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->methods:Ljava/lang/String;

    return-object v0
.end method

.method public start(Lcom/jcraft/jsch/Session;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 16
    .line 17
    const-string v1, "ssh-userauth"

    .line 18
    .line 19
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v2, "SSH_MSG_SERVICE_REQUEST sent"

    .line 47
    .line 48
    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v2, 0x6

    .line 64
    const/4 v3, 0x0

    .line 65
    if-ne v0, v2, :cond_1

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    .line 70
    :goto_0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v2, v1}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v4, "SSH_MSG_SERVICE_ACCEPT received"

    .line 85
    .line 86
    invoke-interface {v2, v1, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    if-nez v0, :cond_3

    .line 90
    .line 91
    return v3

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->username:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->reset()V

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 104
    .line 105
    const/16 v4, 0x32

    .line 106
    .line 107
    invoke-virtual {v2, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    .line 108
    .line 109
    .line 110
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 116
    .line 117
    const-string v2, "ssh-connection"

    .line 118
    .line 119
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 127
    .line 128
    const-string v2, "none"

    .line 129
    .line 130
    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->packet:Lcom/jcraft/jsch/Packet;

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iput-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    and-int/lit16 v0, v0, 0xff

    .line 155
    .line 156
    const/16 v2, 0x34

    .line 157
    .line 158
    if-ne v0, v2, :cond_5

    .line 159
    .line 160
    return v1

    .line 161
    :cond_5
    const/16 v2, 0x35

    .line 162
    .line 163
    if-ne v0, v2, :cond_6

    .line 164
    .line 165
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 187
    .line 188
    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuth;->userinfo:Lcom/jcraft/jsch/UserInfo;

    .line 196
    .line 197
    if-eqz v2, :cond_4

    .line 198
    .line 199
    :try_start_0
    invoke-interface {v2, v0}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :catch_0
    nop

    .line 204
    goto :goto_1

    .line 205
    :cond_6
    const/16 p1, 0x33

    .line 206
    .line 207
    if-ne v0, p1, :cond_7

    .line 208
    .line 209
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 225
    .line 226
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuth;->buf:Lcom/jcraft/jsch/Buffer;

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    .line 233
    .line 234
    .line 235
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iput-object p1, p0, Lcom/jcraft/jsch/UserAuthNone;->methods:Ljava/lang/String;

    .line 240
    .line 241
    return v3

    .line 242
    :cond_7
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    .line 243
    .line 244
    const-string v1, "USERAUTH fail ("

    .line 245
    .line 246
    const-string v2, ")"

    .line 247
    .line 248
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-direct {p1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    throw p1
.end method
