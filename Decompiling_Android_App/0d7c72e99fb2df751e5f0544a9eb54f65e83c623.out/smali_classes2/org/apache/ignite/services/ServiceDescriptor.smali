.class public interface abstract Lorg/apache/ignite/services/ServiceDescriptor;
.super Ljava/lang/Object;
.source "ServiceDescriptor.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract affinityKey()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()TK;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract cacheName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract maxPerNodeCount()I
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract originNodeId()Ljava/util/UUID;
.end method

.method public abstract serviceClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/services/Service;",
            ">;"
        }
    .end annotation
.end method

.method public abstract topologySnapshot()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract totalCount()I
.end method
