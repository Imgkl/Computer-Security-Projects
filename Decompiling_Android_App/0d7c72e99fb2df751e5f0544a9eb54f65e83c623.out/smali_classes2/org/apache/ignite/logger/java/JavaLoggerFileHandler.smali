.class public final Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;
.super Ljava/util/logging/StreamHandler;
.source "JavaLoggerFileHandler.java"


# static fields
.field private static final manager:Ljava/util/logging/LogManager;


# instance fields
.field private volatile delegate:Ljava/util/logging/FileHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->manager:Ljava/util/logging/LogManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    return-void
.end method

.method private getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dfltVal"    # Z

    .prologue
    .line 170
    sget-object v1, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v1, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 183
    .end local p2    # "dfltVal":Z
    :cond_0
    :goto_0
    return p2

    .line 175
    .restart local p2    # "dfltVal":Z
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    .line 180
    :cond_3
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    :cond_4
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private getIntProperty(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dfltVal"    # I

    .prologue
    .line 146
    sget-object v2, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v2, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "val":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 157
    .end local p2    # "dfltVal":I
    :goto_0
    return p2

    .line 152
    .restart local p2    # "dfltVal":I
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static logDirectory()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 135
    sget-object v0, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_LOG_DIR:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_LOG_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveWorkDirectory(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->delegate:Ljava/util/logging/FileHandler;

    .line 62
    .local v0, "delegate0":Ljava/util/logging/FileHandler;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/util/logging/FileHandler;->close()V

    .line 64
    :cond_0
    return-void
.end method

.method public fileName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->delegate:Ljava/util/logging/FileHandler;

    invoke-static {v0}, Lorg/apache/ignite/logger/java/JavaLogger;->fileName(Ljava/util/logging/FileHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->delegate:Ljava/util/logging/FileHandler;

    .line 53
    .local v0, "delegate0":Ljava/util/logging/FileHandler;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Ljava/util/logging/FileHandler;->flush()V

    .line 55
    :cond_0
    return-void
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->delegate:Ljava/util/logging/FileHandler;

    .line 71
    .local v0, "delegate0":Ljava/util/logging/FileHandler;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/logging/FileHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nodeId(Ljava/util/UUID;)V
    .locals 11
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 80
    iget-object v6, p0, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->delegate:Ljava/util/logging/FileHandler;

    if-eqz v6, :cond_0

    .line 118
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "clsName":Ljava/lang/String;
    sget-object v6, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->manager:Ljava/util/logging/LogManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".pattern"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "ptrn":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 88
    const-string v5, "ignite-%{id8}.%g.log"

    .line 90
    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->logDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "%{id8}"

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".limit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v10}, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->getIntProperty(Ljava/lang/String;I)I

    move-result v4

    .line 94
    .local v4, "limit":I
    if-gez v4, :cond_2

    .line 95
    const/4 v4, 0x0

    .line 97
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".count"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->getIntProperty(Ljava/lang/String;I)I

    move-result v2

    .line 99
    .local v2, "cnt":I
    if-gtz v2, :cond_3

    .line 100
    const/4 v2, 0x1

    .line 102
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".append"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v10}, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 106
    .local v0, "append":Z
    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->delegate:Ljava/util/logging/FileHandler;

    if-eqz v6, :cond_4

    .line 108
    monitor-exit p0

    goto/16 :goto_0

    .line 111
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 110
    :cond_4
    :try_start_1
    new-instance v3, Ljava/util/logging/FileHandler;

    invoke-direct {v3, v5, v4, v2, v0}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    .local v3, "delegate0":Ljava/util/logging/FileHandler;
    iput-object v3, p0, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->delegate:Ljava/util/logging/FileHandler;

    .line 111
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-virtual {p0}, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->getLevel()Ljava/util/logging/Level;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/logging/FileHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 114
    invoke-virtual {p0}, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 115
    invoke-virtual {p0}, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->getEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/logging/FileHandler;->setEncoding(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/logging/FileHandler;->setFilter(Ljava/util/logging/Filter;)V

    .line 117
    invoke-virtual {p0}, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/logging/FileHandler;->setErrorManager(Ljava/util/logging/ErrorManager;)V

    goto/16 :goto_0
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 1
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;->delegate:Ljava/util/logging/FileHandler;

    .line 44
    .local v0, "delegate0":Ljava/util/logging/FileHandler;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, p1}, Ljava/util/logging/FileHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 46
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const-class v0, Lorg/apache/ignite/logger/java/JavaLoggerFileHandler;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
