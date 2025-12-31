.class public final enum Lcom/dropbox/core/v2/teamlog/AdminRole;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/AdminRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/AdminRole;

.field public static final enum LIMITED_ADMIN:Lcom/dropbox/core/v2/teamlog/AdminRole;

.field public static final enum MEMBER_ONLY:Lcom/dropbox/core/v2/teamlog/AdminRole;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/AdminRole;

.field public static final enum SUPPORT_ADMIN:Lcom/dropbox/core/v2/teamlog/AdminRole;

.field public static final enum TEAM_ADMIN:Lcom/dropbox/core/v2/teamlog/AdminRole;

.field public static final enum USER_MANAGEMENT_ADMIN:Lcom/dropbox/core/v2/teamlog/AdminRole;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/dropbox/core/v2/teamlog/AdminRole;

    const-string v1, "TEAM_ADMIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/AdminRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AdminRole;->TEAM_ADMIN:Lcom/dropbox/core/v2/teamlog/AdminRole;

    new-instance v1, Lcom/dropbox/core/v2/teamlog/AdminRole;

    const-string v3, "USER_MANAGEMENT_ADMIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/teamlog/AdminRole;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/teamlog/AdminRole;->USER_MANAGEMENT_ADMIN:Lcom/dropbox/core/v2/teamlog/AdminRole;

    new-instance v3, Lcom/dropbox/core/v2/teamlog/AdminRole;

    const-string v5, "SUPPORT_ADMIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/teamlog/AdminRole;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/teamlog/AdminRole;->SUPPORT_ADMIN:Lcom/dropbox/core/v2/teamlog/AdminRole;

    new-instance v5, Lcom/dropbox/core/v2/teamlog/AdminRole;

    const-string v7, "LIMITED_ADMIN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dropbox/core/v2/teamlog/AdminRole;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/teamlog/AdminRole;->LIMITED_ADMIN:Lcom/dropbox/core/v2/teamlog/AdminRole;

    new-instance v7, Lcom/dropbox/core/v2/teamlog/AdminRole;

    const-string v9, "MEMBER_ONLY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dropbox/core/v2/teamlog/AdminRole;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/teamlog/AdminRole;->MEMBER_ONLY:Lcom/dropbox/core/v2/teamlog/AdminRole;

    new-instance v9, Lcom/dropbox/core/v2/teamlog/AdminRole;

    const-string v11, "OTHER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dropbox/core/v2/teamlog/AdminRole;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dropbox/core/v2/teamlog/AdminRole;->OTHER:Lcom/dropbox/core/v2/teamlog/AdminRole;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/dropbox/core/v2/teamlog/AdminRole;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/dropbox/core/v2/teamlog/AdminRole;->$VALUES:[Lcom/dropbox/core/v2/teamlog/AdminRole;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/AdminRole;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/teamlog/AdminRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/AdminRole;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/AdminRole;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/teamlog/AdminRole;->$VALUES:[Lcom/dropbox/core/v2/teamlog/AdminRole;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/AdminRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/AdminRole;

    return-object v0
.end method
