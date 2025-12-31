.class public abstract Lj$/time/ZoneId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/util/Map;

.field private static final serialVersionUID:J = 0x798cab446e6L


# direct methods
.method static constructor <clinit>()V
    .locals 31

    const-string v0, "ACT"

    const-string v1, "Australia/Darwin"

    invoke-static {v0, v1}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    const-string v1, "AET"

    const-string v2, "Australia/Sydney"

    invoke-static {v1, v2}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v1

    const-string v2, "AGT"

    const-string v3, "America/Argentina/Buenos_Aires"

    invoke-static {v2, v3}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v2

    const-string v3, "ART"

    const-string v4, "Africa/Cairo"

    invoke-static {v3, v4}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v3

    const-string v4, "AST"

    const-string v5, "America/Anchorage"

    invoke-static {v4, v5}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v4

    const-string v5, "BET"

    const-string v6, "America/Sao_Paulo"

    invoke-static {v5, v6}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v5

    const-string v6, "BST"

    const-string v7, "Asia/Dhaka"

    invoke-static {v6, v7}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v6

    const-string v7, "CAT"

    const-string v8, "Africa/Harare"

    invoke-static {v7, v8}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v7

    const-string v8, "CNT"

    const-string v9, "America/St_Johns"

    invoke-static {v8, v9}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v8

    const-string v9, "CST"

    const-string v10, "America/Chicago"

    invoke-static {v9, v10}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v9

    const-string v10, "CTT"

    const-string v11, "Asia/Shanghai"

    invoke-static {v10, v11}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v10

    const-string v11, "EAT"

    const-string v12, "Africa/Addis_Ababa"

    invoke-static {v11, v12}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v11

    const-string v12, "ECT"

    const-string v13, "Europe/Paris"

    invoke-static {v12, v13}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v12

    const-string v13, "IET"

    const-string v14, "America/Indiana/Indianapolis"

    invoke-static {v13, v14}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v13

    const-string v14, "IST"

    const-string v15, "Asia/Kolkata"

    invoke-static {v14, v15}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v14

    const-string v15, "JST"

    move-object/from16 v16, v14

    const-string v14, "Asia/Tokyo"

    invoke-static {v15, v14}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v14

    const-string v15, "MIT"

    move-object/from16 v17, v14

    const-string v14, "Pacific/Apia"

    invoke-static {v15, v14}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v14

    const-string v15, "NET"

    move-object/from16 v18, v14

    const-string v14, "Asia/Yerevan"

    invoke-static {v15, v14}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v14

    const-string v15, "NST"

    move-object/from16 v19, v14

    const-string v14, "Pacific/Auckland"

    invoke-static {v15, v14}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v14

    const-string v15, "PLT"

    move-object/from16 v20, v14

    const-string v14, "Asia/Karachi"

    invoke-static {v15, v14}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v14

    const-string v15, "PNT"

    move-object/from16 v21, v14

    const-string v14, "America/Phoenix"

    invoke-static {v15, v14}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v14

    const-string v15, "PRT"

    move-object/from16 v22, v14

    const-string v14, "America/Puerto_Rico"

    invoke-static {v15, v14}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v14

    const-string v15, "PST"

    move-object/from16 v23, v14

    const-string v14, "America/Los_Angeles"

    invoke-static {v15, v14}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v14

    const-string v15, "SST"

    move-object/from16 v24, v14

    const-string v14, "Pacific/Guadalcanal"

    invoke-static {v15, v14}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v14

    const-string v15, "VST"

    move-object/from16 v25, v14

    const-string v14, "Asia/Ho_Chi_Minh"

    invoke-static {v15, v14}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v14

    const-string v15, "EST"

    move-object/from16 v26, v14

    const-string v14, "-05:00"

    invoke-static {v15, v14}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v14

    const-string v15, "MST"

    move-object/from16 v27, v14

    const-string v14, "-07:00"

    invoke-static {v15, v14}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v14

    const-string v15, "HST"

    move-object/from16 v28, v14

    const-string v14, "-10:00"

    invoke-static {v15, v14}, Lj$/com/android/tools/r8/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v14

    const/16 v15, 0x1c

    move-object/from16 v29, v14

    new-array v14, v15, [Ljava/util/Map$Entry;

    const/16 v30, 0x0

    aput-object v0, v14, v30

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const/4 v1, 0x2

    aput-object v2, v14, v1

    const/4 v1, 0x3

    aput-object v3, v14, v1

    const/4 v1, 0x4

    aput-object v4, v14, v1

    const/4 v1, 0x5

    aput-object v5, v14, v1

    const/4 v1, 0x6

    aput-object v6, v14, v1

    const/4 v1, 0x7

    aput-object v7, v14, v1

    const/16 v1, 0x8

    aput-object v8, v14, v1

    const/16 v1, 0x9

    aput-object v9, v14, v1

    const/16 v1, 0xa

    aput-object v10, v14, v1

    const/16 v1, 0xb

    aput-object v11, v14, v1

    const/16 v1, 0xc

    aput-object v12, v14, v1

    const/16 v1, 0xd

    aput-object v13, v14, v1

    const/16 v1, 0xe

    aput-object v16, v14, v1

    const/16 v1, 0xf

    aput-object v17, v14, v1

    const/16 v1, 0x10

    aput-object v18, v14, v1

    const/16 v1, 0x11

    aput-object v19, v14, v1

    const/16 v1, 0x12

    aput-object v20, v14, v1

    const/16 v1, 0x13

    aput-object v21, v14, v1

    const/16 v1, 0x14

    aput-object v22, v14, v1

    const/16 v1, 0x15

    aput-object v23, v14, v1

    const/16 v1, 0x16

    aput-object v24, v14, v1

    const/16 v1, 0x17

    aput-object v25, v14, v1

    const/16 v1, 0x18

    aput-object v26, v14, v1

    const/16 v1, 0x19

    aput-object v27, v14, v1

    const/16 v1, 0x1a

    aput-object v28, v14, v1

    const/16 v1, 0x1b

    aput-object v29, v14, v1

    .line 0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v15}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v15, :cond_1

    aget-object v3, v14, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "duplicate key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 0
    sput-object v0, Lj$/time/ZoneId;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lj$/time/ZoneOffset;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lj$/time/x;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid subclass"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static S(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZoneId;
    .locals 4

    invoke-static {}, Lj$/time/temporal/l;->k()Lj$/time/temporal/q;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->A(Lj$/time/temporal/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneId;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lj$/time/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to obtain ZoneId from TemporalAccessor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 0
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 0
    throw v0
.end method

.method public static U(Ljava/lang/String;)Lj$/time/ZoneId;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lj$/time/ZoneId;->W(Ljava/lang/String;Z)Lj$/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method public static V(Ljava/lang/String;Ljava/util/Map;)Lj$/time/ZoneId;
    .locals 1

    const-string v0, "zoneId"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "aliasMap"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 0
    :cond_0
    const-string p1, "defaultObj"

    invoke-static {p0, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 0
    :goto_0
    check-cast p1, Ljava/lang/String;

    const/4 p0, 0x1

    .line 0
    invoke-static {p1, p0}, Lj$/time/ZoneId;->W(Ljava/lang/String;Z)Lj$/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method static W(Ljava/lang/String;Z)Lj$/time/ZoneId;
    .locals 2

    const-string v0, "zoneId"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "GMT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "UT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_0
    invoke-static {p0, v0, p1}, Lj$/time/ZoneId;->Y(Ljava/lang/String;IZ)Lj$/time/ZoneId;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0, p1}, Lj$/time/x;->a0(Ljava/lang/String;Z)Lj$/time/x;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    :goto_2
    invoke-static {p0}, Lj$/time/ZoneOffset;->d0(Ljava/lang/String;)Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0
.end method

.method public static X(Ljava/lang/String;Lj$/time/ZoneOffset;)Lj$/time/ZoneId;
    .locals 1

    const-string v0, "prefix"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offset"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "GMT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "prefix should be GMT, UTC or UT, is: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lj$/time/ZoneOffset;->c0()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lj$/time/ZoneOffset;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    new-instance v0, Lj$/time/x;

    .line 0
    invoke-static {p1}, Lj$/time/zone/f;->j(Lj$/time/ZoneOffset;)Lj$/time/zone/f;

    move-result-object p1

    .line 0
    invoke-direct {v0, p0, p1}, Lj$/time/x;-><init>(Ljava/lang/String;Lj$/time/zone/f;)V

    return-object v0
.end method

.method private static Y(Ljava/lang/String;IZ)Lj$/time/ZoneId;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, p1, :cond_0

    sget-object p0, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v0, p0}, Lj$/time/ZoneId;->X(Ljava/lang/String;Lj$/time/ZoneOffset;)Lj$/time/ZoneId;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    invoke-static {p0, p2}, Lj$/time/x;->a0(Ljava/lang/String;Z)Lj$/time/x;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj$/time/ZoneOffset;->d0(Ljava/lang/String;)Lj$/time/ZoneOffset;

    move-result-object p1

    sget-object p2, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    if-ne p1, p2, :cond_2

    invoke-static {v0, p1}, Lj$/time/ZoneId;->X(Ljava/lang/String;Lj$/time/ZoneOffset;)Lj$/time/ZoneId;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-static {v0, p1}, Lj$/time/ZoneId;->X(Ljava/lang/String;Lj$/time/ZoneOffset;)Lj$/time/ZoneId;

    move-result-object p0
    :try_end_0
    .catch Lj$/time/c; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    new-instance p2, Lj$/time/c;

    const-string v0, "Invalid ID for offset-based ZoneId: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 0
    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 0
    throw p2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static systemDefault()Lj$/time/ZoneId;
    .locals 2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 0
    instance-of v1, v0, Lj$/util/TimeZoneRetargetInterface;

    if-eqz v1, :cond_0

    check-cast v0, Lj$/util/TimeZoneRetargetInterface;

    invoke-interface {v0}, Lj$/util/TimeZoneRetargetInterface;->toZoneId()Lj$/time/ZoneId;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lj$/util/DesugarTimeZone;->toZoneId(Ljava/util/TimeZone;)Lj$/time/ZoneId;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lj$/time/s;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lj$/time/s;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract T()Lj$/time/zone/f;
.end method

.method abstract Z(Ljava/io/DataOutput;)V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lj$/time/ZoneId;

    if-eqz v0, :cond_1

    check-cast p1, Lj$/time/ZoneId;

    invoke-virtual {p0}, Lj$/time/ZoneId;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lj$/time/ZoneId;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lj$/time/ZoneId;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lj$/time/ZoneId;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
