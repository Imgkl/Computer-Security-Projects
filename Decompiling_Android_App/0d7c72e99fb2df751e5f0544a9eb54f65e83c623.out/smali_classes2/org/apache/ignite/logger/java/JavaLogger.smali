.class public Lorg/apache/ignite/logger/java/JavaLogger;
.super Ljava/lang/Object;
.source "JavaLogger.java"

# interfaces
.implements Lorg/apache/ignite/IgniteLogger;
.implements Lorg/apache/ignite/logger/LoggerNodeIdAware;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_CONFIG_PATH:Ljava/lang/String; = "config/java.util.logging.properties"

.field private static volatile inited:Z

.field private static final mux:Ljava/lang/Object;

.field private static volatile quiet0:Z


# instance fields
.field private impl:Ljava/util/logging/Logger;

.field private volatile nodeId:Ljava/util/UUID;

.field private final quiet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lorg/apache/ignite/logger/java/JavaLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/logger/java/JavaLogger;->$assertionsDisabled:Z

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/ignite/logger/java/JavaLogger;->mux:Ljava/lang/Object;

    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lorg/apache/ignite/logger/java/JavaLogger;->isConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/ignite/logger/java/JavaLogger;-><init>(Z)V

    .line 112
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/logging/Logger;)V
    .locals 1
    .param p1, "impl"    # Ljava/util/logging/Logger;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    sget-boolean v0, Lorg/apache/ignite/logger/java/JavaLogger;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 171
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/logger/java/JavaLogger;->configure(Ljava/util/logging/Logger;)V

    .line 173
    sget-boolean v0, Lorg/apache/ignite/logger/java/JavaLogger;->quiet0:Z

    iput-boolean v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->quiet:Z

    .line 174
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "init"    # Z

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const-string v0, ""

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    .line 153
    if-eqz p1, :cond_0

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/logger/java/JavaLogger;->configure(Ljava/util/logging/Logger;)V

    .line 157
    sget-boolean v0, Lorg/apache/ignite/logger/java/JavaLogger;->quiet0:Z

    iput-boolean v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->quiet:Z

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->quiet:Z

    goto :goto_0
.end method

