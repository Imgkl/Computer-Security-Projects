.class public interface abstract Lorg/apache/ignite/cluster/ClusterNode;
.super Ljava/lang/Object;
.source "ClusterNode.java"


# virtual methods
.method public abstract addresses()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract attribute(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract attributes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract consistentId()Ljava/lang/Object;
.end method

.method public abstract hostNames()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract id()Ljava/util/UUID;
.end method

.method public abstract isClient()Z
.end method

.method public abstract isDaemon()Z
.end method

.method public abstract isLocal()Z
.end method

.method public abstract metrics()Lorg/apache/ignite/cluster/ClusterMetrics;
.end method

.method public abstract order()J
.end method

.method public abstract version()Lorg/apache/ignite/lang/IgniteProductVersion;
.end method
