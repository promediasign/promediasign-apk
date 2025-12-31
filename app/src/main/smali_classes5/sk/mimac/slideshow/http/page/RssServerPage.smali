.class public Lsk/mimac/slideshow/http/page/RssServerPage;
.super Lsk/mimac/slideshow/http/page/AbstractFormPage;
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

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/http/page/AbstractFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getPageHeader()Ljava/lang/String;
    .locals 1

    const-string v0, "rss_messages"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process()V
    .locals 12

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->isPost()Z

    move-result v0

    const-string v1, "id"

    const-string v2, "database_error"

    const-string v3, "_ROOT_"

    const-string v4, "content"

    const-string v5, "title"

    if-eqz v0, :cond_7

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lsk/mimac/slideshow/database/entity/RssServerMessage;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v1

    move-object v7, v0

    invoke-direct/range {v6 .. v11}, Lsk/mimac/slideshow/database/entity/RssServerMessage;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->getInstance()Lsk/mimac/slideshow/database/dao/RssServerMessageDao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->update(Lsk/mimac/slideshow/database/entity/RssServerMessage;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_4
    invoke-static {}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->getInstance()Lsk/mimac/slideshow/database/dao/RssServerMessageDao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->create(Lsk/mimac/slideshow/database/entity/RssServerMessage;)V

    :goto_2
    const-string v0, "rss_message_added"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->resultMessage:Ljava/lang/String;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :goto_3
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Can\'t insert RSS message into DB"

    goto/16 :goto_7

    :cond_5
    :goto_4
    const-string v0, "content_empty"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_5
    const-string v0, "title_empty"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v6, "delete"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :try_start_1
    invoke-static {}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->getInstance()Lsk/mimac/slideshow/database/dao/RssServerMessageDao;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lsk/mimac/slideshow/database/dao/AbstractDao;->delete(J)V

    const-string v0, "rss_message_deleted"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->resultMessage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    sget-object v6, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v7, "Can\'t delete RSS message from DB"

    invoke-interface {v6, v7, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_6
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v6, "update"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    :try_start_2
    invoke-static {}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->getInstance()Lsk/mimac/slideshow/database/dao/RssServerMessageDao;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->getById(J)Lsk/mimac/slideshow/database/entity/RssServerMessage;

    move-result-object v0

    iget-object v6, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Can\'t get RSS message from DB"

    :goto_7
    invoke-interface {v1, v4, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_8
    return-void
.end method

.method public writePage(Ljava/lang/StringBuilder;)V
    .locals 6

    .line 1
    const-string v0, "\'>"

    .line 2
    .line 3
    const-string v1, "<p><i>"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    const-string v1, "rss_messages_help"

    .line 9
    .line 10
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "</i></p>"

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "<form method=\'post\' action=\'/rss\'>"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    .line 28
    .line 29
    const-string v2, "id"

    .line 30
    .line 31
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const-string v1, "<input type=\'hidden\' name=\'id\' value=\'"

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    .line 43
    .line 44
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "\'/>"

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :cond_0
    const-string v1, "<table>"

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "text\' maxlength=\'105\' style=\'width:500px"

    .line 64
    .line 65
    const-string v2, "title"

    .line 66
    .line 67
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p0, p1, v2, v1, v3}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v1, "text\' maxlength=\'215\' style=\'width:500px"

    .line 75
    .line 76
    const-string v3, "content"

    .line 77
    .line 78
    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {p0, p1, v3, v1, v4}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v1, "</table><input type=\'submit\' class=\'button\' value=\'"

    .line 86
    .line 87
    const-string v4, "save"

    .line 88
    .line 89
    const-string v5, "\'/></form>"

    .line 90
    .line 91
    invoke-static {p1, v1, v4, v5}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->getInstance()Lsk/mimac/slideshow/database/dao/RssServerMessageDao;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->getAll()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_1

    .line 107
    .line 108
    const-string v0, "<p>"

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v0, "rss_messages_empty"

    .line 114
    .line 115
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v0, "</p>"

    .line 123
    .line 124
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    :catch_0
    move-exception v0

    .line 130
    goto/16 :goto_2

    .line 131
    .line 132
    :cond_1
    const-string v4, "<br><br><table class=\'styledTable\'><thead><tr><th>"

    .line 133
    .line 134
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v2, "</th><th>"

    .line 145
    .line 146
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v2, "</th><th></th></tr></thead>"

    .line 157
    .line 158
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_2

    .line 170
    .line 171
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    check-cast v2, Lsk/mimac/slideshow/database/entity/RssServerMessage;

    .line 176
    .line 177
    const-string v3, "<tr><td style=\'white-space:default\'>"

    .line 178
    .line 179
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getTitle()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-static {v3}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->escapeHTML(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v3, "</td><td style=\'white-space:default\'>"

    .line 194
    .line 195
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getDescription()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-static {v3}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->escapeHTML(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v3, "</td><td><a href=\'/rss?update="

    .line 210
    .line 211
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getId()Ljava/lang/Long;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v3, "update"

    .line 225
    .line 226
    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v3, "</a> <a href=\'/rss?delete="

    .line 234
    .line 235
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getId()Ljava/lang/Long;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v2, "delete"

    .line 249
    .line 250
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v2, "</a></div></td></tr>"

    .line 258
    .line 259
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_2
    const-string v0, "</table>"
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :goto_2
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    .line 268
    .line 269
    const-string v2, "Can\'t show RSS page"

    .line 270
    .line 271
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    .line 273
    .line 274
    const-string v0, "<div class=\'errorBubble\'>"

    .line 275
    .line 276
    const-string v1, "database_error"

    .line 277
    .line 278
    const-string v2, "</div>"

    .line 279
    .line 280
    invoke-static {p1, v0, v1, v2}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :goto_3
    return-void
.end method
