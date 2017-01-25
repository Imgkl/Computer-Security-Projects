.class public interface abstract Lorg/apache/ignite/internal/processors/cache/query/QueryCursorEx;
.super Ljava/lang/Object;
.source "QueryCursorEx.java"

# interfaces
.implements Lorg/apache/ignite/cache/query/QueryCursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/query/QueryCursorEx$Consumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/cache/query/QueryCursor",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getAll(Lorg/apache/ignite/internal/processors/cache/query/QueryCursorEx$Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/QueryCursorEx$Consumer",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
