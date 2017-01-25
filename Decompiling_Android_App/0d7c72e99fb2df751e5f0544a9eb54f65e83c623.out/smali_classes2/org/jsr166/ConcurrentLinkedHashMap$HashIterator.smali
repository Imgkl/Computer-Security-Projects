.class abstract Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;
.super Ljava/lang/Object;
.source "ConcurrentLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HashIterator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private lastReturned:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private modCnt:I

.field private nextEntry:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jsr166/ConcurrentLinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1782
    const-class v0, Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/jsr166/ConcurrentLinkedHashMap;Z)V
    .locals 2
    .param p2, "asc"    # Z

    .prologue
    .line 1798
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.HashIterator;"
    iput-object p1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1800
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->qPlc:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;
    invoke-static {p1}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$000(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    move-result-object v0

    sget-object v1, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->SINGLE_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    if-eq v0, v1, :cond_0

    .line 1801
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterators are not supported in \'perSegmentQueue\' modes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1803
    :cond_0
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->modCnt:Lorg/jsr166/LongAdder8;
    invoke-static {p1}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$700(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/LongAdder8;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->intValue()I

    move-result v0

    iput v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->modCnt:I

    .line 1806
    if-eqz p2, :cond_1

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->entryQ:Lorg/jsr166/ConcurrentLinkedDeque8;
    invoke-static {p1}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$1100(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/ConcurrentLinkedDeque8;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->delegate:Ljava/util/Iterator;

    .line 1808
    invoke-direct {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->advance()V

    .line 1809
    return-void

    .line 1806
    :cond_1
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->entryQ:Lorg/jsr166/ConcurrentLinkedDeque8;
    invoke-static {p1}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$1100(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/ConcurrentLinkedDeque8;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method private advance()V
    .locals 3

    .prologue
    .line 1873
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.HashIterator;"
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->nextEntry:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .line 1875
    :cond_0
    iget-object v1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->delegate:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1876
    iget-object v1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->delegate:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .line 1878
    .local v0, "n":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->modCnt:I
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$800(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v1

    iget v2, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->modCnt:I

    if-gt v1, v2, :cond_0

    .line 1879
    iput-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->nextEntry:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .line 1884
    .end local v0    # "n":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_1
    return-void
.end method

.method private copyQueue()Ljava/util/Deque;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque",
            "<",
            "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1815
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.HashIterator;"
    iget-object v4, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->entryQ:Lorg/jsr166/ConcurrentLinkedDeque8;
    invoke-static {v4}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$1100(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/ConcurrentLinkedDeque8;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v0

    .line 1817
    .local v0, "i":I
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 1819
    .local v3, "res":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;>;"
    iget-object v4, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->entryQ:Lorg/jsr166/ConcurrentLinkedDeque8;
    invoke-static {v4}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$1100(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/ConcurrentLinkedDeque8;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsr166/ConcurrentLinkedDeque8;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1821
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    if-ltz v0, :cond_0

    .line 1822
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_0
    move v0, v1

    .line 1824
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    sget-boolean v4, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Entries queue has been modified."

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1826
    :cond_2
    return-object v3
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 1833
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.HashIterator;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1840
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->nextEntry:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nextEntry()Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1847
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->nextEntry:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    if-nez v0, :cond_0

    .line 1848
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1850
    :cond_0
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->nextEntry:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    iput-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->lastReturned:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .line 1852
    invoke-direct {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->advance()V

    .line 1854
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->lastReturned:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1861
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->lastReturned:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    if-nez v0, :cond_0

    .line 1862
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1864
    :cond_0
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    iget-object v1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->lastReturned:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {v1}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$300(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentLinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$HashIterator;->lastReturned:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .line 1867
    return-void
.end method
