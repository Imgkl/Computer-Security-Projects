.class public abstract Lorg/apache/ignite/stream/StreamVisitor;
.super Ljava/lang/Object;
.source "StreamVisitor.java"

# interfaces
.implements Lorg/apache/ignite/stream/StreamReceiver;
.implements Lorg/apache/ignite/lang/IgniteBiInClosure;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/stream/StreamReceiver",
        "<TK;TV;>;",
        "Lorg/apache/ignite/lang/IgniteBiInClosure",
        "<",
        "Lorg/apache/ignite/IgniteCache",
        "<TK;TV;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    .local p0, "this":Lorg/apache/ignite/stream/StreamVisitor;, "Lorg/apache/ignite/stream/StreamVisitor<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/lang/IgniteBiInClosure;)Lorg/apache/ignite/stream/StreamVisitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lorg/apache/ignite/stream/StreamVisitor",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Lorg/apache/ignite/IgniteCache<TK;TV;>;Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lorg/apache/ignite/stream/StreamVisitor$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/stream/StreamVisitor$1;-><init>(Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    return-object v0
.end method


# virtual methods
.method public receive(Lorg/apache/ignite/IgniteCache;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lorg/apache/ignite/stream/StreamVisitor;, "Lorg/apache/ignite/stream/StreamVisitor<TK;TV;>;"
    .local p1, "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    .local p2, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/stream/StreamVisitor;->apply(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-void
.end method
