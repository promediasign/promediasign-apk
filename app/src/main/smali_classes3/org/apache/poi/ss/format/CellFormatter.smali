.class public abstract Lorg/apache/poi/ss/format/CellFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected final format:Ljava/lang/String;

.field protected final locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ss/format/CellFormatter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormatter;->locale:Ljava/util/Locale;

    iput-object p2, p0, Lorg/apache/poi/ss/format/CellFormatter;->format:Ljava/lang/String;

    return-void
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/ss/format/CellFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
.end method

.method public simpleFormat(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/ss/format/CellFormatter;->simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
.end method
