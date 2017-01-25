.class final Lorg/apache/ignite/stream/StreamVisitor$1;
.super Lorg/apache/ignite/stream/StreamVisitor;
.source "StreamVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/stream/StreamVisitor;->from(Lorg/apache/ignite/lang/IgniteBiInClosure;)Lorg/apache/ignite/stream/StreamVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/stream/StreamVisitor",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$c:Lorg/apache/ignite/lang/IgniteBiInClosure;


# direct methods
.method constructor <init>(Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lorg/apache/ignite/stream/StreamVisitor$1;->val$c:Lorg/apache/ignite/lang/IgniteBiInClosure;

    invoke-direct {p0}, Lorg/apache/ignite/stream/StreamVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lorg/apache/ignite/IgniteCache;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map$Entry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/stream/StreamVisitor$1;->apply(Lorg/apache/ignite/IgniteCache;Ljava/util/Map$Entry;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/IgniteCache;Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/stream/StreamVisitor$1;->val$c:Lorg/apache/ignite/lang/IgniteBiInClosure;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/lang/IgniteBiInClosure;->apply(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    return-void
.end method
