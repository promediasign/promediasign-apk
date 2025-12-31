.class final enum Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/usermodel/HeaderFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MarkupTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum BOLD_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum DATE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum DOUBLE_UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum FILE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum FULL_FILE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum ITALIC_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum NUM_PAGES_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum PAGE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum PICTURE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum SHEET_NAME_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum STRIKETHROUGH_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum SUBSCRIPT_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum SUPERSCRIPT_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum TIME_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

.field public static final enum UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;


# instance fields
.field private final _occursInPairs:Z

.field private final _representation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const-string v1, "&A"

    const-string v2, "SHEET_NAME_FIELD"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->SHEET_NAME_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const-string v2, "&D"

    const-string v4, "DATE_FIELD"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->DATE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    new-instance v2, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const/4 v4, 0x2

    const-string v6, "&F"

    const-string v7, "FILE_FIELD"

    invoke-direct {v2, v7, v4, v6, v3}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->FILE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    new-instance v6, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const/4 v7, 0x3

    const-string v8, "&Z"

    const-string v9, "FULL_FILE_FIELD"

    invoke-direct {v6, v9, v7, v8, v3}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->FULL_FILE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    new-instance v8, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const/4 v9, 0x4

    const-string v10, "&P"

    const-string v11, "PAGE_FIELD"

    invoke-direct {v8, v11, v9, v10, v3}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v8, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->PAGE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    new-instance v10, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const/4 v11, 0x5

    const-string v12, "&T"

    const-string v13, "TIME_FIELD"

    invoke-direct {v10, v13, v11, v12, v3}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v10, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->TIME_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    new-instance v12, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const/4 v13, 0x6

    const-string v14, "&N"

    const-string v15, "NUM_PAGES_FIELD"

    invoke-direct {v12, v15, v13, v14, v3}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v12, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->NUM_PAGES_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    new-instance v14, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const/4 v15, 0x7

    const-string v13, "&G"

    const-string v11, "PICTURE_FIELD"

    invoke-direct {v14, v11, v15, v13, v3}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v14, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->PICTURE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    new-instance v11, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const/16 v13, 0x8

    const-string v15, "&B"

    const-string v9, "BOLD_FIELD"

    invoke-direct {v11, v9, v13, v15, v5}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v11, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->BOLD_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    new-instance v9, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const/16 v15, 0x9

    const-string v13, "&I"

    const-string v7, "ITALIC_FIELD"

    invoke-direct {v9, v7, v15, v13, v5}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v9, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->ITALIC_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    new-instance v7, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const/16 v13, 0xa

    const-string v15, "&S"

    const-string v4, "STRIKETHROUGH_FIELD"

    invoke-direct {v7, v4, v13, v15, v5}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v7, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->STRIKETHROUGH_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    new-instance v4, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const/16 v15, 0xb

    const-string v13, "&Y"

    const-string v3, "SUBSCRIPT_FIELD"

    invoke-direct {v4, v3, v15, v13, v5}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->SUBSCRIPT_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    new-instance v3, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const/16 v13, 0xc

    const-string v15, "&X"

    move-object/from16 v16, v4

    const-string v4, "SUPERSCRIPT_FIELD"

    invoke-direct {v3, v4, v13, v15, v5}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->SUPERSCRIPT_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    new-instance v4, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const/16 v15, 0xd

    const-string v13, "&U"

    move-object/from16 v17, v3

    const-string v3, "UNDERLINE_FIELD"

    invoke-direct {v4, v3, v15, v13, v5}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    new-instance v3, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const/16 v13, 0xe

    const-string v15, "&E"

    move-object/from16 v18, v4

    const-string v4, "DOUBLE_UNDERLINE_FIELD"

    invoke-direct {v3, v4, v13, v15, v5}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->DOUBLE_UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const/16 v4, 0xf

    new-array v4, v4, [Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    const/4 v15, 0x0

    aput-object v0, v4, v15

    aput-object v1, v4, v5

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v6, v4, v0

    const/4 v0, 0x4

    aput-object v8, v4, v0

    const/4 v0, 0x5

    aput-object v10, v4, v0

    const/4 v0, 0x6

    aput-object v12, v4, v0

    const/4 v0, 0x7

    aput-object v14, v4, v0

    const/16 v0, 0x8

    aput-object v11, v4, v0

    const/16 v0, 0x9

    aput-object v9, v4, v0

    const/16 v0, 0xa

    aput-object v7, v4, v0

    const/16 v0, 0xb

    aput-object v16, v4, v0

    const/16 v0, 0xc

    aput-object v17, v4, v0

    const/16 v0, 0xd

    aput-object v18, v4, v0

    aput-object v3, v4, v13

    sput-object v4, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->$VALUES:[Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->_representation:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->_occursInPairs:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->$VALUES:[Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, [Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    return-object v0
.end method


# virtual methods
.method public getRepresentation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->_representation:Ljava/lang/String;

    return-object v0
.end method

.method public occursPairs()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->_occursInPairs:Z

    return v0
.end method
