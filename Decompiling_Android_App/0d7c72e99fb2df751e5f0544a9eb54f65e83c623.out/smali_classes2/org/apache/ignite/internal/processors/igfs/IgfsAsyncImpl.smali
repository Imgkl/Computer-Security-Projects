.class public Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;
.super Lorg/apache/ignite/internal/AsyncSupportAdapter;
.source "IgfsAsyncImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/igfs/IgfsEx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/AsyncSupportAdapter",
        "<",
        "Lorg/apache/ignite/IgniteFileSystem;",
        ">;",
        "Lorg/apache/ignite/internal/processors/igfs/IgfsEx;"
    }
.end annotation


# instance fields
.field private final igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)V
    .locals 1
    .param p1, "igfs"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/AsyncSupportAdapter;-><init>(Z)V

    .line 46
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    .line 47
    return-void
.end method


# virtual methods
.method public affinity(Lorg/apache/ignite/igfs/IgfsPath;JJ)Ljava/util/Collection;
    .locals 6
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "start"    # J
    .param p4, "len"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "JJ)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsBlockLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->affinity(Lorg/apache/ignite/igfs/IgfsPath;JJ)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public affinity(Lorg/apache/ignite/igfs/IgfsPath;JJJ)Ljava/util/Collection;
    .locals 8
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "start"    # J
    .param p4, "len"    # J
    .param p6, "maxLen"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "JJJ)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsBlockLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->affinity(Lorg/apache/ignite/igfs/IgfsPath;JJJ)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/apache/ignite/igfs/IgfsPath;IZLjava/util/Map;)Lorg/apache/ignite/igfs/IgfsOutputStream;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "bufSize"    # I
    .param p3, "create"    # Z
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "IZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/igfs/IgfsOutputStream;"
        }
    .end annotation

    .prologue
    .line 230
    .local p4, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->append(Lorg/apache/ignite/igfs/IgfsPath;IZLjava/util/Map;)Lorg/apache/ignite/igfs/IgfsOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/apache/ignite/igfs/IgfsPath;Z)Lorg/apache/ignite/igfs/IgfsOutputStream;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "create"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->append(Lorg/apache/ignite/igfs/IgfsPath;Z)Lorg/apache/ignite/igfs/IgfsOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public asSecondary()Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->asSecondary()Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v0

    return-object v0
.end method

.method public awaitDeletesAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->awaitDeletesAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public clientLogDirectory()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->clientLogDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clientLogDirectory(Ljava/lang/String;)V
    .locals 1
    .param p1, "logDir"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->clientLogDirectory(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public context()Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->context()Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    move-result-object v0

    return-object v0
.end method

.method public create(Lorg/apache/ignite/igfs/IgfsPath;IZIJLjava/util/Map;)Lorg/apache/ignite/igfs/IgfsOutputStream;
    .locals 9
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "bufSize"    # I
    .param p3, "overwrite"    # Z
    .param p4, "replication"    # I
    .param p5, "blockSize"    # J
    .param p7    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "IZIJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/igfs/IgfsOutputStream;"
        }
    .end annotation

    .prologue
    .line 213
    .local p7, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->create(Lorg/apache/ignite/igfs/IgfsPath;IZIJLjava/util/Map;)Lorg/apache/ignite/igfs/IgfsOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public create(Lorg/apache/ignite/igfs/IgfsPath;IZLorg/apache/ignite/lang/IgniteUuid;IJLjava/util/Map;)Lorg/apache/ignite/igfs/IgfsOutputStream;
    .locals 10
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "bufSize"    # I
    .param p3, "overwrite"    # Z
    .param p4, "affKey"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "replication"    # I
    .param p6, "blockSize"    # J
    .param p8    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "IZ",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/igfs/IgfsOutputStream;"
        }
    .end annotation

    .prologue
    .line 219
    .local p8, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->create(Lorg/apache/ignite/igfs/IgfsPath;IZLorg/apache/ignite/lang/IgniteUuid;IJLjava/util/Map;)Lorg/apache/ignite/igfs/IgfsOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public create(Lorg/apache/ignite/igfs/IgfsPath;Z)Lorg/apache/ignite/igfs/IgfsOutputStream;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "overwrite"    # Z

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->create(Lorg/apache/ignite/igfs/IgfsPath;Z)Lorg/apache/ignite/igfs/IgfsOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lorg/apache/ignite/igfs/IgfsPath;Z)Z
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "recursive"    # Z

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delete(Lorg/apache/ignite/igfs/IgfsPath;Z)Z

    move-result v0

    return v0
.end method

