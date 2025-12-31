.class public Lsk/mimac/slideshow/http/page/ScreenLayoutPage;
.super Lsk/mimac/slideshow/http/page/AbstractFormPage;
.source "SourceFile"


# instance fields
.field private scheduledLayoutIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/ScreenLayoutPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    return-void
.end method


# virtual methods
.method public getPageHeader()Ljava/lang/String;
    .locals 1

    const-string v0, "screen_layouts"

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

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->setScreenLayout(I)V

    :cond_0
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getAllLayouts()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/ScreenLayoutPage;->scheduledLayoutIds:Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Error while accessing the database"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "database_error"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ROOT_"

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writePage(Ljava/lang/StringBuilder;)V
    .locals 8

    .line 1
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->USE_SCREEN_LAYOUT_INTERVALS:Lsk/mimac/slideshow/settings/UserSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "<i>"

    .line 8
    .line 9
    const-string v2, "screen_layout_help"

    .line 10
    .line 11
    const-string v3, "</i><br><br>"

    .line 12
    .line 13
    invoke-static {p1, v1, v2, v3}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lsk/mimac/slideshow/http/page/ScreenLayoutPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 17
    .line 18
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v2, "</a>"

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const-string v1, "<a class=\'button\' href=\'/screen_layout/edit\'>"

    .line 27
    .line 28
    const-string v3, "screen_layout_add_new"

    .line 29
    .line 30
    invoke-static {p1, v1, v3, v2}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    const-string v1, "<a class=\'button\' href=\'/screen_layout/schedule\'>"

    .line 36
    .line 37
    const-string v3, "screen_layout_schedule"

    .line 38
    .line 39
    invoke-static {p1, v1, v3, v2}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    const-string v1, "<a class=\'button\' href=\'/screen_layout/sample\'>"

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, "sample_screen_layout"

    .line 48
    .line 49
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, "<a class=\'button\' href=\'/screen_layout/screensaver\'>"

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, "screensaver"

    .line 65
    .line 66
    invoke-static {v1, v2, p1}, Lch/qos/logback/core/joran/util/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getAll()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->getCurrentLayout()Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    invoke-interface {v3}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->getId()Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    goto/16 :goto_6

    .line 90
    .line 91
    :cond_2
    const/4 v3, 0x0

    .line 92
    :goto_0
    const-string v4, "<table class=\'styledTable\'><thead><tr><th>"

    .line 93
    .line 94
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v4, "name2"

    .line 98
    .line 99
    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    const-string v4, "</th><th>"

    .line 109
    .line 110
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v4, "layout_interval"

    .line 114
    .line 115
    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    :cond_3
    const-string v4, "</th><th></th>"

    .line 123
    .line 124
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v4, p0, Lsk/mimac/slideshow/http/page/ScreenLayoutPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 128
    .line 129
    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_4

    .line 134
    .line 135
    const-string v4, "<th></th><th></th>"

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_4
    const-string v4, ""

    .line 139
    .line 140
    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v4, "</thead>"

    .line 144
    .line 145
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_b

    .line 157
    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    check-cast v4, Lsk/mimac/slideshow/database/entity/ScreenLayout;

    .line 163
    .line 164
    const-string v5, "<tr><td>"

    .line 165
    .line 166
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-static {v5}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->escapeHTML(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    .line 180
    const-string v5, "</td><td>"

    .line 181
    .line 182
    if-eqz v0, :cond_6

    .line 183
    .line 184
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getInterval()F

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    const/4 v7, 0x0

    .line 192
    cmpl-float v6, v6, v7

    .line 193
    .line 194
    if-lez v6, :cond_5

    .line 195
    .line 196
    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getInterval()F

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v6, " min"

    .line 204
    .line 205
    :goto_3
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_5
    const-string v6, "-"

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_6
    :goto_4
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-virtual {v5, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    if-eqz v5, :cond_7

    .line 224
    .line 225
    const-string v5, "active"

    .line 226
    .line 227
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    :cond_7
    iget-object v5, p0, Lsk/mimac/slideshow/http/page/ScreenLayoutPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 235
    .line 236
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    .line 237
    .line 238
    .line 239
    move-result v5
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    const-string v6, "\'>"

    .line 241
    .line 242
    if-eqz v5, :cond_9

    .line 243
    .line 244
    :try_start_2
    const-string v5, " <a class=\'link\' href=\'/screen_layout?activate="

    .line 245
    .line 246
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-virtual {v5, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    if-eqz v5, :cond_8

    .line 268
    .line 269
    const-string v5, "refresh"

    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_8
    const-string v5, "activate"

    .line 273
    .line 274
    :goto_5
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    :cond_9
    iget-object v5, p0, Lsk/mimac/slideshow/http/page/ScreenLayoutPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 285
    .line 286
    invoke-virtual {v5}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    if-eqz v5, :cond_a

    .line 291
    .line 292
    const-string v5, "</td><td><a class=\'link\' href=\'/screen_layout/edit?layout="

    .line 293
    .line 294
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v5, "edit_screen_layout"

    .line 308
    .line 309
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v5, "</a></td><td>"

    .line 317
    .line 318
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    iget-object v5, p0, Lsk/mimac/slideshow/http/page/ScreenLayoutPage;->scheduledLayoutIds:Ljava/util/List;

    .line 322
    .line 323
    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v5

    .line 331
    if-nez v5, :cond_a

    .line 332
    .line 333
    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    invoke-virtual {v5, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    if-nez v5, :cond_a

    .line 342
    .line 343
    const-string v5, "<a href=\'/screen_layout/delete?screen_layout="

    .line 344
    .line 345
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v4, "\' class=\'deleteX\' title=\'"

    .line 356
    .line 357
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v4, "delete"

    .line 361
    .line 362
    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v4, "\'>X</a>"

    .line 370
    .line 371
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    :cond_a
    const-string v4, "</td></tr>"

    .line 375
    .line 376
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    goto/16 :goto_2

    .line 380
    .line 381
    :cond_b
    const-string v0, "</table>"

    .line 382
    .line 383
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 384
    .line 385
    .line 386
    goto :goto_7

    .line 387
    :goto_6
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    .line 388
    .line 389
    const-string v2, "Can\'t show screen layout page"

    .line 390
    .line 391
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    .line 393
    .line 394
    const-string v0, "<div class=\'errorBubble\'>"

    .line 395
    .line 396
    const-string v1, "database_error"

    .line 397
    .line 398
    const-string v2, "</div>"

    .line 399
    .line 400
    invoke-static {p1, v0, v1, v2}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    :goto_7
    return-void
.end method
