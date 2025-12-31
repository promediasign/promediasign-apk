.class public final enum Lio/milton/principal/PrincipalSearchCriteria$MatchType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/principal/PrincipalSearchCriteria$MatchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/principal/PrincipalSearchCriteria$MatchType;

.field public static final enum CONTAINS:Lio/milton/principal/PrincipalSearchCriteria$MatchType;

.field public static final enum ENDSWITH:Lio/milton/principal/PrincipalSearchCriteria$MatchType;

.field public static final enum EXACT:Lio/milton/principal/PrincipalSearchCriteria$MatchType;

.field public static final enum STARTSWITH:Lio/milton/principal/PrincipalSearchCriteria$MatchType;


# instance fields
.field code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lio/milton/principal/PrincipalSearchCriteria$MatchType;

    const/4 v1, 0x0

    const-string v2, "contains"

    const-string v3, "CONTAINS"

    invoke-direct {v0, v3, v1, v2}, Lio/milton/principal/PrincipalSearchCriteria$MatchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/milton/principal/PrincipalSearchCriteria$MatchType;->CONTAINS:Lio/milton/principal/PrincipalSearchCriteria$MatchType;

    new-instance v2, Lio/milton/principal/PrincipalSearchCriteria$MatchType;

    const/4 v3, 0x1

    const-string v4, "exact"

    const-string v5, "EXACT"

    invoke-direct {v2, v5, v3, v4}, Lio/milton/principal/PrincipalSearchCriteria$MatchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/milton/principal/PrincipalSearchCriteria$MatchType;->EXACT:Lio/milton/principal/PrincipalSearchCriteria$MatchType;

    new-instance v4, Lio/milton/principal/PrincipalSearchCriteria$MatchType;

    const/4 v5, 0x2

    const-string v6, "starts-with"

    const-string v7, "STARTSWITH"

    invoke-direct {v4, v7, v5, v6}, Lio/milton/principal/PrincipalSearchCriteria$MatchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/milton/principal/PrincipalSearchCriteria$MatchType;->STARTSWITH:Lio/milton/principal/PrincipalSearchCriteria$MatchType;

    new-instance v6, Lio/milton/principal/PrincipalSearchCriteria$MatchType;

    const/4 v7, 0x3

    const-string v8, "ends-with"

    const-string v9, "ENDSWITH"

    invoke-direct {v6, v9, v7, v8}, Lio/milton/principal/PrincipalSearchCriteria$MatchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lio/milton/principal/PrincipalSearchCriteria$MatchType;->ENDSWITH:Lio/milton/principal/PrincipalSearchCriteria$MatchType;

    const/4 v8, 0x4

    new-array v8, v8, [Lio/milton/principal/PrincipalSearchCriteria$MatchType;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lio/milton/principal/PrincipalSearchCriteria$MatchType;->$VALUES:[Lio/milton/principal/PrincipalSearchCriteria$MatchType;

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

    iput-object p3, p0, Lio/milton/principal/PrincipalSearchCriteria$MatchType;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/milton/principal/PrincipalSearchCriteria$MatchType;
    .locals 1

    const-class v0, Lio/milton/principal/PrincipalSearchCriteria$MatchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/principal/PrincipalSearchCriteria$MatchType;

    return-object p0
.end method

.method public static values()[Lio/milton/principal/PrincipalSearchCriteria$MatchType;
    .locals 1

    sget-object v0, Lio/milton/principal/PrincipalSearchCriteria$MatchType;->$VALUES:[Lio/milton/principal/PrincipalSearchCriteria$MatchType;

    invoke-virtual {v0}, [Lio/milton/principal/PrincipalSearchCriteria$MatchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/principal/PrincipalSearchCriteria$MatchType;

    return-object v0
.end method
