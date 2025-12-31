.class final Lorg/apache/poi/ss/format/CellFormat$1;
.super Lorg/apache/poi/ss/format/CellFormat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ss/format/CellFormat;->createGeneralFormat(Ljava/util/Locale;)Lorg/apache/poi/ss/format/CellFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    iput-object p3, p0, Lorg/apache/poi/ss/format/CellFormat$1;->val$locale:Ljava/util/Locale;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/format/CellFormat;-><init>(Ljava/util/Locale;Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormat$1;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 3

    new-instance v0, Lorg/apache/poi/ss/format/CellGeneralFormatter;

    iget-object v1, p0, Lorg/apache/poi/ss/format/CellFormat$1;->val$locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/format/CellGeneralFormatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/format/CellFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/ss/format/CellFormatResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/poi/ss/format/CellFormatResult;-><init>(ZLjava/lang/String;Ljava/awt/Color;)V

    return-object v0
.end method
