.class final enum Lorg/h2/util/ToChar$Capitalization;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/util/ToChar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Capitalization"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/h2/util/ToChar$Capitalization;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/h2/util/ToChar$Capitalization;

.field public static final enum CAPITALIZE:Lorg/h2/util/ToChar$Capitalization;

.field public static final enum LOWERCASE:Lorg/h2/util/ToChar$Capitalization;

.field public static final enum UPPERCASE:Lorg/h2/util/ToChar$Capitalization;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/h2/util/ToChar$Capitalization;

    const-string v1, "UPPERCASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/h2/util/ToChar$Capitalization;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/h2/util/ToChar$Capitalization;->UPPERCASE:Lorg/h2/util/ToChar$Capitalization;

    new-instance v1, Lorg/h2/util/ToChar$Capitalization;

    const-string v3, "LOWERCASE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/h2/util/ToChar$Capitalization;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/h2/util/ToChar$Capitalization;->LOWERCASE:Lorg/h2/util/ToChar$Capitalization;

    new-instance v3, Lorg/h2/util/ToChar$Capitalization;

    const-string v5, "CAPITALIZE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/h2/util/ToChar$Capitalization;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/h2/util/ToChar$Capitalization;->CAPITALIZE:Lorg/h2/util/ToChar$Capitalization;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/h2/util/ToChar$Capitalization;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/h2/util/ToChar$Capitalization;->$VALUES:[Lorg/h2/util/ToChar$Capitalization;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toCapitalization(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lorg/h2/util/ToChar$Capitalization;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lorg/h2/util/ToChar$Capitalization;->CAPITALIZE:Lorg/h2/util/ToChar$Capitalization;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p1, :cond_2

    if-eqz p0, :cond_1

    sget-object p0, Lorg/h2/util/ToChar$Capitalization;->UPPERCASE:Lorg/h2/util/ToChar$Capitalization;

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/h2/util/ToChar$Capitalization;->LOWERCASE:Lorg/h2/util/ToChar$Capitalization;

    :goto_0
    return-object p0

    :cond_2
    if-eqz p0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lorg/h2/util/ToChar$Capitalization;->UPPERCASE:Lorg/h2/util/ToChar$Capitalization;

    goto :goto_1

    :cond_3
    sget-object p0, Lorg/h2/util/ToChar$Capitalization;->CAPITALIZE:Lorg/h2/util/ToChar$Capitalization;

    :goto_1
    return-object p0

    :cond_4
    sget-object p0, Lorg/h2/util/ToChar$Capitalization;->LOWERCASE:Lorg/h2/util/ToChar$Capitalization;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/h2/util/ToChar$Capitalization;
    .locals 1

    const-class v0, Lorg/h2/util/ToChar$Capitalization;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/h2/util/ToChar$Capitalization;

    return-object p0
.end method

.method public static values()[Lorg/h2/util/ToChar$Capitalization;
    .locals 1

    sget-object v0, Lorg/h2/util/ToChar$Capitalization;->$VALUES:[Lorg/h2/util/ToChar$Capitalization;

    invoke-virtual {v0}, [Lorg/h2/util/ToChar$Capitalization;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/h2/util/ToChar$Capitalization;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/h2/util/ToChar$1;->$SwitchMap$org$h2$util$ToChar$Capitalization:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown capitalization strategy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {p1}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_1
    return-object p1
.end method
