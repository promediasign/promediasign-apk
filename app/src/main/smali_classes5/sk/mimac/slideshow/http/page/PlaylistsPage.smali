.class public Lsk/mimac/slideshow/http/page/PlaylistsPage;
.super Lsk/mimac/slideshow/http/page/AbstractFormPage;
.source "SourceFile"


# instance fields
.field private final user:Lsk/mimac/slideshow/database/entity/AccessUser;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/database/entity/AccessUser;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/database/entity/AccessUser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-direct {p0, v0, p2}, Lsk/mimac/slideshow/http/page/AbstractFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/PlaylistsPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    return-void
.end method

.method private isPlaylistEmpty(Ljava/lang/Long;)Z
    .locals 5

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ContentDao;->getInstance()Lsk/mimac/slideshow/database/dao/ContentDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/dao/ContentDao;->getAllItems(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/database/entity/Item;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/enums/ItemType;->ALPHABETICALLY:Lsk/mimac/slideshow/enums/ItemType;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/enums/ItemType;->RANDOM:Lsk/mimac/slideshow/enums/ItemType;

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getType()Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/enums/ItemType;->IMAGE:Lsk/mimac/slideshow/enums/ItemType;

    if-eq v2, v3, :cond_2

    return v4

    :cond_2
    new-instance v2, Ljava/io/File;

    sget-object v3, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/Item;->getFileName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v4}, Lsk/mimac/slideshow/utils/FileFilterUtils;->getFileNamesForFilter(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v4

    :cond_3
    return v1
.end method


# virtual methods
.method public getPageHeader()Ljava/lang/String;
    .locals 1

    const-string v0, "playlists"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process()V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v1, "activate"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->get(Ljava/lang/Long;)Lsk/mimac/slideshow/database/entity/Playlist;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Playlist;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    move-result-object v1

    sget-object v2, Lsk/mimac/slideshow/enums/MusicType;->AUDIO:Lsk/mimac/slideshow/enums/MusicType;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->setPlaylist(Ljava/lang/Long;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t get data from DB"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "database_error"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ROOT_"

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public writePage(Ljava/lang/StringBuilder;)V
    .locals 11

    .line 1
    const-string v0, "</div>"

    .line 2
    .line 3
    const-string v1, "</td><td>"

    .line 4
    .line 5
    const-string v2, "<i>"

    .line 6
    .line 7
    const-string v3, "playlists_help"

    .line 8
    .line 9
    const-string v4, "</i><br><br>"

    .line 10
    .line 11
    invoke-static {p1, v2, v3, v4}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lsk/mimac/slideshow/http/page/PlaylistsPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 15
    .line 16
    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const-string v3, "</a>"

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const-string v2, "<a class=\'button\' href=\'/playlists/edit\'>"

    .line 25
    .line 26
    const-string v4, "playlist_add_new"

    .line 27
    .line 28
    const-string v5, "</a><a class=\'button\' href=\'/playlists/audio/schedule\'>"

    .line 29
    .line 30
    const-string v6, "audio_playlist_schedule"

    .line 31
    .line 32
    invoke-static {p1, v2, v4, v5, v6}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    :cond_0
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getAll()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_c

    .line 51
    .line 52
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->getCurrentPlaylist()Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    instance-of v5, v4, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    invoke-interface {v4}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getId()Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    goto/16 :goto_9

    .line 76
    .line 77
    :cond_1
    move-object v4, v6

    .line 78
    :goto_0
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v5}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->getCurrentPlaylist()Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    instance-of v7, v5, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;

    .line 91
    .line 92
    if-eqz v7, :cond_2

    .line 93
    .line 94
    invoke-interface {v5}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getId()Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    :cond_2
    const-string v5, "<table class=\'styledTable\'><thead><tr><th>"

    .line 99
    .line 100
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v5, "name2"

    .line 104
    .line 105
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v5, "</th><th>"

    .line 113
    .line 114
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v5, "number"

    .line 118
    .line 119
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v5, "</th>"

    .line 127
    .line 128
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v5, "<th>"

    .line 132
    .line 133
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v5, "sound"

    .line 137
    .line 138
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v5, "</th><th></th>"

    .line 146
    .line 147
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object v5, p0, Lsk/mimac/slideshow/http/page/PlaylistsPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 151
    .line 152
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    .line 153
    .line 154
    .line 155
    move-result v5
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    const-string v7, ""

    .line 157
    .line 158
    if-eqz v5, :cond_3

    .line 159
    .line 160
    :try_start_1
    const-string v5, "<th></th><th></th>"

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    move-object v5, v7

    .line 164
    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v5, "</thead>"

    .line 168
    .line 169
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_b

    .line 181
    .line 182
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    check-cast v5, Lsk/mimac/slideshow/database/entity/Playlist;

    .line 187
    .line 188
    const-string v8, "<tr><td>"

    .line 189
    .line 190
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getName()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-static {v8}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->escapeHTML(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getNumber()Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    if-eqz v8, :cond_4

    .line 212
    .line 213
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getNumber()Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    goto :goto_3

    .line 218
    :cond_4
    move-object v8, v7

    .line 219
    :goto_3
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    invoke-virtual {v8}, Lsk/mimac/slideshow/enums/MusicType;->getDesc()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    invoke-static {v8}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    invoke-virtual {v8, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v8
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    const-string v9, "\'>"

    .line 252
    .line 253
    if-nez v8, :cond_8

    .line 254
    .line 255
    :try_start_2
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    invoke-virtual {v8, v6}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    if-eqz v8, :cond_5

    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_5
    iget-object v8, p0, Lsk/mimac/slideshow/http/page/PlaylistsPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 267
    .line 268
    invoke-virtual {v8}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    if-eqz v8, :cond_9

    .line 273
    .line 274
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    invoke-direct {p0, v8}, Lsk/mimac/slideshow/http/page/PlaylistsPage;->isPlaylistEmpty(Ljava/lang/Long;)Z

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    if-eqz v8, :cond_6

    .line 283
    .line 284
    const-string v8, "playlist_empty"

    .line 285
    .line 286
    invoke-static {v8}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v8

    .line 290
    :goto_4
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_6
    const-string v8, "<a class=\'link\' href=\'/playlists?activate="

    .line 295
    .line 296
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    sget-object v10, Lsk/mimac/slideshow/enums/MusicType;->AUDIO:Lsk/mimac/slideshow/enums/MusicType;

    .line 314
    .line 315
    if-ne v8, v10, :cond_7

    .line 316
    .line 317
    const-string v8, "playlist_audio_switch_to"

    .line 318
    .line 319
    :goto_5
    invoke-static {v8}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v8

    .line 323
    goto :goto_6

    .line 324
    :cond_7
    const-string v8, "playlist_switch_to"

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :goto_6
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    goto :goto_8

    .line 334
    :cond_8
    :goto_7
    const-string v8, "active"

    .line 335
    .line 336
    invoke-static {v8}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    goto :goto_4

    .line 341
    :cond_9
    :goto_8
    iget-object v8, p0, Lsk/mimac/slideshow/http/page/PlaylistsPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 342
    .line 343
    invoke-virtual {v8}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    .line 344
    .line 345
    .line 346
    move-result v8

    .line 347
    if-eqz v8, :cond_a

    .line 348
    .line 349
    const-string v8, "</td><td><a class=\'link\' href=\'/playlists/edit?playlist="

    .line 350
    .line 351
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v8, "edit_playlist"

    .line 365
    .line 366
    invoke-static {v8}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string v8, "</a></td><td>"

    .line 374
    .line 375
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getLinkedItemId()Ljava/lang/Long;

    .line 379
    .line 380
    .line 381
    move-result-object v8

    .line 382
    if-nez v8, :cond_a

    .line 383
    .line 384
    const-string v8, "<a class=\'link\' href=\'/playlist?id="

    .line 385
    .line 386
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    const-string v5, "edit_items"

    .line 400
    .line 401
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v5

    .line 405
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    :cond_a
    const-string v5, "</td></tr>"

    .line 412
    .line 413
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    goto/16 :goto_2

    .line 417
    .line 418
    :cond_b
    const-string v1, "</table>"

    .line 419
    .line 420
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    goto :goto_a

    .line 424
    :cond_c
    const-string v1, "<div>"

    .line 425
    .line 426
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    const-string v1, "playlist_no_created"

    .line 430
    .line 431
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 439
    .line 440
    .line 441
    goto :goto_a

    .line 442
    :goto_9
    sget-object v2, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    .line 443
    .line 444
    const-string v3, "Can\'t show playlists page"

    .line 445
    .line 446
    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    .line 448
    .line 449
    const-string v1, "<div class=\'errorBubble\'>"

    .line 450
    .line 451
    const-string v2, "database_error"

    .line 452
    .line 453
    invoke-static {p1, v1, v2, v0}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    :goto_a
    return-void
.end method
