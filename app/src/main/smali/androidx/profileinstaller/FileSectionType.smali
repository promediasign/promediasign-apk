.class final enum Landroidx/profileinstaller/FileSectionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/profileinstaller/FileSectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/profileinstaller/FileSectionType;

.field public static final enum AGGREGATION_COUNT:Landroidx/profileinstaller/FileSectionType;

.field public static final enum CLASSES:Landroidx/profileinstaller/FileSectionType;

.field public static final enum DEX_FILES:Landroidx/profileinstaller/FileSectionType;

.field public static final enum EXTRA_DESCRIPTORS:Landroidx/profileinstaller/FileSectionType;

.field public static final enum METHODS:Landroidx/profileinstaller/FileSectionType;


# instance fields
.field private final mValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Landroidx/profileinstaller/FileSectionType;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "DEX_FILES"

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/profileinstaller/FileSectionType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroidx/profileinstaller/FileSectionType;->DEX_FILES:Landroidx/profileinstaller/FileSectionType;

    new-instance v2, Landroidx/profileinstaller/FileSectionType;

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    const-string v6, "EXTRA_DESCRIPTORS"

    invoke-direct {v2, v6, v3, v4, v5}, Landroidx/profileinstaller/FileSectionType;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Landroidx/profileinstaller/FileSectionType;->EXTRA_DESCRIPTORS:Landroidx/profileinstaller/FileSectionType;

    new-instance v4, Landroidx/profileinstaller/FileSectionType;

    const/4 v5, 0x2

    const-wide/16 v6, 0x2

    const-string v8, "CLASSES"

    invoke-direct {v4, v8, v5, v6, v7}, Landroidx/profileinstaller/FileSectionType;-><init>(Ljava/lang/String;IJ)V

    sput-object v4, Landroidx/profileinstaller/FileSectionType;->CLASSES:Landroidx/profileinstaller/FileSectionType;

    new-instance v6, Landroidx/profileinstaller/FileSectionType;

    const/4 v7, 0x3

    const-wide/16 v8, 0x3

    const-string v10, "METHODS"

    invoke-direct {v6, v10, v7, v8, v9}, Landroidx/profileinstaller/FileSectionType;-><init>(Ljava/lang/String;IJ)V

    sput-object v6, Landroidx/profileinstaller/FileSectionType;->METHODS:Landroidx/profileinstaller/FileSectionType;

    new-instance v8, Landroidx/profileinstaller/FileSectionType;

    const/4 v9, 0x4

    const-wide/16 v10, 0x4

    const-string v12, "AGGREGATION_COUNT"

    invoke-direct {v8, v12, v9, v10, v11}, Landroidx/profileinstaller/FileSectionType;-><init>(Ljava/lang/String;IJ)V

    sput-object v8, Landroidx/profileinstaller/FileSectionType;->AGGREGATION_COUNT:Landroidx/profileinstaller/FileSectionType;

    const/4 v10, 0x5

    new-array v10, v10, [Landroidx/profileinstaller/FileSectionType;

    aput-object v0, v10, v1

    aput-object v2, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Landroidx/profileinstaller/FileSectionType;->$VALUES:[Landroidx/profileinstaller/FileSectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Landroidx/profileinstaller/FileSectionType;->mValue:J

    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    iget-wide v0, p0, Landroidx/profileinstaller/FileSectionType;->mValue:J

    return-wide v0
.end method
