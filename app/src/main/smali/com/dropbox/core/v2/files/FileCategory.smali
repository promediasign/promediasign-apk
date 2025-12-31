.class public final enum Lcom/dropbox/core/v2/files/FileCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/files/FileCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/files/FileCategory;

.field public static final enum AUDIO:Lcom/dropbox/core/v2/files/FileCategory;

.field public static final enum DOCUMENT:Lcom/dropbox/core/v2/files/FileCategory;

.field public static final enum FOLDER:Lcom/dropbox/core/v2/files/FileCategory;

.field public static final enum IMAGE:Lcom/dropbox/core/v2/files/FileCategory;

.field public static final enum OTHER:Lcom/dropbox/core/v2/files/FileCategory;

.field public static final enum OTHERS:Lcom/dropbox/core/v2/files/FileCategory;

.field public static final enum PAPER:Lcom/dropbox/core/v2/files/FileCategory;

.field public static final enum PDF:Lcom/dropbox/core/v2/files/FileCategory;

.field public static final enum PRESENTATION:Lcom/dropbox/core/v2/files/FileCategory;

.field public static final enum SPREADSHEET:Lcom/dropbox/core/v2/files/FileCategory;

.field public static final enum VIDEO:Lcom/dropbox/core/v2/files/FileCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/dropbox/core/v2/files/FileCategory;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/FileCategory;->IMAGE:Lcom/dropbox/core/v2/files/FileCategory;

    new-instance v1, Lcom/dropbox/core/v2/files/FileCategory;

    const-string v3, "DOCUMENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/files/FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/files/FileCategory;->DOCUMENT:Lcom/dropbox/core/v2/files/FileCategory;

    new-instance v3, Lcom/dropbox/core/v2/files/FileCategory;

    const-string v5, "PDF"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/files/FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/files/FileCategory;->PDF:Lcom/dropbox/core/v2/files/FileCategory;

    new-instance v5, Lcom/dropbox/core/v2/files/FileCategory;

    const-string v7, "SPREADSHEET"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dropbox/core/v2/files/FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/files/FileCategory;->SPREADSHEET:Lcom/dropbox/core/v2/files/FileCategory;

    new-instance v7, Lcom/dropbox/core/v2/files/FileCategory;

    const-string v9, "PRESENTATION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dropbox/core/v2/files/FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dropbox/core/v2/files/FileCategory;->PRESENTATION:Lcom/dropbox/core/v2/files/FileCategory;

    new-instance v9, Lcom/dropbox/core/v2/files/FileCategory;

    const-string v11, "AUDIO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dropbox/core/v2/files/FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dropbox/core/v2/files/FileCategory;->AUDIO:Lcom/dropbox/core/v2/files/FileCategory;

    new-instance v11, Lcom/dropbox/core/v2/files/FileCategory;

    const-string v13, "VIDEO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/dropbox/core/v2/files/FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dropbox/core/v2/files/FileCategory;->VIDEO:Lcom/dropbox/core/v2/files/FileCategory;

    new-instance v13, Lcom/dropbox/core/v2/files/FileCategory;

    const-string v15, "FOLDER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/dropbox/core/v2/files/FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dropbox/core/v2/files/FileCategory;->FOLDER:Lcom/dropbox/core/v2/files/FileCategory;

    new-instance v15, Lcom/dropbox/core/v2/files/FileCategory;

    const-string v14, "PAPER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/dropbox/core/v2/files/FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/dropbox/core/v2/files/FileCategory;->PAPER:Lcom/dropbox/core/v2/files/FileCategory;

    new-instance v14, Lcom/dropbox/core/v2/files/FileCategory;

    const-string v12, "OTHERS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/dropbox/core/v2/files/FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/dropbox/core/v2/files/FileCategory;->OTHERS:Lcom/dropbox/core/v2/files/FileCategory;

    new-instance v12, Lcom/dropbox/core/v2/files/FileCategory;

    const-string v10, "OTHER"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/dropbox/core/v2/files/FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/dropbox/core/v2/files/FileCategory;->OTHER:Lcom/dropbox/core/v2/files/FileCategory;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/dropbox/core/v2/files/FileCategory;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lcom/dropbox/core/v2/files/FileCategory;->$VALUES:[Lcom/dropbox/core/v2/files/FileCategory;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FileCategory;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/files/FileCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/files/FileCategory;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/FileCategory;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/files/FileCategory;->$VALUES:[Lcom/dropbox/core/v2/files/FileCategory;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/FileCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/FileCategory;

    return-object v0
.end method
