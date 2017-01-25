.class public Lorg/jsr166/ConcurrentLinkedDeque8;
.super Ljava/util/AbstractCollection;
.source "ConcurrentLinkedDeque8.java"

# interfaces
.implements Ljava/util/Deque;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsr166/ConcurrentLinkedDeque8$DescendingIter;,
        Lorg/jsr166/ConcurrentLinkedDeque8$Iter;,
        Lorg/jsr166/ConcurrentLinkedDeque8$AbstractIter;,
        Lorg/jsr166/ConcurrentLinkedDeque8$IteratorEx;,
        Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Deque",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final HOPS:I = 0x2

.field private static final NEXT_TERMINATOR:Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREV_TERMINATOR:Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final headOffset:J

.field private static final tailOffset:J


# instance fields
.field private volatile head:Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final size:Lorg/jsr166/LongAdder8;

.field private volatile tail:Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 63
    const-class v2, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lorg/jsr166/ConcurrentLinkedDeque8;->$assertionsDisabled:Z

    .line 1910
    new-instance v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    invoke-direct {v2}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;-><init>()V

    sput-object v2, Lorg/jsr166/ConcurrentLinkedDeque8;->PREV_TERMINATOR:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 1911
    sget-object v2, Lorg/jsr166/ConcurrentLinkedDeque8;->PREV_TERMINATOR:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    sget-object v3, Lorg/jsr166/ConcurrentLinkedDeque8;->PREV_TERMINATOR:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    iput-object v3, v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 1912
    new-instance v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    invoke-direct {v2}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;-><init>()V

    sput-object v2, Lorg/jsr166/ConcurrentLinkedDeque8;->NEXT_TERMINATOR:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 1913
    sget-object v2, Lorg/jsr166/ConcurrentLinkedDeque8;->NEXT_TERMINATOR:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    sget-object v3, Lorg/jsr166/ConcurrentLinkedDeque8;->NEXT_TERMINATOR:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    iput-object v3, v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 1916
    :try_start_0
    invoke-static {}, Lorg/jsr166/ConcurrentLinkedDeque8;->unsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Lorg/jsr166/ConcurrentLinkedDeque8;->UNSAFE:Lsun/misc/Unsafe;

    .line 1918
    const-class v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 1920
    .local v0, "cls":Ljava/lang/Class;
    sget-object v2, Lorg/jsr166/ConcurrentLinkedDeque8;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "head"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lorg/jsr166/ConcurrentLinkedDeque8;->headOffset:J

    .line 1921
    sget-object v2, Lorg/jsr166/ConcurrentLinkedDeque8;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "tail"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lorg/jsr166/ConcurrentLinkedDeque8;->tailOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1926
    return-void

    .line 63
    .end local v0    # "cls":Ljava/lang/Class;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1923
    .restart local v0    # "cls":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 1924
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1054
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 246
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->size:Lorg/jsr166/LongAdder8;

    .line 1055
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;-><init>()V

    iput-object v0, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->tail:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    iput-object v0, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->head:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 1056
    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1067
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 246
    new-instance v5, Lorg/jsr166/LongAdder8;

    invoke-direct {v5}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v5, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->size:Lorg/jsr166/LongAdder8;

    .line 1069
    const/4 v1, 0x0

    .local v1, "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    const/4 v4, 0x0

    .line 1071
    .local v4, "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1072
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->checkNotNull(Ljava/lang/Object;)V

    .line 1074
    new-instance v3, Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    invoke-direct {v3, v0}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;-><init>(Ljava/lang/Object;)V

    .line 1076
    .local v3, "newNode":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-nez v1, :cond_0

    .line 1077
    move-object v4, v3

    move-object v1, v3

    goto :goto_0

    .line 1079
    :cond_0
    invoke-virtual {v4, v3}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->lazySetNext(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 1080
    invoke-virtual {v3, v4}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->lazySetPrev(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 1081
    move-object v4, v3

    goto :goto_0

    .line 1085
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v3    # "newNode":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_1
    invoke-direct {p0, v1, v4}, Lorg/jsr166/ConcurrentLinkedDeque8;->initHeadTail(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 1086
    return-void
.end method

.method private casHead(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1883
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "cmp":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local p2, "val":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    sget-object v0, Lorg/jsr166/ConcurrentLinkedDeque8;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jsr166/ConcurrentLinkedDeque8;->headOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private casTail(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1894
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "cmp":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local p2, "val":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    sget-object v0, Lorg/jsr166/ConcurrentLinkedDeque8;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jsr166/ConcurrentLinkedDeque8;->tailOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static checkNotNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "v"    # Ljava/lang/Object;

    .prologue
    .line 1014
    if-nez p0, :cond_0

    .line 1015
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1016
    :cond_0
    return-void
.end method

.method private initHeadTail(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local p2, "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    const/4 v1, 0x0

    .line 1095
    if-ne p1, p2, :cond_0

    .line 1096
    if-nez p1, :cond_1

    .line 1097
    new-instance p2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .end local p2    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    invoke-direct {p2, v1}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;-><init>(Ljava/lang/Object;)V

    .restart local p2    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    move-object p1, p2

    .line 1110
    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->head:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 1111
    iput-object p2, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->tail:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 1112
    return-void

    .line 1100
    :cond_1
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    invoke-direct {v0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;-><init>(Ljava/lang/Object;)V

    .line 1102
    .local v0, "newNode":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    invoke-virtual {p2, v0}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->lazySetNext(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 1104
    invoke-virtual {v0, p2}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->lazySetPrev(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 1106
    move-object p2, v0

    goto :goto_0
.end method

.method private linkFirst(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->checkNotNull(Ljava/lang/Object;)V

    .line 374
    iget-object v5, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->size:Lorg/jsr166/LongAdder8;

    invoke-virtual {v5}, Lorg/jsr166/LongAdder8;->increment()V

    .line 376
    new-instance v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    invoke-direct {v2, p1}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;-><init>(Ljava/lang/Object;)V

    .line 380
    .local v2, "newNode":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_0
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->head:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v0, "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    move-object v3, v0

    .line 381
    .local v3, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_1
    :goto_0
    iget-object v4, v3, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v4, "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eqz v4, :cond_3

    move-object v3, v4

    iget-object v4, v4, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eqz v4, :cond_3

    .line 384
    iget-object v1, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->head:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .end local v0    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local v1, "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eq v0, v1, :cond_2

    move-object v3, v1

    :goto_1
    move-object v0, v1

    .end local v1    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v0    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    goto :goto_0

    .end local v0    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v1    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_2
    move-object v3, v4

    goto :goto_1

    .line 385
    .end local v1    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v0    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_3
    iget-object v5, v3, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eq v5, v3, :cond_0

    .line 389
    invoke-virtual {v2, v3}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->lazySetNext(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 391
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->casPrev(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 395
    if-eq v3, v0, :cond_4

    .line 396
    invoke-direct {p0, v0, v2}, Lorg/jsr166/ConcurrentLinkedDeque8;->casHead(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    .line 398
    :cond_4
    return-void
.end method

.method private linkFirstx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->checkNotNull(Ljava/lang/Object;)V

    .line 415
    iget-object v5, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->size:Lorg/jsr166/LongAdder8;

    invoke-virtual {v5}, Lorg/jsr166/LongAdder8;->increment()V

    .line 417
    new-instance v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    invoke-direct {v2, p1}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;-><init>(Ljava/lang/Object;)V

    .line 421
    .local v2, "newNode":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_0
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->head:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v0, "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    move-object v3, v0

    .line 422
    .local v3, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_1
    :goto_0
    iget-object v4, v3, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v4, "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eqz v4, :cond_3

    move-object v3, v4

    iget-object v4, v4, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eqz v4, :cond_3

    .line 425
    iget-object v1, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->head:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .end local v0    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local v1, "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eq v0, v1, :cond_2

    move-object v3, v1

    :goto_1
    move-object v0, v1

    .end local v1    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v0    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    goto :goto_0

    .end local v0    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v1    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_2
    move-object v3, v4

    goto :goto_1

    .line 426
    .end local v1    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v0    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_3
    iget-object v5, v3, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eq v5, v3, :cond_0

    .line 430
    invoke-virtual {v2, v3}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->lazySetNext(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 432
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->casPrev(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 436
    if-eq v3, v0, :cond_4

    .line 437
    invoke-direct {p0, v0, v2}, Lorg/jsr166/ConcurrentLinkedDeque8;->casHead(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    .line 439
    :cond_4
    return-object v2
.end method

.method private linkLast(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->checkNotNull(Ljava/lang/Object;)V

    .line 455
    iget-object v5, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->size:Lorg/jsr166/LongAdder8;

    invoke-virtual {v5}, Lorg/jsr166/LongAdder8;->increment()V

    .line 457
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    invoke-direct {v0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;-><init>(Ljava/lang/Object;)V

    .line 461
    .local v0, "newNode":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_0
    iget-object v3, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->tail:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v3, "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    move-object v1, v3

    .line 462
    .local v1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_1
    :goto_0
    iget-object v2, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v2, "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eqz v2, :cond_3

    move-object v1, v2

    iget-object v2, v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eqz v2, :cond_3

    .line 465
    iget-object v4, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->tail:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .end local v3    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local v4, "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eq v3, v4, :cond_2

    move-object v1, v4

    :goto_1
    move-object v3, v4

    .end local v4    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v3    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    goto :goto_0

    .end local v3    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v4    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_2
    move-object v1, v2

    goto :goto_1

    .line 466
    .end local v4    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v3    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_3
    iget-object v5, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eq v5, v1, :cond_0

    .line 470
    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->lazySetPrev(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 472
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->casNext(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 476
    if-eq v1, v3, :cond_4

    .line 477
    invoke-direct {p0, v3, v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->casTail(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    .line 479
    :cond_4
    return-void
.end method

.method private linkLast(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "n":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    invoke-static {p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->checkNotNull(Ljava/lang/Object;)V

    .line 495
    iget-object v4, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->size:Lorg/jsr166/LongAdder8;

    invoke-virtual {v4}, Lorg/jsr166/LongAdder8;->increment()V

    .line 499
    :cond_0
    iget-object v2, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->tail:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v2, "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    move-object v0, v2

    .line 500
    .local v0, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_1
    :goto_0
    iget-object v1, v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v1, "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eqz v1, :cond_3

    move-object v0, v1

    iget-object v1, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eqz v1, :cond_3

    .line 503
    iget-object v3, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->tail:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .end local v2    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local v3, "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eq v2, v3, :cond_2

    move-object v0, v3

    :goto_1
    move-object v2, v3

    .end local v3    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v2    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    goto :goto_0

    .end local v2    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v3    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 504
    .end local v3    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v2    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_3
    iget-object v4, v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eq v4, v0, :cond_0

    .line 508
    invoke-virtual {p1, v0}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->lazySetPrev(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 510
    const/4 v4, 0x0

    invoke-virtual {v0, v4, p1}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->casNext(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 514
    if-eq v0, v2, :cond_4

    .line 515
    invoke-direct {p0, v2, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->casTail(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    .line 517
    :cond_4
    return-void
.end method

.method private linkLastx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->checkNotNull(Ljava/lang/Object;)V

    .line 534
    iget-object v5, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->size:Lorg/jsr166/LongAdder8;

    invoke-virtual {v5}, Lorg/jsr166/LongAdder8;->increment()V

    .line 536
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    invoke-direct {v0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;-><init>(Ljava/lang/Object;)V

    .line 540
    .local v0, "newNode":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_0
    iget-object v3, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->tail:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v3, "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    move-object v1, v3

    .line 541
    .local v1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_1
    :goto_0
    iget-object v2, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v2, "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eqz v2, :cond_3

    move-object v1, v2

    iget-object v2, v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eqz v2, :cond_3

    .line 544
    iget-object v4, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->tail:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .end local v3    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local v4, "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eq v3, v4, :cond_2

    move-object v1, v4

    :goto_1
    move-object v3, v4

    .end local v4    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v3    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    goto :goto_0

    .end local v3    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v4    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_2
    move-object v1, v2

    goto :goto_1

    .line 545
    .end local v4    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v3    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_3
    iget-object v5, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eq v5, v1, :cond_0

    .line 549
    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->lazySetPrev(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 551
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->casNext(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 555
    if-eq v1, v3, :cond_4

    .line 556
    invoke-direct {p0, v3, v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->casTail(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    .line 558
    :cond_4
    return-object v0
.end method

.method private screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1026
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "v":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 1027
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1029
    :cond_0
    return-object p1
.end method

.method private skipDeletedPredecessors(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 852
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "x":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_0
    iget-object v1, p1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 856
    .local v1, "prev":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    move-object v0, v1

    .line 860
    .local v0, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_0
    iget-object v3, v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 878
    :cond_1
    if-eq v1, v0, :cond_2

    invoke-virtual {p1, v1, v0}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->casPrev(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 882
    :cond_2
    :goto_1
    return-void

    .line 863
    :cond_3
    iget-object v2, v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 865
    .local v2, "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-nez v2, :cond_5

    .line 866
    iget-object v3, v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-ne v3, v0, :cond_1

    .line 881
    .end local v2    # "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_4
    iget-object v3, p1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    if-nez v3, :cond_0

    iget-object v3, p1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 871
    .restart local v2    # "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_5
    if-eq v0, v2, :cond_4

    .line 874
    move-object v0, v2

    .line 875
    goto :goto_0
.end method

.method private skipDeletedSuccessors(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 890
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "x":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_0
    iget-object v0, p1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 894
    .local v0, "next":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    move-object v1, v0

    .line 899
    .local v1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_0
    iget-object v3, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 917
    :cond_1
    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->casNext(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 922
    :cond_2
    :goto_1
    return-void

    .line 902
    :cond_3
    iget-object v2, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 904
    .local v2, "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-nez v2, :cond_5

    .line 905
    iget-object v3, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-ne v3, v1, :cond_1

    .line 921
    .end local v2    # "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_4
    iget-object v3, p1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    if-nez v3, :cond_0

    iget-object v3, p1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 910
    .restart local v2    # "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_5
    if-eq v1, v2, :cond_4

    .line 913
    move-object v1, v2

    .line 914
    goto :goto_0
.end method

.method private toArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1039
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->first()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v2

    .local v2, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 1042
    iget-object v0, v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    .line 1044
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 1045
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    :cond_0
    invoke-virtual {p0, v2}, Lorg/jsr166/ConcurrentLinkedDeque8;->successor(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v2

    goto :goto_0

    .line 1048
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    return-object v1
.end method

.method private unlink(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "x":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    iget-object v7, p1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 599
    .local v7, "prev":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    iget-object v5, p1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 602
    .local v5, "next":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    iget-object v9, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->size:Lorg/jsr166/LongAdder8;

    invoke-virtual {v9}, Lorg/jsr166/LongAdder8;->decrement()V

    .line 604
    if-nez v7, :cond_1

    .line 605
    invoke-direct {p0, p1, v5}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkFirst(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    if-nez v5, :cond_2

    .line 607
    invoke-direct {p0, p1, v7}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkLast(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    goto :goto_0

    .line 632
    :cond_2
    const/4 v2, 0x1

    .line 635
    .local v2, "hops":I
    move-object v6, v7

    .line 636
    .local v6, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_1
    iget-object v9, v6, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    if-eqz v9, :cond_4

    .line 637
    move-object v0, v6

    .line 639
    .local v0, "activePred":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    const/4 v3, 0x0

    .line 663
    .local v3, "isFirst":Z
    :goto_2
    move-object v6, v5

    .line 664
    :goto_3
    iget-object v9, v6, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    if-eqz v9, :cond_6

    .line 665
    move-object v1, v6

    .line 667
    .local v1, "activeSucc":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    const/4 v4, 0x0

    .line 692
    .local v4, "isLast":Z
    :goto_4
    const/4 v9, 0x2

    if-ge v2, v9, :cond_3

    or-int v9, v3, v4

    if-nez v9, :cond_0

    .line 697
    :cond_3
    invoke-direct {p0, v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->skipDeletedSuccessors(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 698
    invoke-direct {p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->skipDeletedPredecessors(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 701
    or-int v9, v3, v4

    if-eqz v9, :cond_0

    iget-object v9, v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-ne v9, v1, :cond_0

    iget-object v9, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-ne v9, v0, :cond_0

    if-eqz v3, :cond_8

    iget-object v9, v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-nez v9, :cond_0

    :goto_5
    if-eqz v4, :cond_9

    iget-object v9, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-nez v9, :cond_0

    .line 708
    :goto_6
    invoke-direct {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->updateHead()V

    .line 709
    invoke-direct {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->updateTail()V

    .line 712
    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->prevTerminator()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v9

    :goto_7
    invoke-virtual {p1, v9}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->lazySetPrev(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 713
    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->nextTerminator()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v9

    :goto_8
    invoke-virtual {p1, v9}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->lazySetNext(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    goto :goto_0

    .line 644
    .end local v0    # "activePred":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .end local v1    # "activeSucc":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .end local v3    # "isFirst":Z
    .end local v4    # "isLast":Z
    :cond_4
    iget-object v8, v6, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 646
    .local v8, "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-nez v8, :cond_5

    .line 647
    iget-object v9, v6, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eq v9, v6, :cond_0

    .line 650
    move-object v0, v6

    .line 652
    .restart local v0    # "activePred":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    const/4 v3, 0x1

    .line 654
    .restart local v3    # "isFirst":Z
    goto :goto_2

    .line 656
    .end local v0    # "activePred":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .end local v3    # "isFirst":Z
    :cond_5
    if-eq v6, v8, :cond_0

    .line 659
    move-object v6, v8

    .line 635
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 672
    .end local v8    # "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v0    # "activePred":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v3    # "isFirst":Z
    :cond_6
    iget-object v8, v6, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 674
    .restart local v8    # "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-nez v8, :cond_7

    .line 675
    iget-object v9, v6, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eq v9, v6, :cond_0

    .line 678
    move-object v1, v6

    .line 680
    .restart local v1    # "activeSucc":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    const/4 v4, 0x1

    .line 682
    .restart local v4    # "isLast":Z
    goto :goto_4

    .line 684
    .end local v1    # "activeSucc":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .end local v4    # "isLast":Z
    :cond_7
    if-eq v6, v8, :cond_0

    .line 687
    move-object v6, v8

    .line 663
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 701
    .end local v8    # "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v1    # "activeSucc":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v4    # "isLast":Z
    :cond_8
    iget-object v9, v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    if-eqz v9, :cond_0

    goto :goto_5

    :cond_9
    iget-object v9, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    if-eqz v9, :cond_0

    goto :goto_6

    :cond_a
    move-object v9, p1

    .line 712
    goto :goto_7

    :cond_b
    move-object v9, p1

    .line 713
    goto :goto_8
.end method

.method private unlinkFirst(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 725
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "first":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local p2, "next":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    const/4 v0, 0x0

    .local v0, "o":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    move-object v1, p2

    .line 726
    .local v1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_0
    iget-object v3, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    if-nez v3, :cond_0

    iget-object v2, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v2, "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-nez v2, :cond_3

    .line 727
    .end local v2    # "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_0
    if-eqz v0, :cond_2

    iget-object v3, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eq v3, v1, :cond_2

    invoke-virtual {p1, p2, v1}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->casNext(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 728
    invoke-direct {p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->skipDeletedPredecessors(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 729
    iget-object v3, p1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-nez v3, :cond_2

    iget-object v3, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-ne v3, p1, :cond_2

    .line 733
    invoke-direct {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->updateHead()V

    .line 734
    invoke-direct {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->updateTail()V

    .line 737
    invoke-virtual {v0, v0}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->lazySetNext(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 738
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->prevTerminator()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->lazySetPrev(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 744
    :cond_2
    return-void

    .line 743
    .restart local v2    # "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_3
    if-eq v1, v2, :cond_2

    .line 746
    move-object v0, v1

    .line 747
    move-object v1, v2

    goto :goto_0
.end method

.method private unlinkLast(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 759
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "last":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local p2, "prev":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    const/4 v0, 0x0

    .local v0, "o":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    move-object v1, p2

    .line 760
    .local v1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_0
    iget-object v3, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    if-nez v3, :cond_0

    iget-object v2, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v2, "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-nez v2, :cond_3

    .line 761
    .end local v2    # "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_0
    if-eqz v0, :cond_2

    iget-object v3, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eq v3, v1, :cond_2

    invoke-virtual {p1, p2, v1}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->casPrev(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 762
    invoke-direct {p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->skipDeletedSuccessors(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 763
    iget-object v3, p1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-nez v3, :cond_2

    iget-object v3, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-ne v3, p1, :cond_2

    .line 767
    invoke-direct {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->updateHead()V

    .line 768
    invoke-direct {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->updateTail()V

    .line 771
    invoke-virtual {v0, v0}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->lazySetPrev(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 772
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->nextTerminator()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->lazySetNext(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 778
    :cond_2
    return-void

    .line 777
    .restart local v2    # "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_3
    if-eq v1, v2, :cond_2

    .line 780
    move-object v0, v1

    .line 781
    move-object v1, v2

    goto :goto_0
.end method

.method static unsafe()Lsun/misc/Unsafe;
    .locals 5

    .prologue
    .line 1933
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1937
    .local v1, "ignored":Ljava/lang/SecurityException;
    :goto_0
    return-object v2

    .line 1935
    .end local v1    # "ignored":Ljava/lang/SecurityException;
    :catch_0
    move-exception v1

    .line 1937
    .restart local v1    # "ignored":Ljava/lang/SecurityException;
    :try_start_1
    new-instance v2, Lorg/jsr166/ConcurrentLinkedDeque8$1;

    invoke-direct {v2}, Lorg/jsr166/ConcurrentLinkedDeque8$1;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1949
    :catch_1
    move-exception v0

    .line 1950
    .local v0, "e":Ljava/security/PrivilegedActionException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not initialize intrinsics."

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final updateHead()V
    .locals 4

    .prologue
    .line 798
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    :cond_0
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->head:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v0, "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    iget-object v3, v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    if-nez v3, :cond_2

    iget-object v1, v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eqz v1, :cond_2

    .line 800
    :goto_0
    iget-object v2, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v2, "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eqz v2, :cond_1

    move-object v1, v2

    iget-object v2, v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-nez v2, :cond_3

    .line 803
    :cond_1
    invoke-direct {p0, v0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->casHead(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 814
    .end local v1    # "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .end local v2    # "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_2
    return-void

    .line 808
    .restart local v1    # "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v2    # "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_3
    iget-object v3, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->head:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-ne v0, v3, :cond_0

    .line 811
    move-object v1, v2

    goto :goto_0
.end method

.method private final updateTail()V
    .locals 4

    .prologue
    .line 828
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    :cond_0
    iget-object v2, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->tail:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v2, "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    iget-object v3, v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    if-nez v3, :cond_2

    iget-object v0, v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v0, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eqz v0, :cond_2

    .line 830
    :goto_0
    iget-object v1, v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v1, "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eqz v1, :cond_1

    move-object v0, v1

    iget-object v1, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-nez v1, :cond_3

    .line 833
    :cond_1
    invoke-direct {p0, v2, v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->casTail(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 844
    .end local v0    # "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .end local v1    # "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_2
    return-void

    .line 838
    .restart local v0    # "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v1    # "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_3
    iget-object v3, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->tail:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-ne v2, v3, :cond_0

    .line 841
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 1335
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1546
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    if-ne p1, p0, :cond_0

    .line 1548
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 1551
    :cond_0
    const/4 v0, 0x0

    .local v0, "beginningOfTheEnd":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    const/4 v3, 0x0

    .line 1553
    .local v3, "last":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    const/4 v7, 0x0

    .line 1555
    .local v7, "s":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1556
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->checkNotNull(Ljava/lang/Object;)V

    .line 1558
    new-instance v4, Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    invoke-direct {v4, v1}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;-><init>(Ljava/lang/Object;)V

    .line 1560
    .local v4, "newNode":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-nez v0, :cond_1

    .line 1561
    move-object v3, v4

    move-object v0, v4

    .line 1563
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1566
    :cond_1
    invoke-virtual {v3, v4}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->lazySetNext(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 1568
    invoke-virtual {v4, v3}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->lazySetPrev(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 1570
    move-object v3, v4

    .line 1572
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1576
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v4    # "newNode":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_2
    if-nez v0, :cond_3

    .line 1577
    const/4 v10, 0x0

    .line 1607
    :goto_1
    return v10

    .line 1579
    :cond_3
    iget-object v10, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->size:Lorg/jsr166/LongAdder8;

    int-to-long v12, v7

    invoke-virtual {v10, v12, v13}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 1584
    :cond_4
    iget-object v8, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->tail:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v8, "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    move-object v5, v8

    .line 1585
    .local v5, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_5
    :goto_2
    iget-object v6, v5, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v6, "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eqz v6, :cond_7

    move-object v5, v6

    iget-object v6, v6, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eqz v6, :cond_7

    .line 1588
    iget-object v9, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->tail:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .end local v8    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local v9, "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eq v8, v9, :cond_6

    move-object v5, v9

    :goto_3
    move-object v8, v9

    .end local v9    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v8    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    goto :goto_2

    .end local v8    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v9    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_6
    move-object v5, v6

    goto :goto_3

    .line 1589
    .end local v9    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v8    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_7
    iget-object v10, v5, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eq v10, v5, :cond_4

    .line 1593
    invoke-virtual {v0, v5}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->lazySetPrev(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 1595
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v0}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->casNext(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1598
    invoke-direct {p0, v8, v3}, Lorg/jsr166/ConcurrentLinkedDeque8;->casTail(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1601
    iget-object v8, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->tail:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 1603
    iget-object v10, v3, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-nez v10, :cond_8

    .line 1604
    invoke-direct {p0, v8, v3}, Lorg/jsr166/ConcurrentLinkedDeque8;->casTail(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    .line 1607
    :cond_8
    const/4 v10, 0x1

    goto :goto_1
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 1122
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->linkFirst(Ljava/lang/Object;)V

    .line 1123
    return-void
.end method

.method public addFirstx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1132
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->linkFirstx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v0

    return-object v0
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 1145
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->linkLast(Ljava/lang/Object;)V

    .line 1146
    return-void
.end method

.method public addLastx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1155
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->linkLastx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v0

    return-object v0
.end method

.method public addx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1345
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->offerLastx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1619
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1622
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    const/4 v2, 0x0

    .line 1450
    if-nez p1, :cond_1

    .line 1460
    :cond_0
    :goto_0
    return v2

    .line 1453
    :cond_1
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->first()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    .local v1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_1
    if-eqz v1, :cond_0

    .line 1454
    iget-object v0, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    .line 1456
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1457
    const/4 v2, 0x1

    goto :goto_0

    .line 1453
    :cond_2
    invoke-virtual {p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->successor(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    goto :goto_1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1716
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8$DescendingIter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8$DescendingIter;-><init>(Lorg/jsr166/ConcurrentLinkedDeque8;Lorg/jsr166/ConcurrentLinkedDeque8$1;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1379
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method first()Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 964
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    :cond_0
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->head:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v0, "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    move-object v2, v0

    .line 965
    .local v2, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_0
    iget-object v3, v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v3, "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eqz v3, :cond_2

    move-object v2, v3

    iget-object v3, v3, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eqz v3, :cond_2

    .line 969
    iget-object v1, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->head:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .end local v0    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local v1, "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eq v0, v1, :cond_1

    move-object v2, v1

    :goto_1
    move-object v0, v1

    .end local v1    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v0    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    goto :goto_0

    .end local v0    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v1    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_1
    move-object v2, v3

    goto :goto_1

    .line 970
    .end local v1    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v0    # "h":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_2
    if-eq v2, v0, :cond_3

    invoke-direct {p0, v0, v2}, Lorg/jsr166/ConcurrentLinkedDeque8;->casHead(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 974
    :cond_3
    return-object v2
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1251
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1258
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->peekLast()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1469
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmptyx()Z
    .locals 1

    .prologue
    .line 1481
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1698
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8$Iter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8$Iter;-><init>(Lorg/jsr166/ConcurrentLinkedDeque8;Lorg/jsr166/ConcurrentLinkedDeque8$1;)V

    return-object v0
.end method

.method last()Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 992
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    :cond_0
    iget-object v2, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->tail:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v2, "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    move-object v0, v2

    .line 993
    .local v0, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_0
    iget-object v1, v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .local v1, "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eqz v1, :cond_2

    move-object v0, v1

    iget-object v1, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    if-eqz v1, :cond_2

    .line 997
    iget-object v3, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->tail:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .end local v2    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local v3, "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-eq v2, v3, :cond_1

    move-object v0, v3

    :goto_1
    move-object v2, v3

    .end local v3    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v2    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    goto :goto_0

    .end local v2    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v3    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 998
    .end local v3    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .restart local v2    # "t":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_2
    if-eq v0, v2, :cond_3

    invoke-direct {p0, v2, v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->casTail(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1002
    :cond_3
    return-object v0
.end method

.method nextTerminator()Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    sget-object v0, Lorg/jsr166/ConcurrentLinkedDeque8;->NEXT_TERMINATOR:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 1313
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 1166
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->linkFirst(Ljava/lang/Object;)V

    .line 1168
    const/4 v0, 0x1

    return v0
.end method

.method public offerFirstx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1178
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->linkFirstx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v0

    return-object v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 1191
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->linkLast(Ljava/lang/Object;)V

    .line 1193
    const/4 v0, 0x1

    return v0
.end method

.method public offerLastx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1203
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->linkLastx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v0

    return-object v0
.end method

.method public offerx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1323
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->offerLastx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v0

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1360
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1208
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->first()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    .local v1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 1209
    iget-object v0, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    .line 1211
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 1215
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :goto_1
    return-object v0

    .line 1208
    .restart local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->successor(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    goto :goto_0

    .line 1215
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public peekFirstx()Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1225
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->first()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    .local v1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 1226
    iget-object v0, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    .line 1228
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 1232
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    .end local v1    # "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_1
    return-object v1

    .line 1225
    .restart local v0    # "item":Ljava/lang/Object;, "TE;"
    .restart local v1    # "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_0
    invoke-virtual {p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->successor(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    goto :goto_0

    .line 1232
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1237
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->last()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    .local v1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 1238
    iget-object v0, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    .line 1240
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 1244
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :goto_1
    return-object v0

    .line 1237
    .restart local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->predecessor(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    goto :goto_0

    .line 1244
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public peekx()Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1374
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->peekFirstx()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1350
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    const/4 v2, 0x0

    .line 1263
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->first()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    .local v1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 1264
    iget-object v0, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    .line 1266
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0, v2}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1267
    invoke-direct {p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlink(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 1273
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :goto_1
    return-object v0

    .line 1263
    .restart local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->successor(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    goto :goto_0

    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    move-object v0, v2

    .line 1273
    goto :goto_1
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    const/4 v2, 0x0

    .line 1278
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->last()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    .local v1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 1279
    iget-object v0, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    .line 1281
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0, v2}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1282
    invoke-direct {p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlink(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 1288
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :goto_1
    return-object v0

    .line 1278
    .restart local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->predecessor(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    goto :goto_0

    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    move-object v0, v2

    .line 1288
    goto :goto_1
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1389
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final predecessor(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;)",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 948
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    iget-object v0, p1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 949
    .local v0, "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->last()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v0

    .end local v0    # "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_0
    return-object v0
.end method

.method prevTerminator()Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    sget-object v0, Lorg/jsr166/ConcurrentLinkedDeque8;->PREV_TERMINATOR:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 1384
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->addFirst(Ljava/lang/Object;)V

    .line 1385
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1355
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1529
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-virtual {p0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1295
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1402
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-static {p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->checkNotNull(Ljava/lang/Object;)V

    .line 1404
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->first()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    .local v1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 1405
    iget-object v0, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    .line 1407
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1408
    invoke-direct {p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlink(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 1410
    const/4 v2, 0x1

    .line 1414
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :goto_1
    return v2

    .line 1404
    .restart local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->successor(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    goto :goto_0

    .line 1414
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1302
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->pollLast()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1427
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-static {p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->checkNotNull(Ljava/lang/Object;)V

    .line 1429
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->last()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    .local v1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 1430
    iget-object v0, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    .line 1432
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1433
    invoke-direct {p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlink(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 1435
    const/4 v2, 0x1

    .line 1439
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :goto_1
    return v2

    .line 1429
    .restart local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->predecessor(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    goto :goto_0

    .line 1439
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public size()I
    .locals 3

    .prologue
    .line 1501
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    const/4 v0, 0x0

    .line 1503
    .local v0, "cnt":I
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->first()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    .local v1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 1504
    iget-object v2, v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1506
    add-int/lit8 v0, v0, 0x1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 1509
    :cond_0
    return v0

    .line 1503
    :cond_1
    invoke-virtual {p0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->successor(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v1

    goto :goto_0
.end method

.method public sizex()I
    .locals 1

    .prologue
    .line 1516
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedDeque8;->size:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->intValue()I

    move-result v0

    return v0
.end method

.method final successor(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;)",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 934
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "p":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    iget-object v0, p1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 936
    .local v0, "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->first()Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v0

    .end local v0    # "q":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    :cond_0
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1638
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    invoke-direct {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->toArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1681
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Lorg/jsr166/ConcurrentLinkedDeque8;->toArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<TE;>;"
    .local p1, "x":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    sget-boolean v1, Lorg/jsr166/ConcurrentLinkedDeque8;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 578
    :cond_0
    iget-object v0, p1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    .line 580
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlink(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 583
    const/4 v1, 0x1

    .line 586
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
