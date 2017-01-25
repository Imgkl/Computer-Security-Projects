.class public Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "ClusterProcessor.java"


# instance fields
.field private cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 37
    new-instance v0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    .line 38
    return-void
.end method


# virtual methods
.method public get()Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;->cluster:Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    return-object v0
.end method
