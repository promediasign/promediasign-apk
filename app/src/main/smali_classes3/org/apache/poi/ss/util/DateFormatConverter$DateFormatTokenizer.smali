.class public Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/util/DateFormatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateFormatTokenizer"
.end annotation


# instance fields
.field format:Ljava/lang/String;

.field pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    return-void
.end method

.method public static tokenize(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;

    invoke-direct {v1, p0}, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->getNextToken()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getNextToken()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    iget-object v1, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    iget-object v1, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget v2, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    :goto_0
    iget v1, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    iget-object v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v1, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    iget v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    iget-object v2, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget v1, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    goto :goto_2

    :cond_2
    :goto_1
    iget v2, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    iget-object v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    iget v3, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_3

    iget v2, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    iget v2, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;

    .line 7
    .line 8
    iget-object v2, p0, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->format:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/DateFormatConverter$DateFormatTokenizer;->getNextToken()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-lez v3, :cond_0

    .line 24
    .line 25
    const-string v3, ", "

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :cond_0
    const-string v3, "["

    .line 31
    .line 32
    const-string v4, "]"

    .line 33
    .line 34
    invoke-static {v0, v3, v2, v4}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
