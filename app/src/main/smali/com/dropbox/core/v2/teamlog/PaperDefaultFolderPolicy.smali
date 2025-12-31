.class public final enum Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;

.field public static final enum EVERYONE_IN_TEAM:Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;

.field public static final enum INVITE_ONLY:Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;

    const-string v1, "EVERYONE_IN_TEAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;->EVERYONE_IN_TEAM:Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;

    new-instance v1, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;

    const-string v3, "INVITE_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;->INVITE_ONLY:Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;

    new-instance v3, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;->$VALUES:[Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;->$VALUES:[Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/PaperDefaultFolderPolicy;

    return-object v0
.end method
