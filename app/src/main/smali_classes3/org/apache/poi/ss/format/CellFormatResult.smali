.class public Lorg/apache/poi/ss/format/CellFormatResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final applies:Z

.field public final text:Ljava/lang/String;

.field public final textColor:Ljava/awt/Color;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/awt/Color;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellFormatResult;->applies:Z

    if-eqz p2, :cond_1

    iput-object p2, p0, Lorg/apache/poi/ss/format/CellFormatResult;->text:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-object p3, p0, Lorg/apache/poi/ss/format/CellFormatResult;->textColor:Ljava/awt/Color;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CellFormatResult text may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
