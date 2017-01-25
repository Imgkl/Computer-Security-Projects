.class public interface abstract Lorg/apache/ignite/internal/cluster/ClusterGroupEx;
.super Ljava/lang/Object;
.source "ClusterGroupEx.java"

# interfaces
.implements Lorg/apache/ignite/cluster/ClusterGroup;


# virtual methods
.method public abstract forCacheNodes(Ljava/lang/String;ZZZ)Lorg/apache/ignite/cluster/ClusterGroup;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract forSubjectId(Ljava/util/UUID;)Lorg/apache/ignite/internal/cluster/ClusterGroupEx;
.end method
