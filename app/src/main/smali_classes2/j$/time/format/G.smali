.class public final enum Lj$/time/format/G;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum LENIENT:Lj$/time/format/G;

.field public static final enum SMART:Lj$/time/format/G;

.field public static final enum STRICT:Lj$/time/format/G;

.field private static final synthetic a:[Lj$/time/format/G;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lj$/time/format/G;

    .line 0
    const-string v4, "STRICT"

    invoke-direct {v3, v4, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 0
    sput-object v3, Lj$/time/format/G;->STRICT:Lj$/time/format/G;

    new-instance v4, Lj$/time/format/G;

    .line 0
    const-string v5, "SMART"

    invoke-direct {v4, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 0
    sput-object v4, Lj$/time/format/G;->SMART:Lj$/time/format/G;

    new-instance v5, Lj$/time/format/G;

    .line 0
    const-string v6, "LENIENT"

    invoke-direct {v5, v6, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 0
    sput-object v5, Lj$/time/format/G;->LENIENT:Lj$/time/format/G;

    const/4 v6, 0x3

    new-array v6, v6, [Lj$/time/format/G;

    aput-object v3, v6, v2

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    sput-object v6, Lj$/time/format/G;->a:[Lj$/time/format/G;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/format/G;
    .locals 1

    const-class v0, Lj$/time/format/G;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/format/G;

    return-object p0
.end method

.method public static values()[Lj$/time/format/G;
    .locals 1

    sget-object v0, Lj$/time/format/G;->a:[Lj$/time/format/G;

    invoke-virtual {v0}, [Lj$/time/format/G;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/format/G;

    return-object v0
.end method
