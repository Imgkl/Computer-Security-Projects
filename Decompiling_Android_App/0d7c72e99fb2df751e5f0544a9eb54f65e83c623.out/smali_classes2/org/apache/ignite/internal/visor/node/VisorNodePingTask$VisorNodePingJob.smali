.class Lorg/apache/ignite/internal/visor/node/VisorNodePingTask$VisorNodePingJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorNodePingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/node/VisorNodePingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorNodePingJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Ljava/util/UUID;",
        "Lorg/apache/ignite/internal/util/lang/GridTuple3",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method protected constructor <init>(Ljava/util/UUID;Z)V
    .locals 0
    .param p1, "arg"    # Ljava/util/UUID;
    .param p2, "debug"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 66
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
    .line 56
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodePingTask$VisorNodePingJob;->run(Ljava/util/UUID;)Lorg/apache/ignite/internal/util/lang/GridTuple3;

    move-result-object v0

    return-object v0
.end method

.method protected run(Ljava/util/UUID;)Lorg/apache/ignite/internal/util/lang/GridTuple3;
    .locals 8
    .param p1, "nodeToPing"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 72
    .local v0, "start":J
    new-instance v2, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    iget-object v3, p0, Lorg/apache/ignite/internal/visor/node/VisorNodePingTask$VisorNodePingJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->pingNode(Ljava/util/UUID;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/ignite/internal/util/lang/GridTuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorNodePingTask$VisorNodePingJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
