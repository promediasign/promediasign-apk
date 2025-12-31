.class public final enum Lio/milton/resource/AccessControlledResource$Priviledge;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/resource/AccessControlledResource$Priviledge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/resource/AccessControlledResource$Priviledge;

.field public static final enum ALL:Lio/milton/resource/AccessControlledResource$Priviledge;

.field public static final enum BIND:Lio/milton/resource/AccessControlledResource$Priviledge;

.field public static final enum READ:Lio/milton/resource/AccessControlledResource$Priviledge;

.field public static final enum READ_ACL:Lio/milton/resource/AccessControlledResource$Priviledge;

.field public static final enum READ_CONTENT:Lio/milton/resource/AccessControlledResource$Priviledge;

.field public static final enum READ_CURRENT_USER_PRIVILEDGE:Lio/milton/resource/AccessControlledResource$Priviledge;

.field public static final enum READ_PROPERTIES:Lio/milton/resource/AccessControlledResource$Priviledge;

.field public static final enum UNBIND:Lio/milton/resource/AccessControlledResource$Priviledge;

.field public static final enum UNLOCK:Lio/milton/resource/AccessControlledResource$Priviledge;

.field public static final enum WRITE:Lio/milton/resource/AccessControlledResource$Priviledge;

.field public static final enum WRITE_ACL:Lio/milton/resource/AccessControlledResource$Priviledge;

.field public static final enum WRITE_CONTENT:Lio/milton/resource/AccessControlledResource$Priviledge;

.field public static final enum WRITE_PROPERTIES:Lio/milton/resource/AccessControlledResource$Priviledge;


