.class Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerClearTask$VisorIgfsProfilerClearJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorIgfsProfilerClearTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerClearTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorIgfsProfilerClearJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Ljava/lang/String;",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "debug"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerClearTask$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerClearTask$1;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerClearTask$VisorIgfsProfilerClearJob;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 42
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerClearTask$VisorIgfsProfilerClearJob;->run(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method protected run(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 17
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "deleted":I
    const/4 v9, 0x0

    .line 62
    .local v9, "notDeleted":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerClearTask$VisorIgfsProfilerClearJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Lorg/apache/ignite/internal/IgniteEx;->fileSystem(Ljava/lang/String;)Lorg/apache/ignite/IgniteFileSystem;

    move-result-object v5

    .line 64
    .local v5, "igfs":Lorg/apache/ignite/IgniteFileSystem;
    invoke-static {v5}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->resolveIgfsProfilerLogsDir(Lorg/apache/ignite/IgniteFileSystem;)Ljava/nio/file/Path;

    move-result-object v7

    .line 66
    .local v7, "logsDir":Ljava/nio/file/Path;
    if-eqz v7, :cond_4

    .line 67
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "glob:igfs-log-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-*.csv"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object v8

    .line 70
    .local v8, "matcher":Ljava/nio/file/PathMatcher;
    invoke-static {v7}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v2

    .local v2, "dirStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    const/4 v13, 0x0

    .line 71
    :try_start_1
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/nio/file/Path;

    .line 72
    .local v10, "p":Ljava/nio/file/Path;
    invoke-interface {v10}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v12

    if-eqz v12, :cond_0

    .line 74
    :try_start_2
    invoke-static {v10}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 76
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/nio/file/LinkOption;

    invoke-static {v10, v12}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    :try_end_2
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v12

    if-eqz v12, :cond_1

    .line 77
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 79
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v6

    .line 85
    .local v6, "io":Ljava/io/IOException;
    add-int/lit8 v9, v9, 0x1

    .line 87
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerClearTask$VisorIgfsProfilerClearJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v12}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Profiler log file was not deleted: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14, v6}, Lorg/apache/ignite/IgniteLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 70
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "io":Ljava/io/IOException;
    .end local v10    # "p":Ljava/nio/file/Path;
    :catch_1
    move-exception v12

    :try_start_4
    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    :catchall_0
    move-exception v13

    move-object/from16 v16, v13

    move-object v13, v12

    move-object/from16 v12, v16

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v13, :cond_6

    :try_start_5
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_2
    :goto_2
    :try_start_6
    throw v12
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 94
    .end local v2    # "dirStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .end local v5    # "igfs":Lorg/apache/ignite/IgniteFileSystem;
    .end local v7    # "logsDir":Ljava/nio/file/Path;
    .end local v8    # "matcher":Ljava/nio/file/PathMatcher;
    :catch_2
    move-exception v3

    .line 95
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v12, Lorg/apache/ignite/IgniteException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to clear profiler logs for IGFS: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v3}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 91
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "dirStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "igfs":Lorg/apache/ignite/IgniteFileSystem;
    .restart local v7    # "logsDir":Ljava/nio/file/Path;
    .restart local v8    # "matcher":Ljava/nio/file/PathMatcher;
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v13, :cond_5

    :try_start_7
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_5

    .line 101
    .end local v2    # "dirStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "matcher":Ljava/nio/file/PathMatcher;
    :cond_4
    :goto_4
    new-instance v12, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v12

    .line 91
    .restart local v2    # "dirStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v8    # "matcher":Ljava/nio/file/PathMatcher;
    :catch_3
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    :try_start_8
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 94
    .end local v2    # "dirStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "igfs":Lorg/apache/ignite/IgniteFileSystem;
    .end local v7    # "logsDir":Ljava/nio/file/Path;
    .end local v8    # "matcher":Ljava/nio/file/PathMatcher;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_4
    move-exception v3

    goto :goto_3

    .line 91
    .restart local v2    # "dirStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "igfs":Lorg/apache/ignite/IgniteFileSystem;
    .restart local v7    # "logsDir":Ljava/nio/file/Path;
    .restart local v8    # "matcher":Ljava/nio/file/PathMatcher;
    :cond_5
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    .line 97
    .end local v2    # "dirStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "igfs":Lorg/apache/ignite/IgniteFileSystem;
    .end local v7    # "logsDir":Ljava/nio/file/Path;
    .end local v8    # "matcher":Ljava/nio/file/PathMatcher;
    :catch_5
    move-exception v3

    .line 98
    .local v3, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v12

    throw v12

    .line 91
    .end local v3    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v2    # "dirStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v5    # "igfs":Lorg/apache/ignite/IgniteFileSystem;
    .restart local v7    # "logsDir":Ljava/nio/file/Path;
    .restart local v8    # "matcher":Ljava/nio/file/PathMatcher;
    :catch_6
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_2

    :catchall_1
    move-exception v12

    goto :goto_1

    .line 81
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v10    # "p":Ljava/nio/file/Path;
    :catch_7
    move-exception v12

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-class v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerClearTask$VisorIgfsProfilerClearJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
