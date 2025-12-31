.class public Lsk/mimac/slideshow/config/format/LocalDateTimeFormatTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/transform/Transform<",
        "Lj$/time/LocalDateTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALL_FORMATS:Lj$/time/format/DateTimeFormatter;

.field private static final MAIN_FORMAT:Lj$/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v0}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/config/format/LocalDateTimeFormatTransformer;->MAIN_FORMAT:Lj$/time/format/DateTimeFormatter;

    sget-object v0, Lsk/mimac/slideshow/config/format/LocalDateFormatTransformer;->ALL_FORMATS:Lj$/time/format/DateTimeFormatter;

    sput-object v0, Lsk/mimac/slideshow/config/format/LocalDateTimeFormatTransformer;->ALL_FORMATS:Lj$/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/lang/String;)Lj$/time/LocalDateTime;
    .locals 1

    .line 2
    sget-object v0, Lsk/mimac/slideshow/config/format/LocalDateTimeFormatTransformer;->ALL_FORMATS:Lj$/time/format/DateTimeFormatter;

    invoke-static {p1, v0}, Lj$/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/config/format/LocalDateTimeFormatTransformer;->read(Ljava/lang/String;)Lj$/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public write(Lj$/time/LocalDateTime;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lsk/mimac/slideshow/config/format/LocalDateTimeFormatTransformer;->MAIN_FORMAT:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, p1}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lj$/time/LocalDateTime;

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/config/format/LocalDateTimeFormatTransformer;->write(Lj$/time/LocalDateTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
