.class public Lsk/mimac/slideshow/http/page/PlaylistSchedulePage;
.super Lsk/mimac/slideshow/http/page/AbstractTemplatePage;
.source "SourceFile"


# instance fields
.field private panelItemId:I


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    return-void
.end method

.method private getMaxFromParams()I
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "playlistId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private parseSchedule(ILjava/lang/String;)Lsk/mimac/slideshow/database/entity/PlaylistSchedule;
    .locals 4

    .line 1
    new-instance v0, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    .line 2
    .line 3
    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;->setPlaylistId(J)V

    .line 11
    .line 12
    .line 13
    iget p2, p0, Lsk/mimac/slideshow/http/page/PlaylistSchedulePage;->panelItemId:I

    .line 14
    .line 15
    int-to-long v1, p2

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;->setPanelItemId(Ljava/lang/Long;)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 24
    .line 25
    const-string v1, "timeFrom"

    .line 26
    .line 27
    invoke-static {v1, p2, p1}, Ls/a;->a(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Ljava/lang/CharSequence;

    .line 32
    .line 33
    invoke-static {p2}, Lj$/time/LocalTime;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalTime;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeFrom(Lj$/time/LocalTime;)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 41
    .line 42
    const-string v1, "timeTo"

    .line 43
    .line 44
    invoke-static {v1, p2, p1}, Ls/a;->a(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Ljava/lang/CharSequence;

    .line 49
    .line 50
    invoke-static {p2}, Lj$/time/LocalTime;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalTime;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeTo(Lj$/time/LocalTime;)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 58
    .line 59
    const-string v1, "dateFrom"

    .line 60
    .line 61
    invoke-static {v1, p2, p1}, Ls/a;->a(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Ljava/lang/String;

    .line 66
    .line 67
    if-eqz p2, :cond_0

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_0

    .line 74
    .line 75
    invoke-static {p2}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setDateFrom(Lj$/time/LocalDate;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 83
    .line 84
    const-string v1, "dateTo"

    .line 85
    .line 86
    invoke-static {v1, p2, p1}, Ls/a;->a(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Ljava/lang/String;

    .line 91
    .line 92
    if-eqz p2, :cond_1

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_1

    .line 99
    .line 100
    invoke-static {p2}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setDateTo(Lj$/time/LocalDate;)V

    .line 105
    .line 106
    .line 107
    :cond_1
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v2, "monday"

    .line 112
    .line 113
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    const-string v1, "true"

    .line 128
    .line 129
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setMonday(Z)V

    .line 134
    .line 135
    .line 136
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 137
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v3, "tuesday"

    .line 141
    .line 142
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTuesday(Z)V

    .line 161
    .line 162
    .line 163
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 164
    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v3, "wednesday"

    .line 168
    .line 169
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setWednesday(Z)V

    .line 188
    .line 189
    .line 190
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 191
    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v3, "thursday"

    .line 195
    .line 196
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setThursday(Z)V

    .line 215
    .line 216
    .line 217
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 218
    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v3, "friday"

    .line 222
    .line 223
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setFriday(Z)V

    .line 242
    .line 243
    .line 244
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 245
    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    const-string v3, "saturday"

    .line 249
    .line 250
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result p2

    .line 268
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSaturday(Z)V

    .line 269
    .line 270
    .line 271
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 272
    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string v3, "sunday"

    .line 276
    .line 277
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result p2

    .line 295
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSunday(Z)V

    .line 296
    .line 297
    .line 298
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 299
    .line 300
    const-string v1, "priority"

    .line 301
    .line 302
    invoke-static {v1, p2, p1}, Ls/a;->a(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    check-cast p2, Ljava/lang/String;

    .line 307
    .line 308
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    move-result p2

    .line 312
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setPriority(I)V

    .line 313
    .line 314
    .line 315
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 316
    .line 317
    const-string v1, "id"

    .line 318
    .line 319
    invoke-static {v1, p2, p1}, Ls/a;->a(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    check-cast p1, Ljava/lang/String;

    .line 324
    .line 325
    if-eqz p1, :cond_2

    .line 326
    .line 327
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 328
    .line 329
    .line 330
    move-result-wide p1

    .line 331
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setId(Ljava/lang/Long;)V

    .line 336
    .line 337
    .line 338
    :cond_2
    return-object v0
.end method

.method private processPost()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/PlaylistSchedulePage;->getMaxFromParams()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-gt v2, v0, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 14
    .line 15
    const-string v4, "playlistId"

    .line 16
    .line 17
    invoke-static {v4, v3, v2}, Ls/a;->a(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-direct {p0, v2, v3}, Lsk/mimac/slideshow/http/page/PlaylistSchedulePage;->parseSchedule(ILjava/lang/String;)Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget v2, p0, Lsk/mimac/slideshow/http/page/PlaylistSchedulePage;->panelItemId:I

    .line 40
    .line 41
    int-to-long v2, v2

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->updateAll(Ljava/util/List;Ljava/lang/Long;)V

    .line 47
    .line 48
    .line 49
    const-string v0, "playlist_schedule_save_success"

    .line 50
    .line 51
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->resultMessage:Ljava/lang/String;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public getTemplateName()Ljava/lang/String;
    .locals 1

    const-string v0, "pages/playlist_schedule"

    return-object v0
.end method

.method public process()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v1, "panelId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lsk/mimac/slideshow/http/page/PlaylistSchedulePage;->panelItemId:I

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->isPost()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/PlaylistSchedulePage;->processPost()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "panelItem"

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v2

    iget v3, p0, Lsk/mimac/slideshow/http/page/PlaylistSchedulePage;->panelItemId:I

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getById(I)Lsk/mimac/slideshow/database/entity/PanelItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "daysOfWeek"

    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/localization/Language;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "playlists"

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/enums/MusicType;->NONE:Lsk/mimac/slideshow/enums/MusicType;

    invoke-virtual {v3}, Lsk/mimac/slideshow/enums/MusicType;->getId()I

    move-result v3

    sget-object v4, Lsk/mimac/slideshow/enums/MusicType;->VIDEO:Lsk/mimac/slideshow/enums/MusicType;

    invoke-virtual {v4}, Lsk/mimac/slideshow/enums/MusicType;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getAllWithMusicTypes(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "schedules"

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v2

    iget v3, p0, Lsk/mimac/slideshow/http/page/PlaylistSchedulePage;->panelItemId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getAllForPanel(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t process data for playlist schedules from DB"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "database_error"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ROOT_"

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
