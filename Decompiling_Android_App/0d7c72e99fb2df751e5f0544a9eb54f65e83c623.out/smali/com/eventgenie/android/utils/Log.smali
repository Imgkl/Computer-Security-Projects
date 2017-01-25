.class public final Lcom/eventgenie/android/utils/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final mLogger:Lcom/eventgenie/android/utils/AndroidLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/eventgenie/android/utils/AndroidLogger;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/AndroidLogger;-><init>()V

    sput-object v0, Lcom/eventgenie/android/utils/Log;->mLogger:Lcom/eventgenie/android/utils/AndroidLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Logger()Lcom/eventgenie/android/utils/AndroidLogger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/eventgenie/android/utils/Log;->mLogger:Lcom/eventgenie/android/utils/AndroidLogger;

    return-object v0
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/utils/AndroidLogger;->debug(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msgFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 46
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/eventgenie/android/utils/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public static err(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/utils/AndroidLogger;->err(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static err(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 58
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/eventgenie/android/utils/AndroidLogger;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 59
    return-void
.end method

.method public static err(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/eventgenie/android/utils/AndroidLogger;->err(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public static varargs err(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msgFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 54
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/eventgenie/android/utils/AndroidLogger;->err(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public static getDebugLogStatus()Z
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/AndroidLogger;->getDebugLogStatus()Z

    move-result v0

    return v0
.end method

.method public static getLogArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/AndroidLogger;->getLogArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/AndroidLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/utils/AndroidLogger;->info(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 87
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/eventgenie/android/utils/AndroidLogger;->info(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 88
    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msgFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 83
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/eventgenie/android/utils/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public static init(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "debugStatus"    # Z

    .prologue
    .line 91
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/eventgenie/android/utils/AndroidLogger;->init(Ljava/lang/String;Z)V

    .line 92
    return-void
.end method

.method public static largeInfoLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/utils/AndroidLogger;->largeInfoLog(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static setDebugLogStatus(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 95
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/utils/AndroidLogger;->setDebugLogStatus(Z)V

    .line 96
    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/utils/AndroidLogger;->setTag(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/utils/AndroidLogger;->verbose(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static warn(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 107
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/utils/AndroidLogger;->warn(Ljava/lang/Exception;)V

    .line 108
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/utils/AndroidLogger;->warn(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 119
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/eventgenie/android/utils/AndroidLogger;->warn(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 120
    return-void
.end method

.method public static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msgFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 115
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/eventgenie/android/utils/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    return-void
.end method
