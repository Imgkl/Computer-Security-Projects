.class abstract Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;
.super Ljava/lang/Object;
.source "ConcurrentLinkedDeque8.java"

# interfaces
.implements Lorg/jsr166/ConcurrentLinkedDeque8$IteratorEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentLinkedDeque8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractIter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jsr166/ConcurrentLinkedDeque8$IteratorEx",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private lastRet:Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextNode:Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jsr166/ConcurrentLinkedDeque8;


# direct methods
.method constructor <init>(Lorg/jsr166/ConcurrentLinkedDeque8;)V
    .locals 0

    .prologue
    .line 1768
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>.AbstractIter;"
    iput-object p1, p0, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->this$0:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1769
    invoke-direct {p0}, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->advance()V

    .line 1770
    return-void
.end method

.method private advance()V
    .locals 4

    .prologue
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>.AbstractIter;"
    const/4 v3, 0x0

    .line 1777
    iget-object v2, p0, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->nextNode:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    iput-object v2, p0, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->lastRet:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 1779
    iget-object v2, p0, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->nextNode:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->startNode()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    .line 1782
    .local v1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_0
    if-nez v1, :cond_1

    .line 1784
    iput-object v3, p0, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->nextNode:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 1785
    iput-object v3, p0, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->nextItem:Ljava/lang/Object;

    .line 1799
    :goto_1
    return-void

    .line 1779
    .end local v1    # "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_0
    iget-object v2, p0, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->nextNode:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    invoke-virtual {p0, v2}, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->nextNode(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    goto :goto_0

    .line 1790
    .restart local v1    # "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_1
    iget-object v0, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    .line 1792
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    .line 1793
    iput-object v1, p0, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->nextNode:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 1794
    iput-object v0, p0, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->nextItem:Ljava/lang/Object;

    goto :goto_1

    .line 1781
    :cond_2
    invoke-virtual {p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->nextNode(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1803
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>.AbstractIter;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->nextItem:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1808
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>.AbstractIter;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->nextItem:Ljava/lang/Object;

    .line 1810
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 1811
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1813
    :cond_0
    invoke-direct {p0}, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->advance()V

    .line 1815
    return-object v0
.end method

.method abstract nextNode(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;)",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1820
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>.AbstractIter;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->lastRet:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 1822
    .local v0, "l":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-nez v0, :cond_0

    .line 1823
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 1825
    :cond_0
    iget-object v1, p0, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->this$0:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v1, v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    .line 1827
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->lastRet:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 1828
    return-void
.end method

.method public removex()Z
    .locals 3

    .prologue
    .line 1832
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>.AbstractIter;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->lastRet:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 1834
    .local v0, "l":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-nez v0, :cond_0

    .line 1835
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 1837
    :cond_0
    iget-object v2, p0, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->this$0:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v2, v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v1

    .line 1839
    .local v1, "res":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;->lastRet:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 1841
    return v1
.end method

.method abstract startNode()Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation
.end method
