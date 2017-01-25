.class public Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;
.super Ljava/lang/Object;
.source "IgfsJobImpl.java"

# interfaces
.implements Lorg/apache/ignite/compute/ComputeJob;
.implements Lorg/apache/ignite/internal/GridInternalWrapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/compute/ComputeJob;",
        "Lorg/apache/ignite/internal/GridInternalWrapper",
        "<",
        "Lorg/apache/ignite/igfs/mapreduce/IgfsJob;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private igfsName:Ljava/lang/String;

.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private job:Lorg/apache/ignite/igfs/mapreduce/IgfsJob;

.field private len:J

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private path:Lorg/apache/ignite/igfs/IgfsPath;

.field private rslvr:Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;

.field private start:J


# direct methods
.method public constructor <init>(Lorg/apache/ignite/igfs/mapreduce/IgfsJob;Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsPath;JJLorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;)V
    .locals 0
    .param p1, "job"    # Lorg/apache/ignite/igfs/mapreduce/IgfsJob;
    .param p2, "igfsName"    # Ljava/lang/String;
    .param p3, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p4, "start"    # J
    .param p6, "len"    # J
    .param p8, "rslvr"    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->job:Lorg/apache/ignite/igfs/mapreduce/IgfsJob;

    .line 73
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->igfsName:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    .line 75
    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->start:J

    .line 76
    iput-wide p6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->len:J

    .line 77
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->rslvr:Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;

    .line 78
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->job:Lorg/apache/ignite/igfs/mapreduce/IgfsJob;

    invoke-interface {v0}, Lorg/apache/ignite/igfs/mapreduce/IgfsJob;->cancel()V

    .line 111
    return-void
.end method

.method public execute()Ljava/lang/Object;
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/16 v14, 0x5d

    .line 82
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->ignite:Lorg/apache/ignite/Ignite;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->igfsName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/ignite/Ignite;->fileSystem(Ljava/lang/String;)Lorg/apache/ignite/IgniteFileSystem;

    move-result-object v9

    .line 84
    .local v9, "fs":Lorg/apache/ignite/IgniteFileSystem;
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-interface {v9, v1}, Lorg/apache/ignite/IgniteFileSystem;->open(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .local v10, "in":Lorg/apache/ignite/igfs/IgfsInputStream;
    const/4 v13, 0x0

    .line 85
    :try_start_1
    new-instance v0, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->start:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->len:J

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;-><init>(Lorg/apache/ignite/igfs/IgfsPath;JJ)V

    .line 87
    .local v0, "split":Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->rslvr:Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;

    if-eqz v1, :cond_3

    .line 88
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->rslvr:Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;

    invoke-interface {v1, v9, v10, v0}, Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;->resolveRecords(Lorg/apache/ignite/IgniteFileSystem;Lorg/apache/ignite/igfs/IgfsInputStream;Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;)Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;

    move-result-object v0

    .line 90
    if-nez v0, :cond_3

    .line 91
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No data found for split on local node after resolver is applied [igfsName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->igfsName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->start:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->len:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    if-eqz v10, :cond_0

    if-eqz v12, :cond_2

    :try_start_2
    invoke-virtual {v10}, Lorg/apache/ignite/igfs/IgfsInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    move-object v1, v12

    :cond_1
    :goto_1
    return-object v1

    :catch_0
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 102
    .end local v0    # "split":Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;
    .end local v10    # "in":Lorg/apache/ignite/igfs/IgfsInputStream;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v8

    .line 103
    .local v8, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute IGFS job for file split [igfsName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->igfsName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->start:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->len:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 101
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v0    # "split":Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;
    .restart local v10    # "in":Lorg/apache/ignite/igfs/IgfsInputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v10}, Lorg/apache/ignite/igfs/IgfsInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 98
    :cond_3
    :try_start_5
    invoke-virtual {v0}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->start()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Lorg/apache/ignite/igfs/IgfsInputStream;->seek(J)V

    .line 100
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->job:Lorg/apache/ignite/igfs/mapreduce/IgfsJob;

    new-instance v2, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->start()J

    move-result-wide v4

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->length()J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;-><init>(Lorg/apache/ignite/igfs/IgfsPath;JJ)V

    invoke-interface {v1, v9, v2, v10}, Lorg/apache/ignite/igfs/mapreduce/IgfsJob;->execute(Lorg/apache/ignite/IgniteFileSystem;Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;Lorg/apache/ignite/igfs/IgfsInputStream;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    .line 101
    if-eqz v10, :cond_1

    if-eqz v12, :cond_4

    :try_start_6
    invoke-virtual {v10}, Lorg/apache/ignite/igfs/IgfsInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_2
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v10}, Lorg/apache/ignite/igfs/IgfsInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 84
    .end local v0    # "split":Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;
    :catch_3
    move-exception v1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 101
    :catchall_0
    move-exception v2

    move-object v12, v1

    move-object v1, v2

    :goto_2
    if-eqz v10, :cond_5

    if-eqz v12, :cond_6

    :try_start_9
    invoke-virtual {v10}, Lorg/apache/ignite/igfs/IgfsInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_5
    :goto_3
    :try_start_a
    throw v1

    :catch_4
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v12, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v10}, Lorg/apache/ignite/igfs/IgfsInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2
.end method

.method public bridge synthetic userObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->userObject()Lorg/apache/ignite/igfs/mapreduce/IgfsJob;

    move-result-object v0

    return-object v0
.end method

.method public userObject()Lorg/apache/ignite/igfs/mapreduce/IgfsJob;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;->job:Lorg/apache/ignite/igfs/mapreduce/IgfsJob;

    return-object v0
.end method
