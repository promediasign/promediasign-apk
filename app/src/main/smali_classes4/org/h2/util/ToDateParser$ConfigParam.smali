.class final enum Lorg/h2/util/ToDateParser$ConfigParam;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/util/ToDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/h2/util/ToDateParser$ConfigParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/h2/util/ToDateParser$ConfigParam;

.field public static final enum TO_DATE:Lorg/h2/util/ToDateParser$ConfigParam;

.field public static final enum TO_TIMESTAMP:Lorg/h2/util/ToDateParser$ConfigParam;


# instance fields
.field private final defaultFormatStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/h2/util/ToDateParser$ConfigParam;

    const/4 v1, 0x0

    const-string v2, "DD MON YYYY"

    const-string v3, "TO_DATE"

    invoke-direct {v0, v3, v1, v2}, Lorg/h2/util/ToDateParser$ConfigParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/h2/util/ToDateParser$ConfigParam;->TO_DATE:Lorg/h2/util/ToDateParser$ConfigParam;

    new-instance v2, Lorg/h2/util/ToDateParser$ConfigParam;

    const/4 v3, 0x1

    const-string v4, "DD MON YYYY HH:MI:SS"

    const-string v5, "TO_TIMESTAMP"

    invoke-direct {v2, v5, v3, v4}, Lorg/h2/util/ToDateParser$ConfigParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/h2/util/ToDateParser$ConfigParam;->TO_TIMESTAMP:Lorg/h2/util/ToDateParser$ConfigParam;

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/h2/util/ToDateParser$ConfigParam;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    sput-object v4, Lorg/h2/util/ToDateParser$ConfigParam;->$VALUES:[Lorg/h2/util/ToDateParser$ConfigParam;

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

    iput-object p3, p0, Lorg/h2/util/ToDateParser$ConfigParam;->defaultFormatStr:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/h2/util/ToDateParser$ConfigParam;
    .locals 1

    const-class v0, Lorg/h2/util/ToDateParser$ConfigParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/h2/util/ToDateParser$ConfigParam;

    return-object p0
.end method

.method public static values()[Lorg/h2/util/ToDateParser$ConfigParam;
    .locals 1

    sget-object v0, Lorg/h2/util/ToDateParser$ConfigParam;->$VALUES:[Lorg/h2/util/ToDateParser$ConfigParam;

    invoke-virtual {v0}, [Lorg/h2/util/ToDateParser$ConfigParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/util/ToDateParser$ConfigParam;

    return-object v0
.end method


# virtual methods
.method public getDefaultFormatStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/util/ToDateParser$ConfigParam;->defaultFormatStr:Ljava/lang/String;

    return-object v0
.end method
