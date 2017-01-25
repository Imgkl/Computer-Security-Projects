.class public Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;
.super Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;
.source "GridBoundedConcurrentOrderedSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final cnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private max:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet<TE;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_0
    iput p1, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->max:I

    .line 54
    return-void
.end method

.method public constructor <init>(ILjava/util/Collection;)V
    .locals 2
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;-><init>(Ljava/util/Collection;)V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 90
    :cond_0
    iput p1, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->max:I

    .line 91
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 2
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet<TE;>;"
    .local p2, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;-><init>(Ljava/util/Comparator;)V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_0
    iput p1, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->max:I

    .line 71
    return-void
.end method

.method public constructor <init>(ILjava/util/SortedSet;)V
    .locals 2
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/SortedSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet<TE;>;"
    .local p2, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;-><init>(Ljava/util/SortedSet;)V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 107
    :cond_0
    iput p1, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->max:I

    .line 108
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const-string v2, "e"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/GridArgumentCheck;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 119
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .local v0, "c":I
    iget v2, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->max:I

    if-le v0, v2, :cond_1

    .line 121
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->first()Ljava/lang/Object;

    move-result-object v2

    invoke-super {p0, v2}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e1":Ljava/util/NoSuchElementException;
    invoke-virtual {v1}, Ljava/util/NoSuchElementException;->printStackTrace()V

    .line 130
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Internal error in grid bounded ordered set."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 135
    .end local v1    # "e1":Ljava/util/NoSuchElementException;
    :cond_1
    const/4 v2, 0x1

    .line 138
    .end local v0    # "c":I
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->clone()Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet<TE;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->clone()Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;

    .line 159
    .local v0, "s":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet<TE;>;"
    iget v1, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->max:I

    iput v1, v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->max:I

    .line 161
    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->clone()Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 171
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet<TE;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 174
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 149
    .local p0, "this":Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;, "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet<TE;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedSet;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 151
    .local v0, "size":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .end local v0    # "size":I
    :cond_0
    return v0
.end method
