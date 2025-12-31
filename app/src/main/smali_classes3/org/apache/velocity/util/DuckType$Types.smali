.class public final enum Lorg/apache/velocity/util/DuckType$Types;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/velocity/util/DuckType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Types"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/velocity/util/DuckType$Types;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/velocity/util/DuckType$Types;

.field public static final enum BOOLEAN:Lorg/apache/velocity/util/DuckType$Types;

.field public static final enum EMPTY:Lorg/apache/velocity/util/DuckType$Types;

.field public static final enum LENGTH:Lorg/apache/velocity/util/DuckType$Types;

.field public static final enum NUMBER:Lorg/apache/velocity/util/DuckType$Types;

.field public static final enum SIZE:Lorg/apache/velocity/util/DuckType$Types;

.field public static final enum STRING:Lorg/apache/velocity/util/DuckType$Types;


# instance fields
.field final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lorg/apache/velocity/util/DuckType$Types;

    const/4 v1, 0x0

    const-string v2, "getAsString"

    const-string v3, "STRING"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/velocity/util/DuckType$Types;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/velocity/util/DuckType$Types;->STRING:Lorg/apache/velocity/util/DuckType$Types;

    new-instance v2, Lorg/apache/velocity/util/DuckType$Types;

    const/4 v3, 0x1

    const-string v4, "getAsNumber"

    const-string v5, "NUMBER"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/velocity/util/DuckType$Types;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/velocity/util/DuckType$Types;->NUMBER:Lorg/apache/velocity/util/DuckType$Types;

    new-instance v4, Lorg/apache/velocity/util/DuckType$Types;

    const/4 v5, 0x2

    const-string v6, "getAsBoolean"

    const-string v7, "BOOLEAN"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/velocity/util/DuckType$Types;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/velocity/util/DuckType$Types;->BOOLEAN:Lorg/apache/velocity/util/DuckType$Types;

    new-instance v6, Lorg/apache/velocity/util/DuckType$Types;

    const/4 v7, 0x3

    const-string v8, "isEmpty"

    const-string v9, "EMPTY"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/velocity/util/DuckType$Types;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/velocity/util/DuckType$Types;->EMPTY:Lorg/apache/velocity/util/DuckType$Types;

    new-instance v8, Lorg/apache/velocity/util/DuckType$Types;

    const/4 v9, 0x4

    const-string v10, "length"

    const-string v11, "LENGTH"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/velocity/util/DuckType$Types;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/velocity/util/DuckType$Types;->LENGTH:Lorg/apache/velocity/util/DuckType$Types;

    new-instance v10, Lorg/apache/velocity/util/DuckType$Types;

    const/4 v11, 0x5

    const-string v12, "size"

    const-string v13, "SIZE"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/velocity/util/DuckType$Types;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/apache/velocity/util/DuckType$Types;->SIZE:Lorg/apache/velocity/util/DuckType$Types;

    const/4 v12, 0x6

    new-array v12, v12, [Lorg/apache/velocity/util/DuckType$Types;

    aput-object v0, v12, v1

    aput-object v2, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    sput-object v12, Lorg/apache/velocity/util/DuckType$Types;->$VALUES:[Lorg/apache/velocity/util/DuckType$Types;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/util/DuckType$Types;->cache:Ljava/util/Map;

    iput-object p3, p0, Lorg/apache/velocity/util/DuckType$Types;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/velocity/util/DuckType$Types;
    .locals 1

    const-class v0, Lorg/apache/velocity/util/DuckType$Types;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/velocity/util/DuckType$Types;

    return-object p0
.end method

.method public static values()[Lorg/apache/velocity/util/DuckType$Types;
    .locals 1

    sget-object v0, Lorg/apache/velocity/util/DuckType$Types;->$VALUES:[Lorg/apache/velocity/util/DuckType$Types;

    invoke-virtual {v0}, [Lorg/apache/velocity/util/DuckType$Types;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/velocity/util/DuckType$Types;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/DuckType$Types;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/DuckType$Types;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
