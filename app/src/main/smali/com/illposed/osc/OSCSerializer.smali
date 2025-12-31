.class public Lcom/illposed/osc/OSCSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PACKET_SIZE_PLACEHOLDER:Ljava/lang/Integer;


# instance fields
.field private final classToMarker:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final classToType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/illposed/osc/argument/ArgumentHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/slf4j/Logger;

.field private final markerValueToType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/illposed/osc/argument/ArgumentHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final output:Lcom/illposed/osc/BytesReceiver;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final subToSuperTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private final unsupportedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/illposed/osc/OSCSerializer;->PACKET_SIZE_PLACEHOLDER:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/illposed/osc/BytesReceiver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/illposed/osc/argument/ArgumentHandler;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/illposed/osc/BytesReceiver;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/illposed/osc/OSCSerializer;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/illposed/osc/OSCSerializer;->log:Lorg/slf4j/Logger;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v2, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_5

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/illposed/osc/argument/ArgumentHandler;

    .line 46
    .line 47
    invoke-interface {v3}, Lcom/illposed/osc/argument/ArgumentHandler;->getJavaClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Ljava/lang/Boolean;

    .line 56
    .line 57
    if-eqz v5, :cond_1

    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-interface {v3}, Lcom/illposed/osc/argument/ArgumentHandler;->isMarkerOnly()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-ne v5, v6, :cond_0

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string p2, "ArgumentHandler implementations disagree on the marker nature of their class: "

    .line 73
    .line 74
    invoke-static {p2, v4}, Lch/qos/logback/core/joran/util/a;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_1
    :goto_1
    invoke-interface {v3}, Lcom/illposed/osc/argument/ArgumentHandler;->isMarkerOnly()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-interface {v3}, Lcom/illposed/osc/argument/ArgumentHandler;->isMarkerOnly()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_3

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    :try_start_0
    invoke-interface {v3, v4}, Lcom/illposed/osc/argument/ArgumentHandler;->parse(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    check-cast v5, Lcom/illposed/osc/argument/ArgumentHandler;

    .line 109
    .line 110
    if-nez v5, :cond_2

    .line 111
    .line 112
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception p1

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string p3, "Marker value \""

    .line 126
    .line 127
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p3, "\" is already used for type "

    .line 134
    .line 135
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p1
    :try_end_0
    .catch Lcom/illposed/osc/OSCParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_2
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 158
    .line 159
    const-string p3, "Developer error; this should never happen"

    .line 160
    .line 161
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    throw p2

    .line 165
    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    check-cast v5, Lcom/illposed/osc/argument/ArgumentHandler;

    .line 170
    .line 171
    if-nez v5, :cond_4

    .line 172
    .line 173
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 179
    .line 180
    new-instance p2, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string p3, "Java argument type "

    .line 183
    .line 184
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p3

    .line 191
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string p3, " is already used for type "

    .line 195
    .line 196
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    move-result-object p3

    .line 203
    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p1

    .line 218
    :cond_5
    iput-object p3, p0, Lcom/illposed/osc/OSCSerializer;->output:Lcom/illposed/osc/BytesReceiver;

    .line 219
    .line 220
    new-instance p1, Ljava/util/HashSet;

    .line 221
    .line 222
    const/4 p3, 0x4

    .line 223
    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(I)V

    .line 224
    .line 225
    .line 226
    iput-object p1, p0, Lcom/illposed/osc/OSCSerializer;->unsupportedTypes:Ljava/util/Set;

    .line 227
    .line 228
    new-instance p1, Ljava/util/HashMap;

    .line 229
    .line 230
    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 231
    .line 232
    .line 233
    iput-object p1, p0, Lcom/illposed/osc/OSCSerializer;->subToSuperTypes:Ljava/util/Map;

    .line 234
    .line 235
    new-instance p1, Ljava/util/HashMap;

    .line 236
    .line 237
    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 238
    .line 239
    .line 240
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    iput-object p1, p0, Lcom/illposed/osc/OSCSerializer;->classToMarker:Ljava/util/Map;

    .line 245
    .line 246
    new-instance p1, Ljava/util/HashMap;

    .line 247
    .line 248
    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 249
    .line 250
    .line 251
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    iput-object p1, p0, Lcom/illposed/osc/OSCSerializer;->classToType:Ljava/util/Map;

    .line 256
    .line 257
    new-instance p1, Ljava/util/HashMap;

    .line 258
    .line 259
    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 260
    .line 261
    .line 262
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    iput-object p1, p0, Lcom/illposed/osc/OSCSerializer;->markerValueToType:Ljava/util/Map;

    .line 267
    .line 268
    new-instance p1, Ljava/util/HashMap;

    .line 269
    .line 270
    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 271
    .line 272
    .line 273
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    iput-object p1, p0, Lcom/illposed/osc/OSCSerializer;->properties:Ljava/util/Map;

    .line 278
    .line 279
    return-void
.end method

.method private static extractTypeClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    if-nez p0, :cond_0

    const-class p0, Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private findSuperType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/illposed/osc/OSCSerializer;->subToSuperTypes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/illposed/osc/OSCSerializer;->unsupportedTypes:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/illposed/osc/OSCSerializer;->findSuperTypes(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/illposed/osc/OSCSerializer;->unsupportedTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    iget-object v1, p0, Lcom/illposed/osc/OSCSerializer;->log:Lorg/slf4j/Logger;

    const-string v3, "Java class {} is a sub-class of multiple supported argument types:"

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/illposed/osc/argument/ArgumentHandler;

    iget-object v4, p0, Lcom/illposed/osc/OSCSerializer;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lcom/illposed/osc/argument/ArgumentHandler;->getJavaClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "\t{} (supported by {})"

    invoke-interface {v4, v6, v5, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/illposed/osc/argument/ArgumentHandler;

    iget-object v2, p0, Lcom/illposed/osc/OSCSerializer;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/illposed/osc/argument/ArgumentHandler;->getJavaClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v4, v6, v0

    const/4 v0, 0x2

    aput-object v5, v6, v0

    const-string v0, "Java class {} will be mapped to {} (supported by {})"

    invoke-interface {v2, v0, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/illposed/osc/argument/ArgumentHandler;->getJavaClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lcom/illposed/osc/OSCSerializer;->subToSuperTypes:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    new-instance v0, Lcom/illposed/osc/OSCSerializeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No type handler registered for serializing class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/illposed/osc/OSCSerializeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findSuperTypes(Ljava/lang/Class;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Set<",
            "Lcom/illposed/osc/argument/ArgumentHandler;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/illposed/osc/OSCSerializer;->classToType:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private findType(Ljava/lang/Object;)Lcom/illposed/osc/argument/ArgumentHandler;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/illposed/osc/OSCSerializer;->extractTypeClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/illposed/osc/OSCSerializer;->findType(Ljava/lang/Object;Ljava/lang/Class;)Lcom/illposed/osc/argument/ArgumentHandler;

    move-result-object p1

    return-object p1
.end method

.method private findType(Ljava/lang/Object;Ljava/lang/Class;)Lcom/illposed/osc/argument/ArgumentHandler;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/illposed/osc/OSCSerializer;->classToMarker:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/illposed/osc/OSCSerializer;->findSuperType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/illposed/osc/OSCSerializer;->findType(Ljava/lang/Object;Ljava/lang/Class;)Lcom/illposed/osc/argument/ArgumentHandler;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/illposed/osc/OSCSerializer;->markerValueToType:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/illposed/osc/argument/ArgumentHandler;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/illposed/osc/OSCSerializer;->classToType:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-object p1
.end method

.method private writeType(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/illposed/osc/OSCSerializer;->findType(Ljava/lang/Object;)Lcom/illposed/osc/argument/ArgumentHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/illposed/osc/OSCSerializer;->output:Lcom/illposed/osc/BytesReceiver;

    invoke-interface {p1}, Lcom/illposed/osc/argument/ArgumentHandler;->getDefaultIdentifier()C

    move-result p1

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lcom/illposed/osc/BytesReceiver;->put(B)Lcom/illposed/osc/BytesReceiver;

    return-void
.end method

.method private writeTypeTagsRaw(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/illposed/osc/OSCSerializer;->output:Lcom/illposed/osc/BytesReceiver;

    const/16 v2, 0x5b

    invoke-interface {v1, v2}, Lcom/illposed/osc/BytesReceiver;->put(B)Lcom/illposed/osc/BytesReceiver;

    invoke-direct {p0, v0}, Lcom/illposed/osc/OSCSerializer;->writeTypeTagsRaw(Ljava/util/List;)V

    iget-object v0, p0, Lcom/illposed/osc/OSCSerializer;->output:Lcom/illposed/osc/BytesReceiver;

    const/16 v1, 0x5d

    invoke-interface {v0, v1}, Lcom/illposed/osc/BytesReceiver;->put(B)Lcom/illposed/osc/BytesReceiver;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/illposed/osc/OSCSerializer;->writeType(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public writeOnlyTypeTags(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/illposed/osc/OSCSerializer;->output:Lcom/illposed/osc/BytesReceiver;

    invoke-interface {v0}, Lcom/illposed/osc/BytesReceiver;->clear()Lcom/illposed/osc/BytesReceiver;

    :try_start_0
    invoke-direct {p0, p1}, Lcom/illposed/osc/OSCSerializer;->writeTypeTagsRaw(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/illposed/osc/OSCSerializeException;

    const-string v1, "Type tags are too large for the buffer in use"

    invoke-direct {v0, v1, p1}, Lcom/illposed/osc/OSCSerializeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
