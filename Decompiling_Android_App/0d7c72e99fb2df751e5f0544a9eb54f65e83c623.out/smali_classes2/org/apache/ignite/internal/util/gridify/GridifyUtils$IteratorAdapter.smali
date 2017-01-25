.class Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter;
.super Ljava/lang/Object;
.source "GridifyUtils.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/gridify/GridifyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IteratorAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private col:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end field

.field private transient iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "this":Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter;, "Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter<TT;>;"
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-object p1, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter;->col:Ljava/util/Collection;

    .line 481
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter;->iter:Ljava/util/Iterator;

    .line 482
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    .local p0, "this":Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter;, "Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter<TT;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 510
    iget-object v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter;->col:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter;->iter:Ljava/util/Iterator;

    .line 511
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    .local p0, "this":Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter;, "Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter<TT;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 520
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 486
    .local p0, "this":Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter;, "Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 491
    .local p0, "this":Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter;, "Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 496
    .local p0, "this":Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter;, "Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$IteratorAdapter;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 497
    return-void
.end method
