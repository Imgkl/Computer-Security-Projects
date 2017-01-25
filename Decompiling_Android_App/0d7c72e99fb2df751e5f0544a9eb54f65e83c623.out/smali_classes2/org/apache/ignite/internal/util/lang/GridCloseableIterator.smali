.class public interface abstract Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
.super Ljava/lang/Object;
.source "GridCloseableIterator.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridIterator;
.implements Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/lang/GridIterator",
        "<TT;>;",
        "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator",
        "<TT;>;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract isClosed()Z
.end method
