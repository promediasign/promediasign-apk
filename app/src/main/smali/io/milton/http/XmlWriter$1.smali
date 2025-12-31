.class abstract synthetic Lio/milton/http/XmlWriter$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/XmlWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$milton$http$XmlWriter$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lio/milton/http/XmlWriter$Type;->values()[Lio/milton/http/XmlWriter$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/milton/http/XmlWriter$1;->$SwitchMap$io$milton$http$XmlWriter$Type:[I

    :try_start_0
    sget-object v1, Lio/milton/http/XmlWriter$Type;->OPENING:Lio/milton/http/XmlWriter$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/milton/http/XmlWriter$1;->$SwitchMap$io$milton$http$XmlWriter$Type:[I

    sget-object v1, Lio/milton/http/XmlWriter$Type;->CLOSING:Lio/milton/http/XmlWriter$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lio/milton/http/XmlWriter$1;->$SwitchMap$io$milton$http$XmlWriter$Type:[I

    sget-object v1, Lio/milton/http/XmlWriter$Type;->NO_CONTENT:Lio/milton/http/XmlWriter$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
