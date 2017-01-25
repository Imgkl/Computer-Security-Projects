.class public interface abstract Lorg/apache/ignite/lifecycle/LifecycleAware;
.super Ljava/lang/Object;
.source "LifecycleAware.java"


# virtual methods
.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method
