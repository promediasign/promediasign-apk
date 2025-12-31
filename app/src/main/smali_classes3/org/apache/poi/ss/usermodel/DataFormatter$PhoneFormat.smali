.class final Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;
.super Ljava/text/Format;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/DataFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneFormat"
.end annotation


# static fields
.field private static final df:Ljava/text/DecimalFormat;

.field public static final instance:Ljava/text/Format;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;->instance:Ljava/text/Format;

    const-string v0, "##########"

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->access$400(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;->df:Ljava/text/DecimalFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method

.method public static format(Ljava/lang/Number;)Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v2, v1, -0x4

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, -0x7

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, -0xa

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;->format(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
