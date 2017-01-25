.class public abstract Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;
.super Ljava/lang/Object;
.source "GridFilteredIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private hasNext:Z

.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;, "Lorg/apache/ignite/internal/util/lang/GridFilteredIterator<TT;>;"
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;->it:Ljava/util/Iterator;

    .line 42
    return-void
.end method


# virtual methods
.method protected abstract accept(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;, "Lorg/apache/ignite/internal/util/lang/GridFilteredIterator<TT;>;"
    const/4 v1, 0x1

    .line 52
    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;->hasNext:Z

    if-eqz v2, :cond_0

    .line 66
    :goto_0
    return v1

    .line 55
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;->it:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;->it:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;->accept(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;->next:Ljava/lang/Object;

    .line 60
    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;->hasNext:Z

    goto :goto_0

    .line 66
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;, "Lorg/apache/ignite/internal/util/lang/GridFilteredIterator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;->next:Ljava/lang/Object;

    .line 76
    .local v0, "res":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;->next:Ljava/lang/Object;

    .line 77
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;->hasNext:Z

    .line 79
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridFilteredIterator;, "Lorg/apache/ignite/internal/util/lang/GridFilteredIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
