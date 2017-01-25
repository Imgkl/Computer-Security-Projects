.class public interface abstract Lorg/apache/ignite/services/ServiceContext;
.super Ljava/lang/Object;
.source "ServiceContext.java"

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

.method public abstract executionId()Ljava/util/UUID;
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method
