.class public interface abstract Lorg/apache/ignite/lang/IgniteAsyncSupport;
.super Ljava/lang/Object;
.source "IgniteAsyncSupport.java"


# virtual methods
.method public abstract future()Lorg/apache/ignite/lang/IgniteFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<TR;>;"
        }
    .end annotation
.end method

.method public abstract isAsync()Z
.end method

.method public abstract withAsync()Lorg/apache/ignite/lang/IgniteAsyncSupport;
.end method
