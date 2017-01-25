.class Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;
.super Ljava/lang/Object;
.source "FileSwapArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$1;,
        Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FIRST_ARRAY_SIZE:I = 0x1000

.field private static final LADDER_SIZE:I


# instance fields
.field private idx:I

.field private final ladder:[Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TX;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->$assertionsDisabled:Z

    .line 32
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->LADDER_SIZE:I

    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 44
    .local p0, "this":Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;, "Lorg/apache/ignite/spi/swapspace/file/FileSwapArray<TX;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->LADDER_SIZE:I

    new-array v0, v0, [Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->ladder:[Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->idx:I

    .line 45
    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->ladder:[Ljava/util/concurrent/atomic/AtomicReferenceArray;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->ladder:[Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v4, 0x1000

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    aput-object v3, v0, v2

    .line 47
    monitor-exit v1

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static arrayIndex(I)I
    .locals 2
    .param p0, "idx"    # I

    .prologue
    .line 110
    const/16 v0, 0x1000

    if-ge p0, v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    :cond_0
    sget v0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->LADDER_SIZE:I

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method add(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)I"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;, "Lorg/apache/ignite/spi/swapspace/file/FileSwapArray<TX;>;"
    .local p1, "x":Ljava/lang/Object;, "TX;"
    iget v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->idx:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->idx:I

    .line 66
    .local v0, "i":I
    sget-boolean v3, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-ltz v0, :cond_0

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Integer overflow"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 68
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->slot(I)Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;

    move-result-object v2

    .line 70
    .local v2, "s":Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;, "Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot<TX;>;"
    sget-boolean v3, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 72
    :cond_2
    # invokes: Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->set(Ljava/lang/Object;)V
    invoke-static {v2, p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->access$000(Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;Ljava/lang/Object;)V

    .line 74
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->arr:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->access$100(Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    .line 76
    .local v1, "len":I
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->idx:I
    invoke-static {v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->access$200(Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_3

    .line 77
    iget-object v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->ladder:[Ljava/util/concurrent/atomic/AtomicReferenceArray;

    monitor-enter v4

    .line 78
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->ladder:[Ljava/util/concurrent/atomic/AtomicReferenceArray;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->arrIdx:I
    invoke-static {v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->access$300(Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    new-instance v6, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->arrIdx:I
    invoke-static {v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;->access$300(Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;)I

    move-result v7

    if-nez v7, :cond_4

    .end local v1    # "len":I
    :goto_0
    invoke-direct {v6, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    aput-object v6, v3, v5

    .line 79
    monitor-exit v4

    .line 82
    :cond_3
    return v0

    .line 78
    .restart local v1    # "len":I
    :cond_4
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "len":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public size()I
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;, "Lorg/apache/ignite/spi/swapspace/file/FileSwapArray<TX;>;"
    iget v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->idx:I

    return v0
.end method

.method slot(I)Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;
    .locals 5
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot",
            "<TX;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;, "Lorg/apache/ignite/spi/swapspace/file/FileSwapArray<TX;>;"
    const/4 v2, 0x0

    .line 123
    sget-boolean v3, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-gtz p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 125
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->arrayIndex(I)I

    move-result v1

    .line 127
    .local v1, "arrIdx":I
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->ladder:[Ljava/util/concurrent/atomic/AtomicReferenceArray;

    aget-object v0, v3, v1

    .line 129
    .local v0, "arr":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TX;>;"
    if-nez v0, :cond_1

    .line 130
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->ladder:[Ljava/util/concurrent/atomic/AtomicReferenceArray;

    monitor-enter v3

    .line 131
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->ladder:[Ljava/util/concurrent/atomic/AtomicReferenceArray;

    aget-object v0, v4, v1

    .line 132
    monitor-exit v3

    .line 134
    if-nez v0, :cond_1

    .line 138
    .end local p1    # "idx":I
    :goto_0
    return-object v2

    .line 132
    .restart local p1    # "idx":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 138
    :cond_1
    new-instance v3, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;

    if-nez v1, :cond_2

    .end local p1    # "idx":I
    :goto_1
    invoke-direct {v3, v1, v0, p1, v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray$Slot;-><init>(ILjava/util/concurrent/atomic/AtomicReferenceArray;ILorg/apache/ignite/spi/swapspace/file/FileSwapArray$1;)V

    move-object v2, v3

    goto :goto_0

    .restart local p1    # "idx":I
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    sub-int/2addr p1, v4

    goto :goto_1
.end method

.method truncate(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 89
    .local p0, "this":Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;, "Lorg/apache/ignite/spi/swapspace/file/FileSwapArray<TX;>;"
    sget-boolean v2, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-gtz p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 91
    :cond_0
    iput p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->idx:I

    .line 93
    iget v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->idx:I

    invoke-static {v2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->arrayIndex(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 95
    .local v0, "arrIdx":I
    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->ladder:[Ljava/util/concurrent/atomic/AtomicReferenceArray;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->ladder:[Ljava/util/concurrent/atomic/AtomicReferenceArray;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    .line 96
    iget-object v3, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->ladder:[Ljava/util/concurrent/atomic/AtomicReferenceArray;

    monitor-enter v3

    :cond_1
    move v1, v0

    .line 98
    .end local v0    # "arrIdx":I
    .local v1, "arrIdx":I
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->ladder:[Ljava/util/concurrent/atomic/AtomicReferenceArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "arrIdx":I
    .restart local v0    # "arrIdx":I
    const/4 v4, 0x0

    :try_start_1
    aput-object v4, v2, v1

    .line 100
    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->ladder:[Ljava/util/concurrent/atomic/AtomicReferenceArray;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapArray;->ladder:[Ljava/util/concurrent/atomic/AtomicReferenceArray;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 101
    :cond_2
    monitor-exit v3

    .line 103
    :cond_3
    return-void

    .line 101
    .end local v0    # "arrIdx":I
    .restart local v1    # "arrIdx":I
    :catchall_0
    move-exception v2

    move v0, v1

    .end local v1    # "arrIdx":I
    .restart local v0    # "arrIdx":I
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_0
.end method
