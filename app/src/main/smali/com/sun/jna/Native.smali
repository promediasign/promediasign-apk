.class public final Lcom/sun/jna/Native;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/jna/Version;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/Native$AWT;,
        Lcom/sun/jna/Native$Buffers;,
        Lcom/sun/jna/Native$ffi_callback;
    }
.end annotation


# static fields
.field public static final BOOL_SIZE:I

.field static final CB_HAS_INITIALIZER:I = 0x1

.field static final CB_OPTION_DIRECT:I = 0x1

.field static final CB_OPTION_IN_DLL:I = 0x2

.field private static final CVT_ARRAY_BOOLEAN:I = 0xd

.field private static final CVT_ARRAY_BYTE:I = 0x6

.field private static final CVT_ARRAY_CHAR:I = 0x8

.field private static final CVT_ARRAY_DOUBLE:I = 0xc

.field private static final CVT_ARRAY_FLOAT:I = 0xb

.field private static final CVT_ARRAY_INT:I = 0x9

.field private static final CVT_ARRAY_LONG:I = 0xa

.field private static final CVT_ARRAY_SHORT:I = 0x7

.field private static final CVT_BOOLEAN:I = 0xe

.field private static final CVT_BUFFER:I = 0x5

.field private static final CVT_BYTE:I = 0x1d

.field private static final CVT_CALLBACK:I = 0xf

.field private static final CVT_DEFAULT:I = 0x0

.field private static final CVT_FLOAT:I = 0x10

.field private static final CVT_INTEGER_TYPE:I = 0x15

.field private static final CVT_JNIENV:I = 0x1b

.field private static final CVT_NATIVE_MAPPED:I = 0x11

.field private static final CVT_NATIVE_MAPPED_STRING:I = 0x12

.field private static final CVT_NATIVE_MAPPED_WSTRING:I = 0x13

.field private static final CVT_OBJECT:I = 0x1a

.field private static final CVT_POINTER:I = 0x1

.field private static final CVT_POINTER_TYPE:I = 0x16

.field private static final CVT_SHORT:I = 0x1c

.field private static final CVT_STRING:I = 0x2

.field private static final CVT_STRUCTURE:I = 0x3

.field private static final CVT_STRUCTURE_BYVAL:I = 0x4

.field private static final CVT_TYPE_MAPPER:I = 0x17

.field private static final CVT_TYPE_MAPPER_STRING:I = 0x18

.field private static final CVT_TYPE_MAPPER_WSTRING:I = 0x19

.field private static final CVT_UNSUPPORTED:I = -0x1

.field private static final CVT_WSTRING:I = 0x14

.field public static final DEBUG_JNA_LOAD:Z

.field private static final DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

.field public static final DEBUG_LOAD:Z

.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field public static final DEFAULT_ENCODING:Ljava/lang/String;

.field private static final DEFAULT_HANDLER:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

.field static final JNA_TMPLIB_PREFIX:Ljava/lang/String; = "jna"

.field private static final LOG:Ljava/util/logging/Logger;

.field public static final LONG_DOUBLE_SIZE:I

.field public static final LONG_SIZE:I

.field static final MAX_ALIGNMENT:I

.field static final MAX_PADDING:I

.field public static final POINTER_SIZE:I

.field public static final SIZE_T_SIZE:I

.field private static final TYPE_BOOL:I = 0x4

.field private static final TYPE_LONG:I = 0x1

.field private static final TYPE_LONG_DOUBLE:I = 0x5

.field private static final TYPE_SIZE_T:I = 0x3

.field private static final TYPE_VOIDP:I = 0x0

.field private static final TYPE_WCHAR_T:I = 0x2

.field public static final WCHAR_SIZE:I

.field private static final _OPTION_ENCLOSING_LIBRARY:Ljava/lang/String; = "enclosing-library"

.field private static callbackExceptionHandler:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

.field private static final finalizer:Ljava/lang/Object;

.field static jnidispatchPath:Ljava/lang/String;

.field private static final libraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ref/Reference<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final nativeThreadTerminationFlag:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/sun/jna/Memory;",
            ">;"
        }
    .end annotation
.end field

.field private static final nativeThreads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "Lcom/sun/jna/Pointer;",
            ">;"
        }
    .end annotation
.end field

.field private static final registeredClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[J>;"
        }
    .end annotation
.end field

.field private static final registeredLibraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/NativeLibrary;",
            ">;"
        }
    .end annotation
.end field

