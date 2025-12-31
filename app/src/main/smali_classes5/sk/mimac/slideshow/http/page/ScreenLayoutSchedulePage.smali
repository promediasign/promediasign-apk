.class public Lsk/mimac/slideshow/http/page/ScreenLayoutSchedulePage;
.super Lsk/mimac/slideshow/http/page/AbstractTemplatePage;
.source "SourceFile"


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

    const-string v3, "screenLayoutId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

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

.method private parseSchedule(ILjava/lang/String;)Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;
    .locals 4

    .line 1
    new-instance v0, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    .line 2
    .line 3
    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;->setScreenLayoutId(J)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 14
    .line 15
    const-string v1, "timeFrom"

    .line 16
    .line 17
    invoke-static {v1, p2, p1}, Ls/a;->a(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Ljava/lang/CharSequence;

    .line 22
    .line 23
    invoke-static {p2}, Lj$/time/LocalTime;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalTime;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeFrom(Lj$/time/LocalTime;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 31
    .line 32
    const-string v1, "timeTo"

    .line 33
    .line 34
    invoke-static {v1, p2, p1}, Ls/a;->a(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Ljava/lang/CharSequence;

    .line 39
    .line 40
    invoke-static {p2}, Lj$/time/LocalTime;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalTime;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTimeTo(Lj$/time/LocalTime;)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 48
    .line 49
    const-string v1, "dateFrom"

    .line 50
    .line 51
    invoke-static {v1, p2, p1}, Ls/a;->a(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Ljava/lang/String;

    .line 56
    .line 57
    if-eqz p2, :cond_0

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_0

    .line 64
    .line 65
    invoke-static {p2}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setDateFrom(Lj$/time/LocalDate;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 73
    .line 74
    const-string v1, "dateTo"

    .line 75
    .line 76
    invoke-static {v1, p2, p1}, Ls/a;->a(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Ljava/lang/String;

    .line 81
    .line 82
    if-eqz p2, :cond_1

    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_1

    .line 89
    .line 90
    invoke-static {p2}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDate;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setDateTo(Lj$/time/LocalDate;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 98
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v2, "monday"

    .line 102
    .line 103
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    const-string v1, "true"

    .line 118
    .line 119
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setMonday(Z)V

    .line 124
    .line 125
    .line 126
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 127
    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v3, "tuesday"

    .line 131
    .line 132
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setTuesday(Z)V

    .line 151
    .line 152
    .line 153
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 154
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v3, "wednesday"

    .line 158
    .line 159
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setWednesday(Z)V

    .line 178
    .line 179
    .line 180
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 181
    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v3, "thursday"

    .line 185
    .line 186
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setThursday(Z)V

    .line 205
    .line 206
    .line 207
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 208
    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v3, "friday"

    .line 212
    .line 213
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result p2

    .line 231
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setFriday(Z)V

    .line 232
    .line 233
    .line 234
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 235
    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v3, "saturday"

    .line 239
    .line 240
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result p2

    .line 258
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSaturday(Z)V

    .line 259
    .line 260
    .line 261
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 262
    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    const-string v3, "sunday"

    .line 266
    .line 267
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setSunday(Z)V

    .line 286
    .line 287
    .line 288
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 289
    .line 290
    const-string v1, "priority"

    .line 291
    .line 292
    invoke-static {v1, p2, p1}, Ls/a;->a(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object p2

    .line 296
    check-cast p2, Ljava/lang/String;

    .line 297
    .line 298
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    move-result p2

    .line 302
    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setPriority(I)V

    .line 303
    .line 304
    .line 305
    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    .line 306
    .line 307
    const-string v1, "id"

    .line 308
    .line 309
    invoke-static {v1, p2, p1}, Ls/a;->a(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    check-cast p1, Ljava/lang/String;

    .line 314
    .line 315
    if-eqz p1, :cond_2

    .line 316
    .line 317
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 318
    .line 319
    .line 320
    move-result-wide p1

    .line 321
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AbstractSchedule;->setId(Ljava/lang/Long;)V

    .line 326
    .line 327
    .line 328
    :cond_2
    return-object v0
.end method

.method private processPost()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/ScreenLayoutSchedulePage;->getMaxFromParams()I

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
    const-string v4, "screenLayoutId"

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
    invoke-direct {p0, v2, v3}, Lsk/mimac/slideshow/http/page/ScreenLayoutSchedulePage;->parseSchedule(ILjava/lang/String;)Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

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
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->updateAll(Ljava/util/List;)V

    .line 40
    .line 41
    .line 42
    const-string v0, "screen_layout_schedule_save_success"

    .line 43
    .line 44
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->resultMessage:Ljava/lang/String;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public getTemplateName()Ljava/lang/String;
    .locals 1

    const-string v0, "pages/screen_layout_schedule"

    return-object v0
.end method

.method public process()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->isPost()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/ScreenLayoutSchedulePage;->processPost()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
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

    const-string v1, "layouts"

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "schedules"

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t process data for screen layout schedules from DB"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "database_error"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ROOT_"

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
