.class public Lsk/mimac/slideshow/config/format/LocalTimeFormatTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/transform/Transform<",
        "Lj$/time/LocalTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALL_FORMATS:Lj$/time/format/DateTimeFormatter;

.field private static final MAIN_FORMAT:Lj$/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HH:mm:ss"

    invoke-static {v0}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/config/format/LocalTimeFormatTransformer;->MAIN_FORMAT:Lj$/time/format/DateTimeFormatter;

    const-string v0, "[yyyy-MM-dd HH:mm:ss[.SSSSSSSSS][.SSSSSS][.SSS][.SS][.S][OOOO][O][z][XXXXX][XXXX]][yyyy-MM-dd\'T\'HH:mm:ss[.SSSSSSSSS][.SSSSSS][.SSS][.SS][.S][OOOO][O][z][XXXXX][XXXX]][HH:mm:ss[.SSSSSSSSS][.SSSSSS][.SSS][.SS][.S][OOOO][O][z][XXXXX][XXXX]][HH:mm]"

    invoke-static {v0}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/config/format/LocalTimeFormatTransformer;->ALL_FORMATS:Lj$/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/lang/String;)Lj$/time/LocalTime;
    .locals 1

    .line 2
    sget-object v0, Lsk/mimac/slideshow/config/format/LocalTimeFormatTransformer;->ALL_FORMATS:Lj$/time/format/DateTimeFormatter;

    invoke-static {p1, v0}, Lj$/time/LocalTime;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/config/format/LocalTimeFormatTransformer;->read(Ljava/lang/String;)Lj$/time/LocalTime;

    move-result-object p1

    return-object p1
.end method

.method public write(Lj$/time/LocalTime;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lsk/mimac/slideshow/config/format/LocalTimeFormatTransformer;->MAIN_FORMAT:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, p1}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lj$/time/LocalTime;

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/config/format/LocalTimeFormatTransformer;->write(Lj$/time/LocalTime;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
