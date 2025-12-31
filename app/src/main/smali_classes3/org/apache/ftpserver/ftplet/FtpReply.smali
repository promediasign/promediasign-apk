.class public interface abstract Lorg/apache/ftpserver/ftplet/FtpReply;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REPLY_110_RESTART_MARKER_REPLY:I = 0x6e

.field public static final REPLY_120_SERVICE_READY_IN_NNN_MINUTES:I = 0x78

.field public static final REPLY_125_DATA_CONNECTION_ALREADY_OPEN:I = 0x7d

.field public static final REPLY_150_FILE_STATUS_OKAY:I = 0x96

.field public static final REPLY_200_COMMAND_OKAY:I = 0xc8

.field public static final REPLY_202_COMMAND_NOT_IMPLEMENTED:I = 0xca

.field public static final REPLY_211_SYSTEM_STATUS_REPLY:I = 0xd3

.field public static final REPLY_212_DIRECTORY_STATUS:I = 0xd4

.field public static final REPLY_213_FILE_STATUS:I = 0xd5

.field public static final REPLY_214_HELP_MESSAGE:I = 0xd6

.field public static final REPLY_215_NAME_SYSTEM_TYPE:I = 0xd7

.field public static final REPLY_220_SERVICE_READY:I = 0xdc

.field public static final REPLY_221_CLOSING_CONTROL_CONNECTION:I = 0xdd

.field public static final REPLY_225_DATA_CONNECTION_OPEN_NO_TRANSFER_IN_PROGRESS:I = 0xe1

.field public static final REPLY_226_CLOSING_DATA_CONNECTION:I = 0xe2

.field public static final REPLY_227_ENTERING_PASSIVE_MODE:I = 0xe3

.field public static final REPLY_230_USER_LOGGED_IN:I = 0xe6

.field public static final REPLY_250_REQUESTED_FILE_ACTION_OKAY:I = 0xfa

.field public static final REPLY_257_PATHNAME_CREATED:I = 0x101

.field public static final REPLY_331_USER_NAME_OKAY_NEED_PASSWORD:I = 0x14b

.field public static final REPLY_332_NEED_ACCOUNT_FOR_LOGIN:I = 0x14c

.field public static final REPLY_350_REQUESTED_FILE_ACTION_PENDING_FURTHER_INFORMATION:I = 0x15e

.field public static final REPLY_421_SERVICE_NOT_AVAILABLE_CLOSING_CONTROL_CONNECTION:I = 0x1a5

.field public static final REPLY_425_CANT_OPEN_DATA_CONNECTION:I = 0x1a9

.field public static final REPLY_426_CONNECTION_CLOSED_TRANSFER_ABORTED:I = 0x1aa

.field public static final REPLY_450_REQUESTED_FILE_ACTION_NOT_TAKEN:I = 0x1c2

.field public static final REPLY_451_REQUESTED_ACTION_ABORTED:I = 0x1c3

.field public static final REPLY_452_REQUESTED_ACTION_NOT_TAKEN:I = 0x1c4

.field public static final REPLY_500_SYNTAX_ERROR_COMMAND_UNRECOGNIZED:I = 0x1f4

.field public static final REPLY_501_SYNTAX_ERROR_IN_PARAMETERS_OR_ARGUMENTS:I = 0x1f5

.field public static final REPLY_502_COMMAND_NOT_IMPLEMENTED:I = 0x1f6

.field public static final REPLY_503_BAD_SEQUENCE_OF_COMMANDS:I = 0x1f7

.field public static final REPLY_504_COMMAND_NOT_IMPLEMENTED_FOR_THAT_PARAMETER:I = 0x1f8

.field public static final REPLY_530_NOT_LOGGED_IN:I = 0x212

.field public static final REPLY_532_NEED_ACCOUNT_FOR_STORING_FILES:I = 0x214

.field public static final REPLY_550_REQUESTED_ACTION_NOT_TAKEN:I = 0x226

.field public static final REPLY_551_REQUESTED_ACTION_ABORTED_PAGE_TYPE_UNKNOWN:I = 0x227

.field public static final REPLY_552_REQUESTED_FILE_ACTION_ABORTED_EXCEEDED_STORAGE:I = 0x228

.field public static final REPLY_553_REQUESTED_ACTION_NOT_TAKEN_FILE_NAME_NOT_ALLOWED:I = 0x229


# virtual methods
.method public abstract getCode()I
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
