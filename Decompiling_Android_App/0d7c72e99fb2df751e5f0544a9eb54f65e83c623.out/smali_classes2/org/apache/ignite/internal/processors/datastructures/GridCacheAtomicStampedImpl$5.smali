.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$5;
.super Ljava/lang/Object;
.source "GridCacheAtomicStampedImpl.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->wrapperClosure(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteClosure",
        "<TN;TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

.field final synthetic val$val:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 242
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$5;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl.5;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$5;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$5;->val$val:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TN;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$5;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl.5;"
    .local p1, "e":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$5;->val$val:Ljava/lang/Object;

    return-object v0
.end method
