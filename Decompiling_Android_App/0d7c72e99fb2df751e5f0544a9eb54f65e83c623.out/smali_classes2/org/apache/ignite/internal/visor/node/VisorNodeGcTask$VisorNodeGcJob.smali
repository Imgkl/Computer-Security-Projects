.class Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask$VisorNodeGcJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorNodeGcTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorNodeGcJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Ljava/lang/Void;",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/lang/Void;Z)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Void;
    .param p2, "debug"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Void;ZLorg/apache/ignite/internal/visor/node/VisorNodeGcTask$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Void;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask$1;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask$VisorNodeGcJob;-><init>(Ljava/lang/Void;Z)V

    return-void
.end method

.method private freeHeap(Lorg/apache/ignite/cluster/ClusterNode;)J
    .locals 6
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 88
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v0

    .line 90
    .local v0, "m":Lorg/apache/ignite/cluster/ClusterMetrics;
    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryMaximum()J

    move-result-wide v2

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryUsed()J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2
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
    .line 58
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask$VisorNodeGcJob;->run(Ljava/lang/Void;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method protected run(Ljava/lang/Void;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 8
    .param p1, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v3, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask$VisorNodeGcJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteEx;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    .line 76
    .local v2, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask$VisorNodeGcJob;->freeHeap(Lorg/apache/ignite/cluster/ClusterNode;)J

    move-result-wide v0

    .line 78
    .local v0, "before":J
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 80
    new-instance v3, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask$VisorNodeGcJob;->freeHeap(Lorg/apache/ignite/cluster/ClusterNode;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorNodeGcTask$VisorNodeGcJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
