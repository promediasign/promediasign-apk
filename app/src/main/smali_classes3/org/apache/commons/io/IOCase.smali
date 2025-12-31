.class public final enum Lorg/apache/commons/io/IOCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/io/IOCase;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/io/IOCase;

.field public static final enum INSENSITIVE:Lorg/apache/commons/io/IOCase;

.field public static final enum SENSITIVE:Lorg/apache/commons/io/IOCase;

.field public static final enum SYSTEM:Lorg/apache/commons/io/IOCase;

.field private static final serialVersionUID:J = -0x580776bc651386cfL


# instance fields
.field private final name:Ljava/lang/String;

.field private final transient sensitive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x2

    new-instance v1, Lorg/apache/commons/io/IOCase;

    const-string v2, "SENSITIVE"

    const/4 v3, 0x0

    const-string v4, "Sensitive"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/io/IOCase;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    new-instance v2, Lorg/apache/commons/io/IOCase;

    const-string v4, "INSENSITIVE"

    const-string v6, "Insensitive"

    invoke-direct {v2, v4, v5, v6, v3}, Lorg/apache/commons/io/IOCase;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lorg/apache/commons/io/IOCase;->INSENSITIVE:Lorg/apache/commons/io/IOCase;

    new-instance v4, Lorg/apache/commons/io/IOCase;

    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v6

    xor-int/2addr v6, v5

    const-string v7, "SYSTEM"

    const-string v8, "System"

    invoke-direct {v4, v7, v0, v8, v6}, Lorg/apache/commons/io/IOCase;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    const/4 v6, 0x3

    new-array v6, v6, [Lorg/apache/commons/io/IOCase;

    aput-object v1, v6, v3

    aput-object v2, v6, v5

    aput-object v4, v6, v0

    sput-object v6, Lorg/apache/commons/io/IOCase;->$VALUES:[Lorg/apache/commons/io/IOCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/commons/io/IOCase;->name:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    return-void
.end method

.method public static forName(Ljava/lang/String;)Lorg/apache/commons/io/IOCase;
    .locals 5

    .line 1
    invoke-static {}, Lorg/apache/commons/io/IOCase;->values()[Lorg/apache/commons/io/IOCase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Lorg/apache/commons/io/IOCase;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    return-object v3

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v1, "Invalid IOCase name: "

    .line 28
    .line 29
    invoke-static {v1, p0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/IOCase;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/io/IOCase;->forName(Ljava/lang/String;)Lorg/apache/commons/io/IOCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/io/IOCase;
    .locals 1

    const-class v0, Lorg/apache/commons/io/IOCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/IOCase;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/io/IOCase;
    .locals 1

    sget-object v0, Lorg/apache/commons/io/IOCase;->$VALUES:[Lorg/apache/commons/io/IOCase;

    invoke-virtual {v0}, [Lorg/apache/commons/io/IOCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/io/IOCase;

    return-object v0
.end method


# virtual methods
.method public checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    iget-boolean v0, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v2, v0, v5

    const/4 v4, 0x0

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public checkEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/io/IOCase;->sensitive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The strings must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/IOCase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/IOCase;->name:Ljava/lang/String;

    return-object v0
.end method
