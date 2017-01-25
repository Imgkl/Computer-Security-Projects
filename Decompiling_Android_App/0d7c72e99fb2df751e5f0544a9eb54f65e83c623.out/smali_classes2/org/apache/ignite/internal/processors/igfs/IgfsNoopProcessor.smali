.class public Lorg/apache/ignite/internal/processors/igfs/IgfsNoopProcessor;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;
.source "IgfsNoopProcessor.java"


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 42
    return-void
.end method


# virtual methods
.method public createJob(Lorg/apache/ignite/igfs/mapreduce/IgfsJob;Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsPath;JJLorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;)Lorg/apache/ignite/compute/ComputeJob;
    .locals 1
    .param p1, "job"    # Lorg/apache/ignite/igfs/mapreduce/IgfsJob;
    .param p2, "igfsName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p4, "start"    # J
    .param p6, "length"    # J
    .param p8, "recRslv"    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public endpoints(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public igfs(Ljava/lang/String;)Lorg/apache/ignite/IgniteFileSystem;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public igfss()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/IgniteFileSystem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    const-string v0, ">>>"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> IGFS processor memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsNoopProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    const-string v0, ">>>   igfsCacheSize: 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method
