.class final Lorg/apache/poi/ss/util/CellReference$CellRefParts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/util/CellReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellRefParts"
.end annotation


# instance fields
.field final colRef:Ljava/lang/String;

.field final rowRef:Ljava/lang/String;

.field final sheetName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/util/CellReference$CellRefParts;->sheetName:Ljava/lang/String;

    const-string p1, ""

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lorg/apache/poi/ss/util/CellReference$CellRefParts;->rowRef:Ljava/lang/String;

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, p1

    :goto_1
    iput-object p3, p0, Lorg/apache/poi/ss/util/CellReference$CellRefParts;->colRef:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/util/CellReference$CellRefParts;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