.field private static final typeOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, Lcom/sun/jna/Native;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 12
    .line 13
    const-string v0, "native.encoding"

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v2

    .line 28
    sget-object v3, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 29
    .line 30
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 31
    .line 32
    const-string v5, "Failed to get charset for native.encoding value : \'"

    .line 33
    .line 34
    const-string v6, "\'"

    .line 35
    .line 36
    invoke-static {v5, v0, v6}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v3, v4, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    move-object v0, v1

    .line 44
    :goto_0
    if-nez v0, :cond_1

    .line 45
    .line 46
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_1
    sput-object v0, Lcom/sun/jna/Native;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/sun/jna/Native;->DEFAULT_ENCODING:Ljava/lang/String;

    .line 57
    .line 58
    const-string v0, "jna.debug_load"

    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    sput-boolean v0, Lcom/sun/jna/Native;->DEBUG_LOAD:Z

    .line 65
    .line 66
    const-string v0, "jna.debug_load.jna"

    .line 67
    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    sput-boolean v0, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD:Z

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 80
    .line 81
    :goto_1
    sput-object v0, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    .line 82
    .line 83
    sput-object v1, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v0, Ljava/util/WeakHashMap;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sput-object v0, Lcom/sun/jna/Native;->typeOptions:Ljava/util/Map;

    .line 95
    .line 96
    new-instance v0, Ljava/util/WeakHashMap;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    sput-object v0, Lcom/sun/jna/Native;->libraries:Ljava/util/Map;

    .line 106
    .line 107
    new-instance v0, Lcom/sun/jna/Native$1;

    .line 108
    .line 109
    invoke-direct {v0}, Lcom/sun/jna/Native$1;-><init>()V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/sun/jna/Native;->DEFAULT_HANDLER:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    .line 113
    .line 114
    sput-object v0, Lcom/sun/jna/Native;->callbackExceptionHandler:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    .line 115
    .line 116
    invoke-static {}, Lcom/sun/jna/Native;->loadNativeDispatchLibrary()V

    .line 117
    .line 118
    .line 119
    const-string v0, "6.1.4"

    .line 120
    .line 121
    invoke-static {}, Lcom/sun/jna/Native;->getNativeVersion()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Lcom/sun/jna/Native;->isCompatibleVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_4

    .line 130
    .line 131
    const-string v0, "line.separator"

    .line 132
    .line 133
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    new-instance v1, Ljava/lang/Error;

    .line 138
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v3, "There is an incompatible JNA native library installed on this system"

    .line 151
    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v3, "Expected: 6.1.4"

    .line 159
    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v3, "Found:    "

    .line 167
    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-static {}, Lcom/sun/jna/Native;->getNativeVersion()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    sget-object v3, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    .line 182
    .line 183
    if-eqz v3, :cond_3

    .line 184
    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v4, "(at "

    .line 188
    .line 189
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    sget-object v4, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    .line 193
    .line 194
    const-string v5, ")"

    .line 195
    .line 196
    invoke-static {v4, v5, v3}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    goto :goto_2

    .line 201
    :cond_3
    const-string v3, "java.library.path"

    .line 202
    .line 203
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    :goto_2
    const-string v4, "."

    .line 208
    .line 209
    const-string v5, "To resolve this issue you may do one of the following:"

    .line 210
    .line 211
    invoke-static {v2, v3, v4, v0, v5}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const-string v3, " - remove or uninstall the offending library"

    .line 215
    .line 216
    const-string v4, " - set the system property jna.nosys=true"

    .line 217
    .line 218
    invoke-static {v2, v0, v3, v0, v4}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string v3, " - set jna.boot.library.path to include the path to the version of the "

    .line 222
    .line 223
    const-string v4, "   jnidispatch library included with the JNA jar file you are using"

    .line 224
    .line 225
    invoke-static {v2, v0, v3, v0, v4}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v1

    .line 239
    :cond_4
    const/4 v0, 0x0

    .line 240
    invoke-static {v0}, Lcom/sun/jna/Native;->sizeof(I)I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    sput v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 245
    .line 246
    const/4 v0, 0x1

    .line 247
    invoke-static {v0}, Lcom/sun/jna/Native;->sizeof(I)I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    sput v1, Lcom/sun/jna/Native;->LONG_SIZE:I

    .line 252
    .line 253
    const/4 v2, 0x2

    .line 254
    invoke-static {v2}, Lcom/sun/jna/Native;->sizeof(I)I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    sput v2, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    .line 259
    .line 260
    const/4 v2, 0x3

    .line 261
    invoke-static {v2}, Lcom/sun/jna/Native;->sizeof(I)I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    sput v2, Lcom/sun/jna/Native;->SIZE_T_SIZE:I

    .line 266
    .line 267
    const/4 v2, 0x4

    .line 268
    invoke-static {v2}, Lcom/sun/jna/Native;->sizeof(I)I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    sput v2, Lcom/sun/jna/Native;->BOOL_SIZE:I

    .line 273
    .line 274
    const/4 v2, 0x5

    .line 275
    invoke-static {v2}, Lcom/sun/jna/Native;->sizeof(I)I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    sput v2, Lcom/sun/jna/Native;->LONG_DOUBLE_SIZE:I

    .line 280
    .line 281
    invoke-static {}, Lcom/sun/jna/Native;->initIDs()V

    .line 282
    .line 283
    .line 284
    const-string v2, "jna.protected"

    .line 285
    .line 286
    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_5

    .line 291
    .line 292
    invoke-static {v0}, Lcom/sun/jna/Native;->setProtected(Z)V

    .line 293
    .line 294
    .line 295
    :cond_5
    invoke-static {}, Lcom/sun/jna/Platform;->isSPARC()Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    const/16 v2, 0x8

    .line 300
    .line 301
    if-nez v0, :cond_7

    .line 302
    .line 303
    invoke-static {}, Lcom/sun/jna/Platform;->isWindows()Z

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    if-nez v0, :cond_7

    .line 308
    .line 309
    invoke-static {}, Lcom/sun/jna/Platform;->isLinux()Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_6

    .line 314
    .line 315
    invoke-static {}, Lcom/sun/jna/Platform;->isARM()Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-nez v0, :cond_7

    .line 320
    .line 321
    invoke-static {}, Lcom/sun/jna/Platform;->isPPC()Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-nez v0, :cond_7

    .line 326
    .line 327
    invoke-static {}, Lcom/sun/jna/Platform;->isMIPS()Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-nez v0, :cond_7

    .line 332
    .line 333
    invoke-static {}, Lcom/sun/jna/Platform;->isLoongArch()Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-nez v0, :cond_7

    .line 338
    .line 339
    :cond_6
    invoke-static {}, Lcom/sun/jna/Platform;->isAIX()Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-nez v0, :cond_7

    .line 344
    .line 345
    invoke-static {}, Lcom/sun/jna/Platform;->isAndroid()Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-eqz v0, :cond_8

    .line 350
    .line 351
    invoke-static {}, Lcom/sun/jna/Platform;->isIntel()Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-nez v0, :cond_8

    .line 356
    .line 357
    :cond_7
    const/16 v1, 0x8

    .line 358
    .line 359
    :cond_8
    sput v1, Lcom/sun/jna/Native;->MAX_ALIGNMENT:I

    .line 360
    .line 361
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-eqz v0, :cond_9

    .line 366
    .line 367
    invoke-static {}, Lcom/sun/jna/Platform;->isPPC()Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-eqz v0, :cond_9

    .line 372
    .line 373
    goto :goto_3

    .line 374
    :cond_9
    move v2, v1

    .line 375
    :goto_3
    sput v2, Lcom/sun/jna/Native;->MAX_PADDING:I

    .line 376
    .line 377
    const-string v0, "jna.loaded"

    .line 378
    .line 379
    const-string v1, "true"

    .line 380
    .line 381
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    new-instance v0, Lcom/sun/jna/Native$2;

    .line 385
    .line 386
    invoke-direct {v0}, Lcom/sun/jna/Native$2;-><init>()V

    .line 387
    .line 388
    .line 389
    sput-object v0, Lcom/sun/jna/Native;->finalizer:Ljava/lang/Object;

    .line 390
    .line 391
    new-instance v0, Ljava/util/WeakHashMap;

    .line 392
    .line 393
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 394
    .line 395
    .line 396
    sput-object v0, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    .line 397
    .line 398
    new-instance v0, Ljava/util/WeakHashMap;

    .line 399
    .line 400
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 401
    .line 402
    .line 403
    sput-object v0, Lcom/sun/jna/Native;->registeredLibraries:Ljava/util/Map;

    .line 404
    .line 405
    new-instance v0, Lcom/sun/jna/Native$7;

    .line 406
    .line 407
    invoke-direct {v0}, Lcom/sun/jna/Native$7;-><init>()V

    .line 408
    .line 409
    .line 410
    sput-object v0, Lcom/sun/jna/Native;->nativeThreadTerminationFlag:Ljava/lang/ThreadLocal;

    .line 411
    .line 412
    new-instance v0, Ljava/util/WeakHashMap;

    .line 413
    .line 414
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 415
    .line 416
    .line 417
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    sput-object v0, Lcom/sun/jna/Native;->nativeThreads:Ljava/util/Map;

    .line 422
    .line 423
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _getDirectBufferPointer(Ljava/nio/Buffer;)J
.end method

.method private static native _getPointer(J)J
.end method

.method public static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/sun/jna/Native;->dispose()V

    return-void
.end method