# instance fields
.field public contains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/resource/AccessControlledResource$Priviledge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lio/milton/resource/AccessControlledResource$Priviledge;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-string v2, "READ_CONTENT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/milton/resource/AccessControlledResource$Priviledge;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v0, Lio/milton/resource/AccessControlledResource$Priviledge;->READ_CONTENT:Lio/milton/resource/AccessControlledResource$Priviledge;

    new-instance v2, Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v4, "READ_PROPERTIES"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v1}, Lio/milton/resource/AccessControlledResource$Priviledge;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v2, Lio/milton/resource/AccessControlledResource$Priviledge;->READ_PROPERTIES:Lio/milton/resource/AccessControlledResource$Priviledge;

    new-instance v4, Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v6, "READ_CURRENT_USER_PRIVILEDGE"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v1}, Lio/milton/resource/AccessControlledResource$Priviledge;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v4, Lio/milton/resource/AccessControlledResource$Priviledge;->READ_CURRENT_USER_PRIVILEDGE:Lio/milton/resource/AccessControlledResource$Priviledge;

    new-instance v6, Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v8, "READ_ACL"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v1}, Lio/milton/resource/AccessControlledResource$Priviledge;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v6, Lio/milton/resource/AccessControlledResource$Priviledge;->READ_ACL:Lio/milton/resource/AccessControlledResource$Priviledge;

    new-instance v8, Lio/milton/resource/AccessControlledResource$Priviledge;

    const/4 v10, 0x4

    new-array v11, v10, [Lio/milton/resource/AccessControlledResource$Priviledge;

    aput-object v0, v11, v3

    aput-object v2, v11, v5

    aput-object v6, v11, v7

    aput-object v4, v11, v9

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v12, "READ"

    invoke-direct {v8, v12, v10, v11}, Lio/milton/resource/AccessControlledResource$Priviledge;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v8, Lio/milton/resource/AccessControlledResource$Priviledge;->READ:Lio/milton/resource/AccessControlledResource$Priviledge;

    new-instance v11, Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v12, "WRITE_PROPERTIES"

    const/4 v13, 0x5

    invoke-direct {v11, v12, v13, v1}, Lio/milton/resource/AccessControlledResource$Priviledge;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v11, Lio/milton/resource/AccessControlledResource$Priviledge;->WRITE_PROPERTIES:Lio/milton/resource/AccessControlledResource$Priviledge;

    new-instance v12, Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v14, "WRITE_CONTENT"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v1}, Lio/milton/resource/AccessControlledResource$Priviledge;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v12, Lio/milton/resource/AccessControlledResource$Priviledge;->WRITE_CONTENT:Lio/milton/resource/AccessControlledResource$Priviledge;

    new-instance v14, Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v15, "WRITE_ACL"

    const/4 v13, 0x7

    invoke-direct {v14, v15, v13, v1}, Lio/milton/resource/AccessControlledResource$Priviledge;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v14, Lio/milton/resource/AccessControlledResource$Priviledge;->WRITE_ACL:Lio/milton/resource/AccessControlledResource$Priviledge;

    new-instance v15, Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v13, "UNLOCK"

    const/16 v9, 0x8

    invoke-direct {v15, v13, v9, v1}, Lio/milton/resource/AccessControlledResource$Priviledge;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v15, Lio/milton/resource/AccessControlledResource$Priviledge;->UNLOCK:Lio/milton/resource/AccessControlledResource$Priviledge;

    new-instance v13, Lio/milton/resource/AccessControlledResource$Priviledge;

    new-array v9, v10, [Lio/milton/resource/AccessControlledResource$Priviledge;

    aput-object v12, v9, v3

    aput-object v11, v9, v5

    aput-object v14, v9, v7

    const/16 v16, 0x3

    aput-object v15, v9, v16

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v7, "WRITE"

    const/16 v5, 0x9

    invoke-direct {v13, v7, v5, v9}, Lio/milton/resource/AccessControlledResource$Priviledge;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v13, Lio/milton/resource/AccessControlledResource$Priviledge;->WRITE:Lio/milton/resource/AccessControlledResource$Priviledge;

    new-instance v7, Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v9, "BIND"

    const/16 v5, 0xa

    invoke-direct {v7, v9, v5, v1}, Lio/milton/resource/AccessControlledResource$Priviledge;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v7, Lio/milton/resource/AccessControlledResource$Priviledge;->BIND:Lio/milton/resource/AccessControlledResource$Priviledge;

    new-instance v9, Lio/milton/resource/AccessControlledResource$Priviledge;

    const-string v5, "UNBIND"

    const/16 v3, 0xb

    invoke-direct {v9, v5, v3, v1}, Lio/milton/resource/AccessControlledResource$Priviledge;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v9, Lio/milton/resource/AccessControlledResource$Priviledge;->UNBIND:Lio/milton/resource/AccessControlledResource$Priviledge;

    new-instance v1, Lio/milton/resource/AccessControlledResource$Priviledge;

    new-array v5, v10, [Lio/milton/resource/AccessControlledResource$Priviledge;

    const/16 v19, 0x0

    aput-object v8, v5, v19

    const/16 v18, 0x1

    aput-object v13, v5, v18

    const/16 v17, 0x2

    aput-object v7, v5, v17

    const/16 v16, 0x3

    aput-object v9, v5, v16

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v3, "ALL"

    const/16 v10, 0xc

    invoke-direct {v1, v3, v10, v5}, Lio/milton/resource/AccessControlledResource$Priviledge;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v1, Lio/milton/resource/AccessControlledResource$Priviledge;->ALL:Lio/milton/resource/AccessControlledResource$Priviledge;

    const/16 v3, 0xd

    new-array v3, v3, [Lio/milton/resource/AccessControlledResource$Priviledge;

    aput-object v0, v3, v19

    aput-object v2, v3, v18

    aput-object v4, v3, v17

    aput-object v6, v3, v16

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v11, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v14, v3, v0

    const/16 v0, 0x8

    aput-object v15, v3, v0

    const/16 v0, 0x9

    aput-object v13, v3, v0

    const/16 v0, 0xa

    aput-object v7, v3, v0

    const/16 v0, 0xb

    aput-object v9, v3, v0

    aput-object v1, v3, v10

    sput-object v3, Lio/milton/resource/AccessControlledResource$Priviledge;->$VALUES:[Lio/milton/resource/AccessControlledResource$Priviledge;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/milton/resource/AccessControlledResource$Priviledge;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/milton/resource/AccessControlledResource$Priviledge;->contains:Ljava/util/List;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/milton/resource/AccessControlledResource$Priviledge;
    .locals 1

    const-class v0, Lio/milton/resource/AccessControlledResource$Priviledge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/resource/AccessControlledResource$Priviledge;

    return-object p0
.end method

.method public static values()[Lio/milton/resource/AccessControlledResource$Priviledge;
    .locals 1

    sget-object v0, Lio/milton/resource/AccessControlledResource$Priviledge;->$VALUES:[Lio/milton/resource/AccessControlledResource$Priviledge;

    invoke-virtual {v0}, [Lio/milton/resource/AccessControlledResource$Priviledge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/resource/AccessControlledResource$Priviledge;

    return-object v0
.end method
