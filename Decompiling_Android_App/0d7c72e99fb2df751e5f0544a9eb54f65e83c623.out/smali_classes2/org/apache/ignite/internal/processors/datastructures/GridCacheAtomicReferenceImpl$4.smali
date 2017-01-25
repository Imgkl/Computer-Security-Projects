.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$4;
.super Ljava/lang/Object;
.source "GridCacheAtomicReferenceImpl.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->wrapperClosure(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteClosure",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

.field final synthetic val$val:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 207
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$4;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl.4;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$4;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$4;->val$val:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$4;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl.4;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$4;->val$val:Ljava/lang/Object;

    return-object v0
.end method
