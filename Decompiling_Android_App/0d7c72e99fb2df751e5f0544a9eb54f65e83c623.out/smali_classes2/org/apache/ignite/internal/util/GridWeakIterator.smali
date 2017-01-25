.class public Lorg/apache/ignite/internal/util/GridWeakIterator;
.super Ljava/lang/ref/WeakReference;
.source "GridWeakIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/util/Iterator",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/util/GridWeakIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridWeakIterator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Iterator;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<TT;>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/util/Iterator",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/internal/util/GridWeakIterator;, "Lorg/apache/ignite/internal/util/GridWeakIterator<TT;>;"
    .local p1, "ref":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p2, "it":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<TT;>;"
    .local p3, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/util/Iterator<TT;>;>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 42
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridWeakIterator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridWeakIterator;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    .line 45
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/apache/ignite/internal/util/GridWeakIterator;, "Lorg/apache/ignite/internal/util/GridWeakIterator<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridWeakIterator;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    .line 54
    return-void
.end method
