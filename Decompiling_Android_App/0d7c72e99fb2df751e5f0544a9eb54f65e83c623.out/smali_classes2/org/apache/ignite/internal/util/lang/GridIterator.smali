.class public interface abstract Lorg/apache/ignite/internal/util/lang/GridIterator;
.super Ljava/lang/Object;
.source "GridIterator.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lorg/apache/ignite/internal/util/GridSerializableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;",
        "Lorg/apache/ignite/internal/util/GridSerializableIterator",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract hasNextX()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract nextX()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract removeX()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
