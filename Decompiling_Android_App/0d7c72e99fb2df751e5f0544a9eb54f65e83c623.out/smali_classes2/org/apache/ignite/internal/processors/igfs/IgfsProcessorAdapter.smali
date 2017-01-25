.class public abstract Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "IgfsProcessorAdapter.java"


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 42
    return-void
.end method


# virtual methods
.method public abstract createJob(Lorg/apache/ignite/igfs/mapreduce/IgfsJob;Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsPath;JJLorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;)Lorg/apache/ignite/compute/ComputeJob;
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract endpoints(Ljava/lang/String;)Ljava/util/Collection;
    .param p1    # Ljava/lang/String;
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
.end method

.method public abstract igfs(Ljava/lang/String;)Lorg/apache/ignite/IgniteFileSystem;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract igfss()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/IgniteFileSystem;",
            ">;"
        }
    .end annotation
.end method