.method public evictExclude(Lorg/apache/ignite/igfs/IgfsPath;Z)Z
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "primary"    # Z

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->evictExclude(Lorg/apache/ignite/igfs/IgfsPath;Z)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/Class;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p2, "rslvr"    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsTask",
            "<TT;TR;>;>;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;TT;)TR;"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/igfs/mapreduce/IgfsTask<TT;TR;>;>;"
    .local p3, "paths":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    .local p4, "arg":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->executeAsync(Ljava/lang/Class;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public execute(Ljava/lang/Class;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;ZJLjava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p2, "rslvr"    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "skipNonExistentFiles"    # Z
    .param p5, "maxRangeLen"    # J
    .param p7    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsTask",
            "<TT;TR;>;>;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;ZJTT;)TR;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/igfs/mapreduce/IgfsTask<TT;TR;>;>;"
    .local p3, "paths":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    .local p7, "arg":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->executeAsync(Ljava/lang/Class;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;ZJLjava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public execute(Lorg/apache/ignite/igfs/mapreduce/IgfsTask;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p2, "rslvr"    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsTask",
            "<TT;TR;>;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;TT;)TR;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "task":Lorg/apache/ignite/igfs/mapreduce/IgfsTask;, "Lorg/apache/ignite/igfs/mapreduce/IgfsTask<TT;TR;>;"
    .local p3, "paths":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    .local p4, "arg":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->executeAsync(Lorg/apache/ignite/igfs/mapreduce/IgfsTask;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public execute(Lorg/apache/ignite/igfs/mapreduce/IgfsTask;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;ZJLjava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p2, "rslvr"    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "skipNonExistentFiles"    # Z
    .param p5, "maxRangeLen"    # J
    .param p7    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsTask",
            "<TT;TR;>;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;ZJTT;)TR;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "task":Lorg/apache/ignite/igfs/mapreduce/IgfsTask;, "Lorg/apache/ignite/igfs/mapreduce/IgfsTask<TT;TR;>;"
    .local p3, "paths":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsPath;>;"
    .local p7, "arg":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->executeAsync(Lorg/apache/ignite/igfs/mapreduce/IgfsTask;Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;Ljava/util/Collection;ZJLjava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public exists(Lorg/apache/ignite/igfs/IgfsPath;)Z
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 265
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->exists(Lorg/apache/ignite/igfs/IgfsPath;)Z

    move-result v0

    return v0
.end method

.method public format()V
    .locals 2

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->formatAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public globalSampling()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->globalSampling()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public globalSampling(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->globalSampling(Ljava/lang/Boolean;)V

    .line 143
    return-void
.end method

.method public globalSpace()Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->globalSpace()Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;

    move-result-object v0

    return-object v0
.end method

.method public groupBlockSize()J
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->groupBlockSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public info(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsFile;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->info(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsFile;

    move-result-object v0

    return-object v0
.end method

.method public isProxy(Ljava/net/URI;)Z
    .locals 1
    .param p1, "path"    # Ljava/net/URI;

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->isProxy(Ljava/net/URI;)Z

    move-result v0

    return v0
.end method

.method public listFiles(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Collection;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->listFiles(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public listPaths(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Collection;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->listPaths(Lorg/apache/ignite/igfs/IgfsPath;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public localMetrics()Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->localMetrics()Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v0

    return-object v0
.end method

.method public metrics()Lorg/apache/ignite/igfs/IgfsMetrics;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->metrics()Lorg/apache/ignite/igfs/IgfsMetrics;

    move-result-object v0

    return-object v0
.end method

.method public mkdirs(Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->mkdirs(Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 286
    return-void
.end method

.method public mkdirs(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)V
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p2, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->mkdirs(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)V

    .line 291
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextAffinityKey()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->nextAffinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic open(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsInputStream;
    .locals 1
    .param p1, "x0"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->open(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic open(Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/igfs/IgfsInputStream;
    .locals 1
    .param p1, "x0"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->open(Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic open(Lorg/apache/ignite/igfs/IgfsPath;II)Lorg/apache/ignite/igfs/IgfsInputStream;
    .locals 1
    .param p1, "x0"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->open(Lorg/apache/ignite/igfs/IgfsPath;II)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;

    move-result-object v0

    return-object v0
.end method

.method public open(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->open(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;

    move-result-object v0

    return-object v0
.end method

.method public open(Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "bufSize"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->open(Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;

    move-result-object v0

    return-object v0
.end method

.method public open(Lorg/apache/ignite/igfs/IgfsPath;II)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "bufSize"    # I
    .param p3, "seqReadsBeforePrefetch"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->open(Lorg/apache/ignite/igfs/IgfsPath;II)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;

    move-result-object v0

    return-object v0
.end method

.method public proxyPaths()Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->proxyPaths()Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;

    move-result-object v0

    return-object v0
.end method

.method public rename(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 1
    .param p1, "src"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "dest"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->rename(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsPath;)V

    .line 276
    return-void
.end method

.method public resetMetrics()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->resetMetrics()V

    .line 256
    return-void
.end method

.method public setTimes(Lorg/apache/ignite/igfs/IgfsPath;JJ)V
    .locals 6
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "accessTime"    # J
    .param p4, "modificationTime"    # J

    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->setTimes(Lorg/apache/ignite/igfs/IgfsPath;JJ)V

    .line 236
    return-void
.end method

.method public size(Lorg/apache/ignite/igfs/IgfsPath;)J
    .locals 2
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 260
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->size(Lorg/apache/ignite/igfs/IgfsPath;)J

    move-result-wide v0

    return-wide v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->stop()V

    .line 107
    return-void
.end method

.method public summary(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsPathSummary;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->summary(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsPathSummary;

    move-result-object v0

    return-object v0
.end method

.method public update(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)Lorg/apache/ignite/igfs/IgfsFile;
    .locals 1
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/igfs/IgfsFile;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 270
    .local p2, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->update(Lorg/apache/ignite/igfs/IgfsPath;Ljava/util/Map;)Lorg/apache/ignite/igfs/IgfsFile;

    move-result-object v0

    return-object v0
.end method

.method public usedSpaceSize()J
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsAsyncImpl;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->usedSpaceSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic withAsync()Lorg/apache/ignite/IgniteFileSystem;
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lorg/apache/ignite/internal/AsyncSupportAdapter;->withAsync()Lorg/apache/ignite/lang/IgniteAsyncSupport;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteFileSystem;

    return-object v0
.end method