.method private configure(Ljava/util/logging/Logger;)V
    .locals 14
    .param p1, "initImpl"    # Ljava/util/logging/Logger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 188
    if-eqz p1, :cond_0

    .line 189
    iput-object p1, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    .line 191
    :cond_0
    sget-boolean v11, Lorg/apache/ignite/logger/java/JavaLogger;->inited:Z

    if-eqz v11, :cond_1

    .line 235
    :goto_0
    return-void

    .line 194
    :cond_1
    sget-object v11, Lorg/apache/ignite/logger/java/JavaLogger;->mux:Ljava/lang/Object;

    monitor-enter v11

    .line 195
    :try_start_0
    sget-boolean v12, Lorg/apache/ignite/logger/java/JavaLogger;->inited:Z

    if-eqz v12, :cond_2

    .line 196
    monitor-exit v11

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v9

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 198
    :cond_2
    :try_start_1
    invoke-static {}, Lorg/apache/ignite/logger/java/JavaLogger;->isConfigured()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 199
    iget-object v12, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    const-class v13, Ljava/util/logging/ConsoleHandler;

    invoke-static {v12, v13}, Lorg/apache/ignite/logger/java/JavaLogger;->findHandler(Ljava/util/logging/Logger;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_3

    move v2, v9

    .line 202
    .local v2, "consoleHndFound":Z
    :goto_1
    if-nez v2, :cond_4

    :goto_2
    sput-boolean v9, Lorg/apache/ignite/logger/java/JavaLogger;->quiet0:Z

    .line 203
    const/4 v9, 0x1

    sput-boolean v9, Lorg/apache/ignite/logger/java/JavaLogger;->inited:Z

    .line 205
    monitor-exit v11

    goto :goto_0

    .end local v2    # "consoleHndFound":Z
    :cond_3
    move v2, v10

    .line 199
    goto :goto_1

    .restart local v2    # "consoleHndFound":Z
    :cond_4
    move v9, v10

    .line 202
    goto :goto_2

    .line 208
    .end local v2    # "consoleHndFound":Z
    :cond_5
    invoke-direct {p0}, Lorg/apache/ignite/logger/java/JavaLogger;->defaultConfiguration()V

    .line 210
    const-string v9, "IGNITE_QUIET"

    const-string v10, "true"

    invoke-static {v9, v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 211
    .local v7, "quiet":Z
    const-string v9, "IGNITE_CONSOLE_APPENDER"

    const-string v10, "true"

    invoke-static {v9, v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 213
    .local v8, "useConsoleAppender":Z
    if-eqz v8, :cond_9

    .line 214
    iget-object v9, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    const-class v10, Ljava/util/logging/ConsoleHandler;

    invoke-static {v9, v10}, Lorg/apache/ignite/logger/java/JavaLogger;->findHandler(Ljava/util/logging/Logger;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/ConsoleHandler;

    .line 216
    .local v1, "consoleHnd":Ljava/util/logging/ConsoleHandler;
    if-eqz v1, :cond_8

    .line 217
    if-eqz v7, :cond_7

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    :goto_3
    invoke-virtual {v1, v9}, Ljava/util/logging/ConsoleHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 232
    .end local v1    # "consoleHnd":Ljava/util/logging/ConsoleHandler;
    :cond_6
    :goto_4
    sput-boolean v7, Lorg/apache/ignite/logger/java/JavaLogger;->quiet0:Z

    .line 233
    const/4 v9, 0x1

    sput-boolean v9, Lorg/apache/ignite/logger/java/JavaLogger;->inited:Z

    .line 234
    monitor-exit v11

    goto :goto_0

    .line 217
    .restart local v1    # "consoleHnd":Ljava/util/logging/ConsoleHandler;
    :cond_7
    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_3

    .line 219
    :cond_8
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Console logging handler is not configured."

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 222
    .end local v1    # "consoleHnd":Ljava/util/logging/ConsoleHandler;
    :cond_9
    const-string v9, ""

    invoke-static {v9}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v4

    .line 224
    .local v4, "handlers":[Ljava/util/logging/Handler;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 225
    move-object v0, v4

    .local v0, "arr$":[Ljava/util/logging/Handler;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_5
    if-ge v5, v6, :cond_6

    aget-object v3, v0, v5

    .line 226
    .local v3, "h":Ljava/util/logging/Handler;
    instance-of v9, v3, Ljava/util/logging/ConsoleHandler;

    if-eqz v9, :cond_a

    .line 227
    iget-object v9, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    invoke-virtual {v9, v3}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5
.end method

.method private defaultConfiguration()V
    .locals 7

    .prologue
    .line 127
    const-string v4, "config/java.util.logging.properties"

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveIgniteUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 129
    .local v0, "cfgUrl":Ljava/net/URL;
    if-nez v0, :cond_1

    .line 130
    const-string v4, "Failed to resolve default logging config file: config/java.util.logging.properties"

    invoke-virtual {p0, v4}, Lorg/apache/ignite/logger/java/JavaLogger;->error(Ljava/lang/String;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .local v2, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 136
    :try_start_1
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/logging/LogManager;->readConfiguration(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    if-eqz v2, :cond_0

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 138
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 139
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read logging configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lorg/apache/ignite/logger/java/JavaLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 137
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 135
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    :catchall_0
    move-exception v5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_2
    :try_start_7
    throw v4

    :catch_3
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method static fileName(Ljava/util/logging/FileHandler;)Ljava/lang/String;
    .locals 4
    .param p0, "fileHnd"    # Ljava/util/logging/FileHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 318
    if-nez p0, :cond_0

    .line 327
    :goto_0
    return-object v2

    .line 322
    :cond_0
    :try_start_0
    const-string v3, "files"

    invoke-static {p0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    .line 324
    .local v1, "logFiles":[Ljava/io/File;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 326
    .end local v1    # "logFiles":[Ljava/io/File;
    :catch_0
    move-exception v0

    .line 327
    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static findHandler(Ljava/util/logging/Logger;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "log"    # Ljava/util/logging/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/logging/Logger;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_0
    if-eqz p0, :cond_2

    .line 375
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    .local v0, "arr$":[Ljava/util/logging/Handler;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 376
    .local v1, "hnd":Ljava/util/logging/Handler;
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 383
    .end local v0    # "arr$":[Ljava/util/logging/Handler;
    .end local v1    # "hnd":Ljava/util/logging/Handler;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_2
    return-object v1

    .line 375
    .restart local v0    # "arr$":[Ljava/util/logging/Handler;
    .restart local v1    # "hnd":Ljava/util/logging/Handler;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 380
    .end local v1    # "hnd":Ljava/util/logging/Handler;
    :cond_1
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object p0

    goto :goto_0

    .line 383
    .end local v0    # "arr$":[Ljava/util/logging/Handler;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static isConfigured()Z
    .locals 1

    .prologue
    .line 120
    const-string v0, "java.util.logging.config.file"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logging at DEBUG level without checking if DEBUG level is enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/logger/java/JavaLogger;->warning(Ljava/lang/String;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    return-void
.end method

.method public fileName()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 303
    iget-object v2, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    const-class v3, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;

    invoke-static {v2, v3}, Lorg/apache/ignite/logger/java/JavaLogger;->findHandler(Ljava/util/logging/Logger;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;

    .line 305
    .local v1, "gridFileHnd":Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;
    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {v1}, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->fileName()Ljava/lang/String;

    move-result-object v2

    .line 310
    :goto_0
    return-object v2

    .line 308
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    const-class v3, Ljava/util/logging/FileHandler;

    invoke-static {v2, v3}, Lorg/apache/ignite/logger/java/JavaLogger;->findHandler(Ljava/util/logging/Logger;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/FileHandler;

    .line 310
    .local v0, "fileHnd":Ljava/util/logging/FileHandler;
    invoke-static {v0}, Lorg/apache/ignite/logger/java/JavaLogger;->fileName(Ljava/util/logging/FileHandler;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;
    .locals 2
    .param p1, "ctgr"    # Ljava/lang/Object;

    .prologue
    .line 178
    new-instance v1, Lorg/apache/ignite/logger/java/JavaLogger;

    if-nez p1, :cond_0

    const-string v0, ""

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .end local p1    # "ctgr":Ljava/lang/Object;
    :goto_0
    invoke-direct {v1, v0}, Lorg/apache/ignite/logger/java/JavaLogger;-><init>(Ljava/util/logging/Logger;)V

    return-object v1

    .restart local p1    # "ctgr":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Class;

    .end local p1    # "ctgr":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    goto :goto_0

    .restart local p1    # "ctgr":Ljava/lang/Object;
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logging at INFO level without checking if INFO level is enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/logger/java/JavaLogger;->warning(Ljava/lang/String;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isQuiet()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->quiet:Z

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public setNodeId(Ljava/util/UUID;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 333
    const-string v2, "nodeId"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lorg/apache/ignite/logger/java/JavaLogger;->nodeId:Ljava/util/UUID;

    if-eqz v2, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    sget-object v3, Lorg/apache/ignite/logger/java/JavaLogger;->mux:Ljava/lang/Object;

    monitor-enter v3

    .line 340
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/logger/java/JavaLogger;->nodeId:Ljava/util/UUID;

    if-eqz v2, :cond_2

    .line 341
    monitor-exit v3

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 343
    :cond_2
    :try_start_1
    iput-object p1, p0, Lorg/apache/ignite/logger/java/JavaLogger;->nodeId:Ljava/util/UUID;

    .line 344
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    iget-object v2, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    const-class v3, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;

    invoke-static {v2, v3}, Lorg/apache/ignite/logger/java/JavaLogger;->findHandler(Ljava/util/logging/Logger;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;

    .line 348
    .local v1, "fileHnd":Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;
    if-eqz v1, :cond_0

    .line 352
    :try_start_2
    invoke-virtual {v1, p1}, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->nodeId(Ljava/util/UUID;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to enable file handler."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public trace(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logging at TRACE level without checking if TRACE level is enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/logger/java/JavaLogger;->warning(Ljava/lang/String;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 268
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLogger;->impl:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    return-void
.end method
