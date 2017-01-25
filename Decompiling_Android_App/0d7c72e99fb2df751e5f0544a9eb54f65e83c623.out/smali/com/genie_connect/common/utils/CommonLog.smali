.class public Lcom/genie_connect/common/utils/CommonLog;
.super Ljava/lang/Object;
.source "CommonLog.java"


# static fields
.field private static sLogger:Lcom/genie_connect/common/platform/ILogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Logger()Lcom/genie_connect/common/platform/ILogger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/genie_connect/common/utils/CommonLog;->sLogger:Lcom/genie_connect/common/platform/ILogger;

    return-object v0
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {}, Lcom/genie_connect/common/utils/CommonLog;->Logger()Lcom/genie_connect/common/platform/ILogger;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/genie_connect/common/platform/ILogger;->debug(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msgFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 52
    invoke-static {}, Lcom/genie_connect/common/utils/CommonLog;->Logger()Lcom/genie_connect/common/platform/ILogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/genie_connect/common/platform/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public static err(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {}, Lcom/genie_connect/common/utils/CommonLog;->Logger()Lcom/genie_connect/common/platform/ILogger;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/genie_connect/common/platform/ILogger;->err(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static err(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 64
    invoke-static {}, Lcom/genie_connect/common/utils/CommonLog;->Logger()Lcom/genie_connect/common/platform/ILogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/genie_connect/common/platform/ILogger;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 65
    return-void
.end method

.method public static err(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    invoke-static {}, Lcom/genie_connect/common/utils/CommonLog;->Logger()Lcom/genie_connect/common/platform/ILogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/genie_connect/common/platform/ILogger;->err(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public static varargs err(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msgFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 60
    invoke-static {}, Lcom/genie_connect/common/utils/CommonLog;->Logger()Lcom/genie_connect/common/platform/ILogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/genie_connect/common/platform/ILogger;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {}, Lcom/genie_connect/common/utils/CommonLog;->Logger()Lcom/genie_connect/common/platform/ILogger;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/genie_connect/common/platform/ILogger;->info(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 80
    invoke-static {}, Lcom/genie_connect/common/utils/CommonLog;->Logger()Lcom/genie_connect/common/platform/ILogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/genie_connect/common/platform/ILogger;->info(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 81
    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msgFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 76
    invoke-static {}, Lcom/genie_connect/common/utils/CommonLog;->Logger()Lcom/genie_connect/common/platform/ILogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/genie_connect/common/platform/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public static init(Lcom/genie_connect/common/platform/ILogger;)V
    .locals 0
    .param p0, "logger"    # Lcom/genie_connect/common/platform/ILogger;

    .prologue
    .line 40
    sput-object p0, Lcom/genie_connect/common/utils/CommonLog;->sLogger:Lcom/genie_connect/common/platform/ILogger;

    .line 41
    return-void
.end method

.method public static init(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "debugStatus"    # Z

    .prologue
    .line 84
    invoke-static {}, Lcom/genie_connect/common/utils/CommonLog;->Logger()Lcom/genie_connect/common/platform/ILogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/genie_connect/common/platform/ILogger;->init(Ljava/lang/String;Z)V

    .line 85
    return-void
.end method

.method public static warn(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 88
    invoke-static {}, Lcom/genie_connect/common/utils/CommonLog;->Logger()Lcom/genie_connect/common/platform/ILogger;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/genie_connect/common/platform/ILogger;->warn(Ljava/lang/Exception;)V

    .line 89
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {}, Lcom/genie_connect/common/utils/CommonLog;->Logger()Lcom/genie_connect/common/platform/ILogger;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/genie_connect/common/platform/ILogger;->warn(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 100
    invoke-static {}, Lcom/genie_connect/common/utils/CommonLog;->Logger()Lcom/genie_connect/common/platform/ILogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/genie_connect/common/platform/ILogger;->warn(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 101
    return-void
.end method

.method public static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msgFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 96
    invoke-static {}, Lcom/genie_connect/common/utils/CommonLog;->Logger()Lcom/genie_connect/common/platform/ILogger;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/genie_connect/common/platform/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    return-void
.end method
