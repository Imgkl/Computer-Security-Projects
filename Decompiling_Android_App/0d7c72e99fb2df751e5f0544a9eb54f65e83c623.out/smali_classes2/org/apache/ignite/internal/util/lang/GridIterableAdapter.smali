.class public Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;
.super Ljava/lang/Object;
.source "GridIterableAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridIterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/lang/GridIterableAdapter$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/lang/GridIterable",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private impl:Lorg/apache/ignite/internal/util/lang/GridIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/lang/GridIterator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;, "Lorg/apache/ignite/internal/util/lang/GridIterableAdapter<TT;>;"
    .local p1, "impl":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "impl"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p1, Lorg/apache/ignite/internal/util/lang/GridIterator;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/ignite/internal/util/lang/GridIterator;

    .end local p1    # "impl":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;->impl:Lorg/apache/ignite/internal/util/lang/GridIterator;

    .line 44
    return-void

    .line 43
    .restart local p1    # "impl":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter$IteratorWrapper;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter$IteratorWrapper;-><init>(Ljava/util/Iterator;)V

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;, "Lorg/apache/ignite/internal/util/lang/GridIterableAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;->impl:Lorg/apache/ignite/internal/util/lang/GridIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNextX()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;, "Lorg/apache/ignite/internal/util/lang/GridIterableAdapter<TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;, "Lorg/apache/ignite/internal/util/lang/GridIterableAdapter<TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;->iterator()Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/apache/ignite/internal/util/lang/GridIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/lang/GridIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;, "Lorg/apache/ignite/internal/util/lang/GridIterableAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;->impl:Lorg/apache/ignite/internal/util/lang/GridIterator;

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;, "Lorg/apache/ignite/internal/util/lang/GridIterableAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;->impl:Lorg/apache/ignite/internal/util/lang/GridIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextX()Ljava/lang/Object;
    .locals 1
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

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;, "Lorg/apache/ignite/internal/util/lang/GridIterableAdapter<TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;, "Lorg/apache/ignite/internal/util/lang/GridIterableAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;->impl:Lorg/apache/ignite/internal/util/lang/GridIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridIterator;->remove()V

    .line 74
    return-void
.end method

.method public removeX()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;, "Lorg/apache/ignite/internal/util/lang/GridIterableAdapter<TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;->remove()V

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;, "Lorg/apache/ignite/internal/util/lang/GridIterableAdapter<TT;>;"
    const-class v0, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
