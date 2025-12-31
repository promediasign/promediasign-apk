.class final enum Lorg/apache/poi/ss/format/CellFormatType$4;
.super Lorg/apache/poi/ss/format/CellFormatType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/format/CellFormatType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/format/CellFormatType;-><init>(Ljava/lang/String;ILorg/apache/poi/ss/format/CellFormatType$1;)V

    return-void
.end method


# virtual methods
.method public formatter(Ljava/util/Locale;Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatter;
    .locals 0

    new-instance p1, Lorg/apache/poi/ss/format/CellElapsedFormatter;

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/format/CellElapsedFormatter;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public isSpecial(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
