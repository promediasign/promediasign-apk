.class public final enum Lorg/apache/poi/xwpf/usermodel/VerticalAlign;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xwpf/usermodel/VerticalAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

.field public static final enum BASELINE:Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

.field public static final enum SUBSCRIPT:Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

.field public static final enum SUPERSCRIPT:Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

.field private static imap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xwpf/usermodel/VerticalAlign;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    const-string v1, "BASELINE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->BASELINE:Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    const-string v4, "SUPERSCRIPT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->SUPERSCRIPT:Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    new-instance v4, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    const-string v6, "SUBSCRIPT"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->SUBSCRIPT:Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    new-array v6, v7, [Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->imap:Ljava/util/Map;

    invoke-static {}, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->values()[Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    sget-object v5, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->imap:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
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

    iput p3, p0, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->value:I

    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/xwpf/usermodel/VerticalAlign;
    .locals 2

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->imap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown vertical alignment: "

    .line 1
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/VerticalAlign;
    .locals 1

    .line 7
    const-class v0, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xwpf/usermodel/VerticalAlign;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->$VALUES:[Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    invoke-virtual {v0}, [Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->value:I

    return v0
.end method
