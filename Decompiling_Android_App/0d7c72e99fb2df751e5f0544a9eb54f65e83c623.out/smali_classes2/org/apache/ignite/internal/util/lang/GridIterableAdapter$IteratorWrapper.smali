.class Lorg/apache/ignite/internal/util/lang/GridIterableAdapter$IteratorWrapper;
.super Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;
.source "GridIterableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/lang/GridIterableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IteratorWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIterableAdapter$IteratorWrapper;, "Lorg/apache/ignite/internal/util/lang/GridIterableAdapter$IteratorWrapper<TT;>;"
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter$IteratorWrapper;->it:Ljava/util/Iterator;

    .line 103
    return-void
.end method


# virtual methods
.method public hasNextX()Z
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIterableAdapter$IteratorWrapper;, "Lorg/apache/ignite/internal/util/lang/GridIterableAdapter$IteratorWrapper<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter$IteratorWrapper;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextX()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIterableAdapter$IteratorWrapper;, "Lorg/apache/ignite/internal/util/lang/GridIterableAdapter$IteratorWrapper<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter$IteratorWrapper;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeX()V
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIterableAdapter$IteratorWrapper;, "Lorg/apache/ignite/internal/util/lang/GridIterableAdapter$IteratorWrapper<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridIterableAdapter$IteratorWrapper;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 118
    return-void
.end method
