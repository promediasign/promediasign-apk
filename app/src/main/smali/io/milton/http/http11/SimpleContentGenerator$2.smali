.class abstract synthetic Lio/milton/http/http11/SimpleContentGenerator$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/http11/SimpleContentGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$milton$http$Response$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lio/milton/http/Response$Status;->values()[Lio/milton/http/Response$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/milton/http/http11/SimpleContentGenerator$2;->$SwitchMap$io$milton$http$Response$Status:[I

    :try_start_0
    sget-object v1, Lio/milton/http/Response$Status;->SC_METHOD_NOT_ALLOWED:Lio/milton/http/Response$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/milton/http/http11/SimpleContentGenerator$2;->$SwitchMap$io$milton$http$Response$Status:[I

    sget-object v1, Lio/milton/http/Response$Status;->SC_NOT_FOUND:Lio/milton/http/Response$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lio/milton/http/http11/SimpleContentGenerator$2;->$SwitchMap$io$milton$http$Response$Status:[I

    sget-object v1, Lio/milton/http/Response$Status;->SC_NOT_IMPLEMENTED:Lio/milton/http/Response$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lio/milton/http/http11/SimpleContentGenerator$2;->$SwitchMap$io$milton$http$Response$Status:[I

    sget-object v1, Lio/milton/http/Response$Status;->SC_CONFLICT:Lio/milton/http/Response$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lio/milton/http/http11/SimpleContentGenerator$2;->$SwitchMap$io$milton$http$Response$Status:[I

    sget-object v1, Lio/milton/http/Response$Status;->SC_INTERNAL_SERVER_ERROR:Lio/milton/http/Response$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lio/milton/http/http11/SimpleContentGenerator$2;->$SwitchMap$io$milton$http$Response$Status:[I

    sget-object v1, Lio/milton/http/Response$Status;->SC_UNAUTHORIZED:Lio/milton/http/Response$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
