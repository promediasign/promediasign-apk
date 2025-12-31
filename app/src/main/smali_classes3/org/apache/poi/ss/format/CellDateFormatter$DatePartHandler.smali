.class Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/format/CellDateFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DatePartHandler"
.end annotation


# instance fields
.field private hLen:I

.field private hStart:I

.field private mLen:I

.field private mStart:I

.field final synthetic this$0:Lorg/apache/poi/ss/format/CellDateFormatter;


# direct methods
.method private constructor <init>(Lorg/apache/poi/ss/format/CellDateFormatter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    iput p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hStart:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/ss/format/CellDateFormatter;Lorg/apache/poi/ss/format/CellDateFormatter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;-><init>(Lorg/apache/poi/ss/format/CellDateFormatter;)V

    return-void
.end method


# virtual methods
.method public finish(Ljava/lang/StringBuffer;)V
    .locals 3

    iget v0, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hStart:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    invoke-static {v0}, Lorg/apache/poi/ss/format/CellDateFormatter;->access$100(Lorg/apache/poi/ss/format/CellDateFormatter;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hLen:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hStart:I

    add-int/2addr v1, v0

    const/16 v2, 0x48

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handlePart(Ljava/util/regex/Matcher;Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x6d

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    iput v2, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_0

    const-string p2, "yyyy"

    :cond_0
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_1
    iget p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    if-ltz p1, :cond_2

    :goto_0
    iget p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mLen:I

    if-ge p3, p1, :cond_1

    iget p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    add-int/2addr p1, p3

    invoke-virtual {p4, p1, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    iput v2, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    :cond_2
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_2
    iput p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mLen:I

    iget p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hStart:I

    if-ltz p1, :cond_3

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_3
    iput v2, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    iput p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hStart:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hLen:I

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_4
    iput v2, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p3, 0x2

    if-gt p1, p3, :cond_4

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x64

    const/16 p3, 0x45

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p4, 0x1

    if-le p1, p4, :cond_8

    iput v2, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    invoke-static {p1, p4}, Lorg/apache/poi/ss/format/CellDateFormatter;->access$102(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    invoke-static {p1, v0}, Lorg/apache/poi/ss/format/CellDateFormatter;->access$202(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    invoke-static {p1}, Lorg/apache/poi/ss/format/CellDateFormatter;->access$200(Lorg/apache/poi/ss/format/CellDateFormatter;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    const/4 p3, 0x1

    :cond_7
    invoke-static {p1, p3}, Lorg/apache/poi/ss/format/CellDateFormatter;->access$302(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z

    const-string p1, "a"

    return-object p1

    :cond_8
    :goto_2
    const/4 p1, 0x0

    return-object p1

    :sswitch_6
    iput v2, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    iget-object p3, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "%0"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "f"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/apache/poi/ss/format/CellDateFormatter;->access$002(Lorg/apache/poi/ss/format/CellDateFormatter;Ljava/lang/String;)Ljava/lang/String;

    const/16 p1, 0x30

    const/16 p3, 0x53

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_6
        0x41 -> :sswitch_5
        0x44 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4d -> :sswitch_2
        0x50 -> :sswitch_5
        0x53 -> :sswitch_1
        0x59 -> :sswitch_0
        0x61 -> :sswitch_5
        0x64 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6d -> :sswitch_2
        0x70 -> :sswitch_5
        0x73 -> :sswitch_1
        0x79 -> :sswitch_0
    .end sparse-switch
.end method
