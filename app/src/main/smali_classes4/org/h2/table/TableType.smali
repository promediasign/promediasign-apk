.class public final enum Lorg/h2/table/TableType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/h2/table/TableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/h2/table/TableType;

.field public static final enum EXTERNAL_TABLE_ENGINE:Lorg/h2/table/TableType;

.field public static final enum SYSTEM_TABLE:Lorg/h2/table/TableType;

.field public static final enum TABLE:Lorg/h2/table/TableType;

.field public static final enum TABLE_LINK:Lorg/h2/table/TableType;

.field public static final enum VIEW:Lorg/h2/table/TableType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/h2/table/TableType;

    const-string v1, "TABLE_LINK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/h2/table/TableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/h2/table/TableType;->TABLE_LINK:Lorg/h2/table/TableType;

    new-instance v1, Lorg/h2/table/TableType;

    const-string v3, "SYSTEM_TABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/h2/table/TableType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/h2/table/TableType;->SYSTEM_TABLE:Lorg/h2/table/TableType;

    new-instance v3, Lorg/h2/table/TableType;

    const-string v5, "TABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/h2/table/TableType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/h2/table/TableType;->TABLE:Lorg/h2/table/TableType;

    new-instance v5, Lorg/h2/table/TableType;

    const-string v7, "VIEW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/h2/table/TableType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/h2/table/TableType;->VIEW:Lorg/h2/table/TableType;

    new-instance v7, Lorg/h2/table/TableType;

    const-string v9, "EXTERNAL_TABLE_ENGINE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/h2/table/TableType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/h2/table/TableType;->EXTERNAL_TABLE_ENGINE:Lorg/h2/table/TableType;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/h2/table/TableType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/h2/table/TableType;->$VALUES:[Lorg/h2/table/TableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/h2/table/TableType;
    .locals 1

    const-class v0, Lorg/h2/table/TableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/h2/table/TableType;

    return-object p0
.end method

.method public static values()[Lorg/h2/table/TableType;
    .locals 1

    sget-object v0, Lorg/h2/table/TableType;->$VALUES:[Lorg/h2/table/TableType;

    invoke-virtual {v0}, [Lorg/h2/table/TableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/table/TableType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/h2/table/TableType;->EXTERNAL_TABLE_ENGINE:Lorg/h2/table/TableType;

    if-ne p0, v0, :cond_0

    const-string v0, "EXTERNAL"

    return-object v0

    :cond_0
    sget-object v0, Lorg/h2/table/TableType;->SYSTEM_TABLE:Lorg/h2/table/TableType;

    if-ne p0, v0, :cond_1

    const-string v0, "SYSTEM TABLE"

    return-object v0

    :cond_1
    sget-object v0, Lorg/h2/table/TableType;->TABLE_LINK:Lorg/h2/table/TableType;

    if-ne p0, v0, :cond_2

    const-string v0, "TABLE LINK"

    return-object v0

    :cond_2
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
