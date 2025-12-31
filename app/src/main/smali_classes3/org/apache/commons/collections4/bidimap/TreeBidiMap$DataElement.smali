.class final enum Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

.field public static final enum KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

.field public static final enum VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    const/4 v1, 0x0

    const-string v2, "key"

    const-string v3, "KEY"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    new-instance v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    const/4 v3, 0x1

    const-string v4, "value"

    const-string v5, "VALUE"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    sput-object v4, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->$VALUES:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

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

    iput-object p3, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->description:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;
    .locals 1

    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->$VALUES:[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v0}, [Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->description:Ljava/lang/String;

    return-object v0
.end method
