.class Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;
.super Ljava/lang/Object;
.source "GridConcurrentWeakHashSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private elem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;)V
    .locals 1

    .prologue
    .line 230
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;->this$0:Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;->this$0:Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->access$200(Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;)Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;->iter:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .line 239
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet.2;"
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;->elem:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 240
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;->iter:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;->iter:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;

    .line 245
    .local v1, "ref":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement<TE;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;->get()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_1

    .line 246
    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;->elem:Ljava/lang/Object;

    .line 255
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "ref":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement<TE;>;"
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;->elem:Ljava/lang/Object;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 251
    .restart local v1    # "ref":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement<TE;>;"
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;->this$0:Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;->access$300(Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet;)V

    goto :goto_0

    .line 255
    .end local v1    # "ref":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$WeakReferenceElement<TE;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet.2;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;->elem:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 262
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 266
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;->elem:Ljava/lang/Object;

    .line 268
    .local v0, "res":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;->elem:Ljava/lang/Object;

    .line 270
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 275
    .local p0, "this":Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;, "Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet.2;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridConcurrentWeakHashSet$2;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 276
    return-void
.end method
