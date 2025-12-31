.class public Lsk/mimac/slideshow/http/api/ApiResponder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$IHTTPSession;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lfi/iki/elonen/NanoHTTPD$Response;"
        }
    .end annotation

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParameters()Ljava/util/Map;

    move-result-object v0

    const-string v1, "cmd"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, "No command found"

    const-string v3, "text/plain"

    if-eqz v1, :cond_16

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    const/4 v4, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "duplicate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v4, 0x12

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "paste"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v4, 0x11

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "mkdir"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/16 v4, 0x10

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "tree"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/16 v4, 0xf

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/16 v4, 0xe

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "play"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/16 v4, 0xd

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "put"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "rm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v4, 0x8

    goto :goto_1

    :sswitch_b
    const-string v2, "ls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_c
    const-string v2, "schedule"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_d
    const-string v2, "parents"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_e
    const-string v2, "upload"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_f
    const-string v2, "search"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_10
    const-string v2, "properties"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_11
    const-string v2, "rename"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_12
    const-string v2, "mkfile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_0

    :cond_14
    :goto_1
    packed-switch v4, :pswitch_data_0

    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Command \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' not recognized"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v3, p2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-instance p1, Lsk/mimac/slideshow/http/api/impl/DuplicateCommand;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/api/impl/DuplicateCommand;-><init>()V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/http/api/JsonCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_1
    new-instance p1, Lsk/mimac/slideshow/http/api/impl/PasteCommand;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/api/impl/PasteCommand;-><init>()V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/http/api/JsonCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_2
    new-instance p1, Lsk/mimac/slideshow/http/api/impl/MkdirCommand;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/api/impl/MkdirCommand;-><init>()V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/http/api/JsonCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_3
    new-instance p1, Lsk/mimac/slideshow/http/api/impl/TreeCommand;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/api/impl/TreeCommand;-><init>()V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/http/api/JsonCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_4
    new-instance p1, Lsk/mimac/slideshow/http/api/impl/SizeCommand;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/api/impl/SizeCommand;-><init>()V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/http/api/JsonCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lsk/mimac/slideshow/http/api/impl/PlayCommand;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/api/impl/PlayCommand;-><init>()V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/http/api/JsonCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_6
    new-instance p1, Lsk/mimac/slideshow/http/api/impl/OpenCommand;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/api/impl/OpenCommand;-><init>()V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/http/api/JsonCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_7
    new-instance p2, Lsk/mimac/slideshow/http/api/impl/FileCommand;

    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p2, p1}, Lsk/mimac/slideshow/http/api/impl/FileCommand;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2, v0}, Lsk/mimac/slideshow/http/api/impl/FileCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_8
    new-instance p1, Lsk/mimac/slideshow/http/api/impl/PutCommand;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/api/impl/PutCommand;-><init>()V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/http/api/JsonCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_9
    new-instance p1, Lsk/mimac/slideshow/http/api/impl/GetCommand;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/api/impl/GetCommand;-><init>()V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/http/api/JsonCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_a
    new-instance p1, Lsk/mimac/slideshow/http/api/impl/RmCommand;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/api/impl/RmCommand;-><init>()V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/http/api/JsonCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_b
    new-instance p1, Lsk/mimac/slideshow/http/api/impl/LsCommand;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/api/impl/LsCommand;-><init>()V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/http/api/JsonCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_c
    new-instance p1, Lsk/mimac/slideshow/http/api/impl/ScheduleCommand;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/api/impl/ScheduleCommand;-><init>()V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/http/api/JsonCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_d
    new-instance p1, Lsk/mimac/slideshow/http/api/impl/ParentsCommand;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/api/impl/ParentsCommand;-><init>()V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/http/api/JsonCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_e
    new-instance p1, Lsk/mimac/slideshow/http/api/impl/UploadCommand;

    invoke-direct {p1, p2}, Lsk/mimac/slideshow/http/api/impl/UploadCommand;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/http/api/JsonCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_f
    new-instance p1, Lsk/mimac/slideshow/http/api/impl/SearchCommand;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/api/impl/SearchCommand;-><init>()V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/http/api/JsonCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_10
    new-instance p1, Lsk/mimac/slideshow/http/api/impl/PropertiesCommand;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/api/impl/PropertiesCommand;-><init>()V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/http/api/JsonCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_11
    new-instance p1, Lsk/mimac/slideshow/http/api/impl/RenameCommand;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/api/impl/RenameCommand;-><init>()V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/http/api/JsonCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :pswitch_12
    new-instance p1, Lsk/mimac/slideshow/http/api/impl/MkfileCommand;

    invoke-direct {p1}, Lsk/mimac/slideshow/http/api/impl/MkfileCommand;-><init>()V

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/http/api/JsonCommand;->process(Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_15
    :goto_2
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {p1, v3, v2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_16
    :goto_3
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    invoke-static {p1, v3, v2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3febfbe6 -> :sswitch_12
        -0x37b4c8c2 -> :sswitch_11
        -0x373272cd -> :sswitch_10
        -0x36059a58 -> :sswitch_f
        -0x31fbf1ff -> :sswitch_e
        -0x2f49f2f7 -> :sswitch_d
        -0x29996d69 -> :sswitch_c
        0xd87 -> :sswitch_b
        0xe3b -> :sswitch_a
        0x18f56 -> :sswitch_9
        0x1b30f -> :sswitch_8
        0x2ff57c -> :sswitch_7
        0x34264a -> :sswitch_6
        0x348b34 -> :sswitch_5
        0x35e001 -> :sswitch_4
        0x36739e -> :sswitch_3
        0x6322a2f -> :sswitch_2
        0x6581e93 -> :sswitch_1
        0x47a04d0b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
