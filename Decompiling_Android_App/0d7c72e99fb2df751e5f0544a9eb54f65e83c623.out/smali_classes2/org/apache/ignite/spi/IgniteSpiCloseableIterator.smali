.class public interface abstract Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
.super Ljava/lang/Object;
.source "IgniteSpiCloseableIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/AutoCloseable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;",
        "Ljava/lang/AutoCloseable;",
        "Ljava/io/Serializable;"
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
