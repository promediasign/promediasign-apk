.class public final Lorg/apache/poi/ss/formula/functions/Today;
.super Lorg/apache/poi/ss/formula/functions/Fixed0ArgFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed0ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->clear(I)V

    const/16 p2, 0xb

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->clear(I)V

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->clear(I)V

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->clear(I)V

    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p2
.end method
