.class public Lsk/mimac/slideshow/http/HtmlTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RESOURCE_QUERY_TAG:Ljava/lang/String;


# instance fields
.field private final isLocalhost:Z

.field private final tunneled:Z

.field private final user:Lsk/mimac/slideshow/database/entity/AccessUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/BuildInfo;->BUILD_DATE:Ljava/lang/String;

    sput-object v0, Lsk/mimac/slideshow/http/HtmlTemplate;->RESOURCE_QUERY_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lsk/mimac/slideshow/database/entity/AccessUser;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    iput-boolean p2, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->isLocalhost:Z

    iput-boolean p3, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->tunneled:Z

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "<!DOCTYPE html>\n<html>\n<head>\n<meta http-equiv=\'content-type\' content=\'text/html; charset=UTF-8\'/>\n<title>"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->DEVICE_NAME:Lsk/mimac/slideshow/settings/UserSettings;

    .line 9
    .line 10
    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " | Promedia Sign</title>\n"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean v2, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->isLocalhost:Z

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const-string v2, "<style>body {margin-bottom: 90px !important;}</style>\n"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_0
    const-string v2, "<link rel=\'stylesheet\' href=\'/web/style.min.css?t="

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    sget-object v2, Lsk/mimac/slideshow/http/HtmlTemplate;->RESOURCE_QUERY_TAG:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, "\' type=\'text/css\'/>\n<link rel=\'stylesheet\' href=\'/web/toastui-calendar.min.css?t="

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v3, "\' type=\'text/css\'/>\n<script type=\'text/javascript\'>\nvar choosen_language = \'"

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lsk/mimac/slideshow/localization/Language;->getCode()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v3, "\';</script>\n<script src=\'/web/jquery.js?t=1\' type=\'text/javascript\'></script><script src=\'/web/jquery-ui.js?t=1\' type=\'text/javascript\'></script><script src=\'/web/script.min.js?t="

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v2, "\' type=\'text/javascript\'></script>\n<meta name=\'viewport\' content=\'width=device-width\'>\n</head>\n<body>\n<div class=\'header\'> <h1>Promedia Sign management</h1><h2>"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-boolean v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->tunneled:Z

    .line 86
    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    const-string v1, " <i>(tunneled)</i>"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :cond_1
    const-string v1, "</h2>"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-boolean v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->isLocalhost:Z

    .line 100
    .line 101
    if-nez v1, :cond_2

    .line 102
    .line 103
    iget-object v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 104
    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    const-string v1, "<div class=\'user-box\'><div>"

    .line 108
    .line 109
    const-string v2, "user"

    .line 110
    .line 111
    const-string v3, ": <b>"

    .line 112
    .line 113
    invoke-static {v0, v1, v2, v3}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 117
    .line 118
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->getName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v1, "</b><br>\n<a href=\'/logout\' class=\'logout\'>"

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v1, "logout"

    .line 131
    .line 132
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, "</a></div></div>\n"

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    :cond_2
    const-string v1, "</div><div class=\'dropdownmenu\'>\n<span class=\'dropdownmenu-button\'>Menu</span>\n<ul id=\'menu\'>\n"

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 150
    .line 151
    if-eqz v1, :cond_9

    .line 152
    .line 153
    const-string v1, "<li class=\'mainMenu\'><a href=\'/\'>"

    .line 154
    .line 155
    const-string v2, "home"

    .line 156
    .line 157
    const-string v3, "</a>\n</li>\n"

    .line 158
    .line 159
    invoke-static {v0, v1, v2, v3}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 163
    .line 164
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_3

    .line 169
    .line 170
    const-string v1, "<li class=\'mainMenu\'>\n<a href=\'/screen_layout\'>"

    .line 171
    .line 172
    const-string v2, "screen_layouts"

    .line 173
    .line 174
    invoke-static {v0, v1, v2, v3}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_3
    iget-object v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 178
    .line 179
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_4

    .line 184
    .line 185
    const-string v1, "<li class=\'mainMenu\'>\n<a href=\'/playlists\'>"

    .line 186
    .line 187
    const-string v2, "playlists"

    .line 188
    .line 189
    const-string v4, "</a>\n</li>\n<li class=\'mainMenu\'>\n<a href=\'/items\'>"

    .line 190
    .line 191
    const-string v5, "item"

    .line 192
    .line 193
    invoke-static {v0, v1, v2, v4, v5}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    :cond_4
    const-string v1, "<li class=\'mainMenu\'>\n<a href=\'/file_manager\'>"

    .line 200
    .line 201
    const-string v2, "file_manager"

    .line 202
    .line 203
    const-string v4, "</a>\n</li>\n<li class=\'mainMenu\'>\n<a href=\'#\'>"

    .line 204
    .line 205
    const-string v5, "tools"

    .line 206
    .line 207
    invoke-static {v0, v1, v2, v4, v5}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const-string v1, "</a>\n<ul>\n<li>\n<a href=\'/template\'>"

    .line 211
    .line 212
    const-string v2, "show_message"

    .line 213
    .line 214
    const-string v4, "</a>\n</li>\n<li>\n<a href=\'/rss\'>"

    .line 215
    .line 216
    const-string v5, "rss_messages"

    .line 217
    .line 218
    invoke-static {v0, v1, v2, v4, v5}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    iget-object v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 225
    .line 226
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_5

    .line 231
    .line 232
    const-string v1, "<li>\n<a href=\'/grabber\'>"

    .line 233
    .line 234
    const-string v2, "grabber"

    .line 235
    .line 236
    invoke-static {v0, v1, v2, v3}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    :cond_5
    const-string v1, "<li>\n<a href=\'/upload\'>"

    .line 240
    .line 241
    const-string v2, "upload_file"

    .line 242
    .line 243
    const-string v4, "</a>\n</li>\n</ul>\n</li>\n"

    .line 244
    .line 245
    invoke-static {v0, v1, v2, v4}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget-object v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 249
    .line 250
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    const-string v2, "<li class=\'mainMenu\'>\n<a href=\'#\'>"

    .line 255
    .line 256
    if-eqz v1, :cond_7

    .line 257
    .line 258
    const-string v1, "settings"

    .line 259
    .line 260
    const-string v5, "</a>\n<ul>\n"

    .line 261
    .line 262
    invoke-static {v0, v2, v1, v5}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 266
    .line 267
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-eqz v1, :cond_6

    .line 272
    .line 273
    const-string v1, "<li>\n<li>\n<a href=\'/settings\'>"

    .line 274
    .line 275
    const-string v5, "device_settings"

    .line 276
    .line 277
    const-string v6, "</a>\n</li>\n<li>\n<a href=\'/users\'>"

    .line 278
    .line 279
    const-string v7, "users"

    .line 280
    .line 281
    invoke-static {v0, v1, v5, v6, v7}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const-string v1, "</a>\n</li>\n<li>\n<a href=\'/backup\'>"

    .line 285
    .line 286
    const-string v5, "backup_title"

    .line 287
    .line 288
    const-string v6, "</a>\n</li>\n<li>\n<a href=\'/update\'>"

    .line 289
    .line 290
    const-string v7, "update_app"

    .line 291
    .line 292
    invoke-static {v0, v1, v5, v6, v7}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    const-string v1, "</a>\n</li>\n<li>\n<a href=\'/device_owner\'>"

    .line 296
    .line 297
    const-string v5, "device_admin"

    .line 298
    .line 299
    const-string v6, "</a>\n</li>\n<li>\n<a href=\'/communication\'>"

    .line 300
    .line 301
    const-string v7, "other_devices"

    .line 302
    .line 303
    invoke-static {v0, v1, v5, v6, v7}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    const-string v1, "</a>\n</li>\n<li>\n<a href=\'/triggers\'>"

    .line 307
    .line 308
    const-string v5, "triggers"

    .line 309
    .line 310
    const-string v6, "</a>\n</li>\n<li>\n<a href=\'/shell\'>"

    .line 311
    .line 312
    const-string v7, "shell_console"

    .line 313
    .line 314
    invoke-static {v0, v1, v5, v6, v7}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    const-string v1, "</a>\n</li>\n<li>\n<a href=\'/database\'>"

    .line 318
    .line 319
    const-string v5, "database_connect"

    .line 320
    .line 321
    const-string v6, "</a>\n</li>\n<li>\n<a href=\'/fonts\'>"

    .line 322
    .line 323
    const-string v7, "fonts"

    .line 324
    .line 325
    invoke-static {v0, v1, v5, v6, v7}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    const-string v1, "</a>\n</li>\n<li>\n<a href=\'/key_mapping\'>"

    .line 329
    .line 330
    const-string v5, "key_mapping"

    .line 331
    .line 332
    invoke-static {v0, v1, v5, v3}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    :cond_6
    const-string v1, "<li>\n<a href=\'/password\'>"

    .line 336
    .line 337
    const-string v3, "password_change"

    .line 338
    .line 339
    const-string v5, "</a>\n</li>\n<li>\n<a href=\'/reboot\'>"

    .line 340
    .line 341
    const-string v6, "reboot_reload"

    .line 342
    .line 343
    invoke-static {v0, v1, v3, v5, v6}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    :cond_7
    const-string v1, "information"

    .line 350
    .line 351
    const-string v3, "</a>\n<ul>\n<li>\n<a href=\'/statistic\'>"

    .line 352
    .line 353
    const-string v5, "statistics"

    .line 354
    .line 355
    invoke-static {v0, v2, v1, v3, v5}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const-string v1, "</a>\n</li>\n<li>\n<a href=\'/screenshot\'>Screenshot</a>\n</li>\n"

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    iget-object v1, p0, Lsk/mimac/slideshow/http/HtmlTemplate;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 364
    .line 365
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-eqz v1, :cond_8

    .line 370
    .line 371
    const-string v1, "<li>\n<a href=\'/log\'>Log</a>\n</li>\n<li>\n<a href=\'/logcat\'>Logcat</a>\n</li>\n<li>\n<a href=\'/reporter\'>"

    .line 372
    .line 373
    const-string v2, "reporter"

    .line 374
    .line 375
    const-string v3, "</a>\n</li>\n<li>\n<a href=\'/benchmark\'>Benchmark</a>\n</li>\n<li>\n<a href=\'/face_detection\'>"

    .line 376
    .line 377
    const-string v5, "face_detection"

    .line 378
    .line 379
    invoke-static {v0, v1, v2, v3, v5}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    const-string v1, "</a>\n</li>\n<li>\n<a href=\'/osc/status\'>Open Sound Control</a>\n</li>\n"

    .line 383
    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    :cond_8
    const-string v1, "<li>\n<a href=\'/about_hardware\'>"

    .line 388
    .line 389
    const-string v2, "about_device"

    .line 390
    .line 391
    const-string v3, "</a>\n</li>\n<li>\n<a href=\'/about_software\'>"

    .line 392
    .line 393
    const-string v5, "about_software"

    .line 394
    .line 395
    invoke-static {v0, v1, v2, v3, v5}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    :cond_9
    const-string v1, "</ul>\n</div>\n<div id=\'main\' class=\'main\'>\n"

    .line 402
    .line 403
    const-string v2, "\n</div>\n<div id=\'ajaxLoading\'><img src=\'/web/ajax-loader.gif?t=1\'/></div>\n<div id=\'dialog\'></div>\n</body>\n</html>"

    .line 404
    .line 405
    invoke-static {v0, v1, p1, v2}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    return-object p1
.end method
