.class public final enum Lorg/apache/poi/wp/usermodel/HeaderFooterType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/wp/usermodel/HeaderFooterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/wp/usermodel/HeaderFooterType;

.field public static final enum DEFAULT:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

.field public static final enum EVEN:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

.field public static final enum FIRST:Lorg/apache/poi/wp/usermodel/HeaderFooterType;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/wp/usermodel/HeaderFooterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->DEFAULT:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    new-instance v1, Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    const-string v4, "EVEN"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5}, Lorg/apache/poi/wp/usermodel/HeaderFooterType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->EVEN:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    new-instance v4, Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    const-string v6, "FIRST"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v3, v7}, Lorg/apache/poi/wp/usermodel/HeaderFooterType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->FIRST:Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    new-array v6, v7, [Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v3

    sput-object v6, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->$VALUES:[Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->code:I

    return-void
.end method

.method public static forInt(I)Lorg/apache/poi/wp/usermodel/HeaderFooterType;
    .locals 5

    .line 1
    invoke-static {}, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->values()[Lorg/apache/poi/wp/usermodel/HeaderFooterType;

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
    iget v4, v3, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->code:I

    .line 12
    .line 13
    if-ne v4, p0, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v1, "Invalid HeaderFooterType code: "

    .line 22
    .line 23
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/wp/usermodel/HeaderFooterType;
    .locals 1

    const-class v0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/wp/usermodel/HeaderFooterType;
    .locals 1

    sget-object v0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->$VALUES:[Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    invoke-virtual {v0}, [Lorg/apache/poi/wp/usermodel/HeaderFooterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/wp/usermodel/HeaderFooterType;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/wp/usermodel/HeaderFooterType;->code:I

    return v0
.end method
