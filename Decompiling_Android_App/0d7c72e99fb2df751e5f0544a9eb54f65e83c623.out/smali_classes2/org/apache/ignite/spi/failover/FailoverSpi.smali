.class public interface abstract Lorg/apache/ignite/spi/failover/FailoverSpi;
.super Ljava/lang/Object;
.source "FailoverSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpi;


# virtual methods
.method public abstract failover(Lorg/apache/ignite/spi/failover/FailoverContext;Ljava/util/List;)Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/spi/failover/FailoverContext;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation
.end method
