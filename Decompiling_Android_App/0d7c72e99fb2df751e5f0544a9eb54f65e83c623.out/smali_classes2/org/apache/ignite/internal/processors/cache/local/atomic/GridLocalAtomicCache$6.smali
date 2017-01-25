.class Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$6;
.super Ljava/lang/Object;
.source "GridLocalAtomicCache.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;->invokeAllAsync(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<TK;",
        "Ljavax/cache/processor/EntryProcessor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

.field final synthetic val$entryProcessor:Ljavax/cache/processor/EntryProcessor;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;Ljavax/cache/processor/EntryProcessor;)V
    .locals 0

    .prologue
    .line 749
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$6;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.6;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$6;->this$0:Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$6;->val$entryProcessor:Ljavax/cache/processor/EntryProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 749
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$6;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.6;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$6;->apply(Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessor;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljavax/cache/processor/EntryProcessor;"
        }
    .end annotation

    .prologue
    .line 751
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$6;, "Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache.6;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/local/atomic/GridLocalAtomicCache$6;->val$entryProcessor:Ljavax/cache/processor/EntryProcessor;

    return-object v0
.end method
