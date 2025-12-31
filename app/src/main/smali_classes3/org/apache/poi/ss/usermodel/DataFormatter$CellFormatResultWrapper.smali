.class final Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;
.super Ljava/text/Format;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/DataFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CellFormatResultWrapper"
.end annotation


# instance fields
.field private final result:Lorg/apache/poi/ss/format/CellFormatResult;

.field final synthetic this$0:Lorg/apache/poi/ss/usermodel/DataFormatter;


# direct methods
.method private constructor <init>(Lorg/apache/poi/ss/usermodel/DataFormatter;Lorg/apache/poi/ss/format/CellFormatResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;->this$0:Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;->result:Lorg/apache/poi/ss/format/CellFormatResult;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/ss/usermodel/DataFormatter;Lorg/apache/poi/ss/format/CellFormatResult;Lorg/apache/poi/ss/usermodel/DataFormatter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;-><init>(Lorg/apache/poi/ss/usermodel/DataFormatter;Lorg/apache/poi/ss/format/CellFormatResult;)V

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    iget-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;->this$0:Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->access$500(Lorg/apache/poi/ss/usermodel/DataFormatter;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;->result:Lorg/apache/poi/ss/format/CellFormatResult;

    iget-object p1, p1, Lorg/apache/poi/ss/format/CellFormatResult;->text:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;->result:Lorg/apache/poi/ss/format/CellFormatResult;

    iget-object p1, p1, Lorg/apache/poi/ss/format/CellFormatResult;->text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