.method private static cacheOptions(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string p1, "enclosing-library"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sun/jna/Native;->typeOptions:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    sget-object p1, Lcom/sun/jna/Native;->libraries:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-nez p1, :cond_2

    const-class p1, Lcom/sun/jna/Library;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3, v0, p2}, Lcom/sun/jna/Native;->cacheOptions(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static native close(J)V
.end method

.method public static synchronized native createNativeCallback(Lcom/sun/jna/Callback;Ljava/lang/reflect/Method;[Ljava/lang/Class;Ljava/lang/Class;IILjava/lang/String;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/jna/Callback;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;II",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation
.end method

.method public static deleteLibrary(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p0}, Lcom/sun/jna/Native;->markTemporaryFile(Ljava/io/File;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static detach(Z)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sun/jna/Native;->nativeThreads:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/sun/jna/Native;->nativeThreadTerminationFlag:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/Pointer;

    const/4 p0, 0x1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/sun/jna/Native;->setDetachState(ZJ)V

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/sun/jna/Native;->nativeThreads:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sun/jna/Native;->nativeThreadTerminationFlag:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/Pointer;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    iget-wide v0, v1, Lcom/sun/jna/Pointer;->peer:J

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static dispose()V
    .locals 2

    invoke-static {}, Lcom/sun/jna/CallbackReference;->disposeAll()V

    invoke-static {}, Lcom/sun/jna/Memory;->disposeAll()V

    invoke-static {}, Lcom/sun/jna/NativeLibrary;->disposeAll()V

    invoke-static {}, Lcom/sun/jna/Native;->unregisterAll()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    const-string v0, "jna.loaded"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static extractFromResourcePath(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sun/jna/Native;->extractFromResourcePath(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static extractFromResourcePath(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/File;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/sun/jna/Native;->DEBUG_LOAD:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD:Z

    if-eqz v2, :cond_0

    const-string v2, "jnidispatch"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_1
    if-nez p1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    if-nez p1, :cond_2

    const-class p1, Lcom/sun/jna/Native;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_2
    sget-object v3, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    const-string v4, "Looking in classpath from {0} for {1}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p0, v5, v0

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, p0

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lcom/sun/jna/NativeLibrary;->mapSharedLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, p0

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    .line 2
    invoke-static {v6, v7, v4, v5}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3
    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_5
    invoke-virtual {p1, v6}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    if-nez v7, :cond_9

    sget-object v8, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v4, "darwin"

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "darwin/"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    :cond_6
    if-nez v7, :cond_9

    :goto_4
    invoke-virtual {p1, v5}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    goto :goto_5

    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "com/sun/jna/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "com/sun/jna/darwin"

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    :cond_8
    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    :goto_5
    if-nez v7, :cond_b

    const-string p0, "java.class.path"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    instance-of v0, p1, Ljava/net/URLClassLoader;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/net/URLClassLoader;

    invoke-virtual {p1}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Native library ("

    const-string v1, ") not found in resource path ("

    const-string v2, ")"

    .line 4
    invoke-static {v0, v6, v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const-string p1, "Found library resource at {0}"

    invoke-virtual {v3, v2, p1, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    :try_start_0
    new-instance p0, Ljava/io/File;

    new-instance p1, Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    new-instance p0, Ljava/io/File;

    invoke-virtual {v7}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_6
    sget-object p1, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Looking in {0}"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_c

    goto/16 :goto_c

    :cond_c
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "File URL "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " could not be properly decoded"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    const-string p1, "jna.nounpack"

    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_13

    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_12

    :try_start_1
    invoke-static {}, Lcom/sun/jna/Native;->getTempDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "jna"

    invoke-static {}, Lcom/sun/jna/Platform;->isWindows()Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, ".dll"

    goto :goto_7

    :catchall_0
    move-exception p0

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :cond_e
    move-object v6, v0

    :goto_7
    invoke-static {v5, v6, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    const-string v5, "jnidispatch.preserve"

    invoke-static {v5}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V

    :cond_f
    const-string v5, "Extracting library to {0}"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0x400

    :try_start_2
    new-array v3, v0, [B

    :goto_8
    invoke-virtual {p1, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_10

    invoke-virtual {v2, v3, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception p0

    move-object v0, v2

    goto :goto_a

    :catch_2
    move-exception v1

    move-object v0, v2

    goto :goto_9

    :cond_10
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    move-object p0, v4

    goto :goto_c

    :goto_9
    :try_start_5
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create temporary file for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " library: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_a
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_b

    :catch_5
    nop

    :goto_b
    if-eqz v0, :cond_11

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_11
    throw p0

    :cond_12
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Can\'t obtain InputStream for "

    .line 6
    invoke-static {p1, v6}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    move-object p0, v0

    :goto_c
    return-object p0
.end method

.method public static native ffi_call(JJJJ)V
.end method

.method public static native ffi_free_closure(J)V
.end method

.method public static native ffi_prep_cif(IIJJ)J
.end method

.method public static native ffi_prep_closure(JLcom/sun/jna/Native$ffi_callback;)J
.end method

.method public static findDirectMappedClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v3, v1, :cond_1

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    and-int/lit16 v4, v4, 0x100

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "$"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, -0x1

    .line 35
    if-eq v0, v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/sun/jna/Native;->findDirectMappedClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-object p0

    .line 59
    :catch_0
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string v1, "Can\'t determine class with native methods from the current context ("

    .line 62
    .line 63
    const-string v2, ")"

    .line 64
    .line 65
    invoke-static {p0, v1, v2}, Lch/qos/logback/core/joran/util/a;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method

.method public static findEnclosingLibraryClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/sun/jna/Native;->typeOptions:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    const-string v1, "enclosing-library"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object p0

    :cond_2
    const-class v0, Lcom/sun/jna/Library;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    :cond_3
    const-class v0, Lcom/sun/jna/Callback;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/sun/jna/CallbackReference;->findCallbackClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/Native;->findEnclosingLibraryClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/jna/Native;->findEnclosingLibraryClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static native findSymbol(JLjava/lang/String;)J
.end method

.method public static native free(J)V
.end method

.method public static synchronized native freeNativeCallback(J)V
.end method

.method private static fromNative(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sun/jna/NativeMapped;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/sun/jna/NativeMapped;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object v0

    new-instance v1, Lcom/sun/jna/FromNativeContext;

    invoke-direct {v1, p0}, Lcom/sun/jna/FromNativeContext;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/sun/jna/NativeMappedConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/NativeMapped;

    return-object p0
.end method

.method private static fromNative(Ljava/lang/reflect/Method;Ljava/lang/Object;)Lcom/sun/jna/NativeMapped;
    .locals 4

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object v1

    new-instance v2, Lcom/sun/jna/MethodResultContext;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3, p0}, Lcom/sun/jna/MethodResultContext;-><init>(Ljava/lang/Class;Lcom/sun/jna/Function;[Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-virtual {v1, p1, v2}, Lcom/sun/jna/NativeMappedConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/NativeMapped;

    return-object p0
.end method

.method private static fromNative(Lcom/sun/jna/FromNativeConverter;Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 3

    .line 3
    new-instance v0, Lcom/sun/jna/MethodResultContext;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, p2}, Lcom/sun/jna/MethodResultContext;-><init>(Ljava/lang/Class;Lcom/sun/jna/Function;[Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-interface {p0, p1, v0}, Lcom/sun/jna/FromNativeConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static native getAPIChecksum()Ljava/lang/String;
.end method

.method public static native getByte(Lcom/sun/jna/Pointer;JJ)B
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 1

    .line 1
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/jna/Native;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/sun/jna/Native;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/jna/Native;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getCallbackExceptionHandler()Lcom/sun/jna/Callback$UncaughtExceptionHandler;
    .locals 1

    sget-object v0, Lcom/sun/jna/Native;->callbackExceptionHandler:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static getCallingClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/sun/jna/Native$6;

    invoke-direct {v0}, Lcom/sun/jna/Native$6;-><init>()V

    invoke-virtual {v0}, Lcom/sun/jna/Native$6;->getClassContext()[Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must be called from the static initializer of a class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The SecurityManager implementation on this platform is broken; you must explicitly provide the class to register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native getChar(Lcom/sun/jna/Pointer;JJ)C
.end method

.method private static getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "JNA Warning: Encoding \'\'{0}\'\' is unsupported ({1})"

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    sget-object v5, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    aput-object v4, v2, v0

    invoke-virtual {v5, v6, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v4

    sget-object v5, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    aput-object v4, v2, v0

    invoke-virtual {v5, v6, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_1

    sget-object p0, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v1, Lcom/sun/jna/Native;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v2, "JNA Warning: Using fallback encoding {0}"

    invoke-virtual {p0, v0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    move-object p0, v1

    :cond_1
    return-object p0
.end method

.method public static getComponentID(Ljava/awt/Component;)J
    .locals 2

    invoke-static {p0}, Lcom/sun/jna/Native$AWT;->getComponentID(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getComponentPointer(Ljava/awt/Component;)Lcom/sun/jna/Pointer;
    .locals 3

    new-instance v0, Lcom/sun/jna/Pointer;

    invoke-static {p0}, Lcom/sun/jna/Native$AWT;->getComponentID(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Pointer;-><init>(J)V

    return-object v0
.end method

.method private static getConversion(Ljava/lang/Class;Lcom/sun/jna/TypeMapper;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/TypeMapper;",
            "Z)I"
        }
    .end annotation

    const-class v0, Ljava/lang/Void;

    if-ne p0, v0, :cond_0

    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    :cond_0
    const-class v0, Lcom/sun/jna/WString;

    const-class v1, Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-interface {p1, p0}, Lcom/sun/jna/TypeMapper;->getFromNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/FromNativeConverter;

    move-result-object v2

    invoke-interface {p1, p0}, Lcom/sun/jna/TypeMapper;->getToNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/ToNativeConverter;

    move-result-object p1

    const/16 v3, 0x17

    const/16 v4, 0x19

    const/16 v5, 0x18

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/sun/jna/FromNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object p0

    if-ne p0, v1, :cond_1

    return v5

    :cond_1
    if-ne p0, v0, :cond_2

    return v4

    :cond_2
    return v3

    :cond_3
    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/sun/jna/ToNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return v5

    :cond_4
    if-ne p0, v0, :cond_5

    return v4

    :cond_5
    return v3

    :cond_6
    const-class p1, Lcom/sun/jna/Pointer;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_7

    return v2

    :cond_7
    if-ne v1, p0, :cond_8

    const/4 p0, 0x2

    return p0

    :cond_8
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p0, 0x14

    return p0

    :cond_9
    sget-boolean p1, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    if-eqz p1, :cond_a

    invoke-static {p0}, Lcom/sun/jna/Native$Buffers;->isBuffer(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p0, 0x5

    return p0

    :cond_a
    const-class p1, Lcom/sun/jna/Structure;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-class p1, Lcom/sun/jna/Structure$ByValue;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x4

    return p0

    :cond_b
    const/4 p0, 0x3

    return p0

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x46

    if-eq p1, v2, :cond_11

    const/16 v2, 0x53

    if-eq p1, v2, :cond_10

    const/16 v2, 0x5a

    if-eq p1, v2, :cond_f

    const/16 v2, 0x49

    if-eq p1, v2, :cond_e

    const/16 v2, 0x4a

    if-eq p1, v2, :cond_d

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0xc

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :cond_d
    const/16 p0, 0xa

    return p0

    :cond_e
    const/16 p0, 0x9

    return p0

    :cond_f
    const/16 p0, 0xd

    return p0

    :cond_10
    const/4 p0, 0x7

    return p0

    :cond_11
    const/16 p0, 0xb

    return p0

    :cond_12
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_14

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_13

    const/16 p0, 0xe

    goto :goto_1

    :cond_13
    const/4 p0, 0x0

    :goto_1
    return p0

    :cond_14
    const-class p1, Lcom/sun/jna/Callback;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/16 p0, 0xf

    return p0

    :cond_15
    const-class p1, Lcom/sun/jna/IntegerType;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/16 p0, 0x15

    return p0

    :cond_16
    const-class p1, Lcom/sun/jna/PointerType;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/16 p0, 0x16

    return p0

    :cond_17
    const-class p1, Lcom/sun/jna/NativeMapped;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-static {p0}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object p0

    if-ne p0, v1, :cond_18

    const/16 p0, 0x12

    return p0

    :cond_18
    if-ne p0, v0, :cond_19

    const/16 p0, 0x13

    return p0

    :cond_19
    const/16 p0, 0x11

    return p0

    :cond_1a
    const-class p1, Lcom/sun/jna/JNIEnv;

    if-ne p1, p0, :cond_1b

    const/16 p0, 0x1b

    return p0

    :cond_1b
    if-eqz p2, :cond_1c

    const/16 p0, 0x1a

    goto :goto_2

    :cond_1c
    const/4 p0, -0x1

    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefaultStringEncoding()Ljava/lang/String;
    .locals 2

    const-string v0, "jna.encoding"

    sget-object v1, Lcom/sun/jna/Native;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirectBufferPointer(Ljava/nio/Buffer;)Lcom/sun/jna/Pointer;
    .locals 4

    invoke-static {p0}, Lcom/sun/jna/Native;->_getDirectBufferPointer(Ljava/nio/Buffer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sun/jna/Pointer;

    invoke-direct {p0, v0, v1}, Lcom/sun/jna/Pointer;-><init>(J)V

    :goto_0
    return-object p0
.end method

.method public static native getDirectByteBuffer(Lcom/sun/jna/Pointer;JJJ)Ljava/nio/ByteBuffer;
.end method

.method public static native getDouble(Lcom/sun/jna/Pointer;JJ)D
.end method

.method public static native getFloat(Lcom/sun/jna/Pointer;JJ)F
.end method

.method public static native getInt(Lcom/sun/jna/Pointer;JJ)I
.end method

.method public static native getLastError()I
.end method

.method public static getLibraryOptions(Ljava/lang/Class;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sun/jna/Native;->typeOptions:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/sun/jna/Native;->findEnclosingLibraryClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/sun/jna/Native;->loadLibraryInstance(Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "OPTIONS"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Null options field"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OPTIONS must be a public field of type java.util.Map ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "): "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "type-mapper"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "TYPE_MAPPER"

    const-class v5, Lcom/sun/jna/TypeMapper;

    invoke-static {v1, v4, v5}, Lcom/sun/jna/Native;->lookupField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v2, "structure-alignment"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "STRUCTURE_ALIGNMENT"

    const-class v5, Ljava/lang/Integer;

    invoke-static {v1, v4, v5}, Lcom/sun/jna/Native;->lookupField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v2, "string-encoding"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "STRING_ENCODING"

    const-class v5, Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/sun/jna/Native;->lookupField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {v1, v3, v0}, Lcom/sun/jna/Native;->cacheOptions(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    if-eq p0, v1, :cond_7

    sget-object v1, Lcom/sun/jna/Native;->typeOptions:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v0
.end method

.method public static native getLong(Lcom/sun/jna/Pointer;JJ)J
.end method

.method public static getNativeSize(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const-class v0, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object p0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x4

    if-eq p0, v0, :cond_15

    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_1

    goto/16 :goto_8

    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_14

    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_2

    goto/16 :goto_7

    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_3

    goto/16 :goto_6

    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_12

    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_4

    goto/16 :goto_5

    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_11

    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_5

    goto/16 :goto_4

    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x8

    if-eq p0, v0, :cond_10

    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_6

    goto :goto_3

    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_f

    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_7

    goto :goto_2

    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_e

    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_8

    goto :goto_1

    :cond_8
    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-class v0, Lcom/sun/jna/Structure$ByValue;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/sun/jna/Structure;->size(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_9
    sget p0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    return p0

    :cond_a
    const-class v0, Lcom/sun/jna/Pointer;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/sun/jna/Native$Buffers;->isBuffer(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    const-class v0, Lcom/sun/jna/Callback;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_d

    const-class v0, Ljava/lang/String;

    if-eq v0, p0, :cond_d

    const-class v0, Lcom/sun/jna/WString;

    if-ne v0, p0, :cond_c

    goto :goto_0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Native size for type \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\" is unknown"

    .line 1
    invoke-static {p0, v1, v2}, Lch/qos/logback/core/joran/util/a;->k(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_0
    sget p0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    return p0

    :cond_e
    :goto_1
    return v2

    :cond_f
    :goto_2
    return v1

    :cond_10
    :goto_3
    return v2

    :cond_11
    :goto_4
    return v1

    :cond_12
    :goto_5
    sget p0, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    return p0

    :cond_13
    :goto_6
    const/4 p0, 0x2

    return p0

    :cond_14
    :goto_7
    const/4 p0, 0x1

    return p0

    :cond_15
    :goto_8
    return v1
.end method

.method public static getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result p0

    mul-int p0, p0, v0

    return p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Arrays of length zero not allowed: "

    .line 7
    invoke-static {v0, p0}, Lch/qos/logback/core/joran/util/a;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/sun/jna/Structure$ByReference;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    check-cast p1, Lcom/sun/jna/Structure;

    invoke-static {p0, p1}, Lcom/sun/jna/Structure;->size(Ljava/lang/Class;Lcom/sun/jna/Structure;)I

    move-result p0

    return p0

    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The type \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" is not supported: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native getNativeVersion()Ljava/lang/String;
.end method

.method public static getPointer(J)Lcom/sun/jna/Pointer;
    .locals 3

    invoke-static {p0, p1}, Lcom/sun/jna/Native;->_getPointer(J)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/jna/Pointer;

    invoke-direct {v0, p0, p1}, Lcom/sun/jna/Pointer;-><init>(J)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static native getShort(Lcom/sun/jna/Pointer;JJ)S
.end method

.method public static getSignature(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/jna/Native;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-string p0, "V"

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-string p0, "Z"

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-string p0, "B"

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-string p0, "S"

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-string p0, "C"

    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-string p0, "I"

    return-object p0

    :cond_6
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-string p0, "J"

    return-object p0

    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-string p0, "F"

    return-object p0

    :cond_8
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    const-string p0, "D"

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "."

    const-string v2, "/"

    invoke-static {v1, v2, p0}, Lcom/sun/jna/Native;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    goto :goto_0
.end method

.method public static getString(Lcom/sun/jna/Pointer;J)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/sun/jna/Native;->getString(Lcom/sun/jna/Pointer;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Lcom/sun/jna/Pointer;JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getStringBytes(Lcom/sun/jna/Pointer;JJ)[B

    move-result-object p0

    if-eqz p3, :cond_0

    :try_start_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static native getStringBytes(Lcom/sun/jna/Pointer;JJ)[B
.end method

.method public static getStringEncoding(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sun/jna/Native;->getLibraryOptions(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "string-encoding"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getStructureAlignment(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sun/jna/Native;->getLibraryOptions(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "structure-alignment"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getTempDir()Ljava/io/File;
    .locals 4

    .line 1
    const-string v0, "jna.tmpdir"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/io/File;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 15
    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_0
    const-string v0, "java.io.tmpdir"

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v2, "user.home"

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    new-instance v0, Ljava/io/File;

    .line 37
    .line 38
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "Library/Caches/JNA/temp"

    .line 43
    .line 44
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_1
    invoke-static {}, Lcom/sun/jna/Platform;->isLinux()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    invoke-static {}, Lcom/sun/jna/Platform;->isSolaris()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    invoke-static {}, Lcom/sun/jna/Platform;->isAIX()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    invoke-static {}, Lcom/sun/jna/Platform;->isFreeBSD()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    invoke-static {}, Lcom/sun/jna/Platform;->isNetBSD()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    invoke-static {}, Lcom/sun/jna/Platform;->isOpenBSD()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    invoke-static {}, Lcom/sun/jna/Platform;->iskFreeBSD()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    new-instance v0, Ljava/io/File;

    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v3, "jna-"

    .line 97
    .line 98
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v3, "user.name"

    .line 102
    .line 103
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_3
    :goto_0
    const-string v0, "XDG_CACHE_HOME"

    .line 123
    .line 124
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_4

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    new-instance v2, Ljava/io/File;

    .line 142
    .line 143
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_5
    :goto_1
    new-instance v0, Ljava/io/File;

    .line 148
    .line 149
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const-string v3, ".cache"

    .line 154
    .line 155
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    move-object v2, v0

    .line 159
    :goto_2
    new-instance v0, Ljava/io/File;

    .line 160
    .line 161
    const-string v3, "JNA/temp"

    .line 162
    .line 163
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_7

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-nez v2, :cond_6

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_6
    move-object v1, v0

    .line 183
    :cond_7
    :goto_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    const-string v2, "JNA temporary directory \'"

    .line 188
    .line 189
    if-eqz v0, :cond_9

    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_8

    .line 196
    .line 197
    return-object v1

    .line 198
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 199
    .line 200
    const-string v3, "\' is not writable"

    .line 201
    .line 202
    invoke-static {v1, v2, v3}, Lch/qos/logback/core/joran/util/a;->i(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v0

    .line 210
    :cond_9
    new-instance v0, Ljava/io/IOException;

    .line 211
    .line 212
    const-string v3, "\' does not exist"

    .line 213
    .line 214
    invoke-static {v1, v2, v3}, Lch/qos/logback/core/joran/util/a;->i(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v0
.end method

.method public static getTerminationFlag(Ljava/lang/Thread;)Lcom/sun/jna/Pointer;
    .locals 1

    sget-object v0, Lcom/sun/jna/Native;->nativeThreads:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/Pointer;

    return-object p0
.end method

.method public static getTypeMapper(Ljava/lang/Class;)Lcom/sun/jna/TypeMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/sun/jna/TypeMapper;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sun/jna/Native;->getLibraryOptions(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "type-mapper"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/TypeMapper;

    return-object p0
.end method

.method public static getWebStartLibraryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "javawebstart.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-class v0, Lcom/sun/jna/Native;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v2, Lcom/sun/jna/Native$4;

    invoke-direct {v2}, Lcom/sun/jna/Native$4;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v1
.end method

.method public static native getWideString(Lcom/sun/jna/Pointer;JJ)Ljava/lang/String;
.end method

.method public static native getWindowHandle0(Ljava/awt/Component;)J
.end method

.method public static getWindowID(Ljava/awt/Window;)J
    .locals 2

    invoke-static {p0}, Lcom/sun/jna/Native$AWT;->getWindowID(Ljava/awt/Window;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getWindowPointer(Ljava/awt/Window;)Lcom/sun/jna/Pointer;
    .locals 3

    new-instance v0, Lcom/sun/jna/Pointer;

    invoke-static {p0}, Lcom/sun/jna/Native$AWT;->getWindowID(Ljava/awt/Window;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Pointer;-><init>(J)V

    return-object v0
.end method

.method public static native indexOf(Lcom/sun/jna/Pointer;JJB)J
.end method

.method private static native initIDs()V
.end method

.method public static native initialize_ffi_type(J)I
.end method

.method public static native invokeDouble(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)D
.end method

.method public static native invokeFloat(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)F
.end method

.method public static native invokeInt(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)I
.end method

.method public static native invokeLong(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)J
.end method

.method public static native invokeObject(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public static native invokePointer(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)J
.end method

.method public static invokeStructure(Lcom/sun/jna/Function;JI[Ljava/lang/Object;Lcom/sun/jna/Structure;)Lcom/sun/jna/Structure;
    .locals 10

    .line 1
    invoke-virtual {p5}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    iget-wide v6, v0, Lcom/sun/jna/Pointer;->peer:J

    invoke-virtual {p5}, Lcom/sun/jna/Structure;->getTypeInfo()Lcom/sun/jna/Pointer;

    move-result-object v0

    iget-wide v8, v0, Lcom/sun/jna/Pointer;->peer:J

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v9}, Lcom/sun/jna/Native;->invokeStructure(Lcom/sun/jna/Function;JI[Ljava/lang/Object;JJ)V

    return-object p5
.end method

.method private static native invokeStructure(Lcom/sun/jna/Function;JI[Ljava/lang/Object;JJ)V
.end method

.method public static native invokeVoid(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)V
.end method

.method public static isCompatibleVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_3

    array-length v0, p1

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    if-le p0, p1, :cond_2

    return v1

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v1
.end method

.method public static synchronized native isProtected()Z
.end method

.method public static isSupportedNativeType(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    return v0
.end method

.method public static isUnpacked(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "jna"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static load(Ljava/lang/Class;)Lcom/sun/jna/Library;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/jna/Library;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/jna/Library;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/jna/Library;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/jna/Library;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .line 4
    const-class v0, Lcom/sun/jna/Library;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/jna/Library$Handler;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/jna/Library$Handler;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sun/jna/Native;->cacheOptions(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/Library;

    return-object p0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Interface ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") of library="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not extend Library"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static loadLibrary(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/sun/jna/Native;->loadLibrary(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static loadLibrary(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/sun/jna/Native;->loadLibrary(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static loadLibrary(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sun/jna/Native;->loadLibrary(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static loadLibrary(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    const-class v0, Lcom/sun/jna/Library;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/jna/Library$Handler;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/jna/Library$Handler;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sun/jna/Native;->cacheOptions(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Interface ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") of library="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not extend Library"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static loadLibraryInstance(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    sget-object v0, Lcom/sun/jna/Native;->libraries:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v0, Lcom/sun/jna/Native;->libraries:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not access instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_2
    return-void
.end method

.method private static loadNativeDispatchLibrary()V
    .locals 12

    .line 1
    const-string v0, "jna.nounpack"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Lcom/sun/jna/Native;->removeTemporaryFiles()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    sget-object v1, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 15
    .line 16
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 17
    .line 18
    const-string v3, "JNA Warning: IOException removing temporary files"

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    const-string v0, "jna.boot.library.name"

    .line 24
    .line 25
    const-string v1, "jnidispatch"

    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "jna.boot.library.path"

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    new-instance v2, Ljava/util/StringTokenizer;

    .line 40
    .line 41
    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v3, Ljava/io/File;

    .line 57
    .line 58
    new-instance v4, Ljava/io/File;

    .line 59
    .line 60
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v5, ".dylib"

    .line 68
    .line 69
    const-string v6, ".jnilib"

    .line 70
    .line 71
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    sget-object v4, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 83
    .line 84
    sget-object v5, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    .line 85
    .line 86
    const-string v6, "Looking in {0}"

    .line 87
    .line 88
    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    const-string v7, "Found jnidispatch at {0}"

    .line 96
    .line 97
    const-string v8, "jnidispatch.path"

    .line 98
    .line 99
    const-string v9, "Trying {0}"

    .line 100
    .line 101
    if-eqz v3, :cond_2

    .line 102
    .line 103
    :try_start_1
    invoke-virtual {v4, v5, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v8, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sput-object v1, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v4, v5, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :catch_1
    nop

    .line 119
    :cond_2
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_1

    .line 124
    .line 125
    const-string v3, "dylib"

    .line 126
    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    const-string v5, "jnilib"

    .line 132
    .line 133
    if-eqz v4, :cond_3

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    move-object v11, v5

    .line 137
    move-object v5, v3

    .line 138
    move-object v3, v11

    .line 139
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const/4 v10, 0x0

    .line 145
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-virtual {v1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    sget-object v3, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 164
    .line 165
    sget-object v4, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    .line 166
    .line 167
    invoke-virtual {v3, v4, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    new-instance v5, Ljava/io/File;

    .line 171
    .line 172
    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-eqz v5, :cond_1

    .line 180
    .line 181
    :try_start_2
    invoke-virtual {v3, v4, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v8, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    sput-object v1, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v3, v4, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :catch_2
    move-exception v3

    .line 197
    sget-object v4, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 198
    .line 199
    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 200
    .line 201
    const-string v6, "File found at "

    .line 202
    .line 203
    const-string v7, " but not loadable: "

    .line 204
    .line 205
    invoke-static {v6, v1, v7}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v4, v5, v1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :cond_4
    const-string v1, "jna.nosys"

    .line 226
    .line 227
    const-string v2, "true"

    .line 228
    .line 229
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_5

    .line 238
    .line 239
    invoke-static {}, Lcom/sun/jna/Platform;->isAndroid()Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_6

    .line 244
    .line 245
    :cond_5
    :try_start_3
    sget-object v1, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 246
    .line 247
    sget-object v2, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    .line 248
    .line 249
    const-string v3, "Trying (via loadLibrary) {0}"

    .line 250
    .line 251
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const-string v0, "Found jnidispatch on system path"

    .line 258
    .line 259
    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_3

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :catch_3
    nop

    .line 264
    :cond_6
    const-string v0, "jna.noclasspath"

    .line 265
    .line 266
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-nez v0, :cond_7

    .line 271
    .line 272
    invoke-static {}, Lcom/sun/jna/Native;->loadNativeDispatchLibraryFromClasspath()V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :cond_7
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    .line 277
    .line 278
    const-string v1, "Unable to locate JNA native support library"

    .line 279
    .line 280
    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw v0
.end method

.method private static loadNativeDispatchLibraryFromClasspath()V
    .locals 5

    const-string v0, "/com/sun/jna/"

    :try_start_0
    const-string v1, "jnidispatch"

    invoke-static {v1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".dylib"

    const-string v3, ".jnilib"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sun/jna/Platform;->isAIX()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "libjnidispatch.a"

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/sun/jna/Native;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->extractFromResourcePath(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "Could not find JNA native support"

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    sget-object v1, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    const-string v3, "Trying {0}"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "jnidispatch.path"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    const-string v4, "Found jnidispatch at {0}"

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/sun/jna/Native;->isUnpacked(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "jnidispatch.preserve"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/sun/jna/Native;->deleteLibrary(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :goto_2
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static lookupField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v2, " must be a public field of type "

    .line 19
    .line 20
    invoke-static {p1, v2}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p2, " ("

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p2, "): "

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v1

    .line 55
    :catch_1
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    .line 1
    const-class p0, Lcom/sun/jna/Native;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "Java Native Access (JNA)"

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, v0

    .line 17
    :goto_0
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object v0, v1

    .line 21
    :goto_1
    const-string v1, "5.12.1"

    .line 22
    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move-object v2, v1

    .line 31
    :goto_2
    if-nez v2, :cond_3

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_3
    move-object v1, v2

    .line 35
    :goto_3
    const-string v2, " API Version "

    .line 36
    .line 37
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "5.12.1 (package information missing)"

    .line 47
    .line 48
    if-eqz p0, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    goto :goto_4

    .line 55
    :cond_4
    move-object p0, v0

    .line 56
    :goto_4
    if-nez p0, :cond_5

    .line 57
    .line 58
    goto :goto_5

    .line 59
    :cond_5
    move-object v0, p0

    .line 60
    :goto_5
    const-string p0, "Version: "

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v0, " Native: "

    .line 72
    .line 73
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/sun/jna/Native;->getNativeVersion()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v0, " ("

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/sun/jna/Native;->getAPIChecksum()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v0, ")"

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v0, " Prefix: "

    .line 110
    .line 111
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public static native malloc(J)J
.end method

.method public static markTemporaryFile(Ljava/io/File;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static nativeType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static open(Ljava/lang/String;)J
    .locals 2

    .line 1
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/sun/jna/Native;->open(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native open(Ljava/lang/String;I)J
.end method

.method public static native read(Lcom/sun/jna/Pointer;JJ[BII)V
.end method

.method public static native read(Lcom/sun/jna/Pointer;JJ[CII)V
.end method

.method public static native read(Lcom/sun/jna/Pointer;JJ[DII)V
.end method

.method public static native read(Lcom/sun/jna/Pointer;JJ[FII)V
.end method

.method public static native read(Lcom/sun/jna/Pointer;JJ[III)V
.end method

.method public static native read(Lcom/sun/jna/Pointer;JJ[JII)V
.end method

.method public static native read(Lcom/sun/jna/Pointer;JJ[SII)V
.end method

.method public static register(Lcom/sun/jna/NativeLibrary;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sun/jna/Native;->getCallingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/Native;->findDirectMappedClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sun/jna/Native;->register(Ljava/lang/Class;Lcom/sun/jna/NativeLibrary;)V

    return-void
.end method

.method public static register(Ljava/lang/Class;Lcom/sun/jna/NativeLibrary;)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/NativeLibrary;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sun/jna/NativeLibrary;->getOptions()Ljava/util/Map;

    move-result-object v2

    const-string v3, "type-mapper"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/sun/jna/TypeMapper;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "allow-objects"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v10, 0x0

    invoke-static {v0, v2, v10}, Lcom/sun/jna/Native;->cacheOptions(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    array-length v2, v1

    const/16 v20, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v8, v11, [J

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v11, :cond_11

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/reflect/Method;

    const-string v1, "("

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    new-array v6, v4, [J

    array-length v4, v3

    new-array v5, v4, [J

    array-length v4, v3

    new-array v4, v4, [I

    array-length v10, v3

    new-array v10, v10, [Lcom/sun/jna/ToNativeConverter;

    move-object/from16 v17, v8

    invoke-static {v2, v14, v12}, Lcom/sun/jna/Native;->getConversion(Ljava/lang/Class;Lcom/sun/jna/TypeMapper;Z)I

    move-result v8

    move-object/from16 v18, v1

    const/4 v1, -0x1

    if-eq v8, v1, :cond_10

    const/4 v1, 0x3

    move/from16 v21, v9

    const/4 v9, 0x4

    if-eq v8, v1, :cond_2

    if-eq v8, v9, :cond_4

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    invoke-static {v2}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    move-object/from16 v22, v10

    :goto_2
    iget-wide v9, v1, Lcom/sun/jna/Pointer;->peer:J

    move-wide/from16 v24, v9

    move-wide/from16 v26, v24

    :goto_3
    const/16 v28, 0x0

    goto/16 :goto_7

    :cond_2
    :pswitch_0
    move-object/from16 v22, v10

    goto/16 :goto_6

    :pswitch_1
    move-object/from16 v22, v10

    invoke-interface {v14, v2}, Lcom/sun/jna/TypeMapper;->getFromNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/FromNativeConverter;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v2

    goto :goto_4

    :cond_3
    const-class v9, Lcom/sun/jna/Pointer;

    :goto_4
    invoke-static {v9}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v9

    iget-wide v9, v9, Lcom/sun/jna/Pointer;->peer:J

    invoke-interface {v1}, Lcom/sun/jna/FromNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v24

    move-object/from16 v25, v1

    invoke-virtual/range {v24 .. v24}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    move-wide/from16 v26, v9

    iget-wide v9, v1, Lcom/sun/jna/Pointer;->peer:J

    move-object/from16 v28, v25

    move-wide/from16 v24, v26

    move-wide/from16 v26, v9

    goto :goto_7

    :pswitch_2
    move-object/from16 v22, v10

    const-class v1, Lcom/sun/jna/Pointer;

    invoke-static {v1}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    iget-wide v9, v1, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {v2}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v1

    :goto_5
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    move-wide/from16 v24, v9

    iget-wide v9, v1, Lcom/sun/jna/Pointer;->peer:J

    move-wide/from16 v26, v9

    goto :goto_3

    :cond_4
    move-object/from16 v22, v10

    const-class v1, Lcom/sun/jna/Pointer;

    invoke-static {v1}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    iget-wide v9, v1, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {v2}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v1

    goto :goto_5

    :goto_6
    const-class v1, Lcom/sun/jna/Pointer;

    invoke-static {v1}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    goto/16 :goto_2

    :goto_7
    move-object/from16 v1, v18

    const/4 v9, 0x0

    :goto_8
    array-length v10, v3

    if-ge v9, v10, :cond_d

    aget-object v10, v3, v9

    .line 2
    invoke-static {v1}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v18, v3

    .line 3
    invoke-static {v10}, Lcom/sun/jna/Native;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v14, v12}, Lcom/sun/jna/Native;->getConversion(Ljava/lang/Class;Lcom/sun/jna/TypeMapper;Z)I

    move-result v3

    aput v3, v4, v9

    move-object/from16 v29, v1

    const/4 v1, -0x1

    if-eq v3, v1, :cond_c

    const/16 v1, 0x11

    if-eq v3, v1, :cond_7

    const/16 v1, 0x12

    if-eq v3, v1, :cond_7

    const/16 v1, 0x13

    if-eq v3, v1, :cond_7

    const/16 v1, 0x15

    if-ne v3, v1, :cond_5

    goto :goto_9

    :cond_5
    const/16 v1, 0x17

    if-eq v3, v1, :cond_6

    const/16 v1, 0x18

    if-eq v3, v1, :cond_6

    const/16 v1, 0x19

    if-ne v3, v1, :cond_8

    :cond_6
    invoke-interface {v14, v10}, Lcom/sun/jna/TypeMapper;->getToNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/ToNativeConverter;

    move-result-object v1

    aput-object v1, v22, v9

    goto :goto_a

    :cond_7
    :goto_9
    invoke-static {v10}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object v10

    :cond_8
    :goto_a
    if-eqz v3, :cond_b

    const/4 v1, 0x4

    if-eq v3, v1, :cond_a

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    const-class v3, Lcom/sun/jna/Pointer;

    invoke-static {v3}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v3

    move-object/from16 v23, v2

    iget-wide v1, v3, Lcom/sun/jna/Pointer;->peer:J

    aput-wide v1, v6, v9

    aput-wide v1, v5, v9

    goto :goto_c

    :pswitch_3
    move-object/from16 v23, v2

    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_b

    :cond_9
    const-class v10, Lcom/sun/jna/Pointer;

    :goto_b
    invoke-static {v10}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    iget-wide v1, v1, Lcom/sun/jna/Pointer;->peer:J

    aput-wide v1, v5, v9

    aget-object v1, v22, v9

    invoke-interface {v1}, Lcom/sun/jna/ToNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    iget-wide v1, v1, Lcom/sun/jna/Pointer;->peer:J

    aput-wide v1, v6, v9

    goto :goto_c

    :cond_a
    :pswitch_4
    move-object/from16 v23, v2

    invoke-static {v10}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    iget-wide v1, v1, Lcom/sun/jna/Pointer;->peer:J

    aput-wide v1, v6, v9

    const-class v1, Lcom/sun/jna/Pointer;

    invoke-static {v1}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    iget-wide v1, v1, Lcom/sun/jna/Pointer;->peer:J

    aput-wide v1, v5, v9

    goto :goto_c

    :cond_b
    move-object/from16 v23, v2

    invoke-static {v10}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    iget-wide v1, v1, Lcom/sun/jna/Pointer;->peer:J

    aput-wide v1, v6, v9

    aput-wide v1, v5, v9

    :goto_c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v18

    move-object/from16 v2, v23

    move-object/from16 v1, v29

    goto/16 :goto_8

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not a supported argument type (in method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    move-object/from16 v23, v2

    const-string v2, ")"

    .line 4
    invoke-static {v1, v2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    invoke-static/range {v23 .. v23}, Lcom/sun/jna/Native;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    :goto_d
    array-length v3, v1

    if-ge v2, v3, :cond_f

    const-class v3, Lcom/sun/jna/LastErrorException;

    aget-object v9, v1, v2

    invoke-virtual {v3, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v1, 0x1

    const/16 v18, 0x1

    goto :goto_e

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_f
    const/16 v18, 0x0

    :goto_e
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1, v7}, Lcom/sun/jna/NativeLibrary;->getFunction(Ljava/lang/String;Ljava/lang/reflect/Method;)Lcom/sun/jna/Function;

    move-result-object v1

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v13

    move-object/from16 v29, v14

    iget-wide v13, v1, Lcom/sun/jna/Pointer;->peer:J

    invoke-virtual {v1}, Lcom/sun/jna/Function;->getCallingConvention()I

    move-result v23

    iget-object v9, v1, Lcom/sun/jna/Function;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v1, p0

    move-object v3, v10

    move-object/from16 v30, v7

    move v7, v8

    move-object/from16 v31, v9

    move-object/from16 v0, v17

    move-wide/from16 v8, v24

    move-object/from16 v32, v10

    move/from16 v24, v11

    move-object/from16 v17, v22

    const/16 v22, 0x0

    move-wide/from16 v10, v26

    move/from16 v25, v12

    move-object/from16 v12, v30

    move-object/from16 v26, v19

    move-object/from16 v27, v29

    move/from16 v15, v23

    move/from16 v16, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v31

    :try_start_1
    invoke-static/range {v1 .. v19}, Lcom/sun/jna/Native;->registerMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[I[J[JIJJLjava/lang/reflect/Method;JIZ[Lcom/sun/jna/ToNativeConverter;Lcom/sun/jna/FromNativeConverter;Ljava/lang/String;)J

    move-result-wide v1

    aput-wide v1, v0, v21
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v9, v21, 0x1

    move-object/from16 v15, p1

    move-object v8, v0

    move-object/from16 v10, v22

    move/from16 v11, v24

    move/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    move-object/from16 v0, p0

    goto/16 :goto_1

    :catch_0
    move-object/from16 v30, v7

    move-object/from16 v32, v10

    :catch_1
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with signature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object/from16 v23, v2

    move-object/from16 v30, v7

    move-object v2, v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not a supported return type (in method "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object v2, v0

    move-object v0, v8

    sget-object v1, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    monitor-enter v1

    :try_start_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/jna/Native;->registeredLibraries:Ljava/util/Map;

    move-object/from16 v3, p1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x15
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static register(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "classloader"

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sun/jna/NativeLibrary;->getInstance(Ljava/lang/String;Ljava/util/Map;)Lcom/sun/jna/NativeLibrary;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/jna/Native;->register(Ljava/lang/Class;Lcom/sun/jna/NativeLibrary;)V

    return-void
.end method

.method public static register(Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-static {}, Lcom/sun/jna/Native;->getCallingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/Native;->findDirectMappedClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sun/jna/Native;->register(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private static native registerMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[I[J[JIJJLjava/lang/reflect/Method;JIZ[Lcom/sun/jna/ToNativeConverter;Lcom/sun/jna/FromNativeConverter;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I[J[JIJJ",
            "Ljava/lang/reflect/Method;",
            "JIZ[",
            "Lcom/sun/jna/ToNativeConverter;",
            "Lcom/sun/jna/FromNativeConverter;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation
.end method

.method public static registered(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeTemporaryFiles()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/sun/jna/Native;->getTempDir()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/sun/jna/Native$5;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/sun/jna/Native$5;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_2

    .line 17
    .line 18
    array-length v3, v0

    .line 19
    if-ge v2, v3, :cond_2

    .line 20
    .line 21
    aget-object v3, v0, v2

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/4 v5, 0x2

    .line 28
    invoke-static {v4, v5, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    new-instance v5, Ljava/io/File;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 54
    .line 55
    .line 56
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-void
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    invoke-static {p2, v2, v1, v0, p1}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-int/2addr v2, v1

    .line 30
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    goto :goto_0
.end method

.method public static native setByte(Lcom/sun/jna/Pointer;JJB)V
.end method

.method public static setCallbackExceptionHandler(Lcom/sun/jna/Callback$UncaughtExceptionHandler;)V
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sun/jna/Native;->DEFAULT_HANDLER:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    :cond_0
    sput-object p0, Lcom/sun/jna/Native;->callbackExceptionHandler:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    return-void
.end method

.method public static setCallbackThreadInitializer(Lcom/sun/jna/Callback;Lcom/sun/jna/CallbackThreadInitializer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sun/jna/CallbackReference;->setCallbackThreadInitializer(Lcom/sun/jna/Callback;Lcom/sun/jna/CallbackThreadInitializer;)Lcom/sun/jna/CallbackThreadInitializer;

    return-void
.end method

.method public static native setChar(Lcom/sun/jna/Pointer;JJC)V
.end method

.method private static native setDetachState(ZJ)V
.end method

.method public static native setDouble(Lcom/sun/jna/Pointer;JJD)V
.end method

.method public static native setFloat(Lcom/sun/jna/Pointer;JJF)V
.end method

.method public static native setInt(Lcom/sun/jna/Pointer;JJI)V
.end method

.method public static native setLastError(I)V
.end method

.method public static native setLong(Lcom/sun/jna/Pointer;JJJ)V
.end method

.method public static native setMemory(Lcom/sun/jna/Pointer;JJJB)V
.end method

.method public static native setPointer(Lcom/sun/jna/Pointer;JJJ)V
.end method

.method public static synchronized native setProtected(Z)V
.end method

.method public static native setShort(Lcom/sun/jna/Pointer;JJS)V
.end method

.method public static native setWideString(Lcom/sun/jna/Pointer;JJLjava/lang/String;)V
.end method

.method private static native sizeof(I)I
.end method

.method public static synchronizedLibrary(Lcom/sun/jna/Library;)Lcom/sun/jna/Library;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    instance-of v2, v1, Lcom/sun/jna/Library$Handler;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sun/jna/Library$Handler;

    new-instance v2, Lcom/sun/jna/Native$3;

    invoke-direct {v2, v1, p0}, Lcom/sun/jna/Native$3;-><init>(Lcom/sun/jna/Library$Handler;Lcom/sun/jna/Library;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/Library;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized proxy handler: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Library must be a proxy class"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 1

    .line 1
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/jna/Native;->toByteArray(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/sun/jna/Native;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/jna/Native;->toByteArray(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 2

    .line 3
    invoke-static {p0, p1}, Lcom/sun/jna/Native;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p1, p0

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [B

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static toCharArray(Ljava/lang/String;)[C
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static toNative(Lcom/sun/jna/ToNativeConverter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/sun/jna/ToNativeContext;

    invoke-direct {v0}, Lcom/sun/jna/ToNativeContext;-><init>()V

    invoke-interface {p0, p1, v0}, Lcom/sun/jna/ToNativeConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/jna/Native;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/sun/jna/Native;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/jna/Native;->toString([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    if-nez v3, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, v1, v0, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2
.end method

.method public static toString([C)Ljava/lang/String;
    .locals 4

    .line 4
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p0, v2

    if-nez v3, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public static toStringList([C)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/sun/jna/Native;->toStringList([CII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static toStringList([CII)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr p2, p1

    move v1, p1

    :goto_0
    if-ge p1, p2, :cond_2

    aget-char v2, p0, p1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/String;

    sub-int v3, p1, v1

    invoke-direct {v2, p0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, p1, 0x1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-ge v1, p2, :cond_3

    new-instance p1, Ljava/lang/String;

    sub-int/2addr p2, v1

    invoke-direct {p1, p0, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public static unregister()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/sun/jna/Native;->getCallingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/Native;->findDirectMappedClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/Native;->unregister(Ljava/lang/Class;)V

    return-void
.end method

.method public static unregister(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Lcom/sun/jna/Native;->unregister(Ljava/lang/Class;[J)V

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sun/jna/Native;->registeredLibraries:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static native unregister(Ljava/lang/Class;[J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[J)V"
        }
    .end annotation
.end method

.method private static unregisterAll()V
    .locals 4

    sget-object v0, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    invoke-static {v3, v2}, Lcom/sun/jna/Native;->unregister(Ljava/lang/Class;[J)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static native write(Lcom/sun/jna/Pointer;JJ[BII)V
.end method

.method public static native write(Lcom/sun/jna/Pointer;JJ[CII)V
.end method

.method public static native write(Lcom/sun/jna/Pointer;JJ[DII)V
.end method

.method public static native write(Lcom/sun/jna/Pointer;JJ[FII)V
.end method

.method public static native write(Lcom/sun/jna/Pointer;JJ[III)V
.end method

.method public static native write(Lcom/sun/jna/Pointer;JJ[JII)V
.end method

.method public static native write(Lcom/sun/jna/Pointer;JJ[SII)V
.end method
